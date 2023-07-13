using System;
using SME;
using SME.Components;

namespace CNN
{
    [ClockedProcess]
    public class ConvLayer_type1
    {
        public ValueBus[] Inputs
        {
            get => inputChannels;
            set => inputChannels = value;
        }
        public ValueBus Output
        {
            get => biases.Output;
            set => biases.Output = value;
        }
        public ConvLayer_type1(int numInChannels, int numOutChannels, 
                               float[][][] weights, float[] biasVals, 
                               (int,int) channelSize, (int,int) kernelSize, 
                               (int,int) stride, (int,int) padding, float padVal
        )
        {
            var ch = channelSize.Item1;
            var cw = channelSize.Item2;

            // padding size
            var ph = padding.Item1;
            var pw = padding.Item2;

            // padded channel size
            var paddedChannelSize = (ch + 2 * ph) * (cw + 2 * pw);

            // kernel size
            var kh = kernelSize.Item1;
            var kw = kernelSize.Item2;

            // output channel size
            var outHeight = (ch + 2 * ph - kh) / (stride.Item1) + 1;
            var outWidth = (cw + 2 * pw - kw) / (stride.Item2) + 1;
            var outValues = outHeight * outWidth;

            // total number of weights in a filter
            var weightsKernelSize = kh * kw;

            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;

            inputCtrls = new InputCtrl_type1[numInChannels];
            rams = new TrueDualPortMemory<float>[numInChannels];
            convKernels = new ConvKernel_type1[numInChannels];
            kernelOutputs = new ValueBus[numInChannels];
            valueArrayCtrl = new ValueArrayCtrl(numInChannels, channelSize);
            plusCtrl = new PlusCtrl();
            biases = new Biases(biasVals, outValues, numOutChannels);
            for (int i = 0; i < numInChannels; i++)
            {
                // contains a padded channel and the weights across all filters
                float[] buffer = new float[paddedChannelSize + weightsKernelSize * numOutChannels];
                // fill in padding
                Helper.Padding(ref buffer, ch, cw, ph, pw, padVal);

                // fill in weights
                for (int j = 0; j < numOutChannels; j++)
                {
                    // Filter j and kernel i
                    var weightsFilterKernel = weights[j][i];
                    var startIndex = paddedChannelSize + j * weightsFilterKernel.Length;
                    Helper.FillInWeights(ref buffer, weightsFilterKernel, startIndex); 
                }

                TrueDualPortMemory<float> ram = new TrueDualPortMemory<float>(paddedChannelSize + weightsKernelSize * numOutChannels, buffer);
                InputCtrl_type1 inputCtrl = new InputCtrl_type1(numOutChannels, channelSize, kernelSize, stride, padding);
                ConvKernel_type1 convKernel = new ConvKernel_type1();

                inputCtrls[i] = inputCtrl;
                rams[i] = ram;

                inputCtrls[i].ram_ctrlValue = rams[i].ControlA;
                inputCtrls[i].ram_readValue = rams[i].ReadResultA;
                inputCtrls[i].ram_ctrlWeight = rams[i].ControlB;
                inputCtrls[i].ram_readWeight = rams[i].ReadResultB;

                convKernel.InputValue = inputCtrls[i].OutputValue;
                convKernel.InputWeight = inputCtrls[i].OutputWeight;

                // store kernel
                convKernels[i] = convKernel;
                kernelOutputs[i] = convKernel.Output;

            }
            valueArrayCtrl.Input = kernelOutputs;
            plusCtrl.Input = valueArrayCtrl.Output;
            biases.Input = plusCtrl.Output;
        }
        public void PushInputs()
        {
            for (int i = 0; i < numInChannels; i++)
            {
                inputCtrls[i].Input = inputChannels[i];
            }
        }
        private int numInChannels;
        private int numOutChannels;
        private InputCtrl_type1[] inputCtrls;
        private ConvKernel_type1[] convKernels;
        private ValueBus[] kernelOutputs;
        private Biases biases;
        private ValueArrayCtrl valueArrayCtrl;
        private PlusCtrl plusCtrl;
        private TrueDualPortMemory<float>[] rams;
        private ValueBus[] inputChannels;
    }
}
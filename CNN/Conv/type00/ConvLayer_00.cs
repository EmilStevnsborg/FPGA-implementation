using System;
using SME;
using SME.Components;

namespace CNN
{
    // This is the convolutional layer that reads the input channels in parallel and outputs the
    // output channels in parallel. The Filters operate in parallel as well as the Kernels.
    // It uses the InputCtrl_ParFilter input-controls that each outputs two values from a 2D region
    [ClockedProcess]
    public class ConvLayer_00 : Layer<ValueBus[],ValueBus[]>
    {
        public ConvLayer_00(int numInChannels, int numOutChannels, 
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

            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;

            inputCtrls = new InputCtrl_ParFilter[numInChannels];
            rams = new TrueDualPortMemory<float>[numInChannels];
            filters = new Filter[numOutChannels];
            output = new ValueBus[numOutChannels];
            for (int i = 0; i < numInChannels; i++)
            {
                float[] buffer = new float[(ch + 2 * ph) * (cw + 2 * pw)];
                // fill in padding
                Helper.Padding(ref buffer, ch, cw, ph, pw, padVal);

                TrueDualPortMemory<float> ram = new TrueDualPortMemory<float>((ch + 2 * ph) * (cw + 2 * pw), buffer);
                InputCtrl_ParFilter inputCtrl = new InputCtrl_ParFilter(channelSize, kernelSize, stride, padding);

                inputCtrls[i] = inputCtrl;
                rams[i] = ram;

                inputCtrls[i].ram_ctrlA = rams[i].ControlA;
                inputCtrls[i].ram_readA = rams[i].ReadResultA;
                inputCtrls[i].ram_ctrlB = rams[i].ControlB;
                inputCtrls[i].ram_readB = rams[i].ReadResultB;

            }
            for (int i = 0; i < numOutChannels; i++)
            {
                var weightsFilter = weights[i];
                var biasFilter = biasVals[i];
                Filter filter = new Filter(numInChannels, weightsFilter, biasFilter, channelSize, kernelSize, stride, padding, padVal);
                filters[i] = filter;

                for (int j = 0; j < numInChannels; j++)
                {
                    filters[i].convKernels[j].InputA = inputCtrls[j].OutputValueA;
                    filters[i].convKernels[j].InputB = inputCtrls[j].OutputValueB;
                }

                output[i] = filters[i].Output;
            }
        }
        public override void PushInputs()
        {
            for (int i = 0; i < numInChannels; i++)
            {
                inputCtrls[i].Input = input[i];
            }
        }
        private int numInChannels;
        private int numOutChannels;
        private InputCtrl_ParFilter[] inputCtrls;
        private TrueDualPortMemory<float>[] rams;
        private Filter[] filters;
    }
}
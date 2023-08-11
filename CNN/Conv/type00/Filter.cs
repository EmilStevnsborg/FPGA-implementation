using SME;

namespace CNN
{
    // Filter is a wrapper class that contains convkernels who operate in parallel.
    [ClockedProcess]
    public class Filter
    {
        public ValueBus Output
        {
            get => bias.Output;
            set => bias.Output = value;
        }
        public Filter(int numInChannels, float[][] weights, float biasVal,
                     (int,int) channelSize, (int,int) kernelSize, (int,int) stride,
                     (int,int) padding, float padVal
        )
        {
            this.numInChannels = numInChannels;
            kernelOutputs = new ValueBus[numInChannels];
            convKernels = new ConvKernel_type00[numInChannels];
            // TODO Hack for when the array of buses are only length 1.
            if (numInChannels > 1)
                valueArrayCtrl = new ValueArrayCtrl(numInChannels, channelSize);
            else
                valueArrayCtrl_single = new ValueArrayCtrl_single(numInChannels, channelSize);
            plusCtrl = new PlusCtrl();
            bias = new Bias(biasVal);
            for (int i = 0; i < numInChannels; i++)
            {
                var weightsKernel = weights[i];
                ConvKernel_type00 convKernel = new ConvKernel_type00(kernelSize, weightsKernel);
                convKernels[i] = convKernel;
                kernelOutputs[i] = convKernel.Output;
            }
            // connect busses
            // TODO Hack for when the array of buses are only length 1.
            if (numInChannels > 1)
            {
                valueArrayCtrl.Input = kernelOutputs;
                plusCtrl.Input = valueArrayCtrl.Output;
            }
            else
            {
                valueArrayCtrl_single.Input = kernelOutputs[0];
                plusCtrl.Input = valueArrayCtrl_single.Output;
            }
            bias.Input = plusCtrl.Output;
        }
        private int numInChannels;
        public ConvKernel_type00[] convKernels;
        private ValueBus[] kernelOutputs;
        private ValueArrayCtrl valueArrayCtrl;
        // TODO Hack for when the array of buses are only length 1.
        private ValueArrayCtrl_single valueArrayCtrl_single;
        private PlusCtrl plusCtrl;
        private Bias bias ;
    }
}
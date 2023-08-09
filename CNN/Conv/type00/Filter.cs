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
            valueArrayCtrl = new ValueArrayCtrl(numInChannels, channelSize);
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
            valueArrayCtrl.Input = kernelOutputs;
            plusCtrl.Input = valueArrayCtrl.Output;
            bias.Input = plusCtrl.Output;
        }
        private int numInChannels;
        public ConvKernel_type00[] convKernels;
        private ValueBus[] kernelOutputs;
        private ValueArrayCtrl valueArrayCtrl;
        private PlusCtrl plusCtrl;
        private Bias bias ;
    }
}
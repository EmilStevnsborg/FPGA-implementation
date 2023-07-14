using SME;

namespace CNN
{
    [ClockedProcess]
    public class MaxPoolLayer_type0 : Layer<ValueBus[], ValueBus[]>
    {
        public MaxPoolLayer_type0(int numInChannels, (int,int) channelSize, (int,int) kernelSize, (int,int) stride, (int,int) padding, float padVal)
        {
            this.numInChannels = numInChannels;
            input = new ValueBus[numInChannels];
            output = new ValueBus[numInChannels];
            maxPoolKernels = new MaxPoolKernel[numInChannels];
            for (int i = 0; i < numInChannels; i++)
            {
                MaxPoolKernel maxPoolKernel = new MaxPoolKernel(channelSize, kernelSize, stride, padding, padVal);
                maxPoolKernels[i] = maxPoolKernel;
                input[i] = maxPoolKernel.Input;
                output[i] = maxPoolKernel.Output;
            }
        }
        public override void PushInputs()
        {
            for (int i = 0; i < numInChannels; i++)
            {
                maxPoolKernels[i].Input = input[i];
            }
        }
        private int numInChannels;
        private MaxPoolKernel[] maxPoolKernels;
    }
}
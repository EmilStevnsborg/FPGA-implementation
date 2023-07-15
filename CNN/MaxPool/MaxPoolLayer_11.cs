using SME;

namespace CNN
{
    [ClockedProcess]
    public class MaxPoolLayer_11 : Layer<ValueBus, ValueBus>
    {
        public MaxPoolLayer_11(int numInChannels, (int,int) channelSize, 
                                 (int,int) kernelSize, (int,int) stride, 
                                 (int,int) padding, float padVal
        )
        {
            this.numInChannels = numInChannels;
            maxPoolKernel = new MaxPoolKernel(channelSize, kernelSize, stride, padding, padVal);
            input = maxPoolKernel.Input;
            output = maxPoolKernel.Output;
        }
        public override void PushInputs()
        {
            maxPoolKernel.Input = input;
        }
        private int numInChannels;
        private MaxPoolKernel maxPoolKernel;
    }
}
using SME;

namespace CNN
{
    // Applies the ReLU function on all the channels in the input as they are streamed in sequence.
    [ClockedProcess]
    public class ReluLayer_11 : Layer<ValueBus, ValueBus>
    {
        public ReluLayer_11()
        {
            reluCore = new ReluCore();
            output = reluCore.Output;
        }
        public override void PushInputs()
        {
            reluCore.Input = input;
        }
        private ReluCore reluCore;
    }
}
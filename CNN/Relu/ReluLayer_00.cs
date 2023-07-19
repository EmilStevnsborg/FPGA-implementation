using SME;

namespace CNN
{
    [ClockedProcess]
    public class ReluLayer_00 : Layer<ValueBus[], ValueBus[]>
    {
        public ReluLayer_00(int numInChannels)
        {
            this.numInChannels = numInChannels;
            reluCores = new ReluCore[numInChannels];
            reluOutputs = new ValueBus[numInChannels];
            for (int i = 0; i < numInChannels; i++)
            {
                ReluCore reluCore = new ReluCore();
                reluCores[i] = reluCore;
                reluOutputs[i] = reluCore.Output;
            }
            output = reluOutputs;
        }
        public override void PushInputs()
        {
            for (int i = 0; i < numInChannels; i++)
            {
                reluCores[i].Input = input[i];
            }
        }
        private int numInChannels;
        private ReluCore[] reluCores;
        private ValueBus[] reluOutputs;
    }
}
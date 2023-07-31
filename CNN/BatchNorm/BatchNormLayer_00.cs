using SME;

namespace CNN
{
    // Wrapper class that encapsulates processes, which perform batchnormalization on the input
    // The input arrives as an array, where each index contains a ValueBus that stems from a 
    // designated channel. Thus, all input channels are streamed value by value at the same time.
    // The output is streamed the same way input is
    [ClockedProcess]
    public class BatchNormLayer_00 : Layer<ValueBus[], ValueBus[]>
    {
        public BatchNormLayer_00(int numInChannels, int numOutChannels, float[] means, float[] vars, float[] gammas, float[] betas)
        {
            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;
            nodes = new BatchNorm_type00[numOutChannels];
            outputNodes = new ValueBus[numOutChannels];
            for (int i = 0; i < numOutChannels; i++)
            {
                var mean = means[i];
                var variance = vars[i];
                var gamma = gammas[i];
                var beta = betas[i];
                BatchNorm_type00 node = new BatchNorm_type00(gamma, beta, mean, variance);
                nodes[i] = node;
                outputNodes[i] = node.Output;
            }
            output = outputNodes;
        }
        public override void PushInputs()
        {
            for (int i = 0; i < numOutChannels; i++)
            {
                nodes[i].Input = input[i];
            }
        }
        private int numInChannels;
        private int numOutChannels;
        private BatchNorm_type00[] nodes;
        private ValueBus[] outputNodes;
    }
}
   
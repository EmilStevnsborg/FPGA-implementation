using SME;

namespace CNN
{
    // Wrapper class that computes the linear sumproduct.
    [ClockedProcess]
    public class LinearLayer_00 : Layer<ValueBus[], ValueBus[]>
    {
        public LinearLayer_00(int numInChannels, int numOutChannels, 
                           float[][] weights, float[] biases, (int,int) channelSize
        )
        {
            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;
            nodes = new LinearNode_type00[numOutChannels];
            outputValues = new ValueBus[numOutChannels];
            for (int i = 0; i < numOutChannels; i++)
            {
                var weightsNode = weights[i];
                var bias = biases[i];
                LinearNode_type00 node = new LinearNode_type00(numInChannels, weightsNode, bias, channelSize);
                nodes[i] = node;
                outputValues[i] = node.Output;
            }
            output = outputValues;
        }
        public override void PushInputs()
        {
            for (int i = 0; i < numOutChannels; i++)
            {
                nodes[i].Inputs = input;
            }
        }
        private int numInChannels;
        private int numOutChannels;
        private LinearNode_type00[] nodes;
        private ValueBus[] outputValues;
    }
}
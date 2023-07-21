using SME;

namespace CNN
{
    [ClockedProcess]
    public class LinearLayer_10 : Layer<ValueBus, ValueBus[]>
    {
        public LinearLayer_10(int numInChannels, int numOutChannels, 
                              float[][] weights, float[] biases, (int,int) channelSize
        )
        {
            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;
            nodes = new LinearNode_type10[numOutChannels];
            outputValues = new ValueBus[numOutChannels];
            for (int i = 0; i < numOutChannels; i++)
            {
                var weightsNode = weights[i];
                var bias = biases[i];
                LinearNode_type10 node = new LinearNode_type10(numInChannels, weightsNode, bias, channelSize);
                nodes[i] = node;
                outputValues[i] = node.Output;
            }
            output = outputValues;
        }
        public override void PushInputs()
        {
            for (int i = 0; i < numOutChannels; i++)
            {
                nodes[i].Input = input;
            }
        }
        private int numInChannels;
        private int numOutChannels;
        private LinearNode_type10[] nodes;
        private ValueBus[] outputValues;
    }
}
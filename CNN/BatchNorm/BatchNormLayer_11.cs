using System;
using SME;

namespace CNN
{
    // Wrapper class that encapsulates processes, which perform batchnormalization on the input
    // The input arrives as a single value. All channels are streamed sequentially, one after
    // the other, and each channel is streamed value by value. The output is streamed the same way.
    [ClockedProcess]
    public class BatchNormLayer_11 : Layer<ValueBus, ValueBus>
    {
        public BatchNormLayer_11(int numInChannels, int numOutChannels, int outValues, float[] means, float[] vars, float[] gammas, float[] betas)
        {
            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;
            float[] negatives = new float[numOutChannels];
            float[] denominators = new float[numOutChannels];
            for (int i = 0; i < numOutChannels; i++)
            {
                var mean = means[i];
                negatives[i] = -mean;

                var denominator = (float) Math.Sqrt(vars[i] + 0.00001);
                denominators[i] = 1/denominator;
            }
            // Instantiate the processes
            minuses = new Biases(negatives, outValues, numOutChannels);
            divides = new Multiplies(denominators, outValues, numOutChannels);
            multiplies = new Multiplies(gammas, outValues, numOutChannels);
            pluses = new Biases(betas, outValues, numOutChannels);

            // Connect the buses
            divides.Input = minuses.Output;
            multiplies.Input = divides.Output;
            pluses.Input = multiplies.Output;
            output = pluses.Output;
        }
        public override void PushInputs()
        {
            minuses.Input = input;
        }
        private int numInChannels;
        private int numOutChannels;
        private Biases minuses;
        private Multiplies divides;
        private Multiplies multiplies;
        private Biases pluses;
    }
}
   
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
            minusesAlign = new Align(negatives, outValues, numOutChannels);
            dividesAlign = new Align(denominators, outValues, numOutChannels);
            multipliesAlign = new Align(gammas, outValues, numOutChannels);
            plusesAlign = new Align(betas, outValues, numOutChannels);

            minus = new PlusTwo();
            divide = new MultiplyTwo();
            multiply = new MultiplyTwo();
            plus = new PlusTwo();


            // Connect the buses
            minus.InputA = minusesAlign.OutputWeight;
            minus.InputB = minusesAlign.OutputValue;

            dividesAlign.Input = minus.Output;

            divide.InputA = dividesAlign.OutputWeight;
            divide.InputB = dividesAlign.OutputValue;

            multipliesAlign.Input = divide.Output;

            multiply.InputA = multipliesAlign.OutputWeight;
            multiply.InputB = multipliesAlign.OutputValue;

            plusesAlign.Input = multiply.Output;

            plus.InputA = plusesAlign.OutputWeight;
            plus.InputB = plusesAlign.OutputValue;

            output = plus.Output;
        }
        public override void PushInputs()
        {
            minusesAlign.Input = input;
        }
        private int numInChannels;
        private int numOutChannels;

        private Align minusesAlign;
        private PlusTwo minus;

        private Align dividesAlign;
        private MultiplyTwo divide;
        
        private Align multipliesAlign;
        private MultiplyTwo multiply;

        private Align plusesAlign;
        private PlusTwo plus;
    }
}
   
using System;
using SME;

namespace CNN
{
    // Process that stores multiple values and adds to them accordingly. For instance, it is used,
    // when it is not an option to create multiple Bias processes like when channels are streamed
    // sequentially.
    [ClockedProcess]
    public class Align : SimpleProcess
    {
        // used in conv2 and batchNorm2
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus OutputValue = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputWeight = Scope.CreateBus<ValueBus>();
        private float[] weights;

        private int outValues;
        private int i;
        private int c;
        private int numOutChannels;
        public Align(float[] weights, int outValues, int numOutChannels)
        {
            this.weights = weights;
            this.outValues = outValues;
            this.numOutChannels = numOutChannels;
            i = 0;
            c = 0;
        }

        protected override void OnTick()
        {
            OutputValue.enable = OutputValue.LastValue = false;
            OutputWeight.enable = OutputWeight.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                OutputValue.Value = Input.Value;
                OutputWeight.Value = weights[c];

                OutputValue.enable = OutputWeight.enable = Input.enable;
                OutputValue.LastValue = Input.LastValue;

                i++;
                // next channel incoming means next bias value must be used
                if (i % outValues == 0)
                {
                    c++;
                }
                if (c == numOutChannels)
                {
                    i = 0;
                    c = 0;
                }
            }
        }
    }
}
using System;
using SME;

namespace CNN
{
    // Process that stores multiple values and adds to them accordingly. It is used, when
    // it is not an option to create multiple Bias processes like when channels are streamed
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

        private SME.VHDL.UInt7 outValues;       // (out conv2 = 9x9 = 81 dec)
        private SME.VHDL.UInt9 i;               // (81x5 = 405 dec)
        private SME.VHDL.UInt3 c;               // (5 dec)
        private SME.VHDL.UInt3 numOutChannels;  // (5 dec)
        public Align(float[] weights, int outValues, int numOutChannels)
        {
            this.weights = weights;
            this.outValues = (SME.VHDL.UInt7) outValues;
            this.numOutChannels = (SME.VHDL.UInt3) numOutChannels;
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
                OutputWeight.Value = weights[(int)c];

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
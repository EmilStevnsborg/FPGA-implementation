using System;
using SME;

namespace CNN
{
    [ClockedProcess]
    public class Multiplies : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();
        private float[] vals;
        private int outValues, i, c, numOutChannels;
        public Multiplies(float[] vals, int outValues, int numOutChannels)
        {
            this.vals = vals;
            this.outValues = outValues;
            i = c = 0;
            this.numOutChannels = numOutChannels;
        } 

        protected override void OnTick()
        {
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                Output.Value = Input.Value * vals[c];
                Output.enable = Input.enable;
                Output.LastValue = Input.LastValue;
                i = (i + 1);
                if (i % outValues == 0) 
                {
                    c = (c + 1);
                }
                if (c == numOutChannels)
                {
                    i = c = 0;
                }
            }
        }
    }
}
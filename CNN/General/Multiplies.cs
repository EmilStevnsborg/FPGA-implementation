using System;
using SME;

namespace CNN
{
    [ClockedProcess]
    public class Multiplies : SimpleProcess
    {
        // used in batchnŃorm2
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();
        private float[] vals;        
        
        private SME.VHDL.UInt7 outValues;       // (9x9 = 81 dec)
        private SME.VHDL.UInt9 i;               // (81x5 = 405 dec)
        private SME.VHDL.UInt3 c;               // (5 dec)
        private SME.VHDL.UInt3 numOutChannels;  // (5 dec)
        public Multiplies(float[] vals, int outValues, int numOutChannels)
        {
            this.vals = vals;
            this.outValues = (SME.VHDL.UInt7) outValues;
            this.numOutChannels = (SME.VHDL.UInt3) numOutChannels;
            i = 0;
            c = 0;
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
                i++;
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
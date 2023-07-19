using System;
using SME;

namespace CNN
{
    [ClockedProcess]
    public class Biases : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();
        private float[] biases;
        private int outValues, i, c, numOutChannels;
        public Biases(float[] biases, int outValues, int numOutChannels)
        {
            this.biases = biases;
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
                Output.Value = Input.Value + biases[c];
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
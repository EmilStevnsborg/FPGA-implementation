using System;
using SME;

namespace CNN
{
    // Computes the max value between the two input buses and the current max value.
    [ClockedProcess]
    public class Max : SimpleProcess
    {
        [InputBus]
        public ValueBus InputA;
        [InputBus]
        public ValueBus InputB;

        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();
        // Default max needs to always be smaller than the input value
        private float max = -1000;

        protected override void OnTick()
        {
            // Output should only be updated when the input is valid.
            if (InputA.enable && InputB.enable)
            {
                if (InputA.Value > max || InputB.Value > max)
                {
                    if (InputB.Value > InputA.Value)
                    {
                        max = InputB.Value;
                    }
                    else
                    {
                        max = InputA.Value;
                    }
                }
            }
            Output.Value = max;
            Output.enable = InputA.LastValue;
            if (InputA.LastValue)
            {
                max = -1000;
            }
        }
    }
}
using System;
using SME;

namespace CNN
{

    [ClockedProcess]
    public class PlusCtrl : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        private float buffer = 0;

        protected override void OnTick()
        {
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                buffer += Input.Value;
            }
            if (Input.LastValue)
            {
                Output.enable = Output.LastValue = Input.LastValue;
                Output.Value = buffer;
                buffer = 0;
            }
        }
    }
}
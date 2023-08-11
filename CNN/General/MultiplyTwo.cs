using SME;

namespace CNN
{
    // Multiplies the values of the two Input Buses together.
    [ClockedProcess]
    public class MultiplyTwo : SimpleProcess
    {
        [InputBus]
        public ValueBus InputA;
        [InputBus]
        public ValueBus InputB;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        public MultiplyTwo()
        {
        }
        protected override void OnTick()
        {
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (InputA.enable && InputB.enable)
            {
                Output.Value = InputA.Value * InputB.Value;
                Output.enable = InputA.enable;
            }
            Output.LastValue = InputA.LastValue;
        }
    }
}
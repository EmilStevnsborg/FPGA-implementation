using System;
using SME;
using SME.Components;

namespace CNN
{
    [ClockedProcess]
    public class ConvKernel_type1
    {
        public ValueBus InputValue
        {
            get => weightValue.InputValue;
            set => weightValue.InputValue = value;
        }
        public ValueBus InputWeight
        {
            get => weightValue.InputWeight;
            set => weightValue.InputWeight = value;
        }

        public ValueBus Output
        {
            get => plusCtrl.Output;
            set => plusCtrl.Output = value;
        }

        public ConvKernel_type1()
        {            
            // Instantiate the processes
            weightValue = new WeightValue();
            plusCtrl = new PlusCtrl();
            
            plusCtrl.Input = weightValue.Output;
        }

        // Hold the internal processes as fields
        private WeightValue weightValue;
        private PlusCtrl plusCtrl;
    }
}
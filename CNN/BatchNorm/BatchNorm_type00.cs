using SME;
using SME.Components;
using System;

namespace CNN
{
    [ClockedProcess]
    public class BatchNorm_type00
    {
        public ValueBus Input
        {
            get => minus.Input;
            set => minus.Input = value;
        }

        public ValueBus Output
        {
            get => plus.Output;
            set => plus.Output = value;
        }

        public BatchNorm_type00(float gamma, float beta, float mean, float var)
        {
            var denominator = (float) Math.Sqrt(var + 0.00001);
            // Instantiate the processes
            minus = new Bias(-mean);
            divide = new Multiply(1/denominator);
            multiply = new Multiply(gamma);
            plus = new Bias(beta);

            // Connect the buses
            divide.Input = minus.Output;
            multiply.Input = divide.Output;
            plus.Input = multiply.Output;
        }

        // Hold the internal processes as fields
        private Bias minus;
        private Multiply divide;
        private Multiply multiply;
        private Bias plus;
    }
}
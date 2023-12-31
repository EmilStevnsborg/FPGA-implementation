using SME;
using SME.Components;

namespace CNN
{
    // Wrapper class that applies maxpooling on all 2D reigons determined by the kernel in one
    // input channel.
    [ClockedProcess]
    public class MaxPoolKernel
    {
        public ValueBus Input
        {
            get => kernelCtrl.Input;
            set => kernelCtrl.Input = value;
        }

        public ValueBus Output
        {
            get => max.Output;
            set => max.Output = value;
        }

        public MaxPoolKernel((int,int) channelSize, (int,int) kernelSize, 
                             (int,int) stride, (int,int) padding, float padVal
        )
        {
            // channel input
            var ch = channelSize.Item1;
            var cw = channelSize.Item2;

            // padding size
            var ph = padding.Item1;
            var pw = padding.Item2;

            float[] buffer = new float[(ch + 2 * ph) * (cw + 2 * pw)];
            // fill in padding
            Helper.Padding(ref buffer, ch, cw, ph, pw, padVal);
            
            // Instantiate the processes
            ram  = new TrueDualPortMemory<float>((ch + 2 * ph) * (cw + 2 * pw), buffer);
            kernelCtrl = new InputCtrl_ParFilter(channelSize, kernelSize, stride, padding);
            max = new Max();

            // Connect the buses
            kernelCtrl.ram_ctrlA = ram.ControlA;
            kernelCtrl.ram_readA = ram.ReadResultA;
            kernelCtrl.ram_ctrlB = ram.ControlB;
            kernelCtrl.ram_readB = ram.ReadResultB;

            max.InputA = kernelCtrl.OutputValueA;
            max.InputB = kernelCtrl.OutputValueB;
        }

        // Hold the internal processes as fields
        private TrueDualPortMemory<float> ram;
        private InputCtrl_ParFilter kernelCtrl;
        private Max max;

    }
}
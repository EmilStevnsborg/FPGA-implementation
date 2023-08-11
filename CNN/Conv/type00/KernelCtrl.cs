using System;
using SME;
using SME.Components;

namespace CNN
{
    // Matches the incomming input values with a weight. Incoming values come from 2D regions of
    // a channel
    [ClockedProcess]
    public class KernelCtrl : SimpleProcess
    {
        [InputBus]
        public ValueBus InputValueA;
        [InputBus]
        public ValueBus InputValueB;
        [OutputBus]
        public ValueBus OutputValueA = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputWeightA = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputValueB = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputWeightB = Scope.CreateBus<ValueBus>();
        private SME.VHDL.UInt4 kernelA = 0, kernelB = 1; // (9 dec)
        private SME.VHDL.UInt2 kernelHeight, kernelWidth; // (3 dec)
        private float [] weights;
        private bool lastKernelVal = false;

        public KernelCtrl((int,int) kernelSize, float[] weights)
        {
            this.kernelHeight = (SME.VHDL.UInt2) kernelSize.Item1;
            this.kernelWidth = (SME.VHDL.UInt2) kernelSize.Item2;

            this.weights = weights;
        }
        protected override void OnTick()
        {
            OutputValueA.enable = OutputWeightA.enable = OutputValueA.LastValue = false;
            OutputValueB.enable = OutputWeightB.enable = OutputValueB.LastValue = false;
            if (InputValueA.enable && InputValueB.enable)
            {
                OutputValueA.Value = InputValueA.Value;
                OutputWeightA.Value = weights[(int)kernelA];

                OutputValueB.Value = InputValueB.Value;
                OutputWeightB.Value = weights[(int)kernelB];

                //Is this the last kernel value
                lastKernelVal = (kernelA + 1 == kernelHeight*kernelWidth) || (kernelB + 1 == kernelHeight*kernelWidth);
                OutputValueA.LastValue = lastKernelVal;

                OutputValueA.enable = OutputWeightA.enable = true;
                OutputValueB.enable = OutputWeightB.enable = true;

                // weight adress
                kernelA = (SME.VHDL.UInt4) ((kernelA + (SME.VHDL.UInt4) 2) % (kernelHeight * kernelWidth));
                if (kernelB == 0)
                {
                    kernelA = 0;
                }
                kernelB = (SME.VHDL.UInt4) ((kernelA + (SME.VHDL.UInt4) 1) % (kernelHeight * kernelWidth));
            }
            else
            {
                lastKernelVal = false;
                kernelA = 0;
                kernelB = 1;
            }
        }
    }
}
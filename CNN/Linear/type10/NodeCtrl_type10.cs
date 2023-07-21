using System;
using System.Collections.Generic;
using SME;
using SME.Components;

namespace CNN
{

    [ClockedProcess]
    public class NodeCtrl_type10 : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [InputBus]
        public TrueDualPortMemory<float>.IReadResult ram_read;
        [OutputBus]
        public ValueBus OutputValue = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputWeight = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public TrueDualPortMemory<float>.IControl ram_ctrl;
        private int numInChannels;
        private int channelHeight;
        private int channelWidth;
        private int numInputs;
        private int x = 0, i = 0, k = 0;
        private float[] buffer;
        private bool ramValid = false;

        public NodeCtrl_type10(int numInChannels, (int,int) channelSize)
        {
            this.numInChannels = numInChannels;
            this.channelHeight = channelSize.Item1;
            this.channelWidth = channelSize.Item2;
            this.numInputs = numInChannels * channelHeight * channelWidth;
            buffer = new float[3];
        }
        protected override void OnTick()
        {
            OutputValue.enable = OutputWeight.enable = OutputValue.LastValue = false;
            if (Input.enable)
            {
                // Console.WriteLine((x % 3) + " " + Input.Value);
                buffer[(x % 3)] = Input.Value;
                x = (x + 1);
            }
            if (i < x && x > 0)
            {
                // Issue ram read
                ram_ctrl.Enabled = (k < numInputs);
                ram_ctrl.Address = k;
                ram_ctrl.IsWriting = false;
                ram_ctrl.Data = 0;

                // After two clock cycles, the results comes back from memory.
                ramValid = k >= 2;
                k = (k + 1);

                // If the results are back from memory, they can be forwarded along
                // side the Value data.
                OutputValue.enable = OutputWeight.enable = ramValid;

                if (ramValid)
                {
                    OutputValue.Value = buffer[(i % 3)];
                    OutputWeight.Value = ram_read.Data;

                    i = i + 1;

                    // buffer is done
                    if (i == numInputs)
                    {
                        OutputValue.LastValue = true;
                        ramValid = false;
                        x = i = k = 0;
                    }
                }
            }
        }
    }
}
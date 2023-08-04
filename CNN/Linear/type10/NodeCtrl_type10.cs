using System;
using System.Collections.Generic;
using SME;
using SME.Components;

namespace CNN
{
    [ClockedProcess]
    public class NodeCtrl_type10 : SimpleProcess
    {
        // linear only
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
        
        private SME.VHDL.UInt2 numInChannels;                   // (3 dec)
        private SME.VHDL.UInt4 channelHeight;                   // (13 dec)
        private SME.VHDL.UInt4 channelWidth;                    // (13 dec)
        private SME.VHDL.UInt9 numInputs;                       // (507 dec)
        private SME.VHDL.UInt9 x = 0, i = 0, k = 0, adress = 0; // (507 || 509 dec)

        private float[] buffer;
        private bool ramValid = false;

        public NodeCtrl_type10(int numInChannels, (int,int) channelSize)
        {
            this.numInChannels = (SME.VHDL.UInt2) numInChannels;
            this.channelHeight = (SME.VHDL.UInt4) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt4) channelSize.Item2;
            this.numInputs = (SME.VHDL.UInt9) (numInChannels * channelSize.Item1 * channelSize.Item2);
            buffer = new float[3];
        }
        protected override void OnTick()
        {
            OutputValue.enable = OutputWeight.enable = OutputValue.LastValue = false;
            if (Input.enable)
            {
                buffer[(x % 3)] = Input.Value;
                x++;
            }
            if (i < x && x > 0)
            {
                // Issue ram read
                ram_ctrl.Enabled = (adress < numInputs);
                ram_ctrl.Address = adress;
                ram_ctrl.IsWriting = false;
                ram_ctrl.Data = 0;

                // After two clock cycles, the results comes back from memory.
                ramValid = k >= 2;
                k++;

                adress++;

                // If the results are back from memory, they can be forwarded along
                // side the Value data.
                OutputValue.enable = OutputWeight.enable = ramValid;

                if (ramValid)
                {
                    OutputValue.Value = buffer[(i % 3)];
                    OutputWeight.Value = ram_read.Data;

                    i++;
                    // if all data going in has been sent out, we have to restart process of reading from memory
                    if (i == x)
                    {
                        k = 0;
                        adress--;
                        adress--;
                    }

                    // buffer is done
                    if (i == numInputs)
                    {
                        OutputValue.LastValue = true;
                        ramValid = false;
                        x = 0;
                        i = 0;
                        k = 0;
                    }
                }
            }
        }
    }
}
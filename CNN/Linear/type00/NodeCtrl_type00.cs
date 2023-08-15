using System;
using System.Collections.Generic;
using SME;
using SME.Components;

namespace CNN
{
    // Controls the flow of products to be computed between an input value and a weight in the
    // Linear layer. It is related to one LinearNode_type00.
    [ClockedProcess]
    public class NodeCtrl_type00 : SimpleProcess
    {
        [InputBus]
        public ValueBus[] Input;
        [InputBus]
        public TrueDualPortMemory<float>.IReadResult ram_read;
        [OutputBus]
        public ValueBus OutputValue = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputWeight = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public TrueDualPortMemory<float>.IControl ram_ctrl;
        private SME.VHDL.UInt3 numInChannels;                       // (5 dec)
        private SME.VHDL.UInt4 channelHeight;                       // (9 dec)
        private SME.VHDL.UInt4 channelWidth;                        // (9 dec)
        private SME.VHDL.UInt4 j = 0;                               // (9 dec)
        private SME.VHDL.UInt6 adress = 0, k = 0, x = 0, i = 0;     // (45 (+2) dec)
        private float[] buffer;
        private bool ramValid = false;

        public NodeCtrl_type00(int numInChannels, (int,int) channelSize)
        {
            this.numInChannels = (SME.VHDL.UInt3) numInChannels;
            this.channelHeight = (SME.VHDL.UInt4) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt4) channelSize.Item2;
            buffer = new float[numInChannels * channelSize.Item1 * channelSize.Item1];
        }
        protected override void OnTick()
        {
            // Output should only be updated when the input is valid.
            if (Input.Length > 0)
            {
                for (int ii = 0; ii < numInChannels; ii++)
                {
                    if (Input[ii].enable)
                    {
                        buffer[(int)x] = Input[ii].Value;
                        x++;
                    }
                }
            }
            OutputValue.enable = OutputWeight.enable = OutputValue.LastValue = false;
            // remember to toss buffer after done (check)
            if (x > 0 && i < x)
            {
                // Issue ram read
                ram_ctrl.Enabled = true;
                ram_ctrl.Address = adress;
                ram_ctrl.IsWriting = false;
                ram_ctrl.Data = 0;

                // After two clock cycles, the results comes back from memory.
                ramValid = k >= 2;
                k++;
                // j controls which index in a channel ram selects
                j = (SME.VHDL.UInt4) ((k % numInChannels) == 0 ? (j + (SME.VHDL.UInt4) 1) : j);
                // k will keep incrementing and j will be reset
                adress = (SME.VHDL.UInt6) ((k % numInChannels) * (channelHeight * channelWidth) + j);

                // If the results are back from memory, they can be forwarded along
                // side the Value data.
                OutputValue.enable = OutputWeight.enable = ramValid;

                if (ramValid)
                {
                    OutputValue.Value = buffer[(int)i];
                    OutputWeight.Value = ram_read.Data;

                    i++;

                    // buffer is done
                    if (i == x)
                    {
                        OutputValue.LastValue = true;
                        ramValid = false;
                        x = 0;
                        i = 0;
                        k = 0;
                        j = 0;
                        adress = 0;
                    }
                }
            }
            
        }
    }
}
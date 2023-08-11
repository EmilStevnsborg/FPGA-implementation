using System;
using SME;

namespace CNN
{
    // Controls the flow of values on an ValueBus array Input Bus.
    [ClockedProcess]
    public class ValueArrayCtrl : SimpleProcess
    {
        [InputBus]
        public ValueBus[] Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        private SME.VHDL.UInt3 numInChannels; // (5 dec)
        private SME.VHDL.UInt5 channelHeight; // (26 dec)
        private SME.VHDL.UInt5 channelWidth;  // (26 dec)
        private SME.VHDL.UInt3 i = 0;         // (5 dec)
        private SME.VHDL.UInt3 k = 0;         // (5 dec)

        private float[] buffer;
        public ValueArrayCtrl(int numInChannels, (int, int) channelSize)
        {
            this.numInChannels = (SME.VHDL.UInt3) numInChannels;
            this.channelHeight = (SME.VHDL.UInt5) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt5) channelSize.Item2;
            buffer = new float[numInChannels];
        }
        protected override void OnTick()
        {
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.Length > 0)
            {
                for (int ii = 0; ii < numInChannels; ii++)
                {
                    if (Input[ii].enable)
                    {
                        buffer[ii] = Input[ii].Value;
                        i++;
                    }
                }
            }
            // If Inputs have loaded go through them
            if (i > 0 && k < i)
            {
                Output.Value = buffer[(int)k];
                Output.enable = true;
                k++;
                if (k % numInChannels == 0)
                {
                    Output.LastValue = true;
                }
                if (k == i)
                {
                    i = 0;
                    k = 0;
                }
            }

        }
    }

    [ClockedProcess]
    public class ValueArrayCtrl_single : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        private SME.VHDL.UInt3 numInChannels; // (5 dec)
        private SME.VHDL.UInt5 channelHeight; // (26 dec)
        private SME.VHDL.UInt5 channelWidth;  // (26 dec)
        private SME.VHDL.UInt3 i = 0;         // (5 dec)
        private SME.VHDL.UInt3 k = 0;         // (5 dec)

        private float buffer;
        public ValueArrayCtrl_single(int numInChannels, (int, int) channelSize)
        {
            this.numInChannels = (SME.VHDL.UInt3) numInChannels;
            this.channelHeight = (SME.VHDL.UInt5) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt5) channelSize.Item2;
        }
        protected override void OnTick()
        {
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                buffer = Input.Value;
                i++;
            }

            // If Inputs have loaded go through them
            if (i > 0 && k < i)
            {
                Output.Value = buffer;
                Output.enable = true;
                k++;
                if (k % numInChannels == 0)
                {
                    Output.LastValue = true;
                }
                if (k == i)
                {
                    i = 0;
                    k = 0;
                }
            }
        }
    }

}
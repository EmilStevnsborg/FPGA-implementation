using System;
using SME;
using SME.Components;

namespace CNN
{
    [ClockedProcess]
    public class InputCtrl_SeqChannel : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [InputBus]
        public TrueDualPortMemory<float>.IReadResult ram_readA;
        [InputBus]
        public TrueDualPortMemory<float>.IReadResult ram_readB;
        [OutputBus]
        public ValueBus OutputValueA = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputValueB = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public TrueDualPortMemory<float>.IControl ram_ctrlA;
        [OutputBus]
        public TrueDualPortMemory<float>.IControl ram_ctrlB;

        private SME.VHDL.UInt4 ii = 0;                          // (9 dec)
        private SME.VHDL.UInt4 jj = 0;                          // (9 dec)
        private SME.VHDL.UInt3 c;                               // (5 dec)
        private SME.VHDL.UInt2 i;                               // (3 dec)
        private SME.VHDL.UInt2 j;                               // (3 dec)
        private SME.VHDL.UInt2 k;                               // (2 dec)
        private SME.VHDL.UInt4 kernelA;                         // (9 dec)
        private SME.VHDL.UInt4 kernelB;                         // (9 dec)
        private SME.VHDL.UInt3 numInChannels;                   // (5 dec)
        private SME.VHDL.UInt4 channelHeight, channelWidth;     // (9 dec)
        private SME.VHDL.UInt1 padHeight, padWidth;             // (1 dec)
        private SME.VHDL.UInt4 newHeight, newWidth;             // (9 dec)
        private SME.VHDL.UInt2 kernelHeight, kernelWidth;       // (3 dec)
        private SME.VHDL.UInt2 strideRow, strideCol;            // (3 dec)
        private SME.VHDL.UInt4 startRow = 0, startCol = 0;      // (9 dec)
        bool bufferValid = false;
        private bool ramValid = false;
        private bool loaded = false;
        private bool wholeChannel = false;
        private bool lastKernelVal = false;
        public InputCtrl_SeqChannel(int numInChannels, (int,int) channelSize, 
                                    (int,int) kernelSize, (int,int) stride, 
                                    (int,int) padding
        )
        {
            this.numInChannels = (SME.VHDL.UInt3) numInChannels;

            this.channelHeight = (SME.VHDL.UInt4) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt4) channelSize.Item2;

            this.padHeight = (SME.VHDL.UInt1) padding.Item1;
            this.padWidth = (SME.VHDL.UInt1) padding.Item2;

            this.newHeight = (SME.VHDL.UInt4) (channelHeight + 2 * padHeight);
            this.newWidth = (SME.VHDL.UInt4) (channelWidth + 2 * padWidth);

            this.kernelHeight = (SME.VHDL.UInt2) kernelSize.Item1;
            this.kernelWidth = (SME.VHDL.UInt2) kernelSize.Item2;

            this.strideRow = (SME.VHDL.UInt2) stride.Item1;
            this.strideCol = (SME.VHDL.UInt2) stride.Item2;
        }
        protected override void OnTick()
        {
            // No buffer loaded
            if (!bufferValid)
            {
                // Takes one tick after buffer loaded
                if (loaded)
                {
                    bufferValid = true;
                    loaded = false;
                    c = 0;
                    i = 0;
                    j = 0;
                    k = 0;
                    kernelA = 0;
                    kernelB = 1;
                }
                // Load Input into buffer
                if (Input.enable)
                {
                    // Issue ram write
                    ram_ctrlA.Enabled = true;
                    ram_ctrlA.Address = (ii + padHeight) * newWidth + (jj + padWidth) + c * newHeight * newWidth;
                    ram_ctrlA.IsWriting = true;
                    ram_ctrlA.Data = Input.Value;
                    // Always increment column index.
                    jj = (SME.VHDL.UInt4) ((jj + 1) % channelWidth);
                    // Only increment row index when column have wrapped.
                    ii = jj == 0 ? (SME.VHDL.UInt4) ((ii + 1) % channelHeight): ii;
                    // !!! ADJUST FOR NEXT CHANNEL !!!
                    if (ii == 0 && jj == 0)
                    {
                        if (c + 1 == numInChannels)
                        {
                            loaded = true;
                        }
                        else
                        {
                            c++;
                        }
                    }
                }
            }
            OutputValueA.enable = OutputValueB.enable = OutputValueA.LastValue = false;
            // If the buffer is filled, issue a read to the memory at every clock
            // cycle. When the data comes back from the memory, emit the output at
            // each clock cycle.
            if (bufferValid)
            {
                SME.VHDL.UInt9 startIdx = (SME.VHDL.UInt9) (c * newHeight * newWidth);                      // (4x9x9 = 324 dec)

                SME.VHDL.UInt7 bufferA = (SME.VHDL.UInt7) ((startRow + i) * newWidth + (startCol + j));     // (9x9+1 = 82 dec)
                SME.VHDL.UInt9 addrA = (SME.VHDL.UInt9) (startIdx + bufferA);
                
                // Issue ram read of buffer from first adress
                ram_ctrlA.Enabled = !wholeChannel;
                ram_ctrlA.Address = addrA;
                ram_ctrlA.IsWriting = false;
                ram_ctrlA.Data = 0;

                // check if bufferA read is the index in whole channel
                wholeChannel = !wholeChannel ? (bufferA + 1 == newWidth * newHeight) : true;

                SME.VHDL.UInt2 w = (SME.VHDL.UInt2) ((j + (SME.VHDL.UInt2) 1) % kernelWidth);               // (3 dec)
                SME.VHDL.UInt2 h = w == 0 ? (SME.VHDL.UInt2) (i + (SME.VHDL.UInt2) 1) : i;                  // (3 dec)
                SME.VHDL.UInt7 bufferB = (SME.VHDL.UInt7) ((startRow + h) * newWidth + (startCol + w));     // (9x9+1 = 82 dec)

                // Issue ram read of buffer from second adress
                ram_ctrlB.Enabled = !wholeChannel;
                ram_ctrlB.Address = bufferB < newHeight * newWidth ? startIdx + bufferB : startIdx; // Avoid last index error
                ram_ctrlB.IsWriting = false;
                ram_ctrlB.Data = 0;

                // if whole channel has been processed else check if bufferB read is the last index
                wholeChannel = !wholeChannel ? (bufferB + 1 == newWidth * newHeight) : true;

                // After two clock cycles, the results come back from memory.
                ramValid = k >= 2;
                if (!ramValid) {
                    k++;
                }

                // Channel hasn't been processed
                if (!wholeChannel)
                {
                    // skip to next row in kernel or shift kernel
                    if (j + 2 >= kernelWidth)
                    {
                        // shift kernel
                        if (i + 1 == kernelHeight)
                        {
                            j = i = 0;
                            // shift kernel by stride on rows
                            if (startCol + kernelWidth == newWidth)
                            {
                                startCol = 0;
                                startRow = (SME.VHDL.UInt4) (startRow + strideRow);
                            }
                            // shift kernel by stride on columns
                            else
                            {
                                startCol = (SME.VHDL.UInt4) (startCol + strideCol);
                            }
                        }
                        // go to next row in kernel
                        else
                        {
                            j = (SME.VHDL.UInt2) ((j + (SME.VHDL.UInt2) 2) % kernelWidth);
                            i++;
                        }
                    }
                    else
                    {
                        j = (SME.VHDL.UInt2) (j + (SME.VHDL.UInt2) 2);
                    }
                }
                // Wait clock cycles for last memory
                else 
                {
                    if (c + 1 == numInChannels)
                    {
                        ii++;
                    }
                    // Go to next kernelweights and traverse channel again
                    else
                    {
                        // If all channels have been iterated close process
                        wholeChannel = (c + 1 == numInChannels);
                        c++;
                        i = 0;
                        j = 0;
                        startRow = 0;
                        startCol = 0;
                    }
                }
                if (ramValid)
                {
                    OutputValueA.Value = ram_readA.Data;
                    OutputValueB.Value = (kernelA > kernelB) ? 0 : ram_readB.Data;
                    OutputValueB.enable = OutputValueA.enable = true;
                    
                    // Is this the last kernel value
                    lastKernelVal = (kernelA + 1 == kernelHeight*kernelWidth) || (kernelB + 1 == kernelHeight*kernelWidth);
                    OutputValueA.LastValue = lastKernelVal;

                    // Check if all data has been processed.
                    if (lastKernelVal && ii == 3)
                    {
                        bufferValid = ramValid = wholeChannel = lastKernelVal = false;
                        i = 0;
                        j = 0;
                        ii = 0;
                        k = 0;
                        startRow = 0;
                        startCol = 0;
                        kernelA = 0;
                        kernelB = 1;
                    }
                    else
                    {
                        kernelA = (SME.VHDL.UInt4) ((kernelA + (SME.VHDL.UInt4) 2) % (kernelHeight * kernelWidth));
                        if (kernelB == 0)
                        {
                            kernelA = 0;
                        }
                        kernelB = (SME.VHDL.UInt4) ((kernelA + (SME.VHDL.UInt4) 1) % (kernelHeight * kernelWidth));
                    }
                }
            }
        }
    }
}
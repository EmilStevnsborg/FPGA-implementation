using System;
using SME;
using SME.Components;

namespace CNN
{
    // Used in ConvLayer_00 and the MaxPoolKernel in MaxPoolLayer_00. It buffers a channel that
    // is being streamed value by value. Afterwards, it sends out a stream of value from 2D-regions
    // of the input channel in pairs of two.
    [ClockedProcess]
    public class InputCtrl_ParFilter : SimpleProcess
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

        private SME.VHDL.UInt5 ii = 0;          // (28 dec)
        private SME.VHDL.UInt5 jj = 0;          // (28 dec)
        private SME.VHDL.UInt3 i;               // (5 dec)
        private SME.VHDL.UInt3 j;               // (5 dec)
        private SME.VHDL.UInt2 k;               // (2 dec)
        private SME.VHDL.UInt5 kernelA;         // (5x5+1 = 26 dec)
        private SME.VHDL.UInt5 kernelB;         // (5x5+1 = 26 dec)
        private SME.VHDL.UInt5 channelHeight;   // (28 dec)
        private SME.VHDL.UInt5 channelWidth;    // (28 dec)
        private SME.VHDL.UInt1 padHeight;       // (1 dec)
        private SME.VHDL.UInt1 padWidth;        // (1 dec)
        private SME.VHDL.UInt5 newHeight;       // (28 dec)
        private SME.VHDL.UInt5 newWidth;        // (28 dec)
        private SME.VHDL.UInt3 kernelHeight;    // (5 dec)
        private SME.VHDL.UInt3 kernelWidth;     // (5 dec)
        private SME.VHDL.UInt2 strideRow;       // (3 dec)
        private SME.VHDL.UInt2 strideCol;       // (3 dec)
        private SME.VHDL.UInt5 startRow = 0;    // (26 dec)
        private SME.VHDL.UInt5 startCol = 0;    // (26 dec)

        bool bufferValid = false;
        private bool ramValid = false;
        private bool loaded = false;
        private bool wholeChannel = false;
        private bool lastKernelVal = false;
        public InputCtrl_ParFilter((int,int) channelSize, (int,int) kernelSize, (int,int) stride, (int,int) padding)
        {
            this.channelHeight = (SME.VHDL.UInt5) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt5) channelSize.Item2;

            this.padHeight = (SME.VHDL.UInt1) padding.Item1;
            this.padWidth = (SME.VHDL.UInt1) padding.Item2;

            this.newHeight = (SME.VHDL.UInt5) (channelHeight + 2 * padding.Item1);
            this.newWidth = (SME.VHDL.UInt5) (channelWidth + 2 * padding.Item2);

            this.kernelHeight = (SME.VHDL.UInt3) kernelSize.Item1;
            this.kernelWidth = (SME.VHDL.UInt3) kernelSize.Item2;

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
                    ram_ctrlA.Address = (ii + padHeight) * newWidth + (jj + padWidth);
                    ram_ctrlA.IsWriting = true;
                    ram_ctrlA.Data = Input.Value;
                    // Always increment column index.
                    jj = (SME.VHDL.UInt5) ((jj + (SME.VHDL.UInt5) 1) % channelWidth);
                    // Only increment row index when column have wrapped.
                    ii = jj == 0 ? (SME.VHDL.UInt5) ((ii + (SME.VHDL.UInt5) 1) % channelHeight): ii;
                    // Whole channels has been read
                    loaded = (ii == 0 && jj == 0);
                }
            }
            OutputValueA.enable = OutputValueB.enable = OutputValueA.LastValue = false;
            // If the buffer is filled, issue a read to the memory at every clock
            // cycle. When the data comes back from the memory, emit the output at
            // each clock cycle.
            if (bufferValid)
            {
                SME.VHDL.UInt10 bufferA = (SME.VHDL.UInt10) ((startRow + i) // (28x28 = 784 dec) 
                                          * newWidth + (startCol + j));
                
                // Issue ram read of buffer from first adress
                ram_ctrlA.Enabled = !wholeChannel;
                ram_ctrlA.Address = bufferA;
                ram_ctrlA.IsWriting = false;
                ram_ctrlA.Data = 0;

                // check if bufferA read is the index in whole channel
                wholeChannel = !wholeChannel ? (bufferA + 1 == newWidth * newHeight) : true;

                SME.VHDL.UInt3 w = (SME.VHDL.UInt3) ((j + (SME.VHDL.UInt3) 1) % kernelWidth); // (3 dec)
                SME.VHDL.UInt3 h = w == 0 ? (SME.VHDL.UInt3) (i + (SME.VHDL.UInt3) 1) : (SME.VHDL.UInt3) i; // (3 dec)
                SME.VHDL.UInt10 bufferB = (SME.VHDL.UInt10) ((startRow + h) * newWidth + (startCol + w)); // (28x28+1 = 785 dec)

                // Issue ram read of buffer from second adress
                ram_ctrlB.Enabled = !wholeChannel;
                ram_ctrlB.Address = bufferB < newHeight * newWidth ? bufferB : 0; // Avoid last index error
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
                                startRow = (SME.VHDL.UInt5) (startRow + strideRow);
                            }
                            // shift kernel by stride on columns
                            else
                            {
                                startCol = (SME.VHDL.UInt5) (startCol + strideCol);
                            }
                        }
                        // go to next row in kernel
                        else
                        {
                            j = (SME.VHDL.UInt3) ((j + (SME.VHDL.UInt3) 2) % kernelWidth);
                            i++;
                        }
                    }
                    else
                    {
                        j = (SME.VHDL.UInt3) (j + (SME.VHDL.UInt3) 2);
                    }
                }
                // Wait clock cycles for last memory
                else 
                {
                    ii++;
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
                        bufferValid = false;
                        ramValid = false;
                        wholeChannel = false;
                        lastKernelVal = false;
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
                        kernelA = (SME.VHDL.UInt5) ((kernelA + (SME.VHDL.UInt5) 2) % (kernelHeight * kernelWidth));
                        if (kernelB == 0)
                        {
                            kernelA = 0;
                        }
                        kernelB = (SME.VHDL.UInt5) ((kernelA + (SME.VHDL.UInt5) 1) % (kernelHeight * kernelWidth));
                    }
                }
            }
        }
    }
}
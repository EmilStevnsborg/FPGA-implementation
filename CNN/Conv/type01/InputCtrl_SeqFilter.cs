using System;
using SME;
using SME.Components;

namespace CNN
{
    // Coordinates and delegates values and weights for all filters of one input channel sequentially
    [ClockedProcess]
    public class InputCtrl_SeqFilter : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [InputBus]
        public TrueDualPortMemory<float>.IReadResult ram_readValue;
        [InputBus]
        public TrueDualPortMemory<float>.IReadResult ram_readWeight;
        [OutputBus]
        public ValueBus OutputValue = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public ValueBus OutputWeight = Scope.CreateBus<ValueBus>();
        [OutputBus]
        public TrueDualPortMemory<float>.IControl ram_ctrlValue;
        [OutputBus]
        public TrueDualPortMemory<float>.IControl ram_ctrlWeight;

        private SME.VHDL.UInt4 ii = 0;                          // (13 dec)
        private SME.VHDL.UInt4 jj = 0;                          // (13 dec)
        private SME.VHDL.UInt3 i;                               // (5 dec)
        private SME.VHDL.UInt3 j;                               // (5 dec)
        private SME.VHDL.UInt3 k;                               // (2 dec)
        private SME.VHDL.UInt3 numOutChannels;                  // (5 dec)
        private SME.VHDL.UInt3 c;                               // (5 dec)
        private SME.VHDL.UInt9 inputAdress;                     // (13x13 = 169 dec)
        private SME.VHDL.UInt5 kernelIdx;                       // (25 dec)
        private SME.VHDL.UInt9 weightAdress;                    // (13x13+5*5*5 = 294 dec)
        private SME.VHDL.UInt4 channelHeight, channelWidth;     // (13 dec)
        private SME.VHDL.UInt1 padHeight, padWidth;             // (1 dec)
        private SME.VHDL.UInt4 newHeight, newWidth;             // (13 dec)
        private SME.VHDL.UInt3 kernelHeight, kernelWidth;       // (5 dec)
        private SME.VHDL.UInt1 strideRow, strideCol;            // (1 dec)
        private SME.VHDL.UInt4 startRow = 0, startCol = 0;      // (13 dec)
        
        private bool bufferValid = false, ramValid = false;
        private bool loaded = false, wholeChannel = false, lastKernelValue = false;
        public InputCtrl_SeqFilter(int numOutChannels, (int,int) channelSize, (int,int) kernelSize, (int,int) stride, (int,int) padding)
        {
            this.numOutChannels = (SME.VHDL.UInt3) numOutChannels;

            this.channelHeight = (SME.VHDL.UInt4) channelSize.Item1;
            this.channelWidth = (SME.VHDL.UInt4) channelSize.Item2;

            this.padHeight = (SME.VHDL.UInt1) padding.Item1;
            this.padWidth = (SME.VHDL.UInt1) padding.Item2;

            this.newHeight = (SME.VHDL.UInt4) (channelHeight + 2 * padHeight);
            this.newWidth = (SME.VHDL.UInt4) (channelWidth + 2 * padWidth);

            this.kernelHeight = (SME.VHDL.UInt3) kernelSize.Item1;
            this.kernelWidth = (SME.VHDL.UInt3) kernelSize.Item2;

            this.strideRow = (SME.VHDL.UInt1) stride.Item1;
            this.strideCol = (SME.VHDL.UInt1) stride.Item2;
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
                    k = 0;
                    c = 0;
                    inputAdress = 0;
                    kernelIdx = 0;
                    weightAdress = 0;
                }
                // Load Input into buffer
                if (Input.enable)
                {
                    // Issue ram write
                    ram_ctrlValue.Enabled = true;
                    ram_ctrlValue.Address = (ii + padHeight) * newWidth + (jj + padWidth);
                    ram_ctrlValue.IsWriting = true;
                    ram_ctrlValue.Data = Input.Value;
                    // Always increment column index.
                    jj = (SME.VHDL.UInt4) ((jj + (SME.VHDL.UInt4) 1) % channelWidth);
                    // Only increment row index when column have wrapped.
                    ii = jj == 0 ? (SME.VHDL.UInt4) ((ii + (SME.VHDL.UInt4) 1) % channelHeight): ii;
                    // Whole channels has been read
                    loaded = (ii == 0 && jj == 0);
                }
            }
            OutputValue.enable = OutputWeight.enable = OutputValue.LastValue = false;
            // If the buffer is filled, issue a read to the memory at every clock
            // cycle. When the data comes back from the memory, emit the output at
            // each clock cycle.
            if (bufferValid)
            {
                inputAdress = (SME.VHDL.UInt9) ((startRow + i) * newWidth + (startCol + j));
                // Issue ram read of input from buffer
                ram_ctrlValue.Enabled = !wholeChannel;
                ram_ctrlValue.Address = inputAdress;
                ram_ctrlValue.IsWriting = false;
                ram_ctrlValue.Data = 0;

                weightAdress = (SME.VHDL.UInt9) (newWidth * newHeight + c * kernelHeight * kernelWidth + kernelIdx);
                // Issue ram read of weight from buffer
                ram_ctrlWeight.Enabled = !wholeChannel;
                ram_ctrlWeight.Address = weightAdress;
                ram_ctrlWeight.IsWriting = false;
                ram_ctrlWeight.Data = 0;

                // Has whole channel been traversed
                wholeChannel = !wholeChannel ? (inputAdress + 1 == newWidth * newHeight) : true;

                // After two clock cycles, the results come back from memory.
                ramValid = k >= 2;
                if (!ramValid) {
                    k++;
                }

                // Channel hasn't been processed
                if (!wholeChannel)
                {
                    // skip to next row in kernel or shift kernel
                    if (j + 1 == kernelWidth)
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
                            j = 0;
                            i++;
                        }
                    }
                    else
                    {
                        j++;
                    }
                }
                // Wait clock cycles for last value memory
                else 
                {
                    if (c + 1 == numOutChannels)
                    {
                        ii++;
                    }
                    // Go to next kernelweights and traverse channel again
                    else
                    {
                        // If all channels have been iterated close process
                        wholeChannel = (c + 1 == numOutChannels);
                        c++;
                        i = 0;
                        j = 0;
                        startRow = 0;
                        startCol = 0;
                    }
                }

                // Wait clock cycles for last weight memory
                if (lastKernelValue)
                {
                    jj++;
                }
                else
                {
                    lastKernelValue = kernelIdx + 1 == kernelHeight * kernelWidth;
                }
                
                kernelIdx = (SME.VHDL.UInt5) ((kernelIdx + 1) % (kernelHeight * kernelWidth));

                if (ramValid)
                {
                    OutputValue.Value = ram_readValue.Data;
                    OutputWeight.Value = ram_readWeight.Data;
                    OutputWeight.enable = OutputValue.enable = true;
                    // last kernel weight is back from memory
                    if (jj == 2)
                    {
                        OutputValue.LastValue = true;
                        lastKernelValue = false;
                        jj = 0;
                    }

                    // Check if all data has been processed.
                    // Missing info on last filter run (numOutChannels)
                    if (ii == 3 && (c + 1 == numOutChannels))
                    {
                        bufferValid = ramValid = wholeChannel = false;
                        i = 0;
                        j = 0;
                        ii = 0;
                        k = 0;
                        startRow = 0;
                        startCol = 0;
                        kernelIdx = 0;
                    }
                }
            }
        }
    }
}
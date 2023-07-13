using System;
using SME;
using SME.Components;

namespace CNN
{
    [ClockedProcess]
    public class InputCtrl_type1 : SimpleProcess
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

        private int ii = 0, jj = 0, i, j, k, numOutChannels, c;
        private int inputAdress, kernelIdx, weightAdress;
        private int channelHeight, channelWidth;
        private int padHeight, padWidth;
        private int newHeight, newWidth;
        private int kernelHeight, kernelWidth;
        private int strideRow, strideCol;
        private int startRow = 0, startCol = 0;
        private bool bufferValid = false, ramValid = false;
        private bool loaded = false, wholeChannel = false, lastKernelValue = false;
        public InputCtrl_type1(int numOutChannels, (int,int) channelSize, (int,int) kernelSize, (int,int) stride, (int,int) padding)
        {
            this.numOutChannels = numOutChannels;

            this.channelHeight = channelSize.Item1;
            this.channelWidth = channelSize.Item2;

            this.padHeight = padding.Item1;
            this.padWidth = padding.Item2;

            this.newHeight = channelHeight + 2 * padHeight;
            this.newWidth = channelWidth + 2 * padWidth;

            this.kernelHeight = kernelSize.Item1;
            this.kernelWidth = kernelSize.Item2;

            this.strideRow = stride.Item1;
            this.strideCol = stride.Item2;
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
                    i = k = c = inputAdress = kernelIdx = weightAdress = 0;
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
                    jj = (jj + 1) % channelWidth;
                    // Only increment row index when column have wrapped.
                    ii = jj == 0 ? (ii + 1) % channelHeight: ii;
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
                inputAdress = (startRow + i) * newWidth + (startCol + j);
                // Issue ram read of input from buffer
                ram_ctrlValue.Enabled = !wholeChannel;
                ram_ctrlValue.Address = inputAdress;
                ram_ctrlValue.IsWriting = false;
                ram_ctrlValue.Data = 0;

                weightAdress = newWidth * newHeight + c * kernelHeight * kernelWidth + kernelIdx;
                // Issue ram read of weight from buffer
                ram_ctrlWeight.Enabled = !wholeChannel;
                ram_ctrlWeight.Address = weightAdress;
                ram_ctrlWeight.IsWriting = false;
                ram_ctrlWeight.Data = 0;

                // Console.WriteLine(inputAdress + " " + weightAdress + " " + wholeChannel);

                // Has whole channel been traversed
                wholeChannel = !wholeChannel ? (inputAdress + 1 == newWidth * newHeight) : true;

                // After two clock cycles, the results come back from memory.
                ramValid = k >= 2;
                k = (k + 1);

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
                                startRow = startRow + strideRow;
                            }
                            // shift kernel by stride on columns
                            else
                            {
                                startCol = startCol + strideCol;
                            }
                        }
                        // go to next row in kernel
                        else
                        {
                            j = 0;
                            i = (i + 1);
                        }
                    }
                    else
                    {
                        j = (j + 1);
                    }
                }
                // Wait clock cycles for last value memory
                else 
                {
                    if (c + 1 == numOutChannels)
                    {
                        ii += 1;
                    }
                    // Go to next kernelweights and traverse channel again
                    else
                    {
                        // If all channels have been iterated close process
                        wholeChannel = (c + 1 == numOutChannels);
                        c += 1;
                        // Console.WriteLine("c: " + c);
                        i = j = startRow = startCol = 0;
                    }
                }

                // Wait clock cycles for last weight memory
                if (lastKernelValue)
                {
                    jj += 1;
                }
                else
                {
                    lastKernelValue = kernelIdx + 1 == kernelHeight * kernelWidth;
                }
                
                kernelIdx = (kernelIdx + 1) % (kernelHeight * kernelWidth);

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
                    // Console.WriteLine(OutputValue.Value + " " + OutputWeight.Value + " " + OutputValue.LastValue);

                    // Check if all data has been processed.
                    // Missing info on last filter run (numOutChannels)
                    if (ii == 3 && (c + 1 == numOutChannels))
                    {
                        bufferValid = ramValid = wholeChannel = false;
                        i = j = ii = k = startRow = startCol = kernelIdx = 0;
                    }
                }
            }
        }
    }
}
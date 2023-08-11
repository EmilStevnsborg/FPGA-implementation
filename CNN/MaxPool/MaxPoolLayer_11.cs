using SME;
using SME.Components;

namespace CNN
{
    // Wrapper class that applies maxpooling on all input channels in the input in sequence.
    [ClockedProcess]
    public class MaxPoolLayer_11 : Layer<ValueBus, ValueBus>
    {
        public MaxPoolLayer_11(int numInChannels, (int,int) channelSize, 
                               (int,int) kernelSize, (int,int) stride, 
                               (int,int) padding, float padVal
        )
        {
            var ch = channelSize.Item1;
            var cw = channelSize.Item2;

            // padding size
            var ph = padding.Item1;
            var pw = padding.Item2;

            // padded channel size
            var paddedChannelSize = (ch + 2 * ph) * (cw + 2 * pw);
            
            this.numInChannels = numInChannels;

            // contains all channels padded
            float[] buffer = new float[paddedChannelSize * numInChannels];
            // one channel
            float[] bufferChannel = new float[paddedChannelSize];
            // fill in padding
            Helper.Padding(ref bufferChannel, ch, cw, ph, pw, padVal);
            for (int i = 0; i < numInChannels; i++) 
            {
                // add channel to array of channels
                int startIdx = i * paddedChannelSize;
                Helper.FillInWeights(ref buffer, bufferChannel, startIdx);
            }

            ram = new TrueDualPortMemory<float>(paddedChannelSize * numInChannels, buffer);

            inputCtrl = new InputCtrl_SeqChannel(numInChannels, channelSize, 
                                                 kernelSize, stride, padding);
            max = new Max();

            inputCtrl.ram_ctrlA = ram.ControlA;
            inputCtrl.ram_readA = ram.ReadResultA;
            inputCtrl.ram_ctrlB = ram.ControlB;
            inputCtrl.ram_readB = ram.ReadResultB;


            max.InputA = inputCtrl.OutputValueA;
            max.InputB = inputCtrl.OutputValueB;
            output = max.Output;
        }
        public override void PushInputs()
        {
            inputCtrl.Input = input;
        }
        private int numInChannels;
        private TrueDualPortMemory<float> ram;
        private InputCtrl_SeqChannel inputCtrl;
        private Max max;
    }
}
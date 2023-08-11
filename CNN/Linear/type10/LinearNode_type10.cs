using SME;
using SME.Components;
using System;

namespace CNN
{
    // Wrapper class that computes one output feature of a Linear layer.
    [ClockedProcess]
    public class LinearNode_type10
    {
        public ValueBus Input
        {
            get => nodeCtrl.Input;
            set => nodeCtrl.Input = value;
        }
        public ValueBus Output
        {
            get => bias.Output;
            set => bias.Output = value;
        }
        public LinearNode_type10(int numInChannels, float[] weights,
                                 float biasVal, (int,int) channelSize
        )
        {
            this.numInChannels = numInChannels;
            this.channelHeight = channelSize.Item1;
            this.channelWidth = channelSize.Item2;

            // Instantiate the processes
            ram  = new TrueDualPortMemory<float>(numInChannels * channelHeight * channelWidth, weights);
            nodeCtrl = new NodeCtrl_type10(numInChannels, channelSize);
            weightValue = new WeightValue();
            plusCtrl = new PlusCtrl();
            bias = new Bias(biasVal);

            // Connect the buses
            nodeCtrl.ram_ctrl = ram.ControlA;
            nodeCtrl.ram_read = ram.ReadResultA;

            weightValue.InputValue = nodeCtrl.OutputValue;
            weightValue.InputWeight = nodeCtrl.OutputWeight;

            plusCtrl.Input = weightValue.Output;

            bias.Input = plusCtrl.Output;
        }
        private int numInChannels;
        private int channelHeight;
        private int channelWidth;

        // Hold the internal processes as fields
        private TrueDualPortMemory<float> ram;
        private NodeCtrl_type10 nodeCtrl;
        private WeightValue weightValue;
        private PlusCtrl plusCtrl;
        private Bias bias;
    }
}
using System;
using SME;
using SME.Components;

namespace CNN
{
    [ClockedProcess]
    public class SoftmaxLayer_00 : Layer<ValueBus[], ValueBus[]>
    {
        public SoftmaxLayer_00(int numInChannels, (int,int) channelSize)
        {
            this.numInChannels = numInChannels;
            var amount = numInChannels * channelSize.Item1 * channelSize.Item2;
            exponentials = new Exp[amount];
            divisions = new DivideValue[amount];
            input = new ValueBus[amount];
            exponentialOutputs = new ValueBus[amount];
            divisionOutputs = new ValueBus[amount];

            valueArrayCtrl = new ValueArrayCtrl(numInChannels, channelSize);
            plusCtrl = new PlusCtrl();
            for (int i = 0; i < amount; i++)
            {
                Exp exp = new Exp();
                exponentials[i] = exp;
                input[i] = exp.Input;       
                exponentialOutputs[i] = exp.Output;     
            }
            valueArrayCtrl.Input = exponentialOutputs;
            plusCtrl.Input = valueArrayCtrl.Output;

            for (int i = 0; i < amount; i++)
            {
                DivideValue divideValue = new DivideValue();
                divisions[i] = divideValue;
                divisions[i].InputValue = exponentialOutputs[i];
                divisions[i].InputWeight = plusCtrl.Output;
                divisionOutputs[i] = divideValue.Output;
            }
            output = divisionOutputs;

        }
        public override void PushInputs()
        {
            for (int i = 0; i < numInChannels; i++)
            {
                exponentials[i].Input = input[i];
            }
        }
        private int numInChannels;
        private Exp[] exponentials;
        private DivideValue[] divisions;
        private ValueBus[] exponentialOutputs;
        private ValueBus[] divisionOutputs;
        private ValueArrayCtrl valueArrayCtrl;
        private PlusCtrl plusCtrl;
    }
}
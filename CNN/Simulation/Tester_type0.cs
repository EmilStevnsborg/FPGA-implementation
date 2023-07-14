using CNN;
using System.Threading.Tasks;
using SME;
using System;
using System.Collections.Generic;

namespace CNN
{
    [ClockedProcess]
    public class Tester_type0 : Tester
    {
        [InputBus]
        public ValueBus[] Input;
        [OutputBus]
        public ValueBus[] Output;

        public Tester_type0(int numInChannels,int numOutChannels,(int,int) channelSize)
        : base(numInChannels, numOutChannels, channelSize)
        {            
            Output = new ValueBus[numInChannels];
            for (int i = 0; i < numInChannels; i++)
            {
                Output[i] = Scope.CreateBus<ValueBus>();
            }
            Stats = new List<(float,float)>();
        }
        public override async Task Run()
        {
            int index = 0;

            await ClockAsync();
            for (int i = 0; i < channelHeight; i++)
            {
                for (int j = 0; j < channelWidth; j++)
                {
                    for (int k = 0; k < numInChannels; k++)
                    {
                        Output[k].Value = buffer[k][i * channelWidth + j];
                        Output[k].enable = true;
                    }
                    await ClockAsync();
                    // check if input is back during sending
                    if (Input[0].enable) 
                    {
                        // Console.WriteLine(NumInput);
                        for (int c = 0; c < numOutChannels; c++)
                        {
                            NumInputs += 1;
                            var loss = Math.Abs(Input[c].Value - computed[c][index]);
                            Stats.Add((computed[c][index], Input[c].Value));
                            if (loss > 0.0000001)
                            {
                                // Console.WriteLine("The loss was higher than 10^(-7): " + loss);
                            }
                            if (c == numOutChannels-1) 
                            {
                                index += 1;
                            }
                        }
                    }               
                }
            }
            for (int k = 0; k < numInChannels; k++)
            {
                Output[k].enable = false;
            }
            await ClockAsync();
            // wait for input to arrive
            while(!Input[0].enable) await ClockAsync();
            // load streaming input, remember that individual send values at different times
            var expectedOutputs = computed.Length * computed[0].Length;
            for (int t = 0; t < 10000; t++)
            {
                // This is to make sure to not go through unecessary clock cycles
                if (NumInputs == expectedOutputs) 
                {
                    NumInputs = 0;
                    break;
                }
                // Console.WriteLine(t + " " + NumInputs);
                if (Input[0].enable)
                {
                    for (int c = 0; c < numOutChannels; c++)
                    { 
                        NumInputs += 1;
                        Stats.Add((computed[c][index], Input[c].Value));
                        Console.WriteLine("pred: " + Input[c].Value + " " + computed[c][index] + " " + (Input[c].Value - computed[c][index]));
                        if (c == numOutChannels-1) 
                        {
                            index += 1;
                        }
                    }
                }
                await ClockAsync();
            }
            // Console.WriteLine(NumInputs);
        }
    }
}
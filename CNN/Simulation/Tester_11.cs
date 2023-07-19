using CNN;
using System.Threading.Tasks;
using SME;
using System;
using System.Collections.Generic;

namespace CNN
{
    [ClockedProcess]
    public class Tester_11 : Tester
    {
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output;
        public Tester_11(int numInChannels,int numOutChannels,(int,int) channelSize) 
        : base(numInChannels, numOutChannels, channelSize)
        {            
            Output = Scope.CreateBus<ValueBus>();
            Stats = new List<(float,float)>();
        }
        public override async Task Run()
        {
            int index = 0;

            await ClockAsync();

            for (int k = 0; k < numInChannels; k++)
            {
                for (int i = 0; i < channelHeight; i++)
                {
                    for (int j = 0; j < channelWidth; j++)
                    {
                        Output.Value = buffer[k][i * channelWidth + j];
                        Output.enable = true;
                        await ClockAsync();    
                    }  
                }
            }
            Output.enable = false;

            await ClockAsync();
            // wait for input to arrive
            while(!Input.enable) await ClockAsync();
            // load streaming input, remember that individual send values at different times
            var expectedOutputs = computed.Length * computed[0].Length;
            int c = 0;
            for (int t = 0; t < 10000; t++)
            {
                // This is to make sure to not go through unecessary clock cycles
                if (NumInputs == expectedOutputs) 
                {
                    NumInputs = 0;
                    break;
                }
                // Console.WriteLine(t + " " + NumInputs);
                if (Input.enable)
                {
                    NumInputs += 1;
                    Stats.Add((computed[c][index], Input.Value));
                    Console.WriteLine("pred: " + Input.Value + " " + computed[c][index] + " " + (Input.Value - computed[c][index]));
                    index += 1;
                    if (index == computed[0].Length)
                    {
                        c += 1;
                        index = 0;
                    }
                }
                await ClockAsync();
            }
        }
    }
}

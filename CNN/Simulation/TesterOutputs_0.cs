using System.Threading.Tasks;
using SME;
using System.Collections.Generic;
using System;
using Config;

namespace CNN
{
    [ClockedProcess]
    public class TesterOutputs_0 : SimulationProcess
    {
        [OutputBus]
        public ValueBus[] Input;
        private int numOutChannels { get; set; }
        private int channelHeight { get; set; }
        private int channelWidth { get; set; }
        private int expectedOutputs { get; set; }
        private int NumInputs = 0;
        private string name;
        public List<float> Stats = new List<float>();

        public TesterOutputs_0(GeneralConfig config, int expectedOutputs)
        {
            this.numOutChannels = config.numOutChannels;
            channelHeight = config.channelHeight;
            channelWidth = config.channelWidth;
            this.expectedOutputs = expectedOutputs;
            name = config.GetType().Name;
        }
        public override async Task Run()
        {
            await ClockAsync();
            // wait for input to arrive
            for (int t = 0; t < 20000; t++)
            {
                if(!Input[0].enable) {await ClockAsync();}
                else 
                {
                    Console.WriteLine(name + " start: " + (t+1));
                    break;
                }
            }
            // load streaming input, remember that individual send values at different times
            for (int t = 0; t < 20000; t++)
            {
                // This is to make sure to not go through unecessary clock cycles
                if (NumInputs == expectedOutputs) 
                {
                    Console.WriteLine(name + " end: " + (t+1));
                    NumInputs = 0;
                    break;
                }
                if (Input[0].enable)
                {
                    for (int c = 0; c < numOutChannels; c++)
                    { 
                        NumInputs += 1;
                        Stats.Add(Input[c].Value);
                        // Console.WriteLine("Input number " + NumInputs);
                    }
                }
                await ClockAsync();
            }
        }
    }
}
using CNN;
using System.Threading.Tasks;
using SME;
using System;
using System.Collections.Generic;

namespace CNN
{
    [ClockedProcess]
    public abstract class Tester : SimulationProcess
    {

        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int channelWidth { get; set; }
        public float[][] buffer { get; set; }
        public float[][] computed { get; set; }
        public int NumInputs = 0;
        public List<(float, float)> Stats = new List<(float,float)>();

        public Tester(int numInChannels,int numOutChannels,(int,int) channelSize)
        {
            this.numInChannels = numInChannels;
            this.numOutChannels = numOutChannels;
            this.channelHeight = channelSize.Item1;
            this.channelWidth = channelSize.Item2;
        }
        public void FillBuffer(float[][] buffer, float[][] computed)
        {
            this.buffer = buffer;
            this.computed = computed;

        }
        public abstract override Task Run();
    }
}
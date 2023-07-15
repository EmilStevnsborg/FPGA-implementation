using SME;
using CNN;
using System.IO;
using System.Text.Json;
using Config;
using Statistics;
using System;

class MainClass
{
    public static void Main(string[] args)
    {
        bool configTest = true;
        bool CNNSmallTest = !configTest;

        if (configTest)
        {
            for (int c = 1; c <= 3; c++)
            {
                for (int t = 1; t <= 10; t++)
                {
                    using(var sim = new Simulation())
                    {
                        string config = File.ReadAllText(@"TestConfig" + c + "/config.json");

                        MaxPoolConfig maxPoolConfig = JsonSerializer.Deserialize<MaxPoolConfig>(config);
                        var maxPoolLayer = maxPoolConfig.PushConfig_00();

                        var tester = new Tester_00(maxPoolConfig.numInChannels, 
                                                      maxPoolConfig.numInChannels,
                                                      (maxPoolConfig.channelHeight,maxPoolConfig.channelWidth));

                        string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                        InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                        tester.FillBuffer(input.buffer, input.computed);

                        maxPoolLayer.Input = tester.Output;
                        maxPoolLayer.PushInputs();
                        tester.Input = maxPoolLayer.Output;

                        sim.Run();
                    }
                }
            }
        }
    }
}
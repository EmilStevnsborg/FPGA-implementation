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

                        LinearConfig linearConfig = JsonSerializer.Deserialize<LinearConfig>(config);
                        var linearLayer = linearConfig.PushConfig_10();

                        var tester = new Tester_01(linearConfig.numInChannels, 
                                                   linearConfig.numOutChannels,
                                                   (linearConfig.channelHeight,linearConfig.channelWidth));

                        string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                        InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                        tester.FillBuffer(input.buffer, input.computed);

                        linearLayer.Input = tester.Output;
                        linearLayer.PushInputs();
                        tester.Input = linearLayer.Output;

                        sim.Run();
                    }
                }
            }
        }
    }
}
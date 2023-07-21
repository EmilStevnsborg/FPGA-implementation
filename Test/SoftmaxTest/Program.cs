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

                        SoftmaxConfig softmaxConfig = JsonSerializer.Deserialize<SoftmaxConfig>(config);
                        var softmaxLayer = softmaxConfig.PushConfig_00();

                        var tester = new Tester_00(softmaxConfig.numInChannels, 
                                                   softmaxConfig.numInChannels,
                                                   (softmaxConfig.channelHeight,softmaxConfig.channelWidth));

                        string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                        InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                        tester.FillBuffer(input.buffer, input.computed);

                        softmaxLayer.Input = tester.Output;
                        softmaxLayer.PushInputs();
                        tester.Input = softmaxLayer.Output;

                        sim.Run();
                    }
                }
            }
        }
    }
}
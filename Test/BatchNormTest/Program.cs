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

                        BatchNormConfig batchNormConfig = JsonSerializer.Deserialize<BatchNormConfig>(config);
                        var batchNormLayer = batchNormConfig.PushConfig_00();

                        var tester = new Tester_00(batchNormConfig.numInChannels, 
                                                   batchNormConfig.numOutChannels,
                                                   (batchNormConfig.channelHeight,batchNormConfig.channelWidth));

                        string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                        InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                        tester.FillBuffer(input.buffer, input.computed);

                        batchNormLayer.Input = tester.Output;
                        batchNormLayer.PushInputs();
                        tester.Input = batchNormLayer.Output;

                        sim.Run();
                    }
                }
            }
        }
    }
}
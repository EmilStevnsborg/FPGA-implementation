using System.IO;
using System.Text.Json;
using Config;
using System;
using System.Collections.Generic;
using SME;
using CNN;

class MainClass
{
    public static void Main(string[] args)
    {
        bool configTest = false;
        bool CNNSmallTest = !configTest;

        if (configTest)
        {
            for (int c = 1; c <= 3; c++)
            {
                string config = File.ReadAllText(@"TestConfig" + c + "/config.json");
                MaxPoolConfig maxPoolConfig = JsonSerializer.Deserialize<MaxPoolConfig>(config);

                for (int t = 1; t <= 10; t++)
                {
                    string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                    var data = LayerTest.LayerTest_00(maxPoolConfig, inputString);

                    Console.WriteLine("Clock ticks: " + data.Item2);
                }
            }
        }
        else if (CNNSmallTest)
        {
            int tests = 928;
            // Which layer should be tested
            string layer = "maxPool2";
            // What type of implementation
            string layerType = "11";
            string path = @"../../CNNSmall/Tests/" + layer;

            string config = File.ReadAllText(@"../../CNNSmall/Configs/" + layer + ".json");
            MaxPoolConfig maxPoolConfig = JsonSerializer.Deserialize<MaxPoolConfig>(config);

            for (int t = 928; t <= tests; t++)
            {
                string inputString = File.ReadAllText(path + "/inputs/input" + t + ".json");

                using(var sim = new Simulation())
                {
                    // depending on layerType
                    var maxPoolLayer = maxPoolConfig.PushConfig_11();

                    var tester = new Tester_11(maxPoolConfig.numInChannels,
                                                maxPoolConfig.numOutChannels,
                                                (maxPoolConfig.channelHeight,maxPoolConfig.channelWidth));

                    InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                    tester.FillBuffer(input.buffer, input.computed);

                    maxPoolLayer.Input = tester.Output;
                    maxPoolLayer.PushInputs();
                    tester.Input = maxPoolLayer.Output;


                    long ticks = 0;

                    sim
                        .AddTopLevelInputs(maxPoolLayer.Input)
                        .AddTopLevelOutputs(maxPoolLayer.Output)
                        .BuildCSVFile()
                        .BuildVHDL()
                        .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                        .Run();

                    LayerTest.LayerStats(tester.Stats, path + "/outputs" + layerType + "/output" + t + ".json");

                    Console.WriteLine(t + " " + ticks);
                }
            }
        }
    }
}
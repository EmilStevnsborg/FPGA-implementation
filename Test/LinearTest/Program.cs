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
            for (int c = 3; c <= 3; c++)
            {
                string config = File.ReadAllText(@"TestConfig" + c + "/config.json");
                LinearConfig linearConfig = JsonSerializer.Deserialize<LinearConfig>(config);

                for (int t = 1; t <= 10; t++)
                {
                    string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                    var data = LayerTest.LayerTest_10(linearConfig, inputString);

                    Console.WriteLine("Clock ticks: " + data.Item2);
                }
            }
        }
        else if (CNNSmallTest)
        {
            int tests = 1;
            // Which layer should be tested
            string layer = "linear";
            // What type of implementation
            string layerType = "10";
            string path = @"../../CNNSmall/Tests/" + layer;

            string config = File.ReadAllText(@"../../CNNSmall/Configs/" + layer + ".json");
            LinearConfig linearConfig = JsonSerializer.Deserialize<LinearConfig>(config);

            for (int t = 1; t <= tests; t++)
            {
                string inputString = File.ReadAllText(path + "/inputs/input" + t + ".json");

                using(var sim = new Simulation())
                {
                    // depending on layerType
                    var linearLayer = linearConfig.PushConfig_10();

                    var tester = new Tester_01(linearConfig.numInChannels,
                                                linearConfig.numOutChannels,
                                                (linearConfig.channelHeight,linearConfig.channelWidth));

                    InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                    tester.FillBuffer(input.buffer, input.computed);

                    linearLayer.Input = tester.Output;
                    linearLayer.PushInputs();
                    tester.Input = linearLayer.Output;


                    long ticks = 0;

                    sim
                        .AddTopLevelInputs(linearLayer.Input)
                        .AddTopLevelOutputs(linearLayer.Output)
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
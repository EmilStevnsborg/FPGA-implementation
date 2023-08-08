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
                SoftmaxConfig softmaxConfig = JsonSerializer.Deserialize<SoftmaxConfig>(config);

                for (int t = 1; t <= 10; t++)
                {
                    string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                    var data = LayerTest.LayerTest_00(softmaxConfig, inputString);

                    Console.WriteLine("Clock ticks: " + data.Item2);
                }
            }
        }
        else if (CNNSmallTest)
        {
            int tests = 1000;
            // Which layer should be tested
            string layer = "softmax";
            // What type of implementation
            string layerType = "00";
            string path = @"../../CNNSmall/Tests/" + layer;
            
            string config = File.ReadAllText(@"../../CNNSmall/Configs/" + layer + ".json");
            SoftmaxConfig softmaxConfig = JsonSerializer.Deserialize<SoftmaxConfig>(config);

            for (int t = 1; t <= tests; t++)
            {
                string inputString = File.ReadAllText(path + "/inputs/input" + t + ".json");

                using(var sim = new Simulation())
                {
                    // depending on layerType
                    var softmaxLayer = softmaxConfig.PushConfig_00();

                    var tester = new Tester_00(softmaxConfig.numInChannels, 
                                                softmaxConfig.numOutChannels,
                                                (softmaxConfig.channelHeight,softmaxConfig.channelWidth));

                    InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                    tester.FillBuffer(input.buffer, input.computed);

                    softmaxLayer.Input = tester.Output;
                    softmaxLayer.PushInputs();
                    tester.Input = softmaxLayer.Output;

                    
                    long ticks = 0;

                    sim
                    .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                    .Run();

                    LayerTest.LayerStats(tester.Stats, path + "/outputs" + layerType + "/output" + t + ".json");

                    Console.WriteLine(t + " " + ticks);
                }  
            }
        }
    }
}
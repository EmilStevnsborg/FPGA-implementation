using System.IO;
using System.Text.Json;
using Config;
using System;
using System.Collections.Generic;

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
                ConvConfig convConfig = JsonSerializer.Deserialize<ConvConfig>(config);

                for (int t = 1; t <= 10; t++)
                {
                    string inputString = File.ReadAllText(@"TestConfig"  + c + "/input" + t +".json");

                    var data = LayerTest.LayerTest_00(convConfig, inputString);

                    Console.WriteLine("Clock ticks: " + data.Item2);
                }
            }
        }
        else if (CNNSmallTest)
        {
            int tests = 25;
            // Which layer should be tested
            string layer = "conv2";
            // What type of implementation
            string layerType = "01";
            string path = @"../../CNNSmall/Tests/" + layer;
            
            string config = File.ReadAllText(@"../../CNNSmall/Configs/" + layer + ".json");
            ConvConfig convConfig = JsonSerializer.Deserialize<ConvConfig>(config);

            for (int t = 1; t <= tests; t++)
            {
                (List<(float, float)>, long) data;

                string inputString = File.ReadAllText(path + "/inputs/input" + t + ".json");

                switch (layerType)
                {
                    case "01":
                        data = LayerTest.LayerTest_01(convConfig, inputString);
                        // Save the results
                        LayerTest.LayerStats(data.Item1, path + "/outputs01/output" + t + ".json");
                        break;
                    // layerType = "00"
                    default:
                        data = LayerTest.LayerTest_00(convConfig, inputString);
                        // Save the results
                        LayerTest.LayerStats(data.Item1, path + "/outputs00/output" + t + ".json");
                        break;
                }

                Console.WriteLine("Clock ticks: " + data.Item2);
            }
        }
    }
}
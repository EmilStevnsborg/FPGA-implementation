using System.IO;
using System.Text.Json;
using Config;
using System;
using System.Collections.Generic;

class MainClass
{
    public static void Main(string[] args)
    {
        bool configTest = true;
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
            int tests = 25;
            // Which layer should be tested
            string layer = "linear";
            // What type of implementation
            string layerType = "10";
            string path = @"../../CNNSmall/Tests/" + layer;
            
            string config = File.ReadAllText(@"../../CNNSmall/Configs/" + layer + ".json");
            LinearConfig linearConfig = JsonSerializer.Deserialize<LinearConfig>(config);

            for (int t = 1; t <= tests; t++)
            {
                (List<(float, float)>, long) data;

                string inputString = File.ReadAllText(path + "/inputs/input" + t + ".json");

                switch (layerType)
                {
                    case "10":
                        data = LayerTest.LayerTest_10(linearConfig, inputString);
                        // Save the results
                        LayerTest.LayerStats(data.Item1, path + "/outputs10/output" + t + ".json");
                        break;
                    // layerType = "00"
                    default:
                        data = LayerTest.LayerTest_00(linearConfig, inputString);
                        // Save the results
                        LayerTest.LayerStats(data.Item1, path + "/outputs00/output" + t + ".json");
                        break;
                }

                Console.WriteLine("Clock ticks: " + data.Item2);
            }
        }
    }
}
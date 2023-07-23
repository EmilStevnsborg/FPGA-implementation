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
        bool configTest = false;
        bool CNNSmallTest = !configTest;
        string layer = "conv2";
        int tests = 10;
        Stats stats = new Stats();
        stats.TrueKeyAdd();

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

                    stats.AddStats(data.Item1);

                    Console.WriteLine("Clock ticks: " + data.Item2);
                }
            }
        }
        else if (CNNSmallTest)
        {
            string config = File.ReadAllText(@"../../CNNSmall/Configs/" + layer + ".json");
            ConvConfig convConfig = JsonSerializer.Deserialize<ConvConfig>(config);

            for (int t = 1; t <= tests; t++)
            {
                string inputString = File.ReadAllText(@"../../CNNSmall/Tests/" + layer + "/inputs/input" + t + ".json");

                var data = LayerTest.LayerTest_00(convConfig, inputString);

                stats.AddStats(data.Item1);

                Console.WriteLine("Clock ticks: " + data.Item2);
            }
        }
    }
}
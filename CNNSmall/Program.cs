using SME;
using CNN;
using System.IO;
using System.Text.Json;
using Config;
using Statistics;
using System;
using System.Collections.Generic;

class MainClass
{
    public static void Main(string[] args)
    {
        int tests = 1;
        bool save = false;
        bool layerOutput = false;
        // main stats
        Stats stats = new Stats();
        stats.TrueKeyAdd();

        List<string> layers = new List<string>() 
        {
            "conv1", "batchNorm1", "relu1",
            "maxPool1", "conv2", "batchNorm2",
            "relu2", "maxPool2", "linear", "softmax"
        };
        
        for (int t = 0; t < tests; t++) 
        {
            // layer stats
            Stats conv1Stats      = new Stats();
            Stats batchNorm1Stats = new Stats();
            Stats relu1Stats      = new Stats();
            Stats maxPool1Stats   = new Stats();

            Stats conv2Stats      = new Stats();
            Stats batchNorm2Stats = new Stats();
            Stats relu2Stats      = new Stats();
            Stats maxPool2Stats   = new Stats();

            Stats linearStats     = new Stats();
            Stats softmaxStats    = new Stats();

            List<Stats> layerStats = new List<Stats>() 
            {
                conv1Stats, batchNorm1Stats, relu1Stats,
                maxPool1Stats, conv2Stats, batchNorm2Stats,
                relu2Stats, maxPool2Stats, linearStats, softmaxStats
            };

            using(var sim = new Simulation())
            {
                long ticks = 0;
                string conv1        = File.ReadAllText(@"Configs/conv1.json");
                string batchNorm1   = File.ReadAllText(@"Configs/batchNorm1.json");
                string relu1        = File.ReadAllText(@"Configs/relu1.json");
                string maxPool1     = File.ReadAllText(@"Configs/maxPool1.json");
                string conv2        = File.ReadAllText(@"Configs/conv2.json");
                string batchNorm2   = File.ReadAllText(@"Configs/batchNorm2.json");
                string relu2        = File.ReadAllText(@"Configs/relu2.json");
                string maxPool2     = File.ReadAllText(@"Configs/maxPool2.json");
                string linear       = File.ReadAllText(@"Configs/linear.json");
                string softmax      = File.ReadAllText(@"Configs/softmax.json");

                // initalizing all layers
                ConvConfig conv1Config  = JsonSerializer.Deserialize<ConvConfig>(conv1);
                var convLayer1 = conv1Config.PushConfig_00();
                BatchNormConfig batchNorm1Config = JsonSerializer.Deserialize<BatchNormConfig>(batchNorm1);
                var batchNormLayer1 = batchNorm1Config.PushConfig_00();
                ReluConfig relu1Config = JsonSerializer.Deserialize<ReluConfig>(relu1);
                var reluLayer1 = relu1Config.PushConfig_00();
                MaxPoolConfig maxPool1Config = JsonSerializer.Deserialize<MaxPoolConfig>(maxPool1);
                var maxPoolLayer1 = maxPool1Config.PushConfig_00();

                ConvConfig conv2Config  = JsonSerializer.Deserialize<ConvConfig>(conv2);
                var convLayer2 = conv2Config.PushConfig_01();
                BatchNormConfig batchNorm2Config = JsonSerializer.Deserialize<BatchNormConfig>(batchNorm2);
                var batchNormLayer2 = batchNorm2Config.PushConfig_11();
                ReluConfig relu2Config = JsonSerializer.Deserialize<ReluConfig>(relu2);
                var reluLayer2 = relu2Config.PushConfig_11();
                MaxPoolConfig maxPool2Config = JsonSerializer.Deserialize<MaxPoolConfig>(maxPool2);
                var maxPoolLayer2 = maxPool2Config.PushConfig_11();

                LinearConfig linearConfig = JsonSerializer.Deserialize<LinearConfig>(linear);
                var linearLayer = linearConfig.PushConfig_10();

                SoftmaxConfig softmaxConfig = JsonSerializer.Deserialize<SoftmaxConfig>(softmax);
                var softmaxLayer = softmaxConfig.PushConfig_00();

                Tester_00 tester = new Tester_00(conv1Config.numInChannels, 
                                                 softmaxConfig.numOutChannels,
                                                 (conv1Config.channelHeight,conv1Config.channelWidth));

                string inputString  = File.ReadAllText(@"Tests/conv1/inputs/input" + (t+1) + ".json");
                string outputString = File.ReadAllText(@"Tests/softmax/inputs/input" + (t+1) + ".json");
                // input and output
                InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);
                InputCase output = JsonSerializer.Deserialize<InputCase>(outputString);
                tester.FillBuffer(input.buffer, output.computed);

                if (!layerOutput) 
                {
                    // combining layer busses for network
                    convLayer1.Input = tester.Output;
                    convLayer1.PushInputs();
                    batchNormLayer1.Input = convLayer1.Output;
                    batchNormLayer1.PushInputs();
                    reluLayer1.Input = batchNormLayer1.Output;
                    reluLayer1.PushInputs();
                    maxPoolLayer1.Input = reluLayer1.Output;
                    maxPoolLayer1.PushInputs();

                    convLayer2.Input = maxPoolLayer1.Output;
                    convLayer2.PushInputs();
                    batchNormLayer2.Input = convLayer2.Output;
                    batchNormLayer2.PushInputs();
                    reluLayer2.Input = batchNormLayer2.Output;
                    reluLayer2.PushInputs();
                    maxPoolLayer2.Input = reluLayer2.Output;
                    maxPoolLayer2.PushInputs();
                    linearLayer.Input = maxPoolLayer2.Output;
                    linearLayer.PushInputs();

                    softmaxLayer.Input = linearLayer.Output;
                    softmaxLayer.PushInputs();
                    tester.Input = softmaxLayer.Output;

                    sim
                    .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                    .Run();
                    stats.AddStats(tester.Stats);
                }
            }
        }
        if (save)
        {
            // writing results out
            var options = new JsonSerializerOptions
            {
                WriteIndented = true
            };
            File.WriteAllText(@"Tests/Network/output.json", JsonSerializer.Serialize(stats.Results, options));         
        }
    }
}
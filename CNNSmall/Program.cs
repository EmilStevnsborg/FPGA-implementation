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
        int tests = 500;
        bool layerOutputs = false;

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

        List<string> layers = new List<string>() 
        {
            "conv1", "batchNorm1", "relu1",
            "maxPool1", "conv2", "batchNorm2",
            "relu2", "maxPool2", "linear", "softmax"
        };
        
        for (int t = 1; t <= tests; t++) 
        {
            // layer stats
            List<float> conv1Stats = new List<float>();
            List<float> batchNorm1Stats = new List<float>();
            List<float> relu1Stats = new List<float>();
            List<float> maxPool1Stats = new List<float>();
            List<float> conv2Stats = new List<float>();
            List<float> batchNorm2Stats = new List<float>();
            List<float> relu2Stats = new List<float>();
            List<float> maxPool2Stats = new List<float>();
            List<float> linearStats = new List<float>();
            List<float> softmaxStats = new List<float>();

            List<List<float>> layerStats = new List<List<float>>()
            {
                conv1Stats, batchNorm1Stats, relu1Stats,
                maxPool1Stats, conv2Stats, batchNorm2Stats,
                relu2Stats, maxPool2Stats, linearStats, softmaxStats
            };

            using(var sim = new Simulation())
            {
                long ticks = 0;

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
                                                 linearConfig.numOutChannels,
                                                 (conv1Config.channelHeight,conv1Config.channelWidth));

                string inputString  = File.ReadAllText(@"Tests/conv1/inputs/input" + t + ".json");
                string outputString = File.ReadAllText(@"Tests/softmax/inputs/input" + t + ".json");
                // input and output
                InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);
                InputCase output = JsonSerializer.Deserialize<InputCase>(outputString);
                tester.FillBuffer(input.buffer, output.computed);

                if (!layerOutputs) 
                {
                    // combining layer busses for network
                    convLayer1.Input = tester.Output;
                    convLayer1.PushInputs();
                    // measuring activity of convLayer1
                    var tester1 = new TesterOutputs_0(conv1Config, batchNorm1Config.ExpectedInputs());
                    tester1.Input = convLayer1.Output;

                    batchNormLayer1.Input = convLayer1.Output;
                    batchNormLayer1.PushInputs();
                    // measuring activity of batchNormLayer1
                    var tester2 = new TesterOutputs_0(batchNorm1Config, relu1Config.ExpectedInputs());
                    tester2.Input = batchNormLayer1.Output;

                    reluLayer1.Input = batchNormLayer1.Output;
                    reluLayer1.PushInputs();
                    // measuring activity of reluLayer1
                    var tester3 = new TesterOutputs_0(relu1Config, maxPool1Config.ExpectedInputs());
                    tester3.Input = reluLayer1.Output;

                    maxPoolLayer1.Input = reluLayer1.Output;
                    maxPoolLayer1.PushInputs();
                    // measuring activity of maxPoolLayer1
                    var tester4 = new TesterOutputs_0(maxPool1Config, conv2Config.ExpectedInputs());
                    tester4.Input = maxPoolLayer1.Output;

                    convLayer2.Input = maxPoolLayer1.Output;
                    convLayer2.PushInputs();
                    // measuring activity of convLayer2
                    var tester5 = new TesterOutputs_1(conv2Config, batchNorm2Config.ExpectedInputs());
                    tester5.Input = convLayer2.Output;

                    batchNormLayer2.Input = convLayer2.Output;
                    batchNormLayer2.PushInputs();
                    // measuring activity of batchNormLayer2
                    var tester6 = new TesterOutputs_1(batchNorm2Config, relu2Config.ExpectedInputs());
                    tester6.Input = batchNormLayer2.Output;

                    reluLayer2.Input = batchNormLayer2.Output;
                    reluLayer2.PushInputs();
                    // measuring activity of reluLayer2
                    var tester7 = new TesterOutputs_1(relu2Config, maxPool2Config.ExpectedInputs());
                    tester7.Input = reluLayer2.Output;

                    maxPoolLayer2.Input = reluLayer2.Output;
                    maxPoolLayer2.PushInputs();
                    // measuring activity of maxPoolLayer2
                    var tester8 = new TesterOutputs_1(maxPool2Config, linearConfig.ExpectedInputs());
                    tester8.Input = maxPoolLayer2.Output;


                    linearLayer.Input = maxPoolLayer2.Output;
                    linearLayer.PushInputs();
                    // measuring activity of linearLayer
                    var tester9 = new TesterOutputs_0(linearConfig, softmaxConfig.ExpectedInputs());
                    tester9.Input = linearLayer.Output;

                    softmaxLayer.Input = linearLayer.Output;
                    softmaxLayer.PushInputs();
                    // measuring activity of softmaxLayer
                    var tester10 = new TesterOutputs_0(softmaxConfig, softmaxConfig.ExpectedInputs());
                    tester10.Input = softmaxLayer.Output;

                    tester.Input = softmaxLayer.Output;

                    sim
                    .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                    .Run();

                    conv1Stats.AddRange(tester1.Stats);
                    batchNorm1Stats.AddRange(tester2.Stats);
                    relu1Stats.AddRange(tester3.Stats);
                    maxPool1Stats.AddRange(tester4.Stats);
                    conv2Stats.AddRange(tester5.Stats);
                    batchNorm2Stats.AddRange(tester6.Stats);
                    relu2Stats.AddRange(tester7.Stats);
                    maxPool2Stats.AddRange(tester8.Stats);
                    linearStats.AddRange(tester9.Stats);
                    softmaxStats.AddRange(tester10.Stats);

                    Console.WriteLine(t + " " + ticks);
                }
            }
            // save data in files
            for (int i = 0; i < layers.Count; i++)
            {
                string layer = layers[i];
                List<float> ls = layerStats[i];
                LayerTest.LayerStatsSingle(ls, @"Tests/Network/test" + t + "/" + layer + ".json");
            }
        }
    }
}
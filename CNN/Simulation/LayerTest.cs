using SME;
using CNN;
using System.IO;
using System.Text.Json;
using Config;
using Statistics;
using System;
using System.Collections.Generic;

namespace Config
{
    public static class LayerTest
    {
        public static (List<(float, float)>, long) LayerTest_00(GeneralConfig config, string inputString)
        {
            using(var sim = new Simulation())
            {
                var layer = config.PushConfig_00();

                var tester = new Tester_00(config.numInChannels, 
                                           config.numOutChannels,
                                           (config.channelHeight,config.channelWidth));

                InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                tester.FillBuffer(input.buffer, input.computed);

                layer.Input = tester.Output;
                layer.PushInputs();
                tester.Input = layer.Output;

                
                long ticks = 0;

                sim
                .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                .Run();

                return (tester.Stats, ticks);
            }   
        }
        public static (List<(float, float)>, long) LayerTest_10(GeneralConfig config, string inputString)
        {
            using(var sim = new Simulation())
            {
                var layer = config.PushConfig_10();

                var tester = new Tester_01(config.numInChannels, 
                                           config.numOutChannels,
                                           (config.channelHeight,config.channelWidth));

                InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                tester.FillBuffer(input.buffer, input.computed);

                layer.Input = tester.Output;
                layer.PushInputs();
                tester.Input = layer.Output;

                
                long ticks = 0;

                sim
                .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                .Run();

                return (tester.Stats, ticks);
            }   
        }
        public static (List<(float, float)>, long) LayerTest_11(GeneralConfig config, string inputString)
        {
            using(var sim = new Simulation())
            {
                var layer = config.PushConfig_11();

                var tester = new Tester_11(config.numInChannels, 
                                           config.numOutChannels,
                                           (config.channelHeight,config.channelWidth));

                InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                tester.FillBuffer(input.buffer, input.computed);

                layer.Input = tester.Output;
                layer.PushInputs();
                tester.Input = layer.Output;

                
                long ticks = 0;

                sim
                .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                .Run();

                return (tester.Stats, ticks);
            }   
        }
        public static (List<(float, float)>, long) LayerTest_01(GeneralConfig config, string inputString)
        {
            using(var sim = new Simulation())
            {
                var layer = config.PushConfig_01();

                var tester = new Tester_10(config.numInChannels, 
                                           config.numOutChannels,
                                           (config.channelHeight,config.channelWidth));

                InputCase input = JsonSerializer.Deserialize<InputCase>(inputString);

                tester.FillBuffer(input.buffer, input.computed);

                layer.Input = tester.Output;
                layer.PushInputs();
                tester.Input = layer.Output;

                
                long ticks = 0;

                sim
                .AddTicker(s => ticks = Scope.Current.Clock.Ticks)
                .Run();

                return (tester.Stats, ticks);
            }   
        }
        public static void LayerStats(List<(float, float)> stats, string path)
        {
            Stats statsObj = new Stats();
            statsObj.TrueKeyAdd();

            statsObj.AddStats(stats);

            // writing results out
            var options = new JsonSerializerOptions
            {
                WriteIndented = true
            };
            File.WriteAllText(path, JsonSerializer.Serialize(statsObj.Results, options));
        }
    }
}
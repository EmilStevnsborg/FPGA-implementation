using SME;
using CNN;

namespace Config
{
    public abstract class GeneralConfig
    {
        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int  channelWidth { get; set; }
        public int ExpectedInputs()
        {
            return numInChannels * channelHeight * channelWidth;
        }
        public abstract Layer<ValueBus[], ValueBus[]> PushConfig_00();
        public abstract Layer<ValueBus[], ValueBus> PushConfig_01();
        public abstract Layer<ValueBus, ValueBus[]> PushConfig_10();
        public abstract Layer<ValueBus, ValueBus> PushConfig_11();
    }
}
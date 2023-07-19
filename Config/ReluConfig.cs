using CNN;

namespace Config
{
    public class ReluConfig
    {
        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int  channelWidth { get; set; }
        public ReluConfig() {} 
        public ReluLayer_00 PushConfig_00()
        {
            return new ReluLayer_00(numInChannels);
        }
        public ReluLayer_11 PushConfig_11()
        {
            return new ReluLayer_11();
        }
    }
}
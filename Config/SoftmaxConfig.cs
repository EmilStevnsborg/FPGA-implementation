using CNN;

namespace Config
{
    public class SoftmaxConfig
    {
        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int  channelWidth { get; set; }
        public SoftmaxConfig() {} 
        public SoftmaxLayer_00 PushConfig_00()
        {
            return new SoftmaxLayer_00(numInChannels, (channelHeight,channelWidth));
        }
    }
}
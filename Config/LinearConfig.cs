using CNN;

namespace Config
{
    public class LinearConfig
    {
        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int  channelWidth { get; set; }
        public float[][] weights { get; set; }
        public float[] biases { get; set; }
        public LinearConfig() {} 
        public LinearLayer_00 PushConfig_00()
        {
            return new LinearLayer_00(numInChannels,
                                      numOutChannels,
                                      weights,
                                      biases,
                                      (channelHeight,channelWidth));
        }
        public LinearLayer_10 PushConfig_10()
        {
            return new LinearLayer_10(numInChannels,
                                      numOutChannels,
                                      weights,
                                      biases,
                                      (channelHeight,channelWidth));
        }
    }
}
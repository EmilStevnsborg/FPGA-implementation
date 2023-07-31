using CNN;

namespace Config
{
    // Specified linear configuration class that can initialize a linear layer
    public class LinearConfig : GeneralConfig
    {
        public float[][] weights { get; set; }
        public float[] biases { get; set; }
        public LinearConfig() {} 
        public override LinearLayer_00 PushConfig_00()
        {
            return new LinearLayer_00(numInChannels,
                                      numOutChannels,
                                      weights,
                                      biases,
                                      (channelHeight,channelWidth));
        }
        public override LinearLayer_10 PushConfig_10()
        {
            return new LinearLayer_10(numInChannels,
                                      numOutChannels,
                                      weights,
                                      biases,
                                      (channelHeight,channelWidth));
        }

        public override Layer<ValueBus[], ValueBus> PushConfig_01()
        {
            throw new System.NotImplementedException();
        }

        public override Layer<ValueBus, ValueBus> PushConfig_11()
        {
            throw new System.NotImplementedException();
        }
    }
}
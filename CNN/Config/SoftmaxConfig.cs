using CNN;

namespace Config
{
    // Specified softmax configuration class that can initialize a softmax layer
    public class SoftmaxConfig : GeneralConfig
    {
        public SoftmaxConfig() {} 
        public override SoftmaxLayer_00 PushConfig_00()
        {
            return new SoftmaxLayer_00(numInChannels, (channelHeight,channelWidth));
        }

        public override Layer<ValueBus[], ValueBus> PushConfig_01()
        {
            throw new System.NotImplementedException();
        }

        public override Layer<ValueBus, ValueBus[]> PushConfig_10()
        {
            throw new System.NotImplementedException();
        }

        public override Layer<ValueBus, ValueBus> PushConfig_11()
        {
            throw new System.NotImplementedException();
        }
    }
}
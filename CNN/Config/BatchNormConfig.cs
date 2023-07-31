using CNN;

namespace Config
{
    // Specified batchnormalization configuration class that can initialize a batchnormalization 
    // layer
    public class BatchNormConfig : GeneralConfig
    {
        public float[] means { get; set; }
        public float[] vars { get; set; }
        public float[] gammas { get; set; }
        public float[] betas { get; set; }
        public BatchNormConfig() {} 
        public override BatchNormLayer_00 PushConfig_00()
        {
            return new BatchNormLayer_00(numInChannels,
                                         numOutChannels,
                                         means,
                                         vars,
                                         gammas,
                                         betas);
        }
        public override BatchNormLayer_11 PushConfig_11()
        {
            return new BatchNormLayer_11(numInChannels,
                                         numOutChannels,
                                         channelHeight*channelWidth,
                                         means,
                                         vars,
                                         gammas,
                                         betas);
        }

        public override Layer<ValueBus[], ValueBus> PushConfig_01()
        {
            throw new System.NotImplementedException();
        }

        public override Layer<ValueBus, ValueBus[]> PushConfig_10()
        {
            throw new System.NotImplementedException();
        }
    }
}
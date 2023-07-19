using CNN;

namespace Config
{
    public class BatchNormConfig
    {
        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int  channelWidth { get; set; }
        public float[] means { get; set; }
        public float[] vars { get; set; }
        public float[] gammas { get; set; }
        public float[] betas { get; set; }
        public BatchNormConfig() {} 
        public BatchNormLayer_00 PushConfig_00()
        {
            return new BatchNormLayer_00(numInChannels,
                                         numOutChannels,
                                         means,
                                         vars,
                                         gammas,
                                         betas);
        }
    }
}
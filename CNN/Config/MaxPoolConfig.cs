using CNN;

namespace Config
{
    // Specified maxpooling configuration class that can initialize a maxpooling layer
    public class MaxPoolConfig : GeneralConfig
    {
        public int kernelHeight { get; set; }
        public int kernelWidth { get; set; }
        public int strideRow { get; set; }
        public int strideCol { get; set; }
        public int padHeight { get; set; }
        public int padWidth { get; set; }
        public float padVal { get; set; }
        public MaxPoolConfig() {} 
        public override MaxPoolLayer_00 PushConfig_00()
        {
            return new MaxPoolLayer_00(numInChannels,
                                       (channelHeight,channelWidth),
                                       (kernelHeight,kernelWidth),
                                       (strideRow,strideCol),
                                       (padHeight,padWidth),
                                       padVal);
        }
        public override MaxPoolLayer_11 PushConfig_11()
        {
            return new MaxPoolLayer_11(numInChannels,
                                       (channelHeight,channelWidth),
                                       (kernelHeight,kernelWidth),
                                       (strideRow,strideCol),
                                       (padHeight,padWidth),
                                       padVal);
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
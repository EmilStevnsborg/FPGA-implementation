using SME;
using CNN;

namespace Config
{
    public class ConvConfig : GeneralConfig
    {
        public int kernelHeight { get; set; }
        public int kernelWidth { get; set; }
        public int strideRow { get; set; }
        public int strideCol { get; set; }
        public int padHeight { get; set; }
        public int padWidth { get; set; }
        public float padVal { get; set; }
        public float[][][] weights { get; set; }
        public float[] biases { get; set; }
        public ConvConfig() {} 
        public override ConvLayer_00 PushConfig_00()
        {
            return new ConvLayer_00(numInChannels,
                                    numOutChannels,
                                    weights,
                                    biases,
                                    (channelHeight,channelWidth),
                                    (kernelHeight,kernelWidth),
                                    (strideRow,strideCol),
                                    (padHeight,padWidth),
                                    padVal);
        }
        public override ConvLayer_01 PushConfig_01()
        {
            return new ConvLayer_01(numInChannels,
                                    numOutChannels,
                                    weights,
                                    biases,
                                    (channelHeight,channelWidth),
                                    (kernelHeight,kernelWidth),
                                    (strideRow,strideCol),
                                    (padHeight,padWidth),
                                    padVal);
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
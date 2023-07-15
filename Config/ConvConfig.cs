using SME;
using CNN;

namespace Config
{
    public class ConvConfig
    {
        public int numInChannels { get; set; }
        public int numOutChannels { get; set; }
        public int channelHeight { get; set; }
        public int  channelWidth { get; set; }
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
        public ConvLayer_00 PushConfig_00()
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
        public ConvLayer_01 PushConfig_01()
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
    }
}
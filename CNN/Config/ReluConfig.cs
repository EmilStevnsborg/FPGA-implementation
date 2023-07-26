using CNN;

namespace Config
{
    public class ReluConfig : GeneralConfig
    {
        public ReluConfig() {} 
        public override ReluLayer_00 PushConfig_00()
        {
            return new ReluLayer_00(numInChannels);
        }
        public override ReluLayer_11 PushConfig_11()
        {
            return new ReluLayer_11();
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
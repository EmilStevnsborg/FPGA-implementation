library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

-- library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity ConvTest is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in T_SYSTEM_BOOL;
        ValueBus_2_Value: in T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_5_enable: in T_SYSTEM_BOOL;
        ValueBus_5_Value: in T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_8_enable: in T_SYSTEM_BOOL;
        ValueBus_8_Value: in T_SYSTEM_FLOAT;
        ValueBus_8_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_14_enable: out T_SYSTEM_BOOL;
        ValueBus_14_Value: out T_SYSTEM_FLOAT;
        ValueBus_14_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_41_enable: out T_SYSTEM_BOOL;
        ValueBus_41_Value: out T_SYSTEM_FLOAT;
        ValueBus_41_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_68_enable: out T_SYSTEM_BOOL;
        ValueBus_68_Value: out T_SYSTEM_FLOAT;
        ValueBus_68_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_95_enable: out T_SYSTEM_BOOL;
        ValueBus_95_Value: out T_SYSTEM_FLOAT;
        ValueBus_95_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_122_enable: out T_SYSTEM_BOOL;
        ValueBus_122_Value: out T_SYSTEM_FLOAT;
        ValueBus_122_LastValue: out T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_0_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_0_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_0_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_0_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_1_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_1_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_1_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_1_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_0_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_1_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_0_enable: inout T_SYSTEM_BOOL;
        ValueBus_0_Value: inout T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_1_enable: inout T_SYSTEM_BOOL;
        ValueBus_1_Value: inout T_SYSTEM_FLOAT;
        ValueBus_1_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_2_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_2_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_2_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_2_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_3_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_3_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_3_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_3_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_2_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_3_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_4_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_4_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_4_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_4_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_5_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_5_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_5_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_5_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_4_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_5_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_6_enable: inout T_SYSTEM_BOOL;
        ValueBus_6_Value: inout T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_7_enable: inout T_SYSTEM_BOOL;
        ValueBus_7_Value: inout T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_12_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_12_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_12_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_9_enable: inout T_SYSTEM_BOOL;
        ValueBus_9_Value: inout T_SYSTEM_FLOAT;
        ValueBus_9_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_13_enable: inout T_SYSTEM_BOOL;
        ValueBus_13_Value: inout T_SYSTEM_FLOAT;
        ValueBus_13_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_15_enable: inout T_SYSTEM_BOOL;
        ValueBus_15_Value: inout T_SYSTEM_FLOAT;
        ValueBus_15_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_16_enable: inout T_SYSTEM_BOOL;
        ValueBus_16_Value: inout T_SYSTEM_FLOAT;
        ValueBus_16_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_17_enable: inout T_SYSTEM_BOOL;
        ValueBus_17_Value: inout T_SYSTEM_FLOAT;
        ValueBus_17_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_18_enable: inout T_SYSTEM_BOOL;
        ValueBus_18_Value: inout T_SYSTEM_FLOAT;
        ValueBus_18_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_19_enable: inout T_SYSTEM_BOOL;
        ValueBus_19_Value: inout T_SYSTEM_FLOAT;
        ValueBus_19_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_20_enable: inout T_SYSTEM_BOOL;
        ValueBus_20_Value: inout T_SYSTEM_FLOAT;
        ValueBus_20_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_21_enable: inout T_SYSTEM_BOOL;
        ValueBus_21_Value: inout T_SYSTEM_FLOAT;
        ValueBus_21_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_22_enable: inout T_SYSTEM_BOOL;
        ValueBus_22_Value: inout T_SYSTEM_FLOAT;
        ValueBus_22_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_23_enable: inout T_SYSTEM_BOOL;
        ValueBus_23_Value: inout T_SYSTEM_FLOAT;
        ValueBus_23_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_24_enable: inout T_SYSTEM_BOOL;
        ValueBus_24_Value: inout T_SYSTEM_FLOAT;
        ValueBus_24_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_25_enable: inout T_SYSTEM_BOOL;
        ValueBus_25_Value: inout T_SYSTEM_FLOAT;
        ValueBus_25_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_26_enable: inout T_SYSTEM_BOOL;
        ValueBus_26_Value: inout T_SYSTEM_FLOAT;
        ValueBus_26_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_27_enable: inout T_SYSTEM_BOOL;
        ValueBus_27_Value: inout T_SYSTEM_FLOAT;
        ValueBus_27_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_28_enable: inout T_SYSTEM_BOOL;
        ValueBus_28_Value: inout T_SYSTEM_FLOAT;
        ValueBus_28_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_29_enable: inout T_SYSTEM_BOOL;
        ValueBus_29_Value: inout T_SYSTEM_FLOAT;
        ValueBus_29_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_30_enable: inout T_SYSTEM_BOOL;
        ValueBus_30_Value: inout T_SYSTEM_FLOAT;
        ValueBus_30_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_31_enable: inout T_SYSTEM_BOOL;
        ValueBus_31_Value: inout T_SYSTEM_FLOAT;
        ValueBus_31_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_32_enable: inout T_SYSTEM_BOOL;
        ValueBus_32_Value: inout T_SYSTEM_FLOAT;
        ValueBus_32_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_33_enable: inout T_SYSTEM_BOOL;
        ValueBus_33_Value: inout T_SYSTEM_FLOAT;
        ValueBus_33_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_34_enable: inout T_SYSTEM_BOOL;
        ValueBus_34_Value: inout T_SYSTEM_FLOAT;
        ValueBus_34_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_35_enable: inout T_SYSTEM_BOOL;
        ValueBus_35_Value: inout T_SYSTEM_FLOAT;
        ValueBus_35_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_39_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_39_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_39_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_36_enable: inout T_SYSTEM_BOOL;
        ValueBus_36_Value: inout T_SYSTEM_FLOAT;
        ValueBus_36_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_40_enable: inout T_SYSTEM_BOOL;
        ValueBus_40_Value: inout T_SYSTEM_FLOAT;
        ValueBus_40_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_42_enable: inout T_SYSTEM_BOOL;
        ValueBus_42_Value: inout T_SYSTEM_FLOAT;
        ValueBus_42_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_43_enable: inout T_SYSTEM_BOOL;
        ValueBus_43_Value: inout T_SYSTEM_FLOAT;
        ValueBus_43_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_44_enable: inout T_SYSTEM_BOOL;
        ValueBus_44_Value: inout T_SYSTEM_FLOAT;
        ValueBus_44_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_45_enable: inout T_SYSTEM_BOOL;
        ValueBus_45_Value: inout T_SYSTEM_FLOAT;
        ValueBus_45_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_46_enable: inout T_SYSTEM_BOOL;
        ValueBus_46_Value: inout T_SYSTEM_FLOAT;
        ValueBus_46_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_47_enable: inout T_SYSTEM_BOOL;
        ValueBus_47_Value: inout T_SYSTEM_FLOAT;
        ValueBus_47_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_48_enable: inout T_SYSTEM_BOOL;
        ValueBus_48_Value: inout T_SYSTEM_FLOAT;
        ValueBus_48_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_49_enable: inout T_SYSTEM_BOOL;
        ValueBus_49_Value: inout T_SYSTEM_FLOAT;
        ValueBus_49_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_50_enable: inout T_SYSTEM_BOOL;
        ValueBus_50_Value: inout T_SYSTEM_FLOAT;
        ValueBus_50_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_51_enable: inout T_SYSTEM_BOOL;
        ValueBus_51_Value: inout T_SYSTEM_FLOAT;
        ValueBus_51_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_52_enable: inout T_SYSTEM_BOOL;
        ValueBus_52_Value: inout T_SYSTEM_FLOAT;
        ValueBus_52_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_53_enable: inout T_SYSTEM_BOOL;
        ValueBus_53_Value: inout T_SYSTEM_FLOAT;
        ValueBus_53_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_54_enable: inout T_SYSTEM_BOOL;
        ValueBus_54_Value: inout T_SYSTEM_FLOAT;
        ValueBus_54_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_55_enable: inout T_SYSTEM_BOOL;
        ValueBus_55_Value: inout T_SYSTEM_FLOAT;
        ValueBus_55_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_56_enable: inout T_SYSTEM_BOOL;
        ValueBus_56_Value: inout T_SYSTEM_FLOAT;
        ValueBus_56_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_57_enable: inout T_SYSTEM_BOOL;
        ValueBus_57_Value: inout T_SYSTEM_FLOAT;
        ValueBus_57_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_58_enable: inout T_SYSTEM_BOOL;
        ValueBus_58_Value: inout T_SYSTEM_FLOAT;
        ValueBus_58_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_59_enable: inout T_SYSTEM_BOOL;
        ValueBus_59_Value: inout T_SYSTEM_FLOAT;
        ValueBus_59_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_60_enable: inout T_SYSTEM_BOOL;
        ValueBus_60_Value: inout T_SYSTEM_FLOAT;
        ValueBus_60_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_61_enable: inout T_SYSTEM_BOOL;
        ValueBus_61_Value: inout T_SYSTEM_FLOAT;
        ValueBus_61_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_62_enable: inout T_SYSTEM_BOOL;
        ValueBus_62_Value: inout T_SYSTEM_FLOAT;
        ValueBus_62_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_66_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_66_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_66_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_63_enable: inout T_SYSTEM_BOOL;
        ValueBus_63_Value: inout T_SYSTEM_FLOAT;
        ValueBus_63_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_67_enable: inout T_SYSTEM_BOOL;
        ValueBus_67_Value: inout T_SYSTEM_FLOAT;
        ValueBus_67_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_69_enable: inout T_SYSTEM_BOOL;
        ValueBus_69_Value: inout T_SYSTEM_FLOAT;
        ValueBus_69_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_70_enable: inout T_SYSTEM_BOOL;
        ValueBus_70_Value: inout T_SYSTEM_FLOAT;
        ValueBus_70_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_71_enable: inout T_SYSTEM_BOOL;
        ValueBus_71_Value: inout T_SYSTEM_FLOAT;
        ValueBus_71_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_72_enable: inout T_SYSTEM_BOOL;
        ValueBus_72_Value: inout T_SYSTEM_FLOAT;
        ValueBus_72_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_73_enable: inout T_SYSTEM_BOOL;
        ValueBus_73_Value: inout T_SYSTEM_FLOAT;
        ValueBus_73_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_74_enable: inout T_SYSTEM_BOOL;
        ValueBus_74_Value: inout T_SYSTEM_FLOAT;
        ValueBus_74_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_75_enable: inout T_SYSTEM_BOOL;
        ValueBus_75_Value: inout T_SYSTEM_FLOAT;
        ValueBus_75_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_76_enable: inout T_SYSTEM_BOOL;
        ValueBus_76_Value: inout T_SYSTEM_FLOAT;
        ValueBus_76_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_77_enable: inout T_SYSTEM_BOOL;
        ValueBus_77_Value: inout T_SYSTEM_FLOAT;
        ValueBus_77_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_78_enable: inout T_SYSTEM_BOOL;
        ValueBus_78_Value: inout T_SYSTEM_FLOAT;
        ValueBus_78_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_79_enable: inout T_SYSTEM_BOOL;
        ValueBus_79_Value: inout T_SYSTEM_FLOAT;
        ValueBus_79_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_80_enable: inout T_SYSTEM_BOOL;
        ValueBus_80_Value: inout T_SYSTEM_FLOAT;
        ValueBus_80_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_81_enable: inout T_SYSTEM_BOOL;
        ValueBus_81_Value: inout T_SYSTEM_FLOAT;
        ValueBus_81_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_82_enable: inout T_SYSTEM_BOOL;
        ValueBus_82_Value: inout T_SYSTEM_FLOAT;
        ValueBus_82_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_83_enable: inout T_SYSTEM_BOOL;
        ValueBus_83_Value: inout T_SYSTEM_FLOAT;
        ValueBus_83_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_84_enable: inout T_SYSTEM_BOOL;
        ValueBus_84_Value: inout T_SYSTEM_FLOAT;
        ValueBus_84_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_85_enable: inout T_SYSTEM_BOOL;
        ValueBus_85_Value: inout T_SYSTEM_FLOAT;
        ValueBus_85_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_86_enable: inout T_SYSTEM_BOOL;
        ValueBus_86_Value: inout T_SYSTEM_FLOAT;
        ValueBus_86_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_87_enable: inout T_SYSTEM_BOOL;
        ValueBus_87_Value: inout T_SYSTEM_FLOAT;
        ValueBus_87_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_88_enable: inout T_SYSTEM_BOOL;
        ValueBus_88_Value: inout T_SYSTEM_FLOAT;
        ValueBus_88_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_89_enable: inout T_SYSTEM_BOOL;
        ValueBus_89_Value: inout T_SYSTEM_FLOAT;
        ValueBus_89_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_93_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_93_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_93_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_90_enable: inout T_SYSTEM_BOOL;
        ValueBus_90_Value: inout T_SYSTEM_FLOAT;
        ValueBus_90_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_94_enable: inout T_SYSTEM_BOOL;
        ValueBus_94_Value: inout T_SYSTEM_FLOAT;
        ValueBus_94_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_96_enable: inout T_SYSTEM_BOOL;
        ValueBus_96_Value: inout T_SYSTEM_FLOAT;
        ValueBus_96_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_97_enable: inout T_SYSTEM_BOOL;
        ValueBus_97_Value: inout T_SYSTEM_FLOAT;
        ValueBus_97_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_98_enable: inout T_SYSTEM_BOOL;
        ValueBus_98_Value: inout T_SYSTEM_FLOAT;
        ValueBus_98_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_99_enable: inout T_SYSTEM_BOOL;
        ValueBus_99_Value: inout T_SYSTEM_FLOAT;
        ValueBus_99_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_100_enable: inout T_SYSTEM_BOOL;
        ValueBus_100_Value: inout T_SYSTEM_FLOAT;
        ValueBus_100_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_101_enable: inout T_SYSTEM_BOOL;
        ValueBus_101_Value: inout T_SYSTEM_FLOAT;
        ValueBus_101_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_102_enable: inout T_SYSTEM_BOOL;
        ValueBus_102_Value: inout T_SYSTEM_FLOAT;
        ValueBus_102_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_103_enable: inout T_SYSTEM_BOOL;
        ValueBus_103_Value: inout T_SYSTEM_FLOAT;
        ValueBus_103_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_104_enable: inout T_SYSTEM_BOOL;
        ValueBus_104_Value: inout T_SYSTEM_FLOAT;
        ValueBus_104_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_105_enable: inout T_SYSTEM_BOOL;
        ValueBus_105_Value: inout T_SYSTEM_FLOAT;
        ValueBus_105_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_106_enable: inout T_SYSTEM_BOOL;
        ValueBus_106_Value: inout T_SYSTEM_FLOAT;
        ValueBus_106_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_107_enable: inout T_SYSTEM_BOOL;
        ValueBus_107_Value: inout T_SYSTEM_FLOAT;
        ValueBus_107_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_108_enable: inout T_SYSTEM_BOOL;
        ValueBus_108_Value: inout T_SYSTEM_FLOAT;
        ValueBus_108_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_109_enable: inout T_SYSTEM_BOOL;
        ValueBus_109_Value: inout T_SYSTEM_FLOAT;
        ValueBus_109_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_110_enable: inout T_SYSTEM_BOOL;
        ValueBus_110_Value: inout T_SYSTEM_FLOAT;
        ValueBus_110_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_111_enable: inout T_SYSTEM_BOOL;
        ValueBus_111_Value: inout T_SYSTEM_FLOAT;
        ValueBus_111_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_112_enable: inout T_SYSTEM_BOOL;
        ValueBus_112_Value: inout T_SYSTEM_FLOAT;
        ValueBus_112_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_113_enable: inout T_SYSTEM_BOOL;
        ValueBus_113_Value: inout T_SYSTEM_FLOAT;
        ValueBus_113_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_114_enable: inout T_SYSTEM_BOOL;
        ValueBus_114_Value: inout T_SYSTEM_FLOAT;
        ValueBus_114_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_115_enable: inout T_SYSTEM_BOOL;
        ValueBus_115_Value: inout T_SYSTEM_FLOAT;
        ValueBus_115_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_116_enable: inout T_SYSTEM_BOOL;
        ValueBus_116_Value: inout T_SYSTEM_FLOAT;
        ValueBus_116_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_120_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_120_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_120_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_117_enable: inout T_SYSTEM_BOOL;
        ValueBus_117_Value: inout T_SYSTEM_FLOAT;
        ValueBus_117_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_121_enable: inout T_SYSTEM_BOOL;
        ValueBus_121_Value: inout T_SYSTEM_FLOAT;
        ValueBus_121_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_123_enable: inout T_SYSTEM_BOOL;
        ValueBus_123_Value: inout T_SYSTEM_FLOAT;
        ValueBus_123_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_124_enable: inout T_SYSTEM_BOOL;
        ValueBus_124_Value: inout T_SYSTEM_FLOAT;
        ValueBus_124_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_125_enable: inout T_SYSTEM_BOOL;
        ValueBus_125_Value: inout T_SYSTEM_FLOAT;
        ValueBus_125_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_126_enable: inout T_SYSTEM_BOOL;
        ValueBus_126_Value: inout T_SYSTEM_FLOAT;
        ValueBus_126_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_127_enable: inout T_SYSTEM_BOOL;
        ValueBus_127_Value: inout T_SYSTEM_FLOAT;
        ValueBus_127_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_128_enable: inout T_SYSTEM_BOOL;
        ValueBus_128_Value: inout T_SYSTEM_FLOAT;
        ValueBus_128_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_129_enable: inout T_SYSTEM_BOOL;
        ValueBus_129_Value: inout T_SYSTEM_FLOAT;
        ValueBus_129_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_130_enable: inout T_SYSTEM_BOOL;
        ValueBus_130_Value: inout T_SYSTEM_FLOAT;
        ValueBus_130_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_131_enable: inout T_SYSTEM_BOOL;
        ValueBus_131_Value: inout T_SYSTEM_FLOAT;
        ValueBus_131_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_132_enable: inout T_SYSTEM_BOOL;
        ValueBus_132_Value: inout T_SYSTEM_FLOAT;
        ValueBus_132_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_133_enable: inout T_SYSTEM_BOOL;
        ValueBus_133_Value: inout T_SYSTEM_FLOAT;
        ValueBus_133_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_134_enable: inout T_SYSTEM_BOOL;
        ValueBus_134_Value: inout T_SYSTEM_FLOAT;
        ValueBus_134_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_135_enable: inout T_SYSTEM_BOOL;
        ValueBus_135_Value: inout T_SYSTEM_FLOAT;
        ValueBus_135_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_136_enable: inout T_SYSTEM_BOOL;
        ValueBus_136_Value: inout T_SYSTEM_FLOAT;
        ValueBus_136_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_137_enable: inout T_SYSTEM_BOOL;
        ValueBus_137_Value: inout T_SYSTEM_FLOAT;
        ValueBus_137_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_138_enable: inout T_SYSTEM_BOOL;
        ValueBus_138_Value: inout T_SYSTEM_FLOAT;
        ValueBus_138_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_139_enable: inout T_SYSTEM_BOOL;
        ValueBus_139_Value: inout T_SYSTEM_FLOAT;
        ValueBus_139_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_140_enable: inout T_SYSTEM_BOOL;
        ValueBus_140_Value: inout T_SYSTEM_FLOAT;
        ValueBus_140_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_141_enable: inout T_SYSTEM_BOOL;
        ValueBus_141_Value: inout T_SYSTEM_FLOAT;
        ValueBus_141_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_142_enable: inout T_SYSTEM_BOOL;
        ValueBus_142_Value: inout T_SYSTEM_FLOAT;
        ValueBus_142_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_143_enable: inout T_SYSTEM_BOOL;
        ValueBus_143_Value: inout T_SYSTEM_FLOAT;
        ValueBus_143_LastValue: inout T_SYSTEM_BOOL;

        -- User defined signals here
        -- #### USER-DATA-ENTITYSIGNALS-START
        -- #### USER-DATA-ENTITYSIGNALS-END

        -- Enable signal
        ENB : in Std_logic;

        -- Finished signal
        FIN : out Std_logic;

        -- Reset signal
        RST : in Std_logic;

        -- Clock signal
        CLK : in Std_logic
    );
end ConvTest;

architecture RTL of ConvTest is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_TrueDualPortMemory_1_Single_0 : std_logic;
    signal FIN_InputCtrl_ParFilter_0 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_1 : std_logic;
    signal FIN_InputCtrl_ParFilter_1 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_2 : std_logic;
    signal FIN_InputCtrl_ParFilter_2 : std_logic;
    signal FIN_ValueArrayCtrl_0 : std_logic;
    signal FIN_PlusCtrl_0 : std_logic;
    signal FIN_Bias_0 : std_logic;
    signal FIN_KernelCtrl_0 : std_logic;
    signal FIN_WeightValue_0 : std_logic;
    signal FIN_WeightValue_1 : std_logic;
    signal FIN_PlusTwo_0 : std_logic;
    signal FIN_PlusCtrl_1 : std_logic;
    signal FIN_KernelCtrl_1 : std_logic;
    signal FIN_WeightValue_2 : std_logic;
    signal FIN_WeightValue_3 : std_logic;
    signal FIN_PlusTwo_1 : std_logic;
    signal FIN_PlusCtrl_2 : std_logic;
    signal FIN_KernelCtrl_2 : std_logic;
    signal FIN_WeightValue_4 : std_logic;
    signal FIN_WeightValue_5 : std_logic;
    signal FIN_PlusTwo_2 : std_logic;
    signal FIN_PlusCtrl_3 : std_logic;
    signal FIN_ValueArrayCtrl_1 : std_logic;
    signal FIN_PlusCtrl_4 : std_logic;
    signal FIN_Bias_1 : std_logic;
    signal FIN_KernelCtrl_3 : std_logic;
    signal FIN_WeightValue_6 : std_logic;
    signal FIN_WeightValue_7 : std_logic;
    signal FIN_PlusTwo_3 : std_logic;
    signal FIN_PlusCtrl_5 : std_logic;
    signal FIN_KernelCtrl_4 : std_logic;
    signal FIN_WeightValue_8 : std_logic;
    signal FIN_WeightValue_9 : std_logic;
    signal FIN_PlusTwo_4 : std_logic;
    signal FIN_PlusCtrl_6 : std_logic;
    signal FIN_KernelCtrl_5 : std_logic;
    signal FIN_WeightValue_10 : std_logic;
    signal FIN_WeightValue_11 : std_logic;
    signal FIN_PlusTwo_5 : std_logic;
    signal FIN_PlusCtrl_7 : std_logic;
    signal FIN_ValueArrayCtrl_2 : std_logic;
    signal FIN_PlusCtrl_8 : std_logic;
    signal FIN_Bias_2 : std_logic;
    signal FIN_KernelCtrl_6 : std_logic;
    signal FIN_WeightValue_12 : std_logic;
    signal FIN_WeightValue_13 : std_logic;
    signal FIN_PlusTwo_6 : std_logic;
    signal FIN_PlusCtrl_9 : std_logic;
    signal FIN_KernelCtrl_7 : std_logic;
    signal FIN_WeightValue_14 : std_logic;
    signal FIN_WeightValue_15 : std_logic;
    signal FIN_PlusTwo_7 : std_logic;
    signal FIN_PlusCtrl_10 : std_logic;
    signal FIN_KernelCtrl_8 : std_logic;
    signal FIN_WeightValue_16 : std_logic;
    signal FIN_WeightValue_17 : std_logic;
    signal FIN_PlusTwo_8 : std_logic;
    signal FIN_PlusCtrl_11 : std_logic;
    signal FIN_ValueArrayCtrl_3 : std_logic;
    signal FIN_PlusCtrl_12 : std_logic;
    signal FIN_Bias_3 : std_logic;
    signal FIN_KernelCtrl_9 : std_logic;
    signal FIN_WeightValue_18 : std_logic;
    signal FIN_WeightValue_19 : std_logic;
    signal FIN_PlusTwo_9 : std_logic;
    signal FIN_PlusCtrl_13 : std_logic;
    signal FIN_KernelCtrl_10 : std_logic;
    signal FIN_WeightValue_20 : std_logic;
    signal FIN_WeightValue_21 : std_logic;
    signal FIN_PlusTwo_10 : std_logic;
    signal FIN_PlusCtrl_14 : std_logic;
    signal FIN_KernelCtrl_11 : std_logic;
    signal FIN_WeightValue_22 : std_logic;
    signal FIN_WeightValue_23 : std_logic;
    signal FIN_PlusTwo_11 : std_logic;
    signal FIN_PlusCtrl_15 : std_logic;
    signal FIN_ValueArrayCtrl_4 : std_logic;
    signal FIN_PlusCtrl_16 : std_logic;
    signal FIN_Bias_4 : std_logic;
    signal FIN_KernelCtrl_12 : std_logic;
    signal FIN_WeightValue_24 : std_logic;
    signal FIN_WeightValue_25 : std_logic;
    signal FIN_PlusTwo_12 : std_logic;
    signal FIN_PlusCtrl_17 : std_logic;
    signal FIN_KernelCtrl_13 : std_logic;
    signal FIN_WeightValue_26 : std_logic;
    signal FIN_WeightValue_27 : std_logic;
    signal FIN_PlusTwo_13 : std_logic;
    signal FIN_PlusCtrl_18 : std_logic;
    signal FIN_KernelCtrl_14 : std_logic;
    signal FIN_WeightValue_28 : std_logic;
    signal FIN_WeightValue_29 : std_logic;
    signal FIN_PlusTwo_14 : std_logic;
    signal FIN_PlusCtrl_19 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity TrueDualPortMemory`1<Single>#0 signals
    TrueDualPortMemory_1_Single_0: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 168) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_1_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#0 signals
    InputCtrl_ParFilter_0: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 5),
        reset_newWidth => TO_UNSIGNED(13, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 2),
        reset_strideCol => TO_UNSIGNED(1, 2),
        reset_startRow => TO_UNSIGNED(0, 5),
        reset_startCol => TO_UNSIGNED(0, 5),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_2_enable,
        Input_Value => ValueBus_2_Value,
        Input_LastValue => ValueBus_2_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_0_enable,
        OutputValueA_LastValue => ValueBus_0_LastValue,
        OutputValueA_Value => ValueBus_0_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_1_enable,
        OutputValueB_Value => ValueBus_1_Value,
        OutputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_1_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#1 signals
    TrueDualPortMemory_1_Single_1: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 168) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_3_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#1 signals
    InputCtrl_ParFilter_1: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 5),
        reset_newWidth => TO_UNSIGNED(13, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 2),
        reset_strideCol => TO_UNSIGNED(1, 2),
        reset_startRow => TO_UNSIGNED(0, 5),
        reset_startCol => TO_UNSIGNED(0, 5),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_3_enable,
        OutputValueA_LastValue => ValueBus_3_LastValue,
        OutputValueA_Value => ValueBus_3_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_4_enable,
        OutputValueB_Value => ValueBus_4_Value,
        OutputValueB_LastValue => ValueBus_4_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_3_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#2 signals
    TrueDualPortMemory_1_Single_2: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 168) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_4_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_5_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#2 signals
    InputCtrl_ParFilter_2: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 5),
        reset_newWidth => TO_UNSIGNED(13, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 2),
        reset_strideCol => TO_UNSIGNED(1, 2),
        reset_startRow => TO_UNSIGNED(0, 5),
        reset_startCol => TO_UNSIGNED(0, 5),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_8_enable,
        Input_Value => ValueBus_8_Value,
        Input_LastValue => ValueBus_8_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_6_enable,
        OutputValueA_LastValue => ValueBus_6_LastValue,
        OutputValueA_Value => ValueBus_6_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_7_enable,
        OutputValueB_Value => ValueBus_7_Value,
        OutputValueB_LastValue => ValueBus_7_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_4_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_5_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#0 signals
    ValueArrayCtrl_0: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(3, 3),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(3, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_12_enable(0),
        Input_enable(1) => ValueBus_12_enable(1),
        Input_enable(2) => ValueBus_12_enable(2),
        Input_Value(0) => ValueBus_12_Value(0),
        Input_Value(1) => ValueBus_12_Value(1),
        Input_Value(2) => ValueBus_12_Value(2),
        Input_LastValue(0) => ValueBus_12_LastValue(0),
        Input_LastValue(1) => ValueBus_12_LastValue(1),
        Input_LastValue(2) => ValueBus_12_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_9_enable,
        Output_LastValue => ValueBus_9_LastValue,
        Output_Value => ValueBus_9_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#0 signals
    PlusCtrl_0: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_9_enable,
        Input_Value => ValueBus_9_Value,
        Input_LastValue => ValueBus_9_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_13_enable,
        Output_LastValue => ValueBus_13_LastValue,
        Output_Value => ValueBus_13_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#0 signals
    Bias_0: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bdb54413")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_13_enable,
        Input_Value => ValueBus_13_Value,
        Input_LastValue => ValueBus_13_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_14_enable,
        Output_LastValue => ValueBus_14_LastValue,
        Output_Value => ValueBus_14_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#0 signals
    KernelCtrl_0: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bd37bd98"), 1 => std_logic_vector'(x"3d23bce4"), 2 => std_logic_vector'(x"3d6db622"), 3 => std_logic_vector'(x"bd81369e"), 4 => std_logic_vector'(x"bdd0ab0a"), 5 => std_logic_vector'(x"bcd44ea9"), 6 => std_logic_vector'(x"3c223b50"), 7 => std_logic_vector'(x"3d323f91"), 8 => std_logic_vector'(x"3d8034c9"), 9 => std_logic_vector'(x"bd5e0a8c"), 10 => std_logic_vector'(x"bd86531d"), 11 => std_logic_vector'(x"3d98b193"), 12 => std_logic_vector'(x"3e0ffec5"), 13 => std_logic_vector'(x"bd9eab4f"), 14 => std_logic_vector'(x"3e04590c"), 15 => std_logic_vector'(x"3c0250af"), 16 => std_logic_vector'(x"3d45daba"), 17 => std_logic_vector'(x"3d474fd6"), 18 => std_logic_vector'(x"bda8868e"), 19 => std_logic_vector'(x"bcc293f7"), 20 => std_logic_vector'(x"b8924910"), 21 => std_logic_vector'(x"bd07462c"), 22 => std_logic_vector'(x"3e0829b0"), 23 => std_logic_vector'(x"3b3596e0"), 24 => std_logic_vector'(x"bca0082e")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_15_enable,
        OutputValueA_LastValue => ValueBus_15_LastValue,
        OutputValueA_Value => ValueBus_15_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_16_enable,
        OutputWeightA_Value => ValueBus_16_Value,
        OutputWeightA_LastValue => ValueBus_16_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_17_enable,
        OutputValueB_LastValue => ValueBus_17_LastValue,
        OutputValueB_Value => ValueBus_17_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_18_enable,
        OutputWeightB_Value => ValueBus_18_Value,
        OutputWeightB_LastValue => ValueBus_18_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#0 signals
    WeightValue_0: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_15_enable,
        InputValue_Value => ValueBus_15_Value,
        InputValue_LastValue => ValueBus_15_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_16_enable,
        InputWeight_Value => ValueBus_16_Value,
        InputWeight_LastValue => ValueBus_16_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_19_enable,
        Output_LastValue => ValueBus_19_LastValue,
        Output_Value => ValueBus_19_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#1 signals
    WeightValue_1: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_17_enable,
        InputValue_Value => ValueBus_17_Value,
        InputValue_LastValue => ValueBus_17_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_18_enable,
        InputWeight_Value => ValueBus_18_Value,
        InputWeight_LastValue => ValueBus_18_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_20_enable,
        Output_LastValue => ValueBus_20_LastValue,
        Output_Value => ValueBus_20_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#0 signals
    PlusTwo_0: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_19_enable,
        InputA_Value => ValueBus_19_Value,
        InputA_LastValue => ValueBus_19_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_20_enable,
        InputB_Value => ValueBus_20_Value,
        InputB_LastValue => ValueBus_20_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_21_enable,
        Output_LastValue => ValueBus_21_LastValue,
        Output_Value => ValueBus_21_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#1 signals
    PlusCtrl_1: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_21_enable,
        Input_Value => ValueBus_21_Value,
        Input_LastValue => ValueBus_21_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_12_enable(0),
        Output_LastValue => ValueBus_12_LastValue(0),
        Output_Value => ValueBus_12_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#1 signals
    KernelCtrl_1: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bd59d476"), 1 => std_logic_vector'(x"bdbebd0a"), 2 => std_logic_vector'(x"bd8b07c8"), 3 => std_logic_vector'(x"3d7728c7"), 4 => std_logic_vector'(x"bdb5c607"), 5 => std_logic_vector'(x"bdf1ea81"), 6 => std_logic_vector'(x"bd0550b2"), 7 => std_logic_vector'(x"bda96090"), 8 => std_logic_vector'(x"3ddbe554"), 9 => std_logic_vector'(x"3d97ea55"), 10 => std_logic_vector'(x"bcf80059"), 11 => std_logic_vector'(x"bd550f7d"), 12 => std_logic_vector'(x"3d86d86d"), 13 => std_logic_vector'(x"3ce92ba9"), 14 => std_logic_vector'(x"3cdc9071"), 15 => std_logic_vector'(x"3d8d746d"), 16 => std_logic_vector'(x"3e02fd5b"), 17 => std_logic_vector'(x"bd072997"), 18 => std_logic_vector'(x"3be72605"), 19 => std_logic_vector'(x"bd2ac2e7"), 20 => std_logic_vector'(x"3db95147"), 21 => std_logic_vector'(x"3c3173f1"), 22 => std_logic_vector'(x"3c9d3b5d"), 23 => std_logic_vector'(x"bd2187d6"), 24 => std_logic_vector'(x"bd9a559a")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_3_enable,
        InputValueA_Value => ValueBus_3_Value,
        InputValueA_LastValue => ValueBus_3_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_4_enable,
        InputValueB_Value => ValueBus_4_Value,
        InputValueB_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_22_enable,
        OutputValueA_LastValue => ValueBus_22_LastValue,
        OutputValueA_Value => ValueBus_22_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_23_enable,
        OutputWeightA_Value => ValueBus_23_Value,
        OutputWeightA_LastValue => ValueBus_23_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_24_enable,
        OutputValueB_LastValue => ValueBus_24_LastValue,
        OutputValueB_Value => ValueBus_24_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_25_enable,
        OutputWeightB_Value => ValueBus_25_Value,
        OutputWeightB_LastValue => ValueBus_25_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#2 signals
    WeightValue_2: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_22_enable,
        InputValue_Value => ValueBus_22_Value,
        InputValue_LastValue => ValueBus_22_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_23_enable,
        InputWeight_Value => ValueBus_23_Value,
        InputWeight_LastValue => ValueBus_23_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_26_enable,
        Output_LastValue => ValueBus_26_LastValue,
        Output_Value => ValueBus_26_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#3 signals
    WeightValue_3: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_24_enable,
        InputValue_Value => ValueBus_24_Value,
        InputValue_LastValue => ValueBus_24_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_25_enable,
        InputWeight_Value => ValueBus_25_Value,
        InputWeight_LastValue => ValueBus_25_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_27_enable,
        Output_LastValue => ValueBus_27_LastValue,
        Output_Value => ValueBus_27_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#1 signals
    PlusTwo_1: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_26_enable,
        InputA_Value => ValueBus_26_Value,
        InputA_LastValue => ValueBus_26_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_27_enable,
        InputB_Value => ValueBus_27_Value,
        InputB_LastValue => ValueBus_27_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_28_enable,
        Output_LastValue => ValueBus_28_LastValue,
        Output_Value => ValueBus_28_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#2 signals
    PlusCtrl_2: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_28_enable,
        Input_Value => ValueBus_28_Value,
        Input_LastValue => ValueBus_28_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_12_enable(1),
        Output_LastValue => ValueBus_12_LastValue(1),
        Output_Value => ValueBus_12_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#2 signals
    KernelCtrl_2: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bc3dcc59"), 1 => std_logic_vector'(x"3d055d74"), 2 => std_logic_vector'(x"bb154bcf"), 3 => std_logic_vector'(x"3c81cb2e"), 4 => std_logic_vector'(x"3e064f22"), 5 => std_logic_vector'(x"bd973986"), 6 => std_logic_vector'(x"bd648ab0"), 7 => std_logic_vector'(x"bc40f94f"), 8 => std_logic_vector'(x"bbcee791"), 9 => std_logic_vector'(x"3c41cada"), 10 => std_logic_vector'(x"bbf4351a"), 11 => std_logic_vector'(x"3d0e71cb"), 12 => std_logic_vector'(x"bdd4cbf7"), 13 => std_logic_vector'(x"3b34ff23"), 14 => std_logic_vector'(x"3cb39a80"), 15 => std_logic_vector'(x"3cddba78"), 16 => std_logic_vector'(x"3db96aeb"), 17 => std_logic_vector'(x"bdc75b11"), 18 => std_logic_vector'(x"bd80b956"), 19 => std_logic_vector'(x"bdba710e"), 20 => std_logic_vector'(x"3dd6bdb4"), 21 => std_logic_vector'(x"3d547e96"), 22 => std_logic_vector'(x"3c859919"), 23 => std_logic_vector'(x"bdbd4de1"), 24 => std_logic_vector'(x"3d918242")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_6_enable,
        InputValueA_Value => ValueBus_6_Value,
        InputValueA_LastValue => ValueBus_6_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_7_enable,
        InputValueB_Value => ValueBus_7_Value,
        InputValueB_LastValue => ValueBus_7_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_29_enable,
        OutputValueA_LastValue => ValueBus_29_LastValue,
        OutputValueA_Value => ValueBus_29_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_30_enable,
        OutputWeightA_Value => ValueBus_30_Value,
        OutputWeightA_LastValue => ValueBus_30_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_31_enable,
        OutputValueB_LastValue => ValueBus_31_LastValue,
        OutputValueB_Value => ValueBus_31_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_32_enable,
        OutputWeightB_Value => ValueBus_32_Value,
        OutputWeightB_LastValue => ValueBus_32_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#4 signals
    WeightValue_4: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_29_enable,
        InputValue_Value => ValueBus_29_Value,
        InputValue_LastValue => ValueBus_29_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_30_enable,
        InputWeight_Value => ValueBus_30_Value,
        InputWeight_LastValue => ValueBus_30_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_33_enable,
        Output_LastValue => ValueBus_33_LastValue,
        Output_Value => ValueBus_33_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#5 signals
    WeightValue_5: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_31_enable,
        InputValue_Value => ValueBus_31_Value,
        InputValue_LastValue => ValueBus_31_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_32_enable,
        InputWeight_Value => ValueBus_32_Value,
        InputWeight_LastValue => ValueBus_32_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_34_enable,
        Output_LastValue => ValueBus_34_LastValue,
        Output_Value => ValueBus_34_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#2 signals
    PlusTwo_2: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_33_enable,
        InputA_Value => ValueBus_33_Value,
        InputA_LastValue => ValueBus_33_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_34_enable,
        InputB_Value => ValueBus_34_Value,
        InputB_LastValue => ValueBus_34_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_35_enable,
        Output_LastValue => ValueBus_35_LastValue,
        Output_Value => ValueBus_35_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#3 signals
    PlusCtrl_3: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_35_enable,
        Input_Value => ValueBus_35_Value,
        Input_LastValue => ValueBus_35_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_12_enable(2),
        Output_LastValue => ValueBus_12_LastValue(2),
        Output_Value => ValueBus_12_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#1 signals
    ValueArrayCtrl_1: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(3, 3),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(3, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_39_enable(0),
        Input_enable(1) => ValueBus_39_enable(1),
        Input_enable(2) => ValueBus_39_enable(2),
        Input_Value(0) => ValueBus_39_Value(0),
        Input_Value(1) => ValueBus_39_Value(1),
        Input_Value(2) => ValueBus_39_Value(2),
        Input_LastValue(0) => ValueBus_39_LastValue(0),
        Input_LastValue(1) => ValueBus_39_LastValue(1),
        Input_LastValue(2) => ValueBus_39_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_36_enable,
        Output_LastValue => ValueBus_36_LastValue,
        Output_Value => ValueBus_36_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#4 signals
    PlusCtrl_4: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_36_enable,
        Input_Value => ValueBus_36_Value,
        Input_LastValue => ValueBus_36_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_40_enable,
        Output_LastValue => ValueBus_40_LastValue,
        Output_Value => ValueBus_40_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#1 signals
    Bias_1: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bde34c87")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_40_enable,
        Input_Value => ValueBus_40_Value,
        Input_LastValue => ValueBus_40_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_41_enable,
        Output_LastValue => ValueBus_41_LastValue,
        Output_Value => ValueBus_41_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#3 signals
    KernelCtrl_3: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bc25392f"), 1 => std_logic_vector'(x"be017437"), 2 => std_logic_vector'(x"3d3fc175"), 3 => std_logic_vector'(x"3de792c0"), 4 => std_logic_vector'(x"bd3959cf"), 5 => std_logic_vector'(x"bd1a49e2"), 6 => std_logic_vector'(x"bc5ddcdc"), 7 => std_logic_vector'(x"3c992b5b"), 8 => std_logic_vector'(x"bc8b11b8"), 9 => std_logic_vector'(x"3e2ac64a"), 10 => std_logic_vector'(x"bcfff72b"), 11 => std_logic_vector'(x"3dbfd289"), 12 => std_logic_vector'(x"3da2aa6d"), 13 => std_logic_vector'(x"bd8d9523"), 14 => std_logic_vector'(x"bdfb9ae2"), 15 => std_logic_vector'(x"bbdcbe89"), 16 => std_logic_vector'(x"bd1e2a49"), 17 => std_logic_vector'(x"bc6333d4"), 18 => std_logic_vector'(x"bdeaf80e"), 19 => std_logic_vector'(x"bdcde9d7"), 20 => std_logic_vector'(x"3c8119f1"), 21 => std_logic_vector'(x"3d5530be"), 22 => std_logic_vector'(x"bc0534ed"), 23 => std_logic_vector'(x"bdc75e2b"), 24 => std_logic_vector'(x"bcf57a16")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_42_enable,
        OutputValueA_LastValue => ValueBus_42_LastValue,
        OutputValueA_Value => ValueBus_42_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_43_enable,
        OutputWeightA_Value => ValueBus_43_Value,
        OutputWeightA_LastValue => ValueBus_43_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_44_enable,
        OutputValueB_LastValue => ValueBus_44_LastValue,
        OutputValueB_Value => ValueBus_44_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_45_enable,
        OutputWeightB_Value => ValueBus_45_Value,
        OutputWeightB_LastValue => ValueBus_45_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#6 signals
    WeightValue_6: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_42_enable,
        InputValue_Value => ValueBus_42_Value,
        InputValue_LastValue => ValueBus_42_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_43_enable,
        InputWeight_Value => ValueBus_43_Value,
        InputWeight_LastValue => ValueBus_43_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_46_enable,
        Output_LastValue => ValueBus_46_LastValue,
        Output_Value => ValueBus_46_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#7 signals
    WeightValue_7: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_44_enable,
        InputValue_Value => ValueBus_44_Value,
        InputValue_LastValue => ValueBus_44_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_45_enable,
        InputWeight_Value => ValueBus_45_Value,
        InputWeight_LastValue => ValueBus_45_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_47_enable,
        Output_LastValue => ValueBus_47_LastValue,
        Output_Value => ValueBus_47_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#3 signals
    PlusTwo_3: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_46_enable,
        InputA_Value => ValueBus_46_Value,
        InputA_LastValue => ValueBus_46_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_47_enable,
        InputB_Value => ValueBus_47_Value,
        InputB_LastValue => ValueBus_47_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_48_enable,
        Output_LastValue => ValueBus_48_LastValue,
        Output_Value => ValueBus_48_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#5 signals
    PlusCtrl_5: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_48_enable,
        Input_Value => ValueBus_48_Value,
        Input_LastValue => ValueBus_48_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_39_enable(0),
        Output_LastValue => ValueBus_39_LastValue(0),
        Output_Value => ValueBus_39_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#4 signals
    KernelCtrl_4: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3d53b41c"), 1 => std_logic_vector'(x"be390239"), 2 => std_logic_vector'(x"3b960aa1"), 3 => std_logic_vector'(x"3e2bb8bf"), 4 => std_logic_vector'(x"3e74bb63"), 5 => std_logic_vector'(x"bd5ab85f"), 6 => std_logic_vector'(x"bd5f7615"), 7 => std_logic_vector'(x"3d31612a"), 8 => std_logic_vector'(x"3d8e6dab"), 9 => std_logic_vector'(x"bbd5aae0"), 10 => std_logic_vector'(x"bc0c99fb"), 11 => std_logic_vector'(x"3d9aab0e"), 12 => std_logic_vector'(x"bc16abaa"), 13 => std_logic_vector'(x"bd5002f0"), 14 => std_logic_vector'(x"bd258565"), 15 => std_logic_vector'(x"bd5621a5"), 16 => std_logic_vector'(x"3d01bd70"), 17 => std_logic_vector'(x"bd94457c"), 18 => std_logic_vector'(x"3dd8b7eb"), 19 => std_logic_vector'(x"3dd30909"), 20 => std_logic_vector'(x"3d1d665c"), 21 => std_logic_vector'(x"bc75a401"), 22 => std_logic_vector'(x"bc7008eb"), 23 => std_logic_vector'(x"3df56a7d"), 24 => std_logic_vector'(x"bc12e174")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_3_enable,
        InputValueA_Value => ValueBus_3_Value,
        InputValueA_LastValue => ValueBus_3_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_4_enable,
        InputValueB_Value => ValueBus_4_Value,
        InputValueB_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_49_enable,
        OutputValueA_LastValue => ValueBus_49_LastValue,
        OutputValueA_Value => ValueBus_49_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_50_enable,
        OutputWeightA_Value => ValueBus_50_Value,
        OutputWeightA_LastValue => ValueBus_50_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_51_enable,
        OutputValueB_LastValue => ValueBus_51_LastValue,
        OutputValueB_Value => ValueBus_51_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_52_enable,
        OutputWeightB_Value => ValueBus_52_Value,
        OutputWeightB_LastValue => ValueBus_52_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#8 signals
    WeightValue_8: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_49_enable,
        InputValue_Value => ValueBus_49_Value,
        InputValue_LastValue => ValueBus_49_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_50_enable,
        InputWeight_Value => ValueBus_50_Value,
        InputWeight_LastValue => ValueBus_50_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_53_enable,
        Output_LastValue => ValueBus_53_LastValue,
        Output_Value => ValueBus_53_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#9 signals
    WeightValue_9: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_51_enable,
        InputValue_Value => ValueBus_51_Value,
        InputValue_LastValue => ValueBus_51_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_52_enable,
        InputWeight_Value => ValueBus_52_Value,
        InputWeight_LastValue => ValueBus_52_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_54_enable,
        Output_LastValue => ValueBus_54_LastValue,
        Output_Value => ValueBus_54_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#4 signals
    PlusTwo_4: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_53_enable,
        InputA_Value => ValueBus_53_Value,
        InputA_LastValue => ValueBus_53_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_54_enable,
        InputB_Value => ValueBus_54_Value,
        InputB_LastValue => ValueBus_54_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_55_enable,
        Output_LastValue => ValueBus_55_LastValue,
        Output_Value => ValueBus_55_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#6 signals
    PlusCtrl_6: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_55_enable,
        Input_Value => ValueBus_55_Value,
        Input_LastValue => ValueBus_55_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_39_enable(1),
        Output_LastValue => ValueBus_39_LastValue(1),
        Output_Value => ValueBus_39_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#5 signals
    KernelCtrl_5: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bbc54fcd"), 1 => std_logic_vector'(x"bda7ae4c"), 2 => std_logic_vector'(x"3e1e54ec"), 3 => std_logic_vector'(x"3d664890"), 4 => std_logic_vector'(x"bc890921"), 5 => std_logic_vector'(x"bba2405f"), 6 => std_logic_vector'(x"bcdb245c"), 7 => std_logic_vector'(x"bc8c97ac"), 8 => std_logic_vector'(x"3c8f239b"), 9 => std_logic_vector'(x"3e03c424"), 10 => std_logic_vector'(x"bc9cbe9c"), 11 => std_logic_vector'(x"3ce10f07"), 12 => std_logic_vector'(x"bdb3f507"), 13 => std_logic_vector'(x"3c8a1951"), 14 => std_logic_vector'(x"3b632c4e"), 15 => std_logic_vector'(x"3cf567a6"), 16 => std_logic_vector'(x"3cb62f68"), 17 => std_logic_vector'(x"3ca3d1a9"), 18 => std_logic_vector'(x"bcd02027"), 19 => std_logic_vector'(x"3b847f0e"), 20 => std_logic_vector'(x"3d62ec36"), 21 => std_logic_vector'(x"3c0fdbef"), 22 => std_logic_vector'(x"3c43b331"), 23 => std_logic_vector'(x"3d5a0bcc"), 24 => std_logic_vector'(x"3d759d34")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_6_enable,
        InputValueA_Value => ValueBus_6_Value,
        InputValueA_LastValue => ValueBus_6_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_7_enable,
        InputValueB_Value => ValueBus_7_Value,
        InputValueB_LastValue => ValueBus_7_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_56_enable,
        OutputValueA_LastValue => ValueBus_56_LastValue,
        OutputValueA_Value => ValueBus_56_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_57_enable,
        OutputWeightA_Value => ValueBus_57_Value,
        OutputWeightA_LastValue => ValueBus_57_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_58_enable,
        OutputValueB_LastValue => ValueBus_58_LastValue,
        OutputValueB_Value => ValueBus_58_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_59_enable,
        OutputWeightB_Value => ValueBus_59_Value,
        OutputWeightB_LastValue => ValueBus_59_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#10 signals
    WeightValue_10: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_56_enable,
        InputValue_Value => ValueBus_56_Value,
        InputValue_LastValue => ValueBus_56_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_57_enable,
        InputWeight_Value => ValueBus_57_Value,
        InputWeight_LastValue => ValueBus_57_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_60_enable,
        Output_LastValue => ValueBus_60_LastValue,
        Output_Value => ValueBus_60_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#11 signals
    WeightValue_11: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_58_enable,
        InputValue_Value => ValueBus_58_Value,
        InputValue_LastValue => ValueBus_58_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_59_enable,
        InputWeight_Value => ValueBus_59_Value,
        InputWeight_LastValue => ValueBus_59_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_61_enable,
        Output_LastValue => ValueBus_61_LastValue,
        Output_Value => ValueBus_61_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#5 signals
    PlusTwo_5: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_60_enable,
        InputA_Value => ValueBus_60_Value,
        InputA_LastValue => ValueBus_60_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_61_enable,
        InputB_Value => ValueBus_61_Value,
        InputB_LastValue => ValueBus_61_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_62_enable,
        Output_LastValue => ValueBus_62_LastValue,
        Output_Value => ValueBus_62_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#7 signals
    PlusCtrl_7: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_62_enable,
        Input_Value => ValueBus_62_Value,
        Input_LastValue => ValueBus_62_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_39_enable(2),
        Output_LastValue => ValueBus_39_LastValue(2),
        Output_Value => ValueBus_39_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#2 signals
    ValueArrayCtrl_2: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(3, 3),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(3, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_66_enable(0),
        Input_enable(1) => ValueBus_66_enable(1),
        Input_enable(2) => ValueBus_66_enable(2),
        Input_Value(0) => ValueBus_66_Value(0),
        Input_Value(1) => ValueBus_66_Value(1),
        Input_Value(2) => ValueBus_66_Value(2),
        Input_LastValue(0) => ValueBus_66_LastValue(0),
        Input_LastValue(1) => ValueBus_66_LastValue(1),
        Input_LastValue(2) => ValueBus_66_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_63_enable,
        Output_LastValue => ValueBus_63_LastValue,
        Output_Value => ValueBus_63_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#8 signals
    PlusCtrl_8: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_63_enable,
        Input_Value => ValueBus_63_Value,
        Input_LastValue => ValueBus_63_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_67_enable,
        Output_LastValue => ValueBus_67_LastValue,
        Output_Value => ValueBus_67_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#2 signals
    Bias_2: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3cfc713d")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_67_enable,
        Input_Value => ValueBus_67_Value,
        Input_LastValue => ValueBus_67_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_68_enable,
        Output_LastValue => ValueBus_68_LastValue,
        Output_Value => ValueBus_68_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#6 signals
    KernelCtrl_6: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bceff905"), 1 => std_logic_vector'(x"3addc543"), 2 => std_logic_vector'(x"bc8fb217"), 3 => std_logic_vector'(x"bd9e9564"), 4 => std_logic_vector'(x"bc12f2cb"), 5 => std_logic_vector'(x"bd1a91ca"), 6 => std_logic_vector'(x"3c88b3b0"), 7 => std_logic_vector'(x"bdbea7e0"), 8 => std_logic_vector'(x"bd76a18e"), 9 => std_logic_vector'(x"bc8b1ef7"), 10 => std_logic_vector'(x"3c3e301d"), 11 => std_logic_vector'(x"be340f25"), 12 => std_logic_vector'(x"3c1557c1"), 13 => std_logic_vector'(x"3da8c025"), 14 => std_logic_vector'(x"3daba265"), 15 => std_logic_vector'(x"bd6feb95"), 16 => std_logic_vector'(x"3de0b9ef"), 17 => std_logic_vector'(x"3e08c806"), 18 => std_logic_vector'(x"3c766370"), 19 => std_logic_vector'(x"bcc8dae1"), 20 => std_logic_vector'(x"bcae1abd"), 21 => std_logic_vector'(x"3ce6a3be"), 22 => std_logic_vector'(x"3a0591f8"), 23 => std_logic_vector'(x"3cfd97ca"), 24 => std_logic_vector'(x"bcc70338")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_69_enable,
        OutputValueA_LastValue => ValueBus_69_LastValue,
        OutputValueA_Value => ValueBus_69_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_70_enable,
        OutputWeightA_Value => ValueBus_70_Value,
        OutputWeightA_LastValue => ValueBus_70_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_71_enable,
        OutputValueB_LastValue => ValueBus_71_LastValue,
        OutputValueB_Value => ValueBus_71_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_72_enable,
        OutputWeightB_Value => ValueBus_72_Value,
        OutputWeightB_LastValue => ValueBus_72_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#12 signals
    WeightValue_12: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_69_enable,
        InputValue_Value => ValueBus_69_Value,
        InputValue_LastValue => ValueBus_69_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_70_enable,
        InputWeight_Value => ValueBus_70_Value,
        InputWeight_LastValue => ValueBus_70_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_73_enable,
        Output_LastValue => ValueBus_73_LastValue,
        Output_Value => ValueBus_73_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#13 signals
    WeightValue_13: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_71_enable,
        InputValue_Value => ValueBus_71_Value,
        InputValue_LastValue => ValueBus_71_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_72_enable,
        InputWeight_Value => ValueBus_72_Value,
        InputWeight_LastValue => ValueBus_72_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_74_enable,
        Output_LastValue => ValueBus_74_LastValue,
        Output_Value => ValueBus_74_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#6 signals
    PlusTwo_6: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_73_enable,
        InputA_Value => ValueBus_73_Value,
        InputA_LastValue => ValueBus_73_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_74_enable,
        InputB_Value => ValueBus_74_Value,
        InputB_LastValue => ValueBus_74_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_75_enable,
        Output_LastValue => ValueBus_75_LastValue,
        Output_Value => ValueBus_75_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#9 signals
    PlusCtrl_9: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_75_enable,
        Input_Value => ValueBus_75_Value,
        Input_LastValue => ValueBus_75_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_66_enable(0),
        Output_LastValue => ValueBus_66_LastValue(0),
        Output_Value => ValueBus_66_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#7 signals
    KernelCtrl_7: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3e23d31b"), 1 => std_logic_vector'(x"bc8154e0"), 2 => std_logic_vector'(x"3de6bd31"), 3 => std_logic_vector'(x"bbd404f4"), 4 => std_logic_vector'(x"3b7ec4e6"), 5 => std_logic_vector'(x"3e2a097d"), 6 => std_logic_vector'(x"bdbf8934"), 7 => std_logic_vector'(x"3ccb90f2"), 8 => std_logic_vector'(x"bd9ef8dd"), 9 => std_logic_vector'(x"3c73f9e5"), 10 => std_logic_vector'(x"3af80f67"), 11 => std_logic_vector'(x"3e291b03"), 12 => std_logic_vector'(x"3e048839"), 13 => std_logic_vector'(x"bc7ccdac"), 14 => std_logic_vector'(x"bcea6c66"), 15 => std_logic_vector'(x"3d8a17d9"), 16 => std_logic_vector'(x"3c946d32"), 17 => std_logic_vector'(x"3d87db0b"), 18 => std_logic_vector'(x"bccf6698"), 19 => std_logic_vector'(x"3dab710e"), 20 => std_logic_vector'(x"3be3c09f"), 21 => std_logic_vector'(x"bda090f4"), 22 => std_logic_vector'(x"bdc3a774"), 23 => std_logic_vector'(x"bb8ea66c"), 24 => std_logic_vector'(x"3e73cf11")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_3_enable,
        InputValueA_Value => ValueBus_3_Value,
        InputValueA_LastValue => ValueBus_3_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_4_enable,
        InputValueB_Value => ValueBus_4_Value,
        InputValueB_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_76_enable,
        OutputValueA_LastValue => ValueBus_76_LastValue,
        OutputValueA_Value => ValueBus_76_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_77_enable,
        OutputWeightA_Value => ValueBus_77_Value,
        OutputWeightA_LastValue => ValueBus_77_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_78_enable,
        OutputValueB_LastValue => ValueBus_78_LastValue,
        OutputValueB_Value => ValueBus_78_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_79_enable,
        OutputWeightB_Value => ValueBus_79_Value,
        OutputWeightB_LastValue => ValueBus_79_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#14 signals
    WeightValue_14: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_76_enable,
        InputValue_Value => ValueBus_76_Value,
        InputValue_LastValue => ValueBus_76_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_77_enable,
        InputWeight_Value => ValueBus_77_Value,
        InputWeight_LastValue => ValueBus_77_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_80_enable,
        Output_LastValue => ValueBus_80_LastValue,
        Output_Value => ValueBus_80_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#15 signals
    WeightValue_15: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_78_enable,
        InputValue_Value => ValueBus_78_Value,
        InputValue_LastValue => ValueBus_78_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_79_enable,
        InputWeight_Value => ValueBus_79_Value,
        InputWeight_LastValue => ValueBus_79_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_81_enable,
        Output_LastValue => ValueBus_81_LastValue,
        Output_Value => ValueBus_81_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_15,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#7 signals
    PlusTwo_7: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_80_enable,
        InputA_Value => ValueBus_80_Value,
        InputA_LastValue => ValueBus_80_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_81_enable,
        InputB_Value => ValueBus_81_Value,
        InputB_LastValue => ValueBus_81_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_82_enable,
        Output_LastValue => ValueBus_82_LastValue,
        Output_Value => ValueBus_82_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#10 signals
    PlusCtrl_10: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_82_enable,
        Input_Value => ValueBus_82_Value,
        Input_LastValue => ValueBus_82_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_66_enable(1),
        Output_LastValue => ValueBus_66_LastValue(1),
        Output_Value => ValueBus_66_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#8 signals
    KernelCtrl_8: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3da8621b"), 1 => std_logic_vector'(x"3d21742c"), 2 => std_logic_vector'(x"3d91dcb9"), 3 => std_logic_vector'(x"3bb5ef09"), 4 => std_logic_vector'(x"bd1ed344"), 5 => std_logic_vector'(x"bb807c88"), 6 => std_logic_vector'(x"3c1ee66f"), 7 => std_logic_vector'(x"bd085f36"), 8 => std_logic_vector'(x"3d3d820b"), 9 => std_logic_vector'(x"3c8e32f6"), 10 => std_logic_vector'(x"bd432d66"), 11 => std_logic_vector'(x"bd7e7cd6"), 12 => std_logic_vector'(x"3d7f6d45"), 13 => std_logic_vector'(x"3e34c47d"), 14 => std_logic_vector'(x"3dbf971d"), 15 => std_logic_vector'(x"3d2636b1"), 16 => std_logic_vector'(x"3c8c9253"), 17 => std_logic_vector'(x"3c2290c9"), 18 => std_logic_vector'(x"3ced499e"), 19 => std_logic_vector'(x"3e0ecff8"), 20 => std_logic_vector'(x"bd93464f"), 21 => std_logic_vector'(x"bd457b81"), 22 => std_logic_vector'(x"3d8b28e0"), 23 => std_logic_vector'(x"bcdc1431"), 24 => std_logic_vector'(x"3d5b3786")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_6_enable,
        InputValueA_Value => ValueBus_6_Value,
        InputValueA_LastValue => ValueBus_6_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_7_enable,
        InputValueB_Value => ValueBus_7_Value,
        InputValueB_LastValue => ValueBus_7_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_83_enable,
        OutputValueA_LastValue => ValueBus_83_LastValue,
        OutputValueA_Value => ValueBus_83_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_84_enable,
        OutputWeightA_Value => ValueBus_84_Value,
        OutputWeightA_LastValue => ValueBus_84_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_85_enable,
        OutputValueB_LastValue => ValueBus_85_LastValue,
        OutputValueB_Value => ValueBus_85_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_86_enable,
        OutputWeightB_Value => ValueBus_86_Value,
        OutputWeightB_LastValue => ValueBus_86_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#16 signals
    WeightValue_16: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_83_enable,
        InputValue_Value => ValueBus_83_Value,
        InputValue_LastValue => ValueBus_83_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_84_enable,
        InputWeight_Value => ValueBus_84_Value,
        InputWeight_LastValue => ValueBus_84_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_87_enable,
        Output_LastValue => ValueBus_87_LastValue,
        Output_Value => ValueBus_87_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_16,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#17 signals
    WeightValue_17: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_85_enable,
        InputValue_Value => ValueBus_85_Value,
        InputValue_LastValue => ValueBus_85_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_86_enable,
        InputWeight_Value => ValueBus_86_Value,
        InputWeight_LastValue => ValueBus_86_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_88_enable,
        Output_LastValue => ValueBus_88_LastValue,
        Output_Value => ValueBus_88_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_17,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#8 signals
    PlusTwo_8: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_87_enable,
        InputA_Value => ValueBus_87_Value,
        InputA_LastValue => ValueBus_87_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_88_enable,
        InputB_Value => ValueBus_88_Value,
        InputB_LastValue => ValueBus_88_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_89_enable,
        Output_LastValue => ValueBus_89_LastValue,
        Output_Value => ValueBus_89_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#11 signals
    PlusCtrl_11: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_89_enable,
        Input_Value => ValueBus_89_Value,
        Input_LastValue => ValueBus_89_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_66_enable(2),
        Output_LastValue => ValueBus_66_LastValue(2),
        Output_Value => ValueBus_66_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#3 signals
    ValueArrayCtrl_3: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(3, 3),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(3, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_93_enable(0),
        Input_enable(1) => ValueBus_93_enable(1),
        Input_enable(2) => ValueBus_93_enable(2),
        Input_Value(0) => ValueBus_93_Value(0),
        Input_Value(1) => ValueBus_93_Value(1),
        Input_Value(2) => ValueBus_93_Value(2),
        Input_LastValue(0) => ValueBus_93_LastValue(0),
        Input_LastValue(1) => ValueBus_93_LastValue(1),
        Input_LastValue(2) => ValueBus_93_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_90_enable,
        Output_LastValue => ValueBus_90_LastValue,
        Output_Value => ValueBus_90_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#12 signals
    PlusCtrl_12: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_90_enable,
        Input_Value => ValueBus_90_Value,
        Input_LastValue => ValueBus_90_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_94_enable,
        Output_LastValue => ValueBus_94_LastValue,
        Output_Value => ValueBus_94_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#3 signals
    Bias_3: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d9201f7")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_94_enable,
        Input_Value => ValueBus_94_Value,
        Input_LastValue => ValueBus_94_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_95_enable,
        Output_LastValue => ValueBus_95_LastValue,
        Output_Value => ValueBus_95_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#9 signals
    KernelCtrl_9: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bdaba499"), 1 => std_logic_vector'(x"bd79cfa6"), 2 => std_logic_vector'(x"bda22bbe"), 3 => std_logic_vector'(x"3db4e77f"), 4 => std_logic_vector'(x"3d632138"), 5 => std_logic_vector'(x"3d472014"), 6 => std_logic_vector'(x"bdbf2407"), 7 => std_logic_vector'(x"3b860e32"), 8 => std_logic_vector'(x"3d98817e"), 9 => std_logic_vector'(x"3d95063d"), 10 => std_logic_vector'(x"bccb5100"), 11 => std_logic_vector'(x"3cb619f0"), 12 => std_logic_vector'(x"3d29c636"), 13 => std_logic_vector'(x"3d079ac9"), 14 => std_logic_vector'(x"bd551fde"), 15 => std_logic_vector'(x"bc6dd6de"), 16 => std_logic_vector'(x"3d3a3c01"), 17 => std_logic_vector'(x"bd838e71"), 18 => std_logic_vector'(x"bcbc637d"), 19 => std_logic_vector'(x"bd96deea"), 20 => std_logic_vector'(x"bd4e4eda"), 21 => std_logic_vector'(x"3c942eb5"), 22 => std_logic_vector'(x"3bdc04ac"), 23 => std_logic_vector'(x"3d4f2264"), 24 => std_logic_vector'(x"be45532b")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_96_enable,
        OutputValueA_LastValue => ValueBus_96_LastValue,
        OutputValueA_Value => ValueBus_96_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_97_enable,
        OutputWeightA_Value => ValueBus_97_Value,
        OutputWeightA_LastValue => ValueBus_97_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_98_enable,
        OutputValueB_LastValue => ValueBus_98_LastValue,
        OutputValueB_Value => ValueBus_98_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_99_enable,
        OutputWeightB_Value => ValueBus_99_Value,
        OutputWeightB_LastValue => ValueBus_99_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#18 signals
    WeightValue_18: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_96_enable,
        InputValue_Value => ValueBus_96_Value,
        InputValue_LastValue => ValueBus_96_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_97_enable,
        InputWeight_Value => ValueBus_97_Value,
        InputWeight_LastValue => ValueBus_97_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_100_enable,
        Output_LastValue => ValueBus_100_LastValue,
        Output_Value => ValueBus_100_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_18,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#19 signals
    WeightValue_19: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_98_enable,
        InputValue_Value => ValueBus_98_Value,
        InputValue_LastValue => ValueBus_98_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_99_enable,
        InputWeight_Value => ValueBus_99_Value,
        InputWeight_LastValue => ValueBus_99_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_101_enable,
        Output_LastValue => ValueBus_101_LastValue,
        Output_Value => ValueBus_101_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_19,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#9 signals
    PlusTwo_9: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_100_enable,
        InputA_Value => ValueBus_100_Value,
        InputA_LastValue => ValueBus_100_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_101_enable,
        InputB_Value => ValueBus_101_Value,
        InputB_LastValue => ValueBus_101_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_102_enable,
        Output_LastValue => ValueBus_102_LastValue,
        Output_Value => ValueBus_102_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#13 signals
    PlusCtrl_13: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_102_enable,
        Input_Value => ValueBus_102_Value,
        Input_LastValue => ValueBus_102_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_93_enable(0),
        Output_LastValue => ValueBus_93_LastValue(0),
        Output_Value => ValueBus_93_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#10 signals
    KernelCtrl_10: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bd987c41"), 1 => std_logic_vector'(x"bd1f66f5"), 2 => std_logic_vector'(x"bcf3baf3"), 3 => std_logic_vector'(x"bbfa6b3f"), 4 => std_logic_vector'(x"3dc4f13a"), 5 => std_logic_vector'(x"3bb17081"), 6 => std_logic_vector'(x"bd827b30"), 7 => std_logic_vector'(x"3cd90eb7"), 8 => std_logic_vector'(x"3dffb3dc"), 9 => std_logic_vector'(x"3da9ac2a"), 10 => std_logic_vector'(x"3af7159b"), 11 => std_logic_vector'(x"3c190964"), 12 => std_logic_vector'(x"bd0bf6b0"), 13 => std_logic_vector'(x"3d4ea9c2"), 14 => std_logic_vector'(x"bdb7592d"), 15 => std_logic_vector'(x"3d9afd27"), 16 => std_logic_vector'(x"3cebe506"), 17 => std_logic_vector'(x"bc6e9eaa"), 18 => std_logic_vector'(x"3d0ca5cd"), 19 => std_logic_vector'(x"bc2c2d75"), 20 => std_logic_vector'(x"3e197340"), 21 => std_logic_vector'(x"3cc0f44a"), 22 => std_logic_vector'(x"bcaef697"), 23 => std_logic_vector'(x"bda2b80a"), 24 => std_logic_vector'(x"bdee0602")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_3_enable,
        InputValueA_Value => ValueBus_3_Value,
        InputValueA_LastValue => ValueBus_3_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_4_enable,
        InputValueB_Value => ValueBus_4_Value,
        InputValueB_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_103_enable,
        OutputValueA_LastValue => ValueBus_103_LastValue,
        OutputValueA_Value => ValueBus_103_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_104_enable,
        OutputWeightA_Value => ValueBus_104_Value,
        OutputWeightA_LastValue => ValueBus_104_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_105_enable,
        OutputValueB_LastValue => ValueBus_105_LastValue,
        OutputValueB_Value => ValueBus_105_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_106_enable,
        OutputWeightB_Value => ValueBus_106_Value,
        OutputWeightB_LastValue => ValueBus_106_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#20 signals
    WeightValue_20: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_103_enable,
        InputValue_Value => ValueBus_103_Value,
        InputValue_LastValue => ValueBus_103_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_104_enable,
        InputWeight_Value => ValueBus_104_Value,
        InputWeight_LastValue => ValueBus_104_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_107_enable,
        Output_LastValue => ValueBus_107_LastValue,
        Output_Value => ValueBus_107_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_20,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#21 signals
    WeightValue_21: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_105_enable,
        InputValue_Value => ValueBus_105_Value,
        InputValue_LastValue => ValueBus_105_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_106_enable,
        InputWeight_Value => ValueBus_106_Value,
        InputWeight_LastValue => ValueBus_106_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_108_enable,
        Output_LastValue => ValueBus_108_LastValue,
        Output_Value => ValueBus_108_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_21,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#10 signals
    PlusTwo_10: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_107_enable,
        InputA_Value => ValueBus_107_Value,
        InputA_LastValue => ValueBus_107_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_108_enable,
        InputB_Value => ValueBus_108_Value,
        InputB_LastValue => ValueBus_108_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_109_enable,
        Output_LastValue => ValueBus_109_LastValue,
        Output_Value => ValueBus_109_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#14 signals
    PlusCtrl_14: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_109_enable,
        Input_Value => ValueBus_109_Value,
        Input_LastValue => ValueBus_109_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_93_enable(1),
        Output_LastValue => ValueBus_93_LastValue(1),
        Output_Value => ValueBus_93_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#11 signals
    KernelCtrl_11: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"b9d35907"), 1 => std_logic_vector'(x"bd44f41e"), 2 => std_logic_vector'(x"bdec1587"), 3 => std_logic_vector'(x"bc9d35ba"), 4 => std_logic_vector'(x"3de4c0eb"), 5 => std_logic_vector'(x"bc0d1712"), 6 => std_logic_vector'(x"bd80c1d8"), 7 => std_logic_vector'(x"bd500c93"), 8 => std_logic_vector'(x"3c84027c"), 9 => std_logic_vector'(x"bc1e66c0"), 10 => std_logic_vector'(x"bc4f03c5"), 11 => std_logic_vector'(x"bcafdcd4"), 12 => std_logic_vector'(x"3cc82587"), 13 => std_logic_vector'(x"bd12b702"), 14 => std_logic_vector'(x"bbff606e"), 15 => std_logic_vector'(x"bc760981"), 16 => std_logic_vector'(x"3d47ced4"), 17 => std_logic_vector'(x"3d6e2582"), 18 => std_logic_vector'(x"bdbed28a"), 19 => std_logic_vector'(x"3d854b76"), 20 => std_logic_vector'(x"3d4b5e08"), 21 => std_logic_vector'(x"bd71dc0f"), 22 => std_logic_vector'(x"bd0985f6"), 23 => std_logic_vector'(x"bcaacfe2"), 24 => std_logic_vector'(x"bdd91922")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_6_enable,
        InputValueA_Value => ValueBus_6_Value,
        InputValueA_LastValue => ValueBus_6_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_7_enable,
        InputValueB_Value => ValueBus_7_Value,
        InputValueB_LastValue => ValueBus_7_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_110_enable,
        OutputValueA_LastValue => ValueBus_110_LastValue,
        OutputValueA_Value => ValueBus_110_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_111_enable,
        OutputWeightA_Value => ValueBus_111_Value,
        OutputWeightA_LastValue => ValueBus_111_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_112_enable,
        OutputValueB_LastValue => ValueBus_112_LastValue,
        OutputValueB_Value => ValueBus_112_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_113_enable,
        OutputWeightB_Value => ValueBus_113_Value,
        OutputWeightB_LastValue => ValueBus_113_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#22 signals
    WeightValue_22: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_110_enable,
        InputValue_Value => ValueBus_110_Value,
        InputValue_LastValue => ValueBus_110_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_111_enable,
        InputWeight_Value => ValueBus_111_Value,
        InputWeight_LastValue => ValueBus_111_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_114_enable,
        Output_LastValue => ValueBus_114_LastValue,
        Output_Value => ValueBus_114_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_22,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#23 signals
    WeightValue_23: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_112_enable,
        InputValue_Value => ValueBus_112_Value,
        InputValue_LastValue => ValueBus_112_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_113_enable,
        InputWeight_Value => ValueBus_113_Value,
        InputWeight_LastValue => ValueBus_113_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_115_enable,
        Output_LastValue => ValueBus_115_LastValue,
        Output_Value => ValueBus_115_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_23,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#11 signals
    PlusTwo_11: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_114_enable,
        InputA_Value => ValueBus_114_Value,
        InputA_LastValue => ValueBus_114_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_115_enable,
        InputB_Value => ValueBus_115_Value,
        InputB_LastValue => ValueBus_115_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_116_enable,
        Output_LastValue => ValueBus_116_LastValue,
        Output_Value => ValueBus_116_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#15 signals
    PlusCtrl_15: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_116_enable,
        Input_Value => ValueBus_116_Value,
        Input_LastValue => ValueBus_116_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_93_enable(2),
        Output_LastValue => ValueBus_93_LastValue(2),
        Output_Value => ValueBus_93_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_15,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#4 signals
    ValueArrayCtrl_4: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(3, 3),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(3, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_120_enable(0),
        Input_enable(1) => ValueBus_120_enable(1),
        Input_enable(2) => ValueBus_120_enable(2),
        Input_Value(0) => ValueBus_120_Value(0),
        Input_Value(1) => ValueBus_120_Value(1),
        Input_Value(2) => ValueBus_120_Value(2),
        Input_LastValue(0) => ValueBus_120_LastValue(0),
        Input_LastValue(1) => ValueBus_120_LastValue(1),
        Input_LastValue(2) => ValueBus_120_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_117_enable,
        Output_LastValue => ValueBus_117_LastValue,
        Output_Value => ValueBus_117_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#16 signals
    PlusCtrl_16: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_117_enable,
        Input_Value => ValueBus_117_Value,
        Input_LastValue => ValueBus_117_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_121_enable,
        Output_LastValue => ValueBus_121_LastValue,
        Output_Value => ValueBus_121_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_16,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#4 signals
    Bias_4: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d202fb7")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_121_enable,
        Input_Value => ValueBus_121_Value,
        Input_LastValue => ValueBus_121_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_122_enable,
        Output_LastValue => ValueBus_122_LastValue,
        Output_Value => ValueBus_122_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#12 signals
    KernelCtrl_12: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3e031f51"), 1 => std_logic_vector'(x"3abf9e33"), 2 => std_logic_vector'(x"bd9c7bcc"), 3 => std_logic_vector'(x"bd9c431a"), 4 => std_logic_vector'(x"bd21108f"), 5 => std_logic_vector'(x"3cae1a19"), 6 => std_logic_vector'(x"3d997194"), 7 => std_logic_vector'(x"bd1f19f7"), 8 => std_logic_vector'(x"bc7e7643"), 9 => std_logic_vector'(x"bd55ac59"), 10 => std_logic_vector'(x"be02b6c6"), 11 => std_logic_vector'(x"3e308c8a"), 12 => std_logic_vector'(x"be287813"), 13 => std_logic_vector'(x"bcc731e5"), 14 => std_logic_vector'(x"babe37ee"), 15 => std_logic_vector'(x"bd14f9f8"), 16 => std_logic_vector'(x"3dd59928"), 17 => std_logic_vector'(x"bd22e8bd"), 18 => std_logic_vector'(x"3c3fa440"), 19 => std_logic_vector'(x"bd68ca72"), 20 => std_logic_vector'(x"3b536d36"), 21 => std_logic_vector'(x"3e17b1f0"), 22 => std_logic_vector'(x"bd9f090d"), 23 => std_logic_vector'(x"bb5cf563"), 24 => std_logic_vector'(x"3d346ea8")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_123_enable,
        OutputValueA_LastValue => ValueBus_123_LastValue,
        OutputValueA_Value => ValueBus_123_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_124_enable,
        OutputWeightA_Value => ValueBus_124_Value,
        OutputWeightA_LastValue => ValueBus_124_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_125_enable,
        OutputValueB_LastValue => ValueBus_125_LastValue,
        OutputValueB_Value => ValueBus_125_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_126_enable,
        OutputWeightB_Value => ValueBus_126_Value,
        OutputWeightB_LastValue => ValueBus_126_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#24 signals
    WeightValue_24: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_123_enable,
        InputValue_Value => ValueBus_123_Value,
        InputValue_LastValue => ValueBus_123_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_124_enable,
        InputWeight_Value => ValueBus_124_Value,
        InputWeight_LastValue => ValueBus_124_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_127_enable,
        Output_LastValue => ValueBus_127_LastValue,
        Output_Value => ValueBus_127_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_24,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#25 signals
    WeightValue_25: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_125_enable,
        InputValue_Value => ValueBus_125_Value,
        InputValue_LastValue => ValueBus_125_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_126_enable,
        InputWeight_Value => ValueBus_126_Value,
        InputWeight_LastValue => ValueBus_126_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_128_enable,
        Output_LastValue => ValueBus_128_LastValue,
        Output_Value => ValueBus_128_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_25,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#12 signals
    PlusTwo_12: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_127_enable,
        InputA_Value => ValueBus_127_Value,
        InputA_LastValue => ValueBus_127_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_128_enable,
        InputB_Value => ValueBus_128_Value,
        InputB_LastValue => ValueBus_128_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_129_enable,
        Output_LastValue => ValueBus_129_LastValue,
        Output_Value => ValueBus_129_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#17 signals
    PlusCtrl_17: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_129_enable,
        Input_Value => ValueBus_129_Value,
        Input_LastValue => ValueBus_129_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_120_enable(0),
        Output_LastValue => ValueBus_120_LastValue(0),
        Output_Value => ValueBus_120_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_17,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#13 signals
    KernelCtrl_13: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"baaf0847"), 1 => std_logic_vector'(x"3db6c531"), 2 => std_logic_vector'(x"bc2e4f89"), 3 => std_logic_vector'(x"bd5f8317"), 4 => std_logic_vector'(x"3d602039"), 5 => std_logic_vector'(x"bdd79d21"), 6 => std_logic_vector'(x"bcd79136"), 7 => std_logic_vector'(x"3be4707d"), 8 => std_logic_vector'(x"bd456748"), 9 => std_logic_vector'(x"3cc19a7b"), 10 => std_logic_vector'(x"bd881b93"), 11 => std_logic_vector'(x"be0f57fd"), 12 => std_logic_vector'(x"3b9121ba"), 13 => std_logic_vector'(x"3d8b3eb7"), 14 => std_logic_vector'(x"bac93f2a"), 15 => std_logic_vector'(x"bb95f54a"), 16 => std_logic_vector'(x"bd05a5bc"), 17 => std_logic_vector'(x"bd07637d"), 18 => std_logic_vector'(x"3e0711bb"), 19 => std_logic_vector'(x"ba2071fd"), 20 => std_logic_vector'(x"3a85a3ed"), 21 => std_logic_vector'(x"bc9aada4"), 22 => std_logic_vector'(x"3bd2d638"), 23 => std_logic_vector'(x"3e0c9306"), 24 => std_logic_vector'(x"3cb22eec")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_3_enable,
        InputValueA_Value => ValueBus_3_Value,
        InputValueA_LastValue => ValueBus_3_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_4_enable,
        InputValueB_Value => ValueBus_4_Value,
        InputValueB_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_130_enable,
        OutputValueA_LastValue => ValueBus_130_LastValue,
        OutputValueA_Value => ValueBus_130_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_131_enable,
        OutputWeightA_Value => ValueBus_131_Value,
        OutputWeightA_LastValue => ValueBus_131_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_132_enable,
        OutputValueB_LastValue => ValueBus_132_LastValue,
        OutputValueB_Value => ValueBus_132_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_133_enable,
        OutputWeightB_Value => ValueBus_133_Value,
        OutputWeightB_LastValue => ValueBus_133_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#26 signals
    WeightValue_26: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_130_enable,
        InputValue_Value => ValueBus_130_Value,
        InputValue_LastValue => ValueBus_130_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_131_enable,
        InputWeight_Value => ValueBus_131_Value,
        InputWeight_LastValue => ValueBus_131_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_134_enable,
        Output_LastValue => ValueBus_134_LastValue,
        Output_Value => ValueBus_134_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_26,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#27 signals
    WeightValue_27: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_132_enable,
        InputValue_Value => ValueBus_132_Value,
        InputValue_LastValue => ValueBus_132_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_133_enable,
        InputWeight_Value => ValueBus_133_Value,
        InputWeight_LastValue => ValueBus_133_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_135_enable,
        Output_LastValue => ValueBus_135_LastValue,
        Output_Value => ValueBus_135_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_27,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#13 signals
    PlusTwo_13: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_134_enable,
        InputA_Value => ValueBus_134_Value,
        InputA_LastValue => ValueBus_134_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_135_enable,
        InputB_Value => ValueBus_135_Value,
        InputB_LastValue => ValueBus_135_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_136_enable,
        Output_LastValue => ValueBus_136_LastValue,
        Output_Value => ValueBus_136_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#18 signals
    PlusCtrl_18: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_136_enable,
        Input_Value => ValueBus_136_Value,
        Input_LastValue => ValueBus_136_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_120_enable(1),
        Output_LastValue => ValueBus_120_LastValue(1),
        Output_Value => ValueBus_120_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_18,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#14 signals
    KernelCtrl_14: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bc224e1a"), 1 => std_logic_vector'(x"3ca75d9c"), 2 => std_logic_vector'(x"3da9c504"), 3 => std_logic_vector'(x"bdf9eaa8"), 4 => std_logic_vector'(x"bdef17fa"), 5 => std_logic_vector'(x"3d08293e"), 6 => std_logic_vector'(x"3ce3e1c3"), 7 => std_logic_vector'(x"be1be1f5"), 8 => std_logic_vector'(x"bdc40b4f"), 9 => std_logic_vector'(x"bde37e2a"), 10 => std_logic_vector'(x"3c979f23"), 11 => std_logic_vector'(x"3dcc2973"), 12 => std_logic_vector'(x"bdc8bb4e"), 13 => std_logic_vector'(x"bd9c908b"), 14 => std_logic_vector'(x"3b956915"), 15 => std_logic_vector'(x"3d4fd87b"), 16 => std_logic_vector'(x"3d4635b3"), 17 => std_logic_vector'(x"bbff74c6"), 18 => std_logic_vector'(x"bd8c7471"), 19 => std_logic_vector'(x"bcbcf280"), 20 => std_logic_vector'(x"bc77cb6c"), 21 => std_logic_vector'(x"3e13fb37"), 22 => std_logic_vector'(x"3d745e2d"), 23 => std_logic_vector'(x"3d393e9a"), 24 => std_logic_vector'(x"bd7b5988")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_6_enable,
        InputValueA_Value => ValueBus_6_Value,
        InputValueA_LastValue => ValueBus_6_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_7_enable,
        InputValueB_Value => ValueBus_7_Value,
        InputValueB_LastValue => ValueBus_7_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_137_enable,
        OutputValueA_LastValue => ValueBus_137_LastValue,
        OutputValueA_Value => ValueBus_137_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_138_enable,
        OutputWeightA_Value => ValueBus_138_Value,
        OutputWeightA_LastValue => ValueBus_138_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_139_enable,
        OutputValueB_LastValue => ValueBus_139_LastValue,
        OutputValueB_Value => ValueBus_139_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_140_enable,
        OutputWeightB_Value => ValueBus_140_Value,
        OutputWeightB_LastValue => ValueBus_140_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#28 signals
    WeightValue_28: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_137_enable,
        InputValue_Value => ValueBus_137_Value,
        InputValue_LastValue => ValueBus_137_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_138_enable,
        InputWeight_Value => ValueBus_138_Value,
        InputWeight_LastValue => ValueBus_138_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_141_enable,
        Output_LastValue => ValueBus_141_LastValue,
        Output_Value => ValueBus_141_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_28,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#29 signals
    WeightValue_29: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_139_enable,
        InputValue_Value => ValueBus_139_Value,
        InputValue_LastValue => ValueBus_139_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_140_enable,
        InputWeight_Value => ValueBus_140_Value,
        InputWeight_LastValue => ValueBus_140_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_142_enable,
        Output_LastValue => ValueBus_142_LastValue,
        Output_Value => ValueBus_142_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_29,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#14 signals
    PlusTwo_14: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_141_enable,
        InputA_Value => ValueBus_141_Value,
        InputA_LastValue => ValueBus_141_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_142_enable,
        InputB_Value => ValueBus_142_Value,
        InputB_LastValue => ValueBus_142_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_143_enable,
        Output_LastValue => ValueBus_143_LastValue,
        Output_Value => ValueBus_143_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#19 signals
    PlusCtrl_19: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_143_enable,
        Input_Value => ValueBus_143_Value,
        Input_LastValue => ValueBus_143_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_120_enable(2),
        Output_LastValue => ValueBus_120_LastValue(2),
        Output_Value => ValueBus_120_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_19,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_TrueDualPortMemory_1_Single_0 when FIN_InputCtrl_ParFilter_0 = FIN_TrueDualPortMemory_1_Single_0 AND FIN_TrueDualPortMemory_1_Single_1 = FIN_InputCtrl_ParFilter_0 AND FIN_InputCtrl_ParFilter_1 = FIN_TrueDualPortMemory_1_Single_1 AND FIN_TrueDualPortMemory_1_Single_2 = FIN_InputCtrl_ParFilter_1 AND FIN_InputCtrl_ParFilter_2 = FIN_TrueDualPortMemory_1_Single_2 AND FIN_ValueArrayCtrl_0 = FIN_InputCtrl_ParFilter_2 AND FIN_PlusCtrl_0 = FIN_ValueArrayCtrl_0 AND FIN_Bias_0 = FIN_PlusCtrl_0 AND FIN_KernelCtrl_0 = FIN_Bias_0 AND FIN_WeightValue_0 = FIN_KernelCtrl_0 AND FIN_WeightValue_1 = FIN_WeightValue_0 AND FIN_PlusTwo_0 = FIN_WeightValue_1 AND FIN_PlusCtrl_1 = FIN_PlusTwo_0 AND FIN_KernelCtrl_1 = FIN_PlusCtrl_1 AND FIN_WeightValue_2 = FIN_KernelCtrl_1 AND FIN_WeightValue_3 = FIN_WeightValue_2 AND FIN_PlusTwo_1 = FIN_WeightValue_3 AND FIN_PlusCtrl_2 = FIN_PlusTwo_1 AND FIN_KernelCtrl_2 = FIN_PlusCtrl_2 AND FIN_WeightValue_4 = FIN_KernelCtrl_2 AND FIN_WeightValue_5 = FIN_WeightValue_4 AND FIN_PlusTwo_2 = FIN_WeightValue_5 AND FIN_PlusCtrl_3 = FIN_PlusTwo_2 AND FIN_ValueArrayCtrl_1 = FIN_PlusCtrl_3 AND FIN_PlusCtrl_4 = FIN_ValueArrayCtrl_1 AND FIN_Bias_1 = FIN_PlusCtrl_4 AND FIN_KernelCtrl_3 = FIN_Bias_1 AND FIN_WeightValue_6 = FIN_KernelCtrl_3 AND FIN_WeightValue_7 = FIN_WeightValue_6 AND FIN_PlusTwo_3 = FIN_WeightValue_7 AND FIN_PlusCtrl_5 = FIN_PlusTwo_3 AND FIN_KernelCtrl_4 = FIN_PlusCtrl_5 AND FIN_WeightValue_8 = FIN_KernelCtrl_4 AND FIN_WeightValue_9 = FIN_WeightValue_8 AND FIN_PlusTwo_4 = FIN_WeightValue_9 AND FIN_PlusCtrl_6 = FIN_PlusTwo_4 AND FIN_KernelCtrl_5 = FIN_PlusCtrl_6 AND FIN_WeightValue_10 = FIN_KernelCtrl_5 AND FIN_WeightValue_11 = FIN_WeightValue_10 AND FIN_PlusTwo_5 = FIN_WeightValue_11 AND FIN_PlusCtrl_7 = FIN_PlusTwo_5 AND FIN_ValueArrayCtrl_2 = FIN_PlusCtrl_7 AND FIN_PlusCtrl_8 = FIN_ValueArrayCtrl_2 AND FIN_Bias_2 = FIN_PlusCtrl_8 AND FIN_KernelCtrl_6 = FIN_Bias_2 AND FIN_WeightValue_12 = FIN_KernelCtrl_6 AND FIN_WeightValue_13 = FIN_WeightValue_12 AND FIN_PlusTwo_6 = FIN_WeightValue_13 AND FIN_PlusCtrl_9 = FIN_PlusTwo_6 AND FIN_KernelCtrl_7 = FIN_PlusCtrl_9 AND FIN_WeightValue_14 = FIN_KernelCtrl_7 AND FIN_WeightValue_15 = FIN_WeightValue_14 AND FIN_PlusTwo_7 = FIN_WeightValue_15 AND FIN_PlusCtrl_10 = FIN_PlusTwo_7 AND FIN_KernelCtrl_8 = FIN_PlusCtrl_10 AND FIN_WeightValue_16 = FIN_KernelCtrl_8 AND FIN_WeightValue_17 = FIN_WeightValue_16 AND FIN_PlusTwo_8 = FIN_WeightValue_17 AND FIN_PlusCtrl_11 = FIN_PlusTwo_8 AND FIN_ValueArrayCtrl_3 = FIN_PlusCtrl_11 AND FIN_PlusCtrl_12 = FIN_ValueArrayCtrl_3 AND FIN_Bias_3 = FIN_PlusCtrl_12 AND FIN_KernelCtrl_9 = FIN_Bias_3 AND FIN_WeightValue_18 = FIN_KernelCtrl_9 AND FIN_WeightValue_19 = FIN_WeightValue_18 AND FIN_PlusTwo_9 = FIN_WeightValue_19 AND FIN_PlusCtrl_13 = FIN_PlusTwo_9 AND FIN_KernelCtrl_10 = FIN_PlusCtrl_13 AND FIN_WeightValue_20 = FIN_KernelCtrl_10 AND FIN_WeightValue_21 = FIN_WeightValue_20 AND FIN_PlusTwo_10 = FIN_WeightValue_21 AND FIN_PlusCtrl_14 = FIN_PlusTwo_10 AND FIN_KernelCtrl_11 = FIN_PlusCtrl_14 AND FIN_WeightValue_22 = FIN_KernelCtrl_11 AND FIN_WeightValue_23 = FIN_WeightValue_22 AND FIN_PlusTwo_11 = FIN_WeightValue_23 AND FIN_PlusCtrl_15 = FIN_PlusTwo_11 AND FIN_ValueArrayCtrl_4 = FIN_PlusCtrl_15 AND FIN_PlusCtrl_16 = FIN_ValueArrayCtrl_4 AND FIN_Bias_4 = FIN_PlusCtrl_16 AND FIN_KernelCtrl_12 = FIN_Bias_4 AND FIN_WeightValue_24 = FIN_KernelCtrl_12 AND FIN_WeightValue_25 = FIN_WeightValue_24 AND FIN_PlusTwo_12 = FIN_WeightValue_25 AND FIN_PlusCtrl_17 = FIN_PlusTwo_12 AND FIN_KernelCtrl_13 = FIN_PlusCtrl_17 AND FIN_WeightValue_26 = FIN_KernelCtrl_13 AND FIN_WeightValue_27 = FIN_WeightValue_26 AND FIN_PlusTwo_13 = FIN_WeightValue_27 AND FIN_PlusCtrl_18 = FIN_PlusTwo_13 AND FIN_KernelCtrl_14 = FIN_PlusCtrl_18 AND FIN_WeightValue_28 = FIN_KernelCtrl_14 AND FIN_WeightValue_29 = FIN_WeightValue_28 AND FIN_PlusTwo_14 = FIN_WeightValue_29 AND FIN_PlusCtrl_19 = FIN_PlusTwo_14;

    -- Propagate all clocked and feedback signals
    process(
        CLK,
        RST
    )
        variable readyflag: std_logic;
    begin
        if RST = '1' then
            RDY <= '0';
            readyflag := '0';
        elsif rising_edge(CLK) then
            if ENB = '1' then
                readyflag := not readyflag;
                RDY <= readyflag;
            end if;
        end if;
    end process;

    -- User defined processes here
    -- #### USER-DATA-CODE-START
    -- #### USER-DATA-CODE-END

end RTL;
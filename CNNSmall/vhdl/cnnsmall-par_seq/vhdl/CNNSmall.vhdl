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

entity CNNSmall is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in T_SYSTEM_BOOL;
        ValueBus_2_Value: in T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_107_enable: out T_SYSTEM_BOOL;
        ValueBus_107_Value: out T_SYSTEM_FLOAT;
        ValueBus_107_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_108_enable: out T_SYSTEM_BOOL;
        ValueBus_108_Value: out T_SYSTEM_FLOAT;
        ValueBus_108_LastValue: out T_SYSTEM_BOOL;

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

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_5_enable: inout T_SYSTEM_BOOL;
        ValueBus_5_Value: inout T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_6_enable: inout T_SYSTEM_BOOL;
        ValueBus_6_Value: inout T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_7_enable: inout T_SYSTEM_BOOL;
        ValueBus_7_Value: inout T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_8_enable: inout T_SYSTEM_BOOL;
        ValueBus_8_Value: inout T_SYSTEM_FLOAT;
        ValueBus_8_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_9_enable: inout T_SYSTEM_BOOL;
        ValueBus_9_Value: inout T_SYSTEM_FLOAT;
        ValueBus_9_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_10_enable: inout T_SYSTEM_BOOL;
        ValueBus_10_Value: inout T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_11_enable: inout T_SYSTEM_BOOL;
        ValueBus_11_Value: inout T_SYSTEM_FLOAT;
        ValueBus_11_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_12_enable: inout T_SYSTEM_BOOL;
        ValueBus_12_Value: inout T_SYSTEM_FLOAT;
        ValueBus_12_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_13_enable: inout T_SYSTEM_BOOL;
        ValueBus_13_Value: inout T_SYSTEM_FLOAT;
        ValueBus_13_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_15_enable: inout T_SYSTEM_BOOL;
        ValueBus_15_Value: inout T_SYSTEM_FLOAT;
        ValueBus_15_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_14_enable: inout T_SYSTEM_BOOL;
        ValueBus_14_Value: inout T_SYSTEM_FLOAT;
        ValueBus_14_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_26_enable: inout T_SYSTEM_BOOL;
        ValueBus_26_Value: inout T_SYSTEM_FLOAT;
        ValueBus_26_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_25_enable: inout T_SYSTEM_BOOL;
        ValueBus_25_Value: inout T_SYSTEM_FLOAT;
        ValueBus_25_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_36_enable: inout T_SYSTEM_BOOL;
        ValueBus_36_Value: inout T_SYSTEM_FLOAT;
        ValueBus_36_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_37_enable: inout T_SYSTEM_BOOL;
        ValueBus_37_Value: inout T_SYSTEM_FLOAT;
        ValueBus_37_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_38_enable: inout T_SYSTEM_BOOL;
        ValueBus_38_Value: inout T_SYSTEM_FLOAT;
        ValueBus_38_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_39_enable: inout T_SYSTEM_BOOL;
        ValueBus_39_Value: inout T_SYSTEM_FLOAT;
        ValueBus_39_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_40_enable: inout T_SYSTEM_BOOL;
        ValueBus_40_Value: inout T_SYSTEM_FLOAT;
        ValueBus_40_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_41_enable: inout T_SYSTEM_BOOL;
        ValueBus_41_Value: inout T_SYSTEM_FLOAT;
        ValueBus_41_LastValue: inout T_SYSTEM_BOOL;

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

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_6_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_6_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_6_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_6_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_7_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_7_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_7_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_7_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_6_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_7_Data: inout T_SYSTEM_FLOAT;

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
        ValueBus_63_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_63_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_63_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_60_enable: inout T_SYSTEM_BOOL;
        ValueBus_60_Value: inout T_SYSTEM_FLOAT;
        ValueBus_60_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_64_enable: inout T_SYSTEM_BOOL;
        ValueBus_64_Value: inout T_SYSTEM_FLOAT;
        ValueBus_64_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_65_enable: inout T_SYSTEM_BOOL;
        ValueBus_65_Value: inout T_SYSTEM_FLOAT;
        ValueBus_65_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_66_enable: inout T_SYSTEM_BOOL;
        ValueBus_66_Value: inout T_SYSTEM_FLOAT;
        ValueBus_66_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_67_enable: inout T_SYSTEM_BOOL;
        ValueBus_67_Value: inout T_SYSTEM_FLOAT;
        ValueBus_67_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_8_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_8_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_8_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_8_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_9_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_9_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_9_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_9_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_8_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_9_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_68_enable: inout T_SYSTEM_BOOL;
        ValueBus_68_Value: inout T_SYSTEM_FLOAT;
        ValueBus_68_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_69_enable: inout T_SYSTEM_BOOL;
        ValueBus_69_Value: inout T_SYSTEM_FLOAT;
        ValueBus_69_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_70_enable: inout T_SYSTEM_BOOL;
        ValueBus_70_Value: inout T_SYSTEM_FLOAT;
        ValueBus_70_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_10_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_10_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_10_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_10_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_11_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_11_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_11_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_11_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_10_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_11_Data: inout T_SYSTEM_FLOAT;

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

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_12_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_12_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_12_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_12_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_13_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_13_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_13_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_13_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_12_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_13_Data: inout T_SYSTEM_FLOAT;

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
        ValueBus_81_enable: inout T_SYSTEM_BOOL;
        ValueBus_81_Value: inout T_SYSTEM_FLOAT;
        ValueBus_81_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_79_enable: inout T_SYSTEM_BOOL;
        ValueBus_79_Value: inout T_SYSTEM_FLOAT;
        ValueBus_79_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_80_enable: inout T_SYSTEM_BOOL;
        ValueBus_80_Value: inout T_SYSTEM_FLOAT;
        ValueBus_80_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_84_enable: inout T_SYSTEM_BOOL;
        ValueBus_84_Value: inout T_SYSTEM_FLOAT;
        ValueBus_84_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_82_enable: inout T_SYSTEM_BOOL;
        ValueBus_82_Value: inout T_SYSTEM_FLOAT;
        ValueBus_82_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_83_enable: inout T_SYSTEM_BOOL;
        ValueBus_83_Value: inout T_SYSTEM_FLOAT;
        ValueBus_83_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_87_enable: inout T_SYSTEM_BOOL;
        ValueBus_87_Value: inout T_SYSTEM_FLOAT;
        ValueBus_87_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_85_enable: inout T_SYSTEM_BOOL;
        ValueBus_85_Value: inout T_SYSTEM_FLOAT;
        ValueBus_85_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_86_enable: inout T_SYSTEM_BOOL;
        ValueBus_86_Value: inout T_SYSTEM_FLOAT;
        ValueBus_86_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_88_enable: inout T_SYSTEM_BOOL;
        ValueBus_88_Value: inout T_SYSTEM_FLOAT;
        ValueBus_88_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_89_enable: inout T_SYSTEM_BOOL;
        ValueBus_89_Value: inout T_SYSTEM_FLOAT;
        ValueBus_89_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_14_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_14_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_14_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_14_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_15_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_15_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_15_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_15_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_14_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_15_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_90_enable: inout T_SYSTEM_BOOL;
        ValueBus_90_Value: inout T_SYSTEM_FLOAT;
        ValueBus_90_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_91_enable: inout T_SYSTEM_BOOL;
        ValueBus_91_Value: inout T_SYSTEM_FLOAT;
        ValueBus_91_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_92_enable: inout T_SYSTEM_BOOL;
        ValueBus_92_Value: inout T_SYSTEM_FLOAT;
        ValueBus_92_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_16_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_16_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_16_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_16_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_17_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_17_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_17_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_17_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_16_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_17_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_93_enable: inout T_SYSTEM_BOOL;
        ValueBus_93_Value: inout T_SYSTEM_FLOAT;
        ValueBus_93_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_94_enable: inout T_SYSTEM_BOOL;
        ValueBus_94_Value: inout T_SYSTEM_FLOAT;
        ValueBus_94_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_95_enable: inout T_SYSTEM_BOOL;
        ValueBus_95_Value: inout T_SYSTEM_FLOAT;
        ValueBus_95_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_96_enable: inout T_SYSTEM_BOOL;
        ValueBus_96_Value: inout T_SYSTEM_FLOAT;
        ValueBus_96_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_97_enable: inout T_SYSTEM_BOOL;
        ValueBus_97_Value: inout T_SYSTEM_FLOAT;
        ValueBus_97_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_18_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_18_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_18_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_18_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_19_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_19_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_19_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_19_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_18_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_19_Data: inout T_SYSTEM_FLOAT;

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
        ValueBus_105_enable: inout T_SYSTEM_BOOL_ARRAY(1 downto 0);
        ValueBus_105_Value: inout T_SYSTEM_FLOAT_ARRAY(1 downto 0);
        ValueBus_105_LastValue: inout T_SYSTEM_BOOL_ARRAY(1 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_103_enable: inout T_SYSTEM_BOOL;
        ValueBus_103_Value: inout T_SYSTEM_FLOAT;
        ValueBus_103_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_106_enable: inout T_SYSTEM_BOOL;
        ValueBus_106_Value: inout T_SYSTEM_FLOAT;
        ValueBus_106_LastValue: inout T_SYSTEM_BOOL;

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
end CNNSmall;

architecture RTL of CNNSmall is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_TrueDualPortMemory_1_Single_0 : std_logic;
    signal FIN_InputCtrl_ParFilter_0 : std_logic;
    signal FIN_ValueArrayCtrl_single_0 : std_logic;
    signal FIN_PlusCtrl_0 : std_logic;
    signal FIN_Bias_0 : std_logic;
    signal FIN_KernelCtrl_0 : std_logic;
    signal FIN_WeightValue_0 : std_logic;
    signal FIN_WeightValue_1 : std_logic;
    signal FIN_PlusTwo_0 : std_logic;
    signal FIN_PlusCtrl_1 : std_logic;
    signal FIN_ValueArrayCtrl_single_1 : std_logic;
    signal FIN_PlusCtrl_2 : std_logic;
    signal FIN_Bias_1 : std_logic;
    signal FIN_KernelCtrl_1 : std_logic;
    signal FIN_WeightValue_2 : std_logic;
    signal FIN_WeightValue_3 : std_logic;
    signal FIN_PlusTwo_1 : std_logic;
    signal FIN_PlusCtrl_3 : std_logic;
    signal FIN_ValueArrayCtrl_single_2 : std_logic;
    signal FIN_PlusCtrl_4 : std_logic;
    signal FIN_Bias_2 : std_logic;
    signal FIN_KernelCtrl_2 : std_logic;
    signal FIN_WeightValue_4 : std_logic;
    signal FIN_WeightValue_5 : std_logic;
    signal FIN_PlusTwo_2 : std_logic;
    signal FIN_PlusCtrl_5 : std_logic;
    signal FIN_Bias_3 : std_logic;
    signal FIN_Multiply_0 : std_logic;
    signal FIN_Multiply_1 : std_logic;
    signal FIN_Bias_4 : std_logic;
    signal FIN_Bias_5 : std_logic;
    signal FIN_Multiply_2 : std_logic;
    signal FIN_Multiply_3 : std_logic;
    signal FIN_Bias_6 : std_logic;
    signal FIN_Bias_7 : std_logic;
    signal FIN_Multiply_4 : std_logic;
    signal FIN_Multiply_5 : std_logic;
    signal FIN_Bias_8 : std_logic;
    signal FIN_ReluCore_0 : std_logic;
    signal FIN_ReluCore_1 : std_logic;
    signal FIN_ReluCore_2 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_1 : std_logic;
    signal FIN_InputCtrl_ParFilter_1 : std_logic;
    signal FIN_Max_0 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_2 : std_logic;
    signal FIN_InputCtrl_ParFilter_2 : std_logic;
    signal FIN_Max_1 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_3 : std_logic;
    signal FIN_InputCtrl_ParFilter_3 : std_logic;
    signal FIN_Max_2 : std_logic;
    signal FIN_ValueArrayCtrl_0 : std_logic;
    signal FIN_PlusCtrl_6 : std_logic;
    signal FIN_Align_0 : std_logic;
    signal FIN_PlusTwo_3 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_4 : std_logic;
    signal FIN_InputCtrl_SeqFilter_0 : std_logic;
    signal FIN_WeightValue_6 : std_logic;
    signal FIN_PlusCtrl_7 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_5 : std_logic;
    signal FIN_InputCtrl_SeqFilter_1 : std_logic;
    signal FIN_WeightValue_7 : std_logic;
    signal FIN_PlusCtrl_8 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_6 : std_logic;
    signal FIN_InputCtrl_SeqFilter_2 : std_logic;
    signal FIN_WeightValue_8 : std_logic;
    signal FIN_PlusCtrl_9 : std_logic;
    signal FIN_Align_1 : std_logic;
    signal FIN_Align_2 : std_logic;
    signal FIN_Align_3 : std_logic;
    signal FIN_Align_4 : std_logic;
    signal FIN_PlusTwo_4 : std_logic;
    signal FIN_MultiplyTwo_0 : std_logic;
    signal FIN_MultiplyTwo_1 : std_logic;
    signal FIN_PlusTwo_5 : std_logic;
    signal FIN_ReluCore_3 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_7 : std_logic;
    signal FIN_InputCtrl_SeqChannel : std_logic;
    signal FIN_Max_3 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_8 : std_logic;
    signal FIN_NodeCtrl_type10_0 : std_logic;
    signal FIN_WeightValue_9 : std_logic;
    signal FIN_PlusCtrl_10 : std_logic;
    signal FIN_Bias_9 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_9 : std_logic;
    signal FIN_NodeCtrl_type10_1 : std_logic;
    signal FIN_WeightValue_10 : std_logic;
    signal FIN_PlusCtrl_11 : std_logic;
    signal FIN_Bias_10 : std_logic;
    signal FIN_ValueArrayCtrl_1 : std_logic;
    signal FIN_PlusCtrl_12 : std_logic;
    signal FIN_Exp_0 : std_logic;
    signal FIN_Exp_1 : std_logic;
    signal FIN_DivideValue_0 : std_logic;
    signal FIN_DivideValue_1 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity TrueDualPortMemory`1<Single>#0 signals
    TrueDualPortMemory_1_Single_0: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 783) => (others => std_logic_vector'(x"00000000"))
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
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(28, 5),
        reset_newWidth => TO_UNSIGNED(28, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
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

    -- Entity ValueArrayCtrl_single#0 signals
    ValueArrayCtrl_single_0: entity work.CNN_ValueArrayCtrl_single
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 3),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_4_enable,
        Input_Value => ValueBus_4_Value,
        Input_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_3_enable,
        Output_LastValue => ValueBus_3_LastValue,
        Output_Value => ValueBus_3_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_single_0,
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
        Input_enable => ValueBus_3_enable,
        Input_Value => ValueBus_3_Value,
        Input_LastValue => ValueBus_3_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_5_enable,
        Output_LastValue => ValueBus_5_LastValue,
        Output_Value => ValueBus_5_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#0 signals
    Bias_0: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3ea1ece6")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_6_enable,
        Output_LastValue => ValueBus_6_LastValue,
        Output_Value => ValueBus_6_Value,

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
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_weights (0 to 8) => (0 => std_logic_vector'(x"be348466"), 1 => std_logic_vector'(x"be09cef3"), 2 => std_logic_vector'(x"3e8c6b34"), 3 => std_logic_vector'(x"beaaa983"), 4 => std_logic_vector'(x"3e9cf988"), 5 => std_logic_vector'(x"3eb0b0b3"), 6 => std_logic_vector'(x"3e11bab4"), 7 => std_logic_vector'(x"be527361"), 8 => std_logic_vector'(x"3dc03e2e")),
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
        OutputValueA_enable => ValueBus_7_enable,
        OutputValueA_LastValue => ValueBus_7_LastValue,
        OutputValueA_Value => ValueBus_7_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_8_enable,
        OutputWeightA_Value => ValueBus_8_Value,
        OutputWeightA_LastValue => ValueBus_8_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_9_enable,
        OutputValueB_LastValue => ValueBus_9_LastValue,
        OutputValueB_Value => ValueBus_9_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_10_enable,
        OutputWeightB_Value => ValueBus_10_Value,
        OutputWeightB_LastValue => ValueBus_10_LastValue,

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
        InputValue_enable => ValueBus_7_enable,
        InputValue_Value => ValueBus_7_Value,
        InputValue_LastValue => ValueBus_7_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_8_enable,
        InputWeight_Value => ValueBus_8_Value,
        InputWeight_LastValue => ValueBus_8_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_11_enable,
        Output_LastValue => ValueBus_11_LastValue,
        Output_Value => ValueBus_11_Value,

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
        InputValue_enable => ValueBus_9_enable,
        InputValue_Value => ValueBus_9_Value,
        InputValue_LastValue => ValueBus_9_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_10_enable,
        InputWeight_Value => ValueBus_10_Value,
        InputWeight_LastValue => ValueBus_10_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_12_enable,
        Output_LastValue => ValueBus_12_LastValue,
        Output_Value => ValueBus_12_Value,

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
        InputA_enable => ValueBus_11_enable,
        InputA_Value => ValueBus_11_Value,
        InputA_LastValue => ValueBus_11_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_12_enable,
        InputB_Value => ValueBus_12_Value,
        InputB_LastValue => ValueBus_12_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_13_enable,
        Output_LastValue => ValueBus_13_LastValue,
        Output_Value => ValueBus_13_Value,

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
        Input_enable => ValueBus_13_enable,
        Input_Value => ValueBus_13_Value,
        Input_LastValue => ValueBus_13_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_4_enable,
        Output_LastValue => ValueBus_4_LastValue,
        Output_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl_single#1 signals
    ValueArrayCtrl_single_1: entity work.CNN_ValueArrayCtrl_single
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 3),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_15_enable,
        Input_Value => ValueBus_15_Value,
        Input_LastValue => ValueBus_15_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_14_enable,
        Output_LastValue => ValueBus_14_LastValue,
        Output_Value => ValueBus_14_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_single_1,
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
        Input_enable => ValueBus_14_enable,
        Input_Value => ValueBus_14_Value,
        Input_LastValue => ValueBus_14_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_16_enable,
        Output_LastValue => ValueBus_16_LastValue,
        Output_Value => ValueBus_16_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#1 signals
    Bias_1: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"be87dfa3")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_16_enable,
        Input_Value => ValueBus_16_Value,
        Input_LastValue => ValueBus_16_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_17_enable,
        Output_LastValue => ValueBus_17_LastValue,
        Output_Value => ValueBus_17_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#1 signals
    KernelCtrl_1: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_weights (0 to 8) => (0 => std_logic_vector'(x"bd0c87c1"), 1 => std_logic_vector'(x"beaa9a68"), 2 => std_logic_vector'(x"be5c0329"), 3 => std_logic_vector'(x"3d7bec0d"), 4 => std_logic_vector'(x"3e55a436"), 5 => std_logic_vector'(x"3ddd49ab"), 6 => std_logic_vector'(x"3dd40866"), 7 => std_logic_vector'(x"3e06eb87"), 8 => std_logic_vector'(x"3e33a89d")),
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
        OutputValueA_enable => ValueBus_18_enable,
        OutputValueA_LastValue => ValueBus_18_LastValue,
        OutputValueA_Value => ValueBus_18_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_19_enable,
        OutputWeightA_Value => ValueBus_19_Value,
        OutputWeightA_LastValue => ValueBus_19_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_20_enable,
        OutputValueB_LastValue => ValueBus_20_LastValue,
        OutputValueB_Value => ValueBus_20_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_21_enable,
        OutputWeightB_Value => ValueBus_21_Value,
        OutputWeightB_LastValue => ValueBus_21_LastValue,

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
        InputValue_enable => ValueBus_18_enable,
        InputValue_Value => ValueBus_18_Value,
        InputValue_LastValue => ValueBus_18_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_19_enable,
        InputWeight_Value => ValueBus_19_Value,
        InputWeight_LastValue => ValueBus_19_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_22_enable,
        Output_LastValue => ValueBus_22_LastValue,
        Output_Value => ValueBus_22_Value,

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
        InputValue_enable => ValueBus_20_enable,
        InputValue_Value => ValueBus_20_Value,
        InputValue_LastValue => ValueBus_20_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_21_enable,
        InputWeight_Value => ValueBus_21_Value,
        InputWeight_LastValue => ValueBus_21_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_23_enable,
        Output_LastValue => ValueBus_23_LastValue,
        Output_Value => ValueBus_23_Value,

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
        InputA_enable => ValueBus_22_enable,
        InputA_Value => ValueBus_22_Value,
        InputA_LastValue => ValueBus_22_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_23_enable,
        InputB_Value => ValueBus_23_Value,
        InputB_LastValue => ValueBus_23_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_24_enable,
        Output_LastValue => ValueBus_24_LastValue,
        Output_Value => ValueBus_24_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_1,
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
        Input_enable => ValueBus_24_enable,
        Input_Value => ValueBus_24_Value,
        Input_LastValue => ValueBus_24_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_15_enable,
        Output_LastValue => ValueBus_15_LastValue,
        Output_Value => ValueBus_15_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl_single#2 signals
    ValueArrayCtrl_single_2: entity work.CNN_ValueArrayCtrl_single
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 3),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_26_enable,
        Input_Value => ValueBus_26_Value,
        Input_LastValue => ValueBus_26_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_25_enable,
        Output_LastValue => ValueBus_25_LastValue,
        Output_Value => ValueBus_25_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_single_2,
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
        Input_enable => ValueBus_25_enable,
        Input_Value => ValueBus_25_Value,
        Input_LastValue => ValueBus_25_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_27_enable,
        Output_LastValue => ValueBus_27_LastValue,
        Output_Value => ValueBus_27_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#2 signals
    Bias_2: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e18eeea")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_27_enable,
        Input_Value => ValueBus_27_Value,
        Input_LastValue => ValueBus_27_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_28_enable,
        Output_LastValue => ValueBus_28_LastValue,
        Output_Value => ValueBus_28_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#2 signals
    KernelCtrl_2: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(1, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_weights (0 to 8) => (0 => std_logic_vector'(x"3e4cd87e"), 1 => std_logic_vector'(x"3e853c5a"), 2 => std_logic_vector'(x"3bc59d82"), 3 => std_logic_vector'(x"beab0a5a"), 4 => std_logic_vector'(x"be947cbe"), 5 => std_logic_vector'(x"be37b5f8"), 6 => std_logic_vector'(x"3e0ab608"), 7 => std_logic_vector'(x"bda1e434"), 8 => std_logic_vector'(x"3e2b6ece")),
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

    -- Entity PlusCtrl#5 signals
    PlusCtrl_5: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_35_enable,
        Input_Value => ValueBus_35_Value,
        Input_LastValue => ValueBus_35_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_26_enable,
        Output_LastValue => ValueBus_26_LastValue,
        Output_Value => ValueBus_26_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#3 signals
    Bias_3: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"beb89625")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_6_enable,
        Input_Value => ValueBus_6_Value,
        Input_LastValue => ValueBus_6_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_36_enable,
        Output_LastValue => ValueBus_36_LastValue,
        Output_Value => ValueBus_36_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#0 signals
    Multiply_0: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"40ab4888")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_36_enable,
        Input_Value => ValueBus_36_Value,
        Input_LastValue => ValueBus_36_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_37_enable,
        Output_LastValue => ValueBus_37_LastValue,
        Output_Value => ValueBus_37_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#1 signals
    Multiply_1: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f81faaf")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_37_enable,
        Input_Value => ValueBus_37_Value,
        Input_LastValue => ValueBus_37_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_38_enable,
        Output_LastValue => ValueBus_38_LastValue,
        Output_Value => ValueBus_38_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#4 signals
    Bias_4: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bbf1f6c6")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_38_enable,
        Input_Value => ValueBus_38_Value,
        Input_LastValue => ValueBus_38_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_39_enable,
        Output_LastValue => ValueBus_39_LastValue,
        Output_Value => ValueBus_39_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#5 signals
    Bias_5: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e71dd71")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_17_enable,
        Input_Value => ValueBus_17_Value,
        Input_LastValue => ValueBus_17_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_40_enable,
        Output_LastValue => ValueBus_40_LastValue,
        Output_Value => ValueBus_40_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#2 signals
    Multiply_2: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"40dd6fd8")
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
        FIN => FIN_Multiply_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#3 signals
    Multiply_3: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f84e135")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_41_enable,
        Input_Value => ValueBus_41_Value,
        Input_LastValue => ValueBus_41_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_42_enable,
        Output_LastValue => ValueBus_42_LastValue,
        Output_Value => ValueBus_42_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#6 signals
    Bias_6: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bbbdc1f4")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_42_enable,
        Input_Value => ValueBus_42_Value,
        Input_LastValue => ValueBus_42_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_43_enable,
        Output_LastValue => ValueBus_43_LastValue,
        Output_Value => ValueBus_43_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#7 signals
    Bias_7: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"be08cac8")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_28_enable,
        Input_Value => ValueBus_28_Value,
        Input_LastValue => ValueBus_28_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_44_enable,
        Output_LastValue => ValueBus_44_LastValue,
        Output_Value => ValueBus_44_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#4 signals
    Multiply_4: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"411f70a3")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_44_enable,
        Input_Value => ValueBus_44_Value,
        Input_LastValue => ValueBus_44_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_45_enable,
        Output_LastValue => ValueBus_45_LastValue,
        Output_Value => ValueBus_45_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#5 signals
    Multiply_5: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f745737")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_45_enable,
        Input_Value => ValueBus_45_Value,
        Input_LastValue => ValueBus_45_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_46_enable,
        Output_LastValue => ValueBus_46_LastValue,
        Output_Value => ValueBus_46_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#8 signals
    Bias_8: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3b146c7a")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_46_enable,
        Input_Value => ValueBus_46_Value,
        Input_LastValue => ValueBus_46_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_47_enable,
        Output_LastValue => ValueBus_47_LastValue,
        Output_Value => ValueBus_47_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#0 signals
    ReluCore_0: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_39_enable,
        Input_Value => ValueBus_39_Value,
        Input_LastValue => ValueBus_39_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_48_enable,
        Output_LastValue => ValueBus_48_LastValue,
        Output_Value => ValueBus_48_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#1 signals
    ReluCore_1: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_43_enable,
        Input_Value => ValueBus_43_Value,
        Input_LastValue => ValueBus_43_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_49_enable,
        Output_LastValue => ValueBus_49_LastValue,
        Output_Value => ValueBus_49_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#2 signals
    ReluCore_2: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_47_enable,
        Input_Value => ValueBus_47_Value,
        Input_LastValue => ValueBus_47_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_50_enable,
        Output_LastValue => ValueBus_50_LastValue,
        Output_Value => ValueBus_50_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#1 signals
    TrueDualPortMemory_1_Single_1: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 675) => (others => std_logic_vector'(x"00000000"))
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
        reset_channelHeight => TO_UNSIGNED(26, 5),
        reset_channelWidth => TO_UNSIGNED(26, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(26, 5),
        reset_newWidth => TO_UNSIGNED(26, 5),
        reset_kernelHeight => TO_UNSIGNED(2, 3),
        reset_kernelWidth => TO_UNSIGNED(2, 3),
        reset_strideRow => TO_UNSIGNED(2, 2),
        reset_strideCol => TO_UNSIGNED(2, 2),
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
        Input_enable => ValueBus_48_enable,
        Input_Value => ValueBus_48_Value,
        Input_LastValue => ValueBus_48_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_51_enable,
        OutputValueA_LastValue => ValueBus_51_LastValue,
        OutputValueA_Value => ValueBus_51_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_52_enable,
        OutputValueB_Value => ValueBus_52_Value,
        OutputValueB_LastValue => ValueBus_52_LastValue,

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

    -- Entity Max#0 signals
    Max_0: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_51_enable,
        InputA_Value => ValueBus_51_Value,
        InputA_LastValue => ValueBus_51_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_52_enable,
        InputB_Value => ValueBus_52_Value,
        InputB_LastValue => ValueBus_52_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_53_Value,
        Output_enable => ValueBus_53_enable,
        Output_LastValue => ValueBus_53_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#2 signals
    TrueDualPortMemory_1_Single_2: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 675) => (others => std_logic_vector'(x"00000000"))
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
        reset_channelHeight => TO_UNSIGNED(26, 5),
        reset_channelWidth => TO_UNSIGNED(26, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(26, 5),
        reset_newWidth => TO_UNSIGNED(26, 5),
        reset_kernelHeight => TO_UNSIGNED(2, 3),
        reset_kernelWidth => TO_UNSIGNED(2, 3),
        reset_strideRow => TO_UNSIGNED(2, 2),
        reset_strideCol => TO_UNSIGNED(2, 2),
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
        Input_enable => ValueBus_49_enable,
        Input_Value => ValueBus_49_Value,
        Input_LastValue => ValueBus_49_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_54_enable,
        OutputValueA_LastValue => ValueBus_54_LastValue,
        OutputValueA_Value => ValueBus_54_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_55_enable,
        OutputValueB_Value => ValueBus_55_Value,
        OutputValueB_LastValue => ValueBus_55_LastValue,

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

    -- Entity Max#1 signals
    Max_1: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_54_enable,
        InputA_Value => ValueBus_54_Value,
        InputA_LastValue => ValueBus_54_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_55_enable,
        InputB_Value => ValueBus_55_Value,
        InputB_LastValue => ValueBus_55_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_56_Value,
        Output_enable => ValueBus_56_enable,
        Output_LastValue => ValueBus_56_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#3 signals
    TrueDualPortMemory_1_Single_3: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 675) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_6_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_6_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_6_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_6_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_7_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_7_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_7_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_7_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_6_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_7_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#3 signals
    InputCtrl_ParFilter_3: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(26, 5),
        reset_channelWidth => TO_UNSIGNED(26, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(26, 5),
        reset_newWidth => TO_UNSIGNED(26, 5),
        reset_kernelHeight => TO_UNSIGNED(2, 3),
        reset_kernelWidth => TO_UNSIGNED(2, 3),
        reset_strideRow => TO_UNSIGNED(2, 2),
        reset_strideCol => TO_UNSIGNED(2, 2),
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
        Input_enable => ValueBus_50_enable,
        Input_Value => ValueBus_50_Value,
        Input_LastValue => ValueBus_50_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_6_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_7_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_57_enable,
        OutputValueA_LastValue => ValueBus_57_LastValue,
        OutputValueA_Value => ValueBus_57_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_58_enable,
        OutputValueB_Value => ValueBus_58_Value,
        OutputValueB_LastValue => ValueBus_58_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_6_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_6_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_6_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_6_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_7_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_7_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_7_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_7_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#2 signals
    Max_2: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_57_enable,
        InputA_Value => ValueBus_57_Value,
        InputA_LastValue => ValueBus_57_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_58_enable,
        InputB_Value => ValueBus_58_Value,
        InputB_LastValue => ValueBus_58_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_59_Value,
        Output_enable => ValueBus_59_enable,
        Output_LastValue => ValueBus_59_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_2,
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
        Input_enable(0) => ValueBus_63_enable(0),
        Input_enable(1) => ValueBus_63_enable(1),
        Input_enable(2) => ValueBus_63_enable(2),
        Input_Value(0) => ValueBus_63_Value(0),
        Input_Value(1) => ValueBus_63_Value(1),
        Input_Value(2) => ValueBus_63_Value(2),
        Input_LastValue(0) => ValueBus_63_LastValue(0),
        Input_LastValue(1) => ValueBus_63_LastValue(1),
        Input_LastValue(2) => ValueBus_63_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_60_enable,
        Output_LastValue => ValueBus_60_LastValue,
        Output_Value => ValueBus_60_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_0,
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
        Input_enable => ValueBus_60_enable,
        Input_Value => ValueBus_60_Value,
        Input_LastValue => ValueBus_60_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_64_enable,
        Output_LastValue => ValueBus_64_LastValue,
        Output_Value => ValueBus_64_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#0 signals
    Align_0: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"bdb54413"), 1 => std_logic_vector'(x"bde34c87"), 2 => std_logic_vector'(x"3cfc713d"), 3 => std_logic_vector'(x"3d9201f7"), 4 => std_logic_vector'(x"3d202fb7")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_64_enable,
        Input_Value => ValueBus_64_Value,
        Input_LastValue => ValueBus_64_LastValue,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_65_enable,
        OutputValue_LastValue => ValueBus_65_LastValue,
        OutputValue_Value => ValueBus_65_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_66_enable,
        OutputWeight_LastValue => ValueBus_66_LastValue,
        OutputWeight_Value => ValueBus_66_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#3 signals
    PlusTwo_3: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_65_enable,
        InputA_Value => ValueBus_65_Value,
        InputA_LastValue => ValueBus_65_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_66_enable,
        InputB_Value => ValueBus_66_Value,
        InputB_LastValue => ValueBus_66_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_67_enable,
        Output_LastValue => ValueBus_67_LastValue,
        Output_Value => ValueBus_67_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#4 signals
    TrueDualPortMemory_1_Single_4: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 293) => (0 => std_logic_vector'(x"00000000"), 1 => std_logic_vector'(x"00000000"), 2 => std_logic_vector'(x"00000000"), 3 => std_logic_vector'(x"00000000"), 4 => std_logic_vector'(x"00000000"), 5 => std_logic_vector'(x"00000000"), 6 => std_logic_vector'(x"00000000"), 7 => std_logic_vector'(x"00000000"), 8 => std_logic_vector'(x"00000000"), 9 => std_logic_vector'(x"00000000"), 10 => std_logic_vector'(x"00000000"), 11 => std_logic_vector'(x"00000000"), 12 => std_logic_vector'(x"00000000"), 13 => std_logic_vector'(x"00000000"), 14 => std_logic_vector'(x"00000000"), 15 => std_logic_vector'(x"00000000"), 16 => std_logic_vector'(x"00000000"), 17 => std_logic_vector'(x"00000000"), 18 => std_logic_vector'(x"00000000"), 19 => std_logic_vector'(x"00000000"), 20 => std_logic_vector'(x"00000000"), 21 => std_logic_vector'(x"00000000"), 22 => std_logic_vector'(x"00000000"), 23 => std_logic_vector'(x"00000000"), 24 => std_logic_vector'(x"00000000"), 25 => std_logic_vector'(x"00000000"), 26 => std_logic_vector'(x"00000000"), 27 => std_logic_vector'(x"00000000"), 28 => std_logic_vector'(x"00000000"), 29 => std_logic_vector'(x"00000000"), 30 => std_logic_vector'(x"00000000"), 31 => std_logic_vector'(x"00000000"), 32 => std_logic_vector'(x"00000000"), 33 => std_logic_vector'(x"00000000"), 34 => std_logic_vector'(x"00000000"), 35 => std_logic_vector'(x"00000000"), 36 => std_logic_vector'(x"00000000"), 37 => std_logic_vector'(x"00000000"), 38 => std_logic_vector'(x"00000000"), 39 => std_logic_vector'(x"00000000"), 40 => std_logic_vector'(x"00000000"), 41 => std_logic_vector'(x"00000000"), 42 => std_logic_vector'(x"00000000"), 43 => std_logic_vector'(x"00000000"), 44 => std_logic_vector'(x"00000000"), 45 => std_logic_vector'(x"00000000"), 46 => std_logic_vector'(x"00000000"), 47 => std_logic_vector'(x"00000000"), 48 => std_logic_vector'(x"00000000"), 49 => std_logic_vector'(x"00000000"), 50 => std_logic_vector'(x"00000000"), 51 => std_logic_vector'(x"00000000"), 52 => std_logic_vector'(x"00000000"), 53 => std_logic_vector'(x"00000000"), 54 => std_logic_vector'(x"00000000"), 55 => std_logic_vector'(x"00000000"), 56 => std_logic_vector'(x"00000000"), 57 => std_logic_vector'(x"00000000"), 58 => std_logic_vector'(x"00000000"), 59 => std_logic_vector'(x"00000000"), 60 => std_logic_vector'(x"00000000"), 61 => std_logic_vector'(x"00000000"), 62 => std_logic_vector'(x"00000000"), 63 => std_logic_vector'(x"00000000"), 64 => std_logic_vector'(x"00000000"), 65 => std_logic_vector'(x"00000000"), 66 => std_logic_vector'(x"00000000"), 67 => std_logic_vector'(x"00000000"), 68 => std_logic_vector'(x"00000000"), 69 => std_logic_vector'(x"00000000"), 70 => std_logic_vector'(x"00000000"), 71 => std_logic_vector'(x"00000000"), 72 => std_logic_vector'(x"00000000"), 73 => std_logic_vector'(x"00000000"), 74 => std_logic_vector'(x"00000000"), 75 => std_logic_vector'(x"00000000"), 76 => std_logic_vector'(x"00000000"), 77 => std_logic_vector'(x"00000000"), 78 => std_logic_vector'(x"00000000"), 79 => std_logic_vector'(x"00000000"), 80 => std_logic_vector'(x"00000000"), 81 => std_logic_vector'(x"00000000"), 82 => std_logic_vector'(x"00000000"), 83 => std_logic_vector'(x"00000000"), 84 => std_logic_vector'(x"00000000"), 85 => std_logic_vector'(x"00000000"), 86 => std_logic_vector'(x"00000000"), 87 => std_logic_vector'(x"00000000"), 88 => std_logic_vector'(x"00000000"), 89 => std_logic_vector'(x"00000000"), 90 => std_logic_vector'(x"00000000"), 91 => std_logic_vector'(x"00000000"), 92 => std_logic_vector'(x"00000000"), 93 => std_logic_vector'(x"00000000"), 94 => std_logic_vector'(x"00000000"), 95 => std_logic_vector'(x"00000000"), 96 => std_logic_vector'(x"00000000"), 97 => std_logic_vector'(x"00000000"), 98 => std_logic_vector'(x"00000000"), 99 => std_logic_vector'(x"00000000"), 100 => std_logic_vector'(x"00000000"), 101 => std_logic_vector'(x"00000000"), 102 => std_logic_vector'(x"00000000"), 103 => std_logic_vector'(x"00000000"), 104 => std_logic_vector'(x"00000000"), 105 => std_logic_vector'(x"00000000"), 106 => std_logic_vector'(x"00000000"), 107 => std_logic_vector'(x"00000000"), 108 => std_logic_vector'(x"00000000"), 109 => std_logic_vector'(x"00000000"), 110 => std_logic_vector'(x"00000000"), 111 => std_logic_vector'(x"00000000"), 112 => std_logic_vector'(x"00000000"), 113 => std_logic_vector'(x"00000000"), 114 => std_logic_vector'(x"00000000"), 115 => std_logic_vector'(x"00000000"), 116 => std_logic_vector'(x"00000000"), 117 => std_logic_vector'(x"00000000"), 118 => std_logic_vector'(x"00000000"), 119 => std_logic_vector'(x"00000000"), 120 => std_logic_vector'(x"00000000"), 121 => std_logic_vector'(x"00000000"), 122 => std_logic_vector'(x"00000000"), 123 => std_logic_vector'(x"00000000"), 124 => std_logic_vector'(x"00000000"), 125 => std_logic_vector'(x"00000000"), 126 => std_logic_vector'(x"00000000"), 127 => std_logic_vector'(x"00000000"), 128 => std_logic_vector'(x"00000000"), 129 => std_logic_vector'(x"00000000"), 130 => std_logic_vector'(x"00000000"), 131 => std_logic_vector'(x"00000000"), 132 => std_logic_vector'(x"00000000"), 133 => std_logic_vector'(x"00000000"), 134 => std_logic_vector'(x"00000000"), 135 => std_logic_vector'(x"00000000"), 136 => std_logic_vector'(x"00000000"), 137 => std_logic_vector'(x"00000000"), 138 => std_logic_vector'(x"00000000"), 139 => std_logic_vector'(x"00000000"), 140 => std_logic_vector'(x"00000000"), 141 => std_logic_vector'(x"00000000"), 142 => std_logic_vector'(x"00000000"), 143 => std_logic_vector'(x"00000000"), 144 => std_logic_vector'(x"00000000"), 145 => std_logic_vector'(x"00000000"), 146 => std_logic_vector'(x"00000000"), 147 => std_logic_vector'(x"00000000"), 148 => std_logic_vector'(x"00000000"), 149 => std_logic_vector'(x"00000000"), 150 => std_logic_vector'(x"00000000"), 151 => std_logic_vector'(x"00000000"), 152 => std_logic_vector'(x"00000000"), 153 => std_logic_vector'(x"00000000"), 154 => std_logic_vector'(x"00000000"), 155 => std_logic_vector'(x"00000000"), 156 => std_logic_vector'(x"00000000"), 157 => std_logic_vector'(x"00000000"), 158 => std_logic_vector'(x"00000000"), 159 => std_logic_vector'(x"00000000"), 160 => std_logic_vector'(x"00000000"), 161 => std_logic_vector'(x"00000000"), 162 => std_logic_vector'(x"00000000"), 163 => std_logic_vector'(x"00000000"), 164 => std_logic_vector'(x"00000000"), 165 => std_logic_vector'(x"00000000"), 166 => std_logic_vector'(x"00000000"), 167 => std_logic_vector'(x"00000000"), 168 => std_logic_vector'(x"00000000"), 169 => std_logic_vector'(x"bd37bd98"), 170 => std_logic_vector'(x"3d23bce4"), 171 => std_logic_vector'(x"3d6db622"), 172 => std_logic_vector'(x"bd81369e"), 173 => std_logic_vector'(x"bdd0ab0a"), 174 => std_logic_vector'(x"bcd44ea9"), 175 => std_logic_vector'(x"3c223b50"), 176 => std_logic_vector'(x"3d323f91"), 177 => std_logic_vector'(x"3d8034c9"), 178 => std_logic_vector'(x"bd5e0a8c"), 179 => std_logic_vector'(x"bd86531d"), 180 => std_logic_vector'(x"3d98b193"), 181 => std_logic_vector'(x"3e0ffec5"), 182 => std_logic_vector'(x"bd9eab4f"), 183 => std_logic_vector'(x"3e04590c"), 184 => std_logic_vector'(x"3c0250af"), 185 => std_logic_vector'(x"3d45daba"), 186 => std_logic_vector'(x"3d474fd6"), 187 => std_logic_vector'(x"bda8868e"), 188 => std_logic_vector'(x"bcc293f7"), 189 => std_logic_vector'(x"b8924910"), 190 => std_logic_vector'(x"bd07462c"), 191 => std_logic_vector'(x"3e0829b0"), 192 => std_logic_vector'(x"3b3596e0"), 193 => std_logic_vector'(x"bca0082e"), 194 => std_logic_vector'(x"bc25392f"), 195 => std_logic_vector'(x"be017437"), 196 => std_logic_vector'(x"3d3fc175"), 197 => std_logic_vector'(x"3de792c0"), 198 => std_logic_vector'(x"bd3959cf"), 199 => std_logic_vector'(x"bd1a49e2"), 200 => std_logic_vector'(x"bc5ddcdc"), 201 => std_logic_vector'(x"3c992b5b"), 202 => std_logic_vector'(x"bc8b11b8"), 203 => std_logic_vector'(x"3e2ac64a"), 204 => std_logic_vector'(x"bcfff72b"), 205 => std_logic_vector'(x"3dbfd289"), 206 => std_logic_vector'(x"3da2aa6d"), 207 => std_logic_vector'(x"bd8d9523"), 208 => std_logic_vector'(x"bdfb9ae2"), 209 => std_logic_vector'(x"bbdcbe89"), 210 => std_logic_vector'(x"bd1e2a49"), 211 => std_logic_vector'(x"bc6333d4"), 212 => std_logic_vector'(x"bdeaf80e"), 213 => std_logic_vector'(x"bdcde9d7"), 214 => std_logic_vector'(x"3c8119f1"), 215 => std_logic_vector'(x"3d5530be"), 216 => std_logic_vector'(x"bc0534ed"), 217 => std_logic_vector'(x"bdc75e2b"), 218 => std_logic_vector'(x"bcf57a16"), 219 => std_logic_vector'(x"bceff905"), 220 => std_logic_vector'(x"3addc543"), 221 => std_logic_vector'(x"bc8fb217"), 222 => std_logic_vector'(x"bd9e9564"), 223 => std_logic_vector'(x"bc12f2cb"), 224 => std_logic_vector'(x"bd1a91ca"), 225 => std_logic_vector'(x"3c88b3b0"), 226 => std_logic_vector'(x"bdbea7e0"), 227 => std_logic_vector'(x"bd76a18e"), 228 => std_logic_vector'(x"bc8b1ef7"), 229 => std_logic_vector'(x"3c3e301d"), 230 => std_logic_vector'(x"be340f25"), 231 => std_logic_vector'(x"3c1557c1"), 232 => std_logic_vector'(x"3da8c025"), 233 => std_logic_vector'(x"3daba265"), 234 => std_logic_vector'(x"bd6feb95"), 235 => std_logic_vector'(x"3de0b9ef"), 236 => std_logic_vector'(x"3e08c806"), 237 => std_logic_vector'(x"3c766370"), 238 => std_logic_vector'(x"bcc8dae1"), 239 => std_logic_vector'(x"bcae1abd"), 240 => std_logic_vector'(x"3ce6a3be"), 241 => std_logic_vector'(x"3a0591f8"), 242 => std_logic_vector'(x"3cfd97ca"), 243 => std_logic_vector'(x"bcc70338"), 244 => std_logic_vector'(x"bdaba499"), 245 => std_logic_vector'(x"bd79cfa6"), 246 => std_logic_vector'(x"bda22bbe"), 247 => std_logic_vector'(x"3db4e77f"), 248 => std_logic_vector'(x"3d632138"), 249 => std_logic_vector'(x"3d472014"), 250 => std_logic_vector'(x"bdbf2407"), 251 => std_logic_vector'(x"3b860e32"), 252 => std_logic_vector'(x"3d98817e"), 253 => std_logic_vector'(x"3d95063d"), 254 => std_logic_vector'(x"bccb5100"), 255 => std_logic_vector'(x"3cb619f0"), 256 => std_logic_vector'(x"3d29c636"), 257 => std_logic_vector'(x"3d079ac9"), 258 => std_logic_vector'(x"bd551fde"), 259 => std_logic_vector'(x"bc6dd6de"), 260 => std_logic_vector'(x"3d3a3c01"), 261 => std_logic_vector'(x"bd838e71"), 262 => std_logic_vector'(x"bcbc637d"), 263 => std_logic_vector'(x"bd96deea"), 264 => std_logic_vector'(x"bd4e4eda"), 265 => std_logic_vector'(x"3c942eb5"), 266 => std_logic_vector'(x"3bdc04ac"), 267 => std_logic_vector'(x"3d4f2264"), 268 => std_logic_vector'(x"be45532b"), 269 => std_logic_vector'(x"3e031f51"), 270 => std_logic_vector'(x"3abf9e33"), 271 => std_logic_vector'(x"bd9c7bcc"), 272 => std_logic_vector'(x"bd9c431a"), 273 => std_logic_vector'(x"bd21108f"), 274 => std_logic_vector'(x"3cae1a19"), 275 => std_logic_vector'(x"3d997194"), 276 => std_logic_vector'(x"bd1f19f7"), 277 => std_logic_vector'(x"bc7e7643"), 278 => std_logic_vector'(x"bd55ac59"), 279 => std_logic_vector'(x"be02b6c6"), 280 => std_logic_vector'(x"3e308c8a"), 281 => std_logic_vector'(x"be287813"), 282 => std_logic_vector'(x"bcc731e5"), 283 => std_logic_vector'(x"babe37ee"), 284 => std_logic_vector'(x"bd14f9f8"), 285 => std_logic_vector'(x"3dd59928"), 286 => std_logic_vector'(x"bd22e8bd"), 287 => std_logic_vector'(x"3c3fa440"), 288 => std_logic_vector'(x"bd68ca72"), 289 => std_logic_vector'(x"3b536d36"), 290 => std_logic_vector'(x"3e17b1f0"), 291 => std_logic_vector'(x"bd9f090d"), 292 => std_logic_vector'(x"bb5cf563"), 293 => std_logic_vector'(x"3d346ea8"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_8_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_8_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_8_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_8_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_9_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_9_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_9_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_9_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_8_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_9_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqFilter#0 signals
    InputCtrl_SeqFilter_0: entity work.CNN_InputCtrl_SeqFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3),
        reset_c => TO_UNSIGNED(0, 3),
        reset_inputAdress => TO_UNSIGNED(0, 9),
        reset_kernelIdx => TO_UNSIGNED(0, 5),
        reset_weightAdress => TO_UNSIGNED(0, 9),
        reset_channelHeight => TO_UNSIGNED(13, 4),
        reset_channelWidth => TO_UNSIGNED(13, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 4),
        reset_newWidth => TO_UNSIGNED(13, 4),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 1),
        reset_strideCol => TO_UNSIGNED(1, 1),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelValue => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_53_enable,
        Input_Value => ValueBus_53_Value,
        Input_LastValue => ValueBus_53_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readValue_Data => TrueDualPortMemory_1_IReadResult_Single_8_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readWeight_Data => TrueDualPortMemory_1_IReadResult_Single_9_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_68_enable,
        OutputValue_LastValue => ValueBus_68_LastValue,
        OutputValue_Value => ValueBus_68_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_69_enable,
        OutputWeight_Value => ValueBus_69_Value,
        OutputWeight_LastValue => ValueBus_69_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlValue_Enabled => TrueDualPortMemory_1_IControl_Single_8_Enabled,
        ram_ctrlValue_Address => TrueDualPortMemory_1_IControl_Single_8_Address,
        ram_ctrlValue_IsWriting => TrueDualPortMemory_1_IControl_Single_8_IsWriting,
        ram_ctrlValue_Data => TrueDualPortMemory_1_IControl_Single_8_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlWeight_Enabled => TrueDualPortMemory_1_IControl_Single_9_Enabled,
        ram_ctrlWeight_Address => TrueDualPortMemory_1_IControl_Single_9_Address,
        ram_ctrlWeight_IsWriting => TrueDualPortMemory_1_IControl_Single_9_IsWriting,
        ram_ctrlWeight_Data => TrueDualPortMemory_1_IControl_Single_9_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqFilter_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#6 signals
    WeightValue_6: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_68_enable,
        InputValue_Value => ValueBus_68_Value,
        InputValue_LastValue => ValueBus_68_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_69_enable,
        InputWeight_Value => ValueBus_69_Value,
        InputWeight_LastValue => ValueBus_69_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_70_enable,
        Output_LastValue => ValueBus_70_LastValue,
        Output_Value => ValueBus_70_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_6,
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
        Input_enable => ValueBus_70_enable,
        Input_Value => ValueBus_70_Value,
        Input_LastValue => ValueBus_70_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_63_enable(0),
        Output_LastValue => ValueBus_63_LastValue(0),
        Output_Value => ValueBus_63_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#5 signals
    TrueDualPortMemory_1_Single_5: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 293) => (0 => std_logic_vector'(x"00000000"), 1 => std_logic_vector'(x"00000000"), 2 => std_logic_vector'(x"00000000"), 3 => std_logic_vector'(x"00000000"), 4 => std_logic_vector'(x"00000000"), 5 => std_logic_vector'(x"00000000"), 6 => std_logic_vector'(x"00000000"), 7 => std_logic_vector'(x"00000000"), 8 => std_logic_vector'(x"00000000"), 9 => std_logic_vector'(x"00000000"), 10 => std_logic_vector'(x"00000000"), 11 => std_logic_vector'(x"00000000"), 12 => std_logic_vector'(x"00000000"), 13 => std_logic_vector'(x"00000000"), 14 => std_logic_vector'(x"00000000"), 15 => std_logic_vector'(x"00000000"), 16 => std_logic_vector'(x"00000000"), 17 => std_logic_vector'(x"00000000"), 18 => std_logic_vector'(x"00000000"), 19 => std_logic_vector'(x"00000000"), 20 => std_logic_vector'(x"00000000"), 21 => std_logic_vector'(x"00000000"), 22 => std_logic_vector'(x"00000000"), 23 => std_logic_vector'(x"00000000"), 24 => std_logic_vector'(x"00000000"), 25 => std_logic_vector'(x"00000000"), 26 => std_logic_vector'(x"00000000"), 27 => std_logic_vector'(x"00000000"), 28 => std_logic_vector'(x"00000000"), 29 => std_logic_vector'(x"00000000"), 30 => std_logic_vector'(x"00000000"), 31 => std_logic_vector'(x"00000000"), 32 => std_logic_vector'(x"00000000"), 33 => std_logic_vector'(x"00000000"), 34 => std_logic_vector'(x"00000000"), 35 => std_logic_vector'(x"00000000"), 36 => std_logic_vector'(x"00000000"), 37 => std_logic_vector'(x"00000000"), 38 => std_logic_vector'(x"00000000"), 39 => std_logic_vector'(x"00000000"), 40 => std_logic_vector'(x"00000000"), 41 => std_logic_vector'(x"00000000"), 42 => std_logic_vector'(x"00000000"), 43 => std_logic_vector'(x"00000000"), 44 => std_logic_vector'(x"00000000"), 45 => std_logic_vector'(x"00000000"), 46 => std_logic_vector'(x"00000000"), 47 => std_logic_vector'(x"00000000"), 48 => std_logic_vector'(x"00000000"), 49 => std_logic_vector'(x"00000000"), 50 => std_logic_vector'(x"00000000"), 51 => std_logic_vector'(x"00000000"), 52 => std_logic_vector'(x"00000000"), 53 => std_logic_vector'(x"00000000"), 54 => std_logic_vector'(x"00000000"), 55 => std_logic_vector'(x"00000000"), 56 => std_logic_vector'(x"00000000"), 57 => std_logic_vector'(x"00000000"), 58 => std_logic_vector'(x"00000000"), 59 => std_logic_vector'(x"00000000"), 60 => std_logic_vector'(x"00000000"), 61 => std_logic_vector'(x"00000000"), 62 => std_logic_vector'(x"00000000"), 63 => std_logic_vector'(x"00000000"), 64 => std_logic_vector'(x"00000000"), 65 => std_logic_vector'(x"00000000"), 66 => std_logic_vector'(x"00000000"), 67 => std_logic_vector'(x"00000000"), 68 => std_logic_vector'(x"00000000"), 69 => std_logic_vector'(x"00000000"), 70 => std_logic_vector'(x"00000000"), 71 => std_logic_vector'(x"00000000"), 72 => std_logic_vector'(x"00000000"), 73 => std_logic_vector'(x"00000000"), 74 => std_logic_vector'(x"00000000"), 75 => std_logic_vector'(x"00000000"), 76 => std_logic_vector'(x"00000000"), 77 => std_logic_vector'(x"00000000"), 78 => std_logic_vector'(x"00000000"), 79 => std_logic_vector'(x"00000000"), 80 => std_logic_vector'(x"00000000"), 81 => std_logic_vector'(x"00000000"), 82 => std_logic_vector'(x"00000000"), 83 => std_logic_vector'(x"00000000"), 84 => std_logic_vector'(x"00000000"), 85 => std_logic_vector'(x"00000000"), 86 => std_logic_vector'(x"00000000"), 87 => std_logic_vector'(x"00000000"), 88 => std_logic_vector'(x"00000000"), 89 => std_logic_vector'(x"00000000"), 90 => std_logic_vector'(x"00000000"), 91 => std_logic_vector'(x"00000000"), 92 => std_logic_vector'(x"00000000"), 93 => std_logic_vector'(x"00000000"), 94 => std_logic_vector'(x"00000000"), 95 => std_logic_vector'(x"00000000"), 96 => std_logic_vector'(x"00000000"), 97 => std_logic_vector'(x"00000000"), 98 => std_logic_vector'(x"00000000"), 99 => std_logic_vector'(x"00000000"), 100 => std_logic_vector'(x"00000000"), 101 => std_logic_vector'(x"00000000"), 102 => std_logic_vector'(x"00000000"), 103 => std_logic_vector'(x"00000000"), 104 => std_logic_vector'(x"00000000"), 105 => std_logic_vector'(x"00000000"), 106 => std_logic_vector'(x"00000000"), 107 => std_logic_vector'(x"00000000"), 108 => std_logic_vector'(x"00000000"), 109 => std_logic_vector'(x"00000000"), 110 => std_logic_vector'(x"00000000"), 111 => std_logic_vector'(x"00000000"), 112 => std_logic_vector'(x"00000000"), 113 => std_logic_vector'(x"00000000"), 114 => std_logic_vector'(x"00000000"), 115 => std_logic_vector'(x"00000000"), 116 => std_logic_vector'(x"00000000"), 117 => std_logic_vector'(x"00000000"), 118 => std_logic_vector'(x"00000000"), 119 => std_logic_vector'(x"00000000"), 120 => std_logic_vector'(x"00000000"), 121 => std_logic_vector'(x"00000000"), 122 => std_logic_vector'(x"00000000"), 123 => std_logic_vector'(x"00000000"), 124 => std_logic_vector'(x"00000000"), 125 => std_logic_vector'(x"00000000"), 126 => std_logic_vector'(x"00000000"), 127 => std_logic_vector'(x"00000000"), 128 => std_logic_vector'(x"00000000"), 129 => std_logic_vector'(x"00000000"), 130 => std_logic_vector'(x"00000000"), 131 => std_logic_vector'(x"00000000"), 132 => std_logic_vector'(x"00000000"), 133 => std_logic_vector'(x"00000000"), 134 => std_logic_vector'(x"00000000"), 135 => std_logic_vector'(x"00000000"), 136 => std_logic_vector'(x"00000000"), 137 => std_logic_vector'(x"00000000"), 138 => std_logic_vector'(x"00000000"), 139 => std_logic_vector'(x"00000000"), 140 => std_logic_vector'(x"00000000"), 141 => std_logic_vector'(x"00000000"), 142 => std_logic_vector'(x"00000000"), 143 => std_logic_vector'(x"00000000"), 144 => std_logic_vector'(x"00000000"), 145 => std_logic_vector'(x"00000000"), 146 => std_logic_vector'(x"00000000"), 147 => std_logic_vector'(x"00000000"), 148 => std_logic_vector'(x"00000000"), 149 => std_logic_vector'(x"00000000"), 150 => std_logic_vector'(x"00000000"), 151 => std_logic_vector'(x"00000000"), 152 => std_logic_vector'(x"00000000"), 153 => std_logic_vector'(x"00000000"), 154 => std_logic_vector'(x"00000000"), 155 => std_logic_vector'(x"00000000"), 156 => std_logic_vector'(x"00000000"), 157 => std_logic_vector'(x"00000000"), 158 => std_logic_vector'(x"00000000"), 159 => std_logic_vector'(x"00000000"), 160 => std_logic_vector'(x"00000000"), 161 => std_logic_vector'(x"00000000"), 162 => std_logic_vector'(x"00000000"), 163 => std_logic_vector'(x"00000000"), 164 => std_logic_vector'(x"00000000"), 165 => std_logic_vector'(x"00000000"), 166 => std_logic_vector'(x"00000000"), 167 => std_logic_vector'(x"00000000"), 168 => std_logic_vector'(x"00000000"), 169 => std_logic_vector'(x"bd59d476"), 170 => std_logic_vector'(x"bdbebd0a"), 171 => std_logic_vector'(x"bd8b07c8"), 172 => std_logic_vector'(x"3d7728c7"), 173 => std_logic_vector'(x"bdb5c607"), 174 => std_logic_vector'(x"bdf1ea81"), 175 => std_logic_vector'(x"bd0550b2"), 176 => std_logic_vector'(x"bda96090"), 177 => std_logic_vector'(x"3ddbe554"), 178 => std_logic_vector'(x"3d97ea55"), 179 => std_logic_vector'(x"bcf80059"), 180 => std_logic_vector'(x"bd550f7d"), 181 => std_logic_vector'(x"3d86d86d"), 182 => std_logic_vector'(x"3ce92ba9"), 183 => std_logic_vector'(x"3cdc9071"), 184 => std_logic_vector'(x"3d8d746d"), 185 => std_logic_vector'(x"3e02fd5b"), 186 => std_logic_vector'(x"bd072997"), 187 => std_logic_vector'(x"3be72605"), 188 => std_logic_vector'(x"bd2ac2e7"), 189 => std_logic_vector'(x"3db95147"), 190 => std_logic_vector'(x"3c3173f1"), 191 => std_logic_vector'(x"3c9d3b5d"), 192 => std_logic_vector'(x"bd2187d6"), 193 => std_logic_vector'(x"bd9a559a"), 194 => std_logic_vector'(x"3d53b41c"), 195 => std_logic_vector'(x"be390239"), 196 => std_logic_vector'(x"3b960aa1"), 197 => std_logic_vector'(x"3e2bb8bf"), 198 => std_logic_vector'(x"3e74bb63"), 199 => std_logic_vector'(x"bd5ab85f"), 200 => std_logic_vector'(x"bd5f7615"), 201 => std_logic_vector'(x"3d31612a"), 202 => std_logic_vector'(x"3d8e6dab"), 203 => std_logic_vector'(x"bbd5aae0"), 204 => std_logic_vector'(x"bc0c99fb"), 205 => std_logic_vector'(x"3d9aab0e"), 206 => std_logic_vector'(x"bc16abaa"), 207 => std_logic_vector'(x"bd5002f0"), 208 => std_logic_vector'(x"bd258565"), 209 => std_logic_vector'(x"bd5621a5"), 210 => std_logic_vector'(x"3d01bd70"), 211 => std_logic_vector'(x"bd94457c"), 212 => std_logic_vector'(x"3dd8b7eb"), 213 => std_logic_vector'(x"3dd30909"), 214 => std_logic_vector'(x"3d1d665c"), 215 => std_logic_vector'(x"bc75a401"), 216 => std_logic_vector'(x"bc7008eb"), 217 => std_logic_vector'(x"3df56a7d"), 218 => std_logic_vector'(x"bc12e174"), 219 => std_logic_vector'(x"3e23d31b"), 220 => std_logic_vector'(x"bc8154e0"), 221 => std_logic_vector'(x"3de6bd31"), 222 => std_logic_vector'(x"bbd404f4"), 223 => std_logic_vector'(x"3b7ec4e6"), 224 => std_logic_vector'(x"3e2a097d"), 225 => std_logic_vector'(x"bdbf8934"), 226 => std_logic_vector'(x"3ccb90f2"), 227 => std_logic_vector'(x"bd9ef8dd"), 228 => std_logic_vector'(x"3c73f9e5"), 229 => std_logic_vector'(x"3af80f67"), 230 => std_logic_vector'(x"3e291b03"), 231 => std_logic_vector'(x"3e048839"), 232 => std_logic_vector'(x"bc7ccdac"), 233 => std_logic_vector'(x"bcea6c66"), 234 => std_logic_vector'(x"3d8a17d9"), 235 => std_logic_vector'(x"3c946d32"), 236 => std_logic_vector'(x"3d87db0b"), 237 => std_logic_vector'(x"bccf6698"), 238 => std_logic_vector'(x"3dab710e"), 239 => std_logic_vector'(x"3be3c09f"), 240 => std_logic_vector'(x"bda090f4"), 241 => std_logic_vector'(x"bdc3a774"), 242 => std_logic_vector'(x"bb8ea66c"), 243 => std_logic_vector'(x"3e73cf11"), 244 => std_logic_vector'(x"bd987c41"), 245 => std_logic_vector'(x"bd1f66f5"), 246 => std_logic_vector'(x"bcf3baf3"), 247 => std_logic_vector'(x"bbfa6b3f"), 248 => std_logic_vector'(x"3dc4f13a"), 249 => std_logic_vector'(x"3bb17081"), 250 => std_logic_vector'(x"bd827b30"), 251 => std_logic_vector'(x"3cd90eb7"), 252 => std_logic_vector'(x"3dffb3dc"), 253 => std_logic_vector'(x"3da9ac2a"), 254 => std_logic_vector'(x"3af7159b"), 255 => std_logic_vector'(x"3c190964"), 256 => std_logic_vector'(x"bd0bf6b0"), 257 => std_logic_vector'(x"3d4ea9c2"), 258 => std_logic_vector'(x"bdb7592d"), 259 => std_logic_vector'(x"3d9afd27"), 260 => std_logic_vector'(x"3cebe506"), 261 => std_logic_vector'(x"bc6e9eaa"), 262 => std_logic_vector'(x"3d0ca5cd"), 263 => std_logic_vector'(x"bc2c2d75"), 264 => std_logic_vector'(x"3e197340"), 265 => std_logic_vector'(x"3cc0f44a"), 266 => std_logic_vector'(x"bcaef697"), 267 => std_logic_vector'(x"bda2b80a"), 268 => std_logic_vector'(x"bdee0602"), 269 => std_logic_vector'(x"baaf0847"), 270 => std_logic_vector'(x"3db6c531"), 271 => std_logic_vector'(x"bc2e4f89"), 272 => std_logic_vector'(x"bd5f8317"), 273 => std_logic_vector'(x"3d602039"), 274 => std_logic_vector'(x"bdd79d21"), 275 => std_logic_vector'(x"bcd79136"), 276 => std_logic_vector'(x"3be4707d"), 277 => std_logic_vector'(x"bd456748"), 278 => std_logic_vector'(x"3cc19a7b"), 279 => std_logic_vector'(x"bd881b93"), 280 => std_logic_vector'(x"be0f57fd"), 281 => std_logic_vector'(x"3b9121ba"), 282 => std_logic_vector'(x"3d8b3eb7"), 283 => std_logic_vector'(x"bac93f2a"), 284 => std_logic_vector'(x"bb95f54a"), 285 => std_logic_vector'(x"bd05a5bc"), 286 => std_logic_vector'(x"bd07637d"), 287 => std_logic_vector'(x"3e0711bb"), 288 => std_logic_vector'(x"ba2071fd"), 289 => std_logic_vector'(x"3a85a3ed"), 290 => std_logic_vector'(x"bc9aada4"), 291 => std_logic_vector'(x"3bd2d638"), 292 => std_logic_vector'(x"3e0c9306"), 293 => std_logic_vector'(x"3cb22eec"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_10_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_10_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_10_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_10_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_11_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_11_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_11_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_11_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_10_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_11_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqFilter#1 signals
    InputCtrl_SeqFilter_1: entity work.CNN_InputCtrl_SeqFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3),
        reset_c => TO_UNSIGNED(0, 3),
        reset_inputAdress => TO_UNSIGNED(0, 9),
        reset_kernelIdx => TO_UNSIGNED(0, 5),
        reset_weightAdress => TO_UNSIGNED(0, 9),
        reset_channelHeight => TO_UNSIGNED(13, 4),
        reset_channelWidth => TO_UNSIGNED(13, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 4),
        reset_newWidth => TO_UNSIGNED(13, 4),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 1),
        reset_strideCol => TO_UNSIGNED(1, 1),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelValue => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_56_enable,
        Input_Value => ValueBus_56_Value,
        Input_LastValue => ValueBus_56_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readValue_Data => TrueDualPortMemory_1_IReadResult_Single_10_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readWeight_Data => TrueDualPortMemory_1_IReadResult_Single_11_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_71_enable,
        OutputValue_LastValue => ValueBus_71_LastValue,
        OutputValue_Value => ValueBus_71_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_72_enable,
        OutputWeight_Value => ValueBus_72_Value,
        OutputWeight_LastValue => ValueBus_72_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlValue_Enabled => TrueDualPortMemory_1_IControl_Single_10_Enabled,
        ram_ctrlValue_Address => TrueDualPortMemory_1_IControl_Single_10_Address,
        ram_ctrlValue_IsWriting => TrueDualPortMemory_1_IControl_Single_10_IsWriting,
        ram_ctrlValue_Data => TrueDualPortMemory_1_IControl_Single_10_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlWeight_Enabled => TrueDualPortMemory_1_IControl_Single_11_Enabled,
        ram_ctrlWeight_Address => TrueDualPortMemory_1_IControl_Single_11_Address,
        ram_ctrlWeight_IsWriting => TrueDualPortMemory_1_IControl_Single_11_IsWriting,
        ram_ctrlWeight_Data => TrueDualPortMemory_1_IControl_Single_11_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqFilter_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#7 signals
    WeightValue_7: entity work.CNN_WeightValue
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
        Output_enable => ValueBus_73_enable,
        Output_LastValue => ValueBus_73_LastValue,
        Output_Value => ValueBus_73_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_7,
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
        Input_enable => ValueBus_73_enable,
        Input_Value => ValueBus_73_Value,
        Input_LastValue => ValueBus_73_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_63_enable(1),
        Output_LastValue => ValueBus_63_LastValue(1),
        Output_Value => ValueBus_63_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#6 signals
    TrueDualPortMemory_1_Single_6: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 293) => (0 => std_logic_vector'(x"00000000"), 1 => std_logic_vector'(x"00000000"), 2 => std_logic_vector'(x"00000000"), 3 => std_logic_vector'(x"00000000"), 4 => std_logic_vector'(x"00000000"), 5 => std_logic_vector'(x"00000000"), 6 => std_logic_vector'(x"00000000"), 7 => std_logic_vector'(x"00000000"), 8 => std_logic_vector'(x"00000000"), 9 => std_logic_vector'(x"00000000"), 10 => std_logic_vector'(x"00000000"), 11 => std_logic_vector'(x"00000000"), 12 => std_logic_vector'(x"00000000"), 13 => std_logic_vector'(x"00000000"), 14 => std_logic_vector'(x"00000000"), 15 => std_logic_vector'(x"00000000"), 16 => std_logic_vector'(x"00000000"), 17 => std_logic_vector'(x"00000000"), 18 => std_logic_vector'(x"00000000"), 19 => std_logic_vector'(x"00000000"), 20 => std_logic_vector'(x"00000000"), 21 => std_logic_vector'(x"00000000"), 22 => std_logic_vector'(x"00000000"), 23 => std_logic_vector'(x"00000000"), 24 => std_logic_vector'(x"00000000"), 25 => std_logic_vector'(x"00000000"), 26 => std_logic_vector'(x"00000000"), 27 => std_logic_vector'(x"00000000"), 28 => std_logic_vector'(x"00000000"), 29 => std_logic_vector'(x"00000000"), 30 => std_logic_vector'(x"00000000"), 31 => std_logic_vector'(x"00000000"), 32 => std_logic_vector'(x"00000000"), 33 => std_logic_vector'(x"00000000"), 34 => std_logic_vector'(x"00000000"), 35 => std_logic_vector'(x"00000000"), 36 => std_logic_vector'(x"00000000"), 37 => std_logic_vector'(x"00000000"), 38 => std_logic_vector'(x"00000000"), 39 => std_logic_vector'(x"00000000"), 40 => std_logic_vector'(x"00000000"), 41 => std_logic_vector'(x"00000000"), 42 => std_logic_vector'(x"00000000"), 43 => std_logic_vector'(x"00000000"), 44 => std_logic_vector'(x"00000000"), 45 => std_logic_vector'(x"00000000"), 46 => std_logic_vector'(x"00000000"), 47 => std_logic_vector'(x"00000000"), 48 => std_logic_vector'(x"00000000"), 49 => std_logic_vector'(x"00000000"), 50 => std_logic_vector'(x"00000000"), 51 => std_logic_vector'(x"00000000"), 52 => std_logic_vector'(x"00000000"), 53 => std_logic_vector'(x"00000000"), 54 => std_logic_vector'(x"00000000"), 55 => std_logic_vector'(x"00000000"), 56 => std_logic_vector'(x"00000000"), 57 => std_logic_vector'(x"00000000"), 58 => std_logic_vector'(x"00000000"), 59 => std_logic_vector'(x"00000000"), 60 => std_logic_vector'(x"00000000"), 61 => std_logic_vector'(x"00000000"), 62 => std_logic_vector'(x"00000000"), 63 => std_logic_vector'(x"00000000"), 64 => std_logic_vector'(x"00000000"), 65 => std_logic_vector'(x"00000000"), 66 => std_logic_vector'(x"00000000"), 67 => std_logic_vector'(x"00000000"), 68 => std_logic_vector'(x"00000000"), 69 => std_logic_vector'(x"00000000"), 70 => std_logic_vector'(x"00000000"), 71 => std_logic_vector'(x"00000000"), 72 => std_logic_vector'(x"00000000"), 73 => std_logic_vector'(x"00000000"), 74 => std_logic_vector'(x"00000000"), 75 => std_logic_vector'(x"00000000"), 76 => std_logic_vector'(x"00000000"), 77 => std_logic_vector'(x"00000000"), 78 => std_logic_vector'(x"00000000"), 79 => std_logic_vector'(x"00000000"), 80 => std_logic_vector'(x"00000000"), 81 => std_logic_vector'(x"00000000"), 82 => std_logic_vector'(x"00000000"), 83 => std_logic_vector'(x"00000000"), 84 => std_logic_vector'(x"00000000"), 85 => std_logic_vector'(x"00000000"), 86 => std_logic_vector'(x"00000000"), 87 => std_logic_vector'(x"00000000"), 88 => std_logic_vector'(x"00000000"), 89 => std_logic_vector'(x"00000000"), 90 => std_logic_vector'(x"00000000"), 91 => std_logic_vector'(x"00000000"), 92 => std_logic_vector'(x"00000000"), 93 => std_logic_vector'(x"00000000"), 94 => std_logic_vector'(x"00000000"), 95 => std_logic_vector'(x"00000000"), 96 => std_logic_vector'(x"00000000"), 97 => std_logic_vector'(x"00000000"), 98 => std_logic_vector'(x"00000000"), 99 => std_logic_vector'(x"00000000"), 100 => std_logic_vector'(x"00000000"), 101 => std_logic_vector'(x"00000000"), 102 => std_logic_vector'(x"00000000"), 103 => std_logic_vector'(x"00000000"), 104 => std_logic_vector'(x"00000000"), 105 => std_logic_vector'(x"00000000"), 106 => std_logic_vector'(x"00000000"), 107 => std_logic_vector'(x"00000000"), 108 => std_logic_vector'(x"00000000"), 109 => std_logic_vector'(x"00000000"), 110 => std_logic_vector'(x"00000000"), 111 => std_logic_vector'(x"00000000"), 112 => std_logic_vector'(x"00000000"), 113 => std_logic_vector'(x"00000000"), 114 => std_logic_vector'(x"00000000"), 115 => std_logic_vector'(x"00000000"), 116 => std_logic_vector'(x"00000000"), 117 => std_logic_vector'(x"00000000"), 118 => std_logic_vector'(x"00000000"), 119 => std_logic_vector'(x"00000000"), 120 => std_logic_vector'(x"00000000"), 121 => std_logic_vector'(x"00000000"), 122 => std_logic_vector'(x"00000000"), 123 => std_logic_vector'(x"00000000"), 124 => std_logic_vector'(x"00000000"), 125 => std_logic_vector'(x"00000000"), 126 => std_logic_vector'(x"00000000"), 127 => std_logic_vector'(x"00000000"), 128 => std_logic_vector'(x"00000000"), 129 => std_logic_vector'(x"00000000"), 130 => std_logic_vector'(x"00000000"), 131 => std_logic_vector'(x"00000000"), 132 => std_logic_vector'(x"00000000"), 133 => std_logic_vector'(x"00000000"), 134 => std_logic_vector'(x"00000000"), 135 => std_logic_vector'(x"00000000"), 136 => std_logic_vector'(x"00000000"), 137 => std_logic_vector'(x"00000000"), 138 => std_logic_vector'(x"00000000"), 139 => std_logic_vector'(x"00000000"), 140 => std_logic_vector'(x"00000000"), 141 => std_logic_vector'(x"00000000"), 142 => std_logic_vector'(x"00000000"), 143 => std_logic_vector'(x"00000000"), 144 => std_logic_vector'(x"00000000"), 145 => std_logic_vector'(x"00000000"), 146 => std_logic_vector'(x"00000000"), 147 => std_logic_vector'(x"00000000"), 148 => std_logic_vector'(x"00000000"), 149 => std_logic_vector'(x"00000000"), 150 => std_logic_vector'(x"00000000"), 151 => std_logic_vector'(x"00000000"), 152 => std_logic_vector'(x"00000000"), 153 => std_logic_vector'(x"00000000"), 154 => std_logic_vector'(x"00000000"), 155 => std_logic_vector'(x"00000000"), 156 => std_logic_vector'(x"00000000"), 157 => std_logic_vector'(x"00000000"), 158 => std_logic_vector'(x"00000000"), 159 => std_logic_vector'(x"00000000"), 160 => std_logic_vector'(x"00000000"), 161 => std_logic_vector'(x"00000000"), 162 => std_logic_vector'(x"00000000"), 163 => std_logic_vector'(x"00000000"), 164 => std_logic_vector'(x"00000000"), 165 => std_logic_vector'(x"00000000"), 166 => std_logic_vector'(x"00000000"), 167 => std_logic_vector'(x"00000000"), 168 => std_logic_vector'(x"00000000"), 169 => std_logic_vector'(x"bc3dcc59"), 170 => std_logic_vector'(x"3d055d74"), 171 => std_logic_vector'(x"bb154bcf"), 172 => std_logic_vector'(x"3c81cb2e"), 173 => std_logic_vector'(x"3e064f22"), 174 => std_logic_vector'(x"bd973986"), 175 => std_logic_vector'(x"bd648ab0"), 176 => std_logic_vector'(x"bc40f94f"), 177 => std_logic_vector'(x"bbcee791"), 178 => std_logic_vector'(x"3c41cada"), 179 => std_logic_vector'(x"bbf4351a"), 180 => std_logic_vector'(x"3d0e71cb"), 181 => std_logic_vector'(x"bdd4cbf7"), 182 => std_logic_vector'(x"3b34ff23"), 183 => std_logic_vector'(x"3cb39a80"), 184 => std_logic_vector'(x"3cddba78"), 185 => std_logic_vector'(x"3db96aeb"), 186 => std_logic_vector'(x"bdc75b11"), 187 => std_logic_vector'(x"bd80b956"), 188 => std_logic_vector'(x"bdba710e"), 189 => std_logic_vector'(x"3dd6bdb4"), 190 => std_logic_vector'(x"3d547e96"), 191 => std_logic_vector'(x"3c859919"), 192 => std_logic_vector'(x"bdbd4de1"), 193 => std_logic_vector'(x"3d918242"), 194 => std_logic_vector'(x"bbc54fcd"), 195 => std_logic_vector'(x"bda7ae4c"), 196 => std_logic_vector'(x"3e1e54ec"), 197 => std_logic_vector'(x"3d664890"), 198 => std_logic_vector'(x"bc890921"), 199 => std_logic_vector'(x"bba2405f"), 200 => std_logic_vector'(x"bcdb245c"), 201 => std_logic_vector'(x"bc8c97ac"), 202 => std_logic_vector'(x"3c8f239b"), 203 => std_logic_vector'(x"3e03c424"), 204 => std_logic_vector'(x"bc9cbe9c"), 205 => std_logic_vector'(x"3ce10f07"), 206 => std_logic_vector'(x"bdb3f507"), 207 => std_logic_vector'(x"3c8a1951"), 208 => std_logic_vector'(x"3b632c4e"), 209 => std_logic_vector'(x"3cf567a6"), 210 => std_logic_vector'(x"3cb62f68"), 211 => std_logic_vector'(x"3ca3d1a9"), 212 => std_logic_vector'(x"bcd02027"), 213 => std_logic_vector'(x"3b847f0e"), 214 => std_logic_vector'(x"3d62ec36"), 215 => std_logic_vector'(x"3c0fdbef"), 216 => std_logic_vector'(x"3c43b331"), 217 => std_logic_vector'(x"3d5a0bcc"), 218 => std_logic_vector'(x"3d759d34"), 219 => std_logic_vector'(x"3da8621b"), 220 => std_logic_vector'(x"3d21742c"), 221 => std_logic_vector'(x"3d91dcb9"), 222 => std_logic_vector'(x"3bb5ef09"), 223 => std_logic_vector'(x"bd1ed344"), 224 => std_logic_vector'(x"bb807c88"), 225 => std_logic_vector'(x"3c1ee66f"), 226 => std_logic_vector'(x"bd085f36"), 227 => std_logic_vector'(x"3d3d820b"), 228 => std_logic_vector'(x"3c8e32f6"), 229 => std_logic_vector'(x"bd432d66"), 230 => std_logic_vector'(x"bd7e7cd6"), 231 => std_logic_vector'(x"3d7f6d45"), 232 => std_logic_vector'(x"3e34c47d"), 233 => std_logic_vector'(x"3dbf971d"), 234 => std_logic_vector'(x"3d2636b1"), 235 => std_logic_vector'(x"3c8c9253"), 236 => std_logic_vector'(x"3c2290c9"), 237 => std_logic_vector'(x"3ced499e"), 238 => std_logic_vector'(x"3e0ecff8"), 239 => std_logic_vector'(x"bd93464f"), 240 => std_logic_vector'(x"bd457b81"), 241 => std_logic_vector'(x"3d8b28e0"), 242 => std_logic_vector'(x"bcdc1431"), 243 => std_logic_vector'(x"3d5b3786"), 244 => std_logic_vector'(x"b9d35907"), 245 => std_logic_vector'(x"bd44f41e"), 246 => std_logic_vector'(x"bdec1587"), 247 => std_logic_vector'(x"bc9d35ba"), 248 => std_logic_vector'(x"3de4c0eb"), 249 => std_logic_vector'(x"bc0d1712"), 250 => std_logic_vector'(x"bd80c1d8"), 251 => std_logic_vector'(x"bd500c93"), 252 => std_logic_vector'(x"3c84027c"), 253 => std_logic_vector'(x"bc1e66c0"), 254 => std_logic_vector'(x"bc4f03c5"), 255 => std_logic_vector'(x"bcafdcd4"), 256 => std_logic_vector'(x"3cc82587"), 257 => std_logic_vector'(x"bd12b702"), 258 => std_logic_vector'(x"bbff606e"), 259 => std_logic_vector'(x"bc760981"), 260 => std_logic_vector'(x"3d47ced4"), 261 => std_logic_vector'(x"3d6e2582"), 262 => std_logic_vector'(x"bdbed28a"), 263 => std_logic_vector'(x"3d854b76"), 264 => std_logic_vector'(x"3d4b5e08"), 265 => std_logic_vector'(x"bd71dc0f"), 266 => std_logic_vector'(x"bd0985f6"), 267 => std_logic_vector'(x"bcaacfe2"), 268 => std_logic_vector'(x"bdd91922"), 269 => std_logic_vector'(x"bc224e1a"), 270 => std_logic_vector'(x"3ca75d9c"), 271 => std_logic_vector'(x"3da9c504"), 272 => std_logic_vector'(x"bdf9eaa8"), 273 => std_logic_vector'(x"bdef17fa"), 274 => std_logic_vector'(x"3d08293e"), 275 => std_logic_vector'(x"3ce3e1c3"), 276 => std_logic_vector'(x"be1be1f5"), 277 => std_logic_vector'(x"bdc40b4f"), 278 => std_logic_vector'(x"bde37e2a"), 279 => std_logic_vector'(x"3c979f23"), 280 => std_logic_vector'(x"3dcc2973"), 281 => std_logic_vector'(x"bdc8bb4e"), 282 => std_logic_vector'(x"bd9c908b"), 283 => std_logic_vector'(x"3b956915"), 284 => std_logic_vector'(x"3d4fd87b"), 285 => std_logic_vector'(x"3d4635b3"), 286 => std_logic_vector'(x"bbff74c6"), 287 => std_logic_vector'(x"bd8c7471"), 288 => std_logic_vector'(x"bcbcf280"), 289 => std_logic_vector'(x"bc77cb6c"), 290 => std_logic_vector'(x"3e13fb37"), 291 => std_logic_vector'(x"3d745e2d"), 292 => std_logic_vector'(x"3d393e9a"), 293 => std_logic_vector'(x"bd7b5988"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_12_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_12_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_12_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_12_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_13_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_13_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_13_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_13_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_12_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_13_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqFilter#2 signals
    InputCtrl_SeqFilter_2: entity work.CNN_InputCtrl_SeqFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3),
        reset_c => TO_UNSIGNED(0, 3),
        reset_inputAdress => TO_UNSIGNED(0, 9),
        reset_kernelIdx => TO_UNSIGNED(0, 5),
        reset_weightAdress => TO_UNSIGNED(0, 9),
        reset_channelHeight => TO_UNSIGNED(13, 4),
        reset_channelWidth => TO_UNSIGNED(13, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 4),
        reset_newWidth => TO_UNSIGNED(13, 4),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 1),
        reset_strideCol => TO_UNSIGNED(1, 1),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelValue => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_59_enable,
        Input_Value => ValueBus_59_Value,
        Input_LastValue => ValueBus_59_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readValue_Data => TrueDualPortMemory_1_IReadResult_Single_12_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readWeight_Data => TrueDualPortMemory_1_IReadResult_Single_13_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_74_enable,
        OutputValue_LastValue => ValueBus_74_LastValue,
        OutputValue_Value => ValueBus_74_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_75_enable,
        OutputWeight_Value => ValueBus_75_Value,
        OutputWeight_LastValue => ValueBus_75_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlValue_Enabled => TrueDualPortMemory_1_IControl_Single_12_Enabled,
        ram_ctrlValue_Address => TrueDualPortMemory_1_IControl_Single_12_Address,
        ram_ctrlValue_IsWriting => TrueDualPortMemory_1_IControl_Single_12_IsWriting,
        ram_ctrlValue_Data => TrueDualPortMemory_1_IControl_Single_12_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlWeight_Enabled => TrueDualPortMemory_1_IControl_Single_13_Enabled,
        ram_ctrlWeight_Address => TrueDualPortMemory_1_IControl_Single_13_Address,
        ram_ctrlWeight_IsWriting => TrueDualPortMemory_1_IControl_Single_13_IsWriting,
        ram_ctrlWeight_Data => TrueDualPortMemory_1_IControl_Single_13_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqFilter_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#8 signals
    WeightValue_8: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_74_enable,
        InputValue_Value => ValueBus_74_Value,
        InputValue_LastValue => ValueBus_74_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_75_enable,
        InputWeight_Value => ValueBus_75_Value,
        InputWeight_LastValue => ValueBus_75_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_76_enable,
        Output_LastValue => ValueBus_76_LastValue,
        Output_Value => ValueBus_76_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_8,
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
        Input_enable => ValueBus_76_enable,
        Input_Value => ValueBus_76_Value,
        Input_LastValue => ValueBus_76_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_63_enable(2),
        Output_LastValue => ValueBus_63_LastValue(2),
        Output_Value => ValueBus_63_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#1 signals
    Align_1: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"baddbbc4"), 1 => std_logic_vector'(x"be569ac0"), 2 => std_logic_vector'(x"bf40cfbe"), 3 => std_logic_vector'(x"3ded87f1"), 4 => std_logic_vector'(x"3e73cd04")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_67_enable,
        Input_Value => ValueBus_67_Value,
        Input_LastValue => ValueBus_67_LastValue,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_77_enable,
        OutputValue_LastValue => ValueBus_77_LastValue,
        OutputValue_Value => ValueBus_77_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_78_enable,
        OutputWeight_LastValue => ValueBus_78_LastValue,
        OutputWeight_Value => ValueBus_78_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#2 signals
    Align_2: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"3f98d719"), 1 => std_logic_vector'(x"3f7d9c67"), 2 => std_logic_vector'(x"3fb4c328"), 3 => std_logic_vector'(x"3f9342c1"), 4 => std_logic_vector'(x"3fb2407a")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_81_enable,
        Input_Value => ValueBus_81_Value,
        Input_LastValue => ValueBus_81_LastValue,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_79_enable,
        OutputValue_LastValue => ValueBus_79_LastValue,
        OutputValue_Value => ValueBus_79_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_80_enable,
        OutputWeight_LastValue => ValueBus_80_LastValue,
        OutputWeight_Value => ValueBus_80_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#3 signals
    Align_3: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"3fc16a2b"), 1 => std_logic_vector'(x"3fbd2b85"), 2 => std_logic_vector'(x"3fb89677"), 3 => std_logic_vector'(x"3fa81162"), 4 => std_logic_vector'(x"3fc066df")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_84_enable,
        Input_Value => ValueBus_84_Value,
        Input_LastValue => ValueBus_84_LastValue,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_82_enable,
        OutputValue_LastValue => ValueBus_82_LastValue,
        OutputValue_Value => ValueBus_82_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_83_enable,
        OutputWeight_LastValue => ValueBus_83_LastValue,
        OutputWeight_Value => ValueBus_83_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#4 signals
    Align_4: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"3cc1befe"), 1 => std_logic_vector'(x"3cdf3e6f"), 2 => std_logic_vector'(x"bc5c91a0"), 3 => std_logic_vector'(x"3d47498f"), 4 => std_logic_vector'(x"3d6ce059")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_87_enable,
        Input_Value => ValueBus_87_Value,
        Input_LastValue => ValueBus_87_LastValue,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_85_enable,
        OutputValue_LastValue => ValueBus_85_LastValue,
        OutputValue_Value => ValueBus_85_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_86_enable,
        OutputWeight_LastValue => ValueBus_86_LastValue,
        OutputWeight_Value => ValueBus_86_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#4 signals
    PlusTwo_4: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_78_enable,
        InputA_Value => ValueBus_78_Value,
        InputA_LastValue => ValueBus_78_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_77_enable,
        InputB_Value => ValueBus_77_Value,
        InputB_LastValue => ValueBus_77_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_81_enable,
        Output_LastValue => ValueBus_81_LastValue,
        Output_Value => ValueBus_81_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity MultiplyTwo#0 signals
    MultiplyTwo_0: entity work.CNN_MultiplyTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_80_enable,
        InputA_Value => ValueBus_80_Value,
        InputA_LastValue => ValueBus_80_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_79_enable,
        InputB_Value => ValueBus_79_Value,
        InputB_LastValue => ValueBus_79_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_84_enable,
        Output_LastValue => ValueBus_84_LastValue,
        Output_Value => ValueBus_84_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_MultiplyTwo_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity MultiplyTwo#1 signals
    MultiplyTwo_1: entity work.CNN_MultiplyTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_83_enable,
        InputA_Value => ValueBus_83_Value,
        InputA_LastValue => ValueBus_83_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_82_enable,
        InputB_Value => ValueBus_82_Value,
        InputB_LastValue => ValueBus_82_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_87_enable,
        Output_LastValue => ValueBus_87_LastValue,
        Output_Value => ValueBus_87_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_MultiplyTwo_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#5 signals
    PlusTwo_5: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_86_enable,
        InputA_Value => ValueBus_86_Value,
        InputA_LastValue => ValueBus_86_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_85_enable,
        InputB_Value => ValueBus_85_Value,
        InputB_LastValue => ValueBus_85_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_88_enable,
        Output_LastValue => ValueBus_88_LastValue,
        Output_Value => ValueBus_88_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#3 signals
    ReluCore_3: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_88_enable,
        Input_Value => ValueBus_88_Value,
        Input_LastValue => ValueBus_88_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_89_enable,
        Output_LastValue => ValueBus_89_LastValue,
        Output_Value => ValueBus_89_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#7 signals
    TrueDualPortMemory_1_Single_7: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 404) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_14_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_14_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_14_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_14_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_15_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_15_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_15_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_15_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_14_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_15_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqChannel signals
    InputCtrl_SeqChannel: entity work.CNN_InputCtrl_SeqChannel
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_c => TO_UNSIGNED(0, 3),
        reset_i => TO_UNSIGNED(0, 2),
        reset_j => TO_UNSIGNED(0, 2),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 4),
        reset_kernelB => TO_UNSIGNED(0, 4),
        reset_numInChannels => TO_UNSIGNED(5, 3),
        reset_channelHeight => TO_UNSIGNED(9, 4),
        reset_channelWidth => TO_UNSIGNED(9, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(9, 4),
        reset_newWidth => TO_UNSIGNED(9, 4),
        reset_kernelHeight => TO_UNSIGNED(3, 2),
        reset_kernelWidth => TO_UNSIGNED(3, 2),
        reset_strideRow => TO_UNSIGNED(3, 2),
        reset_strideCol => TO_UNSIGNED(3, 2),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_89_enable,
        Input_Value => ValueBus_89_Value,
        Input_LastValue => ValueBus_89_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_14_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_15_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_90_enable,
        OutputValueA_LastValue => ValueBus_90_LastValue,
        OutputValueA_Value => ValueBus_90_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_91_enable,
        OutputValueB_Value => ValueBus_91_Value,
        OutputValueB_LastValue => ValueBus_91_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_14_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_14_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_14_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_14_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_15_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_15_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_15_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_15_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqChannel,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#3 signals
    Max_3: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_90_enable,
        InputA_Value => ValueBus_90_Value,
        InputA_LastValue => ValueBus_90_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_91_enable,
        InputB_Value => ValueBus_91_Value,
        InputB_LastValue => ValueBus_91_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_92_Value,
        Output_enable => ValueBus_92_enable,
        Output_LastValue => ValueBus_92_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#8 signals
    TrueDualPortMemory_1_Single_8: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 44) => (0 => std_logic_vector'(x"be9d9a79"), 1 => std_logic_vector'(x"3eb435f9"), 2 => std_logic_vector'(x"3e2a2596"), 3 => std_logic_vector'(x"beabc399"), 4 => std_logic_vector'(x"3e0f5df5"), 5 => std_logic_vector'(x"bea61d0d"), 6 => std_logic_vector'(x"be444f7d"), 7 => std_logic_vector'(x"3ea74215"), 8 => std_logic_vector'(x"bd4a46fe"), 9 => std_logic_vector'(x"bf0dc9e8"), 10 => std_logic_vector'(x"3e63c4be"), 11 => std_logic_vector'(x"3e652c1e"), 12 => std_logic_vector'(x"be72528c"), 13 => std_logic_vector'(x"bd584312"), 14 => std_logic_vector'(x"be6831fc"), 15 => std_logic_vector'(x"be3e4cf9"), 16 => std_logic_vector'(x"bdb88cd4"), 17 => std_logic_vector'(x"be5cea4c"), 18 => std_logic_vector'(x"3de0b1fd"), 19 => std_logic_vector'(x"be3519d2"), 20 => std_logic_vector'(x"ba082291"), 21 => std_logic_vector'(x"bef2e16b"), 22 => std_logic_vector'(x"be4a9275"), 23 => std_logic_vector'(x"be95049d"), 24 => std_logic_vector'(x"bc80b4dd"), 25 => std_logic_vector'(x"becd102c"), 26 => std_logic_vector'(x"be9fcb7e"), 27 => std_logic_vector'(x"be1ae424"), 28 => std_logic_vector'(x"3efc1892"), 29 => std_logic_vector'(x"3e79ea87"), 30 => std_logic_vector'(x"3e4fe060"), 31 => std_logic_vector'(x"3c8ae74d"), 32 => std_logic_vector'(x"3e83c3a2"), 33 => std_logic_vector'(x"3e23a13b"), 34 => std_logic_vector'(x"3e194862"), 35 => std_logic_vector'(x"bc3145a4"), 36 => std_logic_vector'(x"3d127e67"), 37 => std_logic_vector'(x"3e02882d"), 38 => std_logic_vector'(x"bed98fcf"), 39 => std_logic_vector'(x"3d8a5985"), 40 => std_logic_vector'(x"3e89c441"), 41 => std_logic_vector'(x"bdae4b27"), 42 => std_logic_vector'(x"3e7c2888"), 43 => std_logic_vector'(x"3efce46c"), 44 => std_logic_vector'(x"3cd14511"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_16_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_16_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_16_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_16_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_17_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_17_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_17_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_17_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_16_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_17_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity NodeCtrl_type10#0 signals
    NodeCtrl_type10_0: entity work.CNN_NodeCtrl_type10
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 2),
        reset_channelHeight => TO_UNSIGNED(3, 4),
        reset_channelWidth => TO_UNSIGNED(3, 4),
        reset_numInputs => TO_UNSIGNED(45, 9),
        reset_k => TO_UNSIGNED(0, 2),
        reset_x => TO_UNSIGNED(0, 9),
        reset_i => TO_UNSIGNED(0, 9),
        reset_adress => TO_UNSIGNED(0, 9),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_ramValid => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_92_enable,
        Input_Value => ValueBus_92_Value,
        Input_LastValue => ValueBus_92_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_read_Data => TrueDualPortMemory_1_IReadResult_Single_16_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_93_enable,
        OutputValue_LastValue => ValueBus_93_LastValue,
        OutputValue_Value => ValueBus_93_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_94_enable,
        OutputWeight_Value => ValueBus_94_Value,
        OutputWeight_LastValue => ValueBus_94_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrl_Enabled => TrueDualPortMemory_1_IControl_Single_16_Enabled,
        ram_ctrl_Address => TrueDualPortMemory_1_IControl_Single_16_Address,
        ram_ctrl_IsWriting => TrueDualPortMemory_1_IControl_Single_16_IsWriting,
        ram_ctrl_Data => TrueDualPortMemory_1_IControl_Single_16_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_NodeCtrl_type10_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#9 signals
    WeightValue_9: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_93_enable,
        InputValue_Value => ValueBus_93_Value,
        InputValue_LastValue => ValueBus_93_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_94_enable,
        InputWeight_Value => ValueBus_94_Value,
        InputWeight_LastValue => ValueBus_94_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_95_enable,
        Output_LastValue => ValueBus_95_LastValue,
        Output_Value => ValueBus_95_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_9,
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
        Input_enable => ValueBus_95_enable,
        Input_Value => ValueBus_95_Value,
        Input_LastValue => ValueBus_95_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_96_enable,
        Output_LastValue => ValueBus_96_LastValue,
        Output_Value => ValueBus_96_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#9 signals
    Bias_9: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e240474")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_96_enable,
        Input_Value => ValueBus_96_Value,
        Input_LastValue => ValueBus_96_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_97_enable,
        Output_LastValue => ValueBus_97_LastValue,
        Output_Value => ValueBus_97_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#9 signals
    TrueDualPortMemory_1_Single_9: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 44) => (0 => std_logic_vector'(x"3e9fe995"), 1 => std_logic_vector'(x"beb86dab"), 2 => std_logic_vector'(x"be062434"), 3 => std_logic_vector'(x"3e8f6051"), 4 => std_logic_vector'(x"bc95dc47"), 5 => std_logic_vector'(x"3e9d8abf"), 6 => std_logic_vector'(x"3d23ceed"), 7 => std_logic_vector'(x"bed11e9f"), 8 => std_logic_vector'(x"3e762654"), 9 => std_logic_vector'(x"3f049909"), 10 => std_logic_vector'(x"be389ec2"), 11 => std_logic_vector'(x"be92c335"), 12 => std_logic_vector'(x"3e272e59"), 13 => std_logic_vector'(x"bcf4b94f"), 14 => std_logic_vector'(x"3e2c9c72"), 15 => std_logic_vector'(x"3e4516b6"), 16 => std_logic_vector'(x"bcba92f1"), 17 => std_logic_vector'(x"3eaf4c24"), 18 => std_logic_vector'(x"3cca5f7c"), 19 => std_logic_vector'(x"3d9df7c3"), 20 => std_logic_vector'(x"3e00b693"), 21 => std_logic_vector'(x"3ee762e4"), 22 => std_logic_vector'(x"3ec50729"), 23 => std_logic_vector'(x"3e9b9456"), 24 => std_logic_vector'(x"3d844736"), 25 => std_logic_vector'(x"3e9bbb14"), 26 => std_logic_vector'(x"3e8f9d04"), 27 => std_logic_vector'(x"3db8746d"), 28 => std_logic_vector'(x"beff1b3c"), 29 => std_logic_vector'(x"be54e8e3"), 30 => std_logic_vector'(x"be155e0b"), 31 => std_logic_vector'(x"3d994e20"), 32 => std_logic_vector'(x"bdcae18d"), 33 => std_logic_vector'(x"bdd0e531"), 34 => std_logic_vector'(x"be78a571"), 35 => std_logic_vector'(x"bb910240"), 36 => std_logic_vector'(x"be56426b"), 37 => std_logic_vector'(x"be4fc9ad"), 38 => std_logic_vector'(x"3ed2d273"), 39 => std_logic_vector'(x"bd44023c"), 40 => std_logic_vector'(x"be5c6994"), 41 => std_logic_vector'(x"3e3a0e4a"), 42 => std_logic_vector'(x"be748744"), 43 => std_logic_vector'(x"bf01c0a9"), 44 => std_logic_vector'(x"bdc240d3"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_18_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_18_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_18_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_18_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_19_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_19_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_19_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_19_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_18_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_19_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity NodeCtrl_type10#1 signals
    NodeCtrl_type10_1: entity work.CNN_NodeCtrl_type10
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 2),
        reset_channelHeight => TO_UNSIGNED(3, 4),
        reset_channelWidth => TO_UNSIGNED(3, 4),
        reset_numInputs => TO_UNSIGNED(45, 9),
        reset_k => TO_UNSIGNED(0, 2),
        reset_x => TO_UNSIGNED(0, 9),
        reset_i => TO_UNSIGNED(0, 9),
        reset_adress => TO_UNSIGNED(0, 9),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_ramValid => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_92_enable,
        Input_Value => ValueBus_92_Value,
        Input_LastValue => ValueBus_92_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_read_Data => TrueDualPortMemory_1_IReadResult_Single_18_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_98_enable,
        OutputValue_LastValue => ValueBus_98_LastValue,
        OutputValue_Value => ValueBus_98_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_99_enable,
        OutputWeight_Value => ValueBus_99_Value,
        OutputWeight_LastValue => ValueBus_99_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrl_Enabled => TrueDualPortMemory_1_IControl_Single_18_Enabled,
        ram_ctrl_Address => TrueDualPortMemory_1_IControl_Single_18_Address,
        ram_ctrl_IsWriting => TrueDualPortMemory_1_IControl_Single_18_IsWriting,
        ram_ctrl_Data => TrueDualPortMemory_1_IControl_Single_18_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_NodeCtrl_type10_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#10 signals
    WeightValue_10: entity work.CNN_WeightValue
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
        Output_enable => ValueBus_100_enable,
        Output_LastValue => ValueBus_100_LastValue,
        Output_Value => ValueBus_100_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_10,
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
        Input_enable => ValueBus_100_enable,
        Input_Value => ValueBus_100_Value,
        Input_LastValue => ValueBus_100_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_101_enable,
        Output_LastValue => ValueBus_101_LastValue,
        Output_Value => ValueBus_101_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#10 signals
    Bias_10: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bd097e62")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_101_enable,
        Input_Value => ValueBus_101_Value,
        Input_LastValue => ValueBus_101_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_102_enable,
        Output_LastValue => ValueBus_102_LastValue,
        Output_Value => ValueBus_102_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#1 signals
    ValueArrayCtrl_1: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(2, 3),
        reset_channelHeight => TO_UNSIGNED(1, 5),
        reset_channelWidth => TO_UNSIGNED(1, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 1) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(2, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_105_enable(0),
        Input_enable(1) => ValueBus_105_enable(1),
        Input_Value(0) => ValueBus_105_Value(0),
        Input_Value(1) => ValueBus_105_Value(1),
        Input_LastValue(0) => ValueBus_105_LastValue(0),
        Input_LastValue(1) => ValueBus_105_LastValue(1),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_103_enable,
        Output_LastValue => ValueBus_103_LastValue,
        Output_Value => ValueBus_103_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_1,
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
        Input_enable => ValueBus_103_enable,
        Input_Value => ValueBus_103_Value,
        Input_LastValue => ValueBus_103_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_106_enable,
        Output_LastValue => ValueBus_106_LastValue,
        Output_Value => ValueBus_106_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity Exp#0 signals
    Exp_0: entity work.CNN_Exp
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_97_enable,
        Input_Value => ValueBus_97_Value,
        Input_LastValue => ValueBus_97_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_105_Value(0),
        Output_enable => ValueBus_105_enable(0),
        Output_LastValue => ValueBus_105_LastValue(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Exp_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Exp#1 signals
    Exp_1: entity work.CNN_Exp
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_102_enable,
        Input_Value => ValueBus_102_Value,
        Input_LastValue => ValueBus_102_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_105_Value(1),
        Output_enable => ValueBus_105_enable(1),
        Output_LastValue => ValueBus_105_LastValue(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Exp_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity DivideValue#0 signals
    DivideValue_0: entity work.CNN_DivideValue
    generic map(
        reset_value => std_logic_vector'(x"00000000"),
        reset_denominator => std_logic_vector'(x"3f800000"),
        reset_divideValid => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_105_enable(0),
        InputValue_Value => ValueBus_105_Value(0),
        InputValue_LastValue => ValueBus_105_LastValue(0),

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_106_enable,
        InputWeight_Value => ValueBus_106_Value,
        InputWeight_LastValue => ValueBus_106_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_107_enable,
        Output_LastValue => ValueBus_107_LastValue,
        Output_Value => ValueBus_107_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_DivideValue_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity DivideValue#1 signals
    DivideValue_1: entity work.CNN_DivideValue
    generic map(
        reset_value => std_logic_vector'(x"00000000"),
        reset_denominator => std_logic_vector'(x"3f800000"),
        reset_divideValid => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_105_enable(1),
        InputValue_Value => ValueBus_105_Value(1),
        InputValue_LastValue => ValueBus_105_LastValue(1),

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
        FIN => FIN_DivideValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_TrueDualPortMemory_1_Single_0 when FIN_InputCtrl_ParFilter_0 = FIN_TrueDualPortMemory_1_Single_0 AND FIN_ValueArrayCtrl_single_0 = FIN_InputCtrl_ParFilter_0 AND FIN_PlusCtrl_0 = FIN_ValueArrayCtrl_single_0 AND FIN_Bias_0 = FIN_PlusCtrl_0 AND FIN_KernelCtrl_0 = FIN_Bias_0 AND FIN_WeightValue_0 = FIN_KernelCtrl_0 AND FIN_WeightValue_1 = FIN_WeightValue_0 AND FIN_PlusTwo_0 = FIN_WeightValue_1 AND FIN_PlusCtrl_1 = FIN_PlusTwo_0 AND FIN_ValueArrayCtrl_single_1 = FIN_PlusCtrl_1 AND FIN_PlusCtrl_2 = FIN_ValueArrayCtrl_single_1 AND FIN_Bias_1 = FIN_PlusCtrl_2 AND FIN_KernelCtrl_1 = FIN_Bias_1 AND FIN_WeightValue_2 = FIN_KernelCtrl_1 AND FIN_WeightValue_3 = FIN_WeightValue_2 AND FIN_PlusTwo_1 = FIN_WeightValue_3 AND FIN_PlusCtrl_3 = FIN_PlusTwo_1 AND FIN_ValueArrayCtrl_single_2 = FIN_PlusCtrl_3 AND FIN_PlusCtrl_4 = FIN_ValueArrayCtrl_single_2 AND FIN_Bias_2 = FIN_PlusCtrl_4 AND FIN_KernelCtrl_2 = FIN_Bias_2 AND FIN_WeightValue_4 = FIN_KernelCtrl_2 AND FIN_WeightValue_5 = FIN_WeightValue_4 AND FIN_PlusTwo_2 = FIN_WeightValue_5 AND FIN_PlusCtrl_5 = FIN_PlusTwo_2 AND FIN_Bias_3 = FIN_PlusCtrl_5 AND FIN_Multiply_0 = FIN_Bias_3 AND FIN_Multiply_1 = FIN_Multiply_0 AND FIN_Bias_4 = FIN_Multiply_1 AND FIN_Bias_5 = FIN_Bias_4 AND FIN_Multiply_2 = FIN_Bias_5 AND FIN_Multiply_3 = FIN_Multiply_2 AND FIN_Bias_6 = FIN_Multiply_3 AND FIN_Bias_7 = FIN_Bias_6 AND FIN_Multiply_4 = FIN_Bias_7 AND FIN_Multiply_5 = FIN_Multiply_4 AND FIN_Bias_8 = FIN_Multiply_5 AND FIN_ReluCore_0 = FIN_Bias_8 AND FIN_ReluCore_1 = FIN_ReluCore_0 AND FIN_ReluCore_2 = FIN_ReluCore_1 AND FIN_TrueDualPortMemory_1_Single_1 = FIN_ReluCore_2 AND FIN_InputCtrl_ParFilter_1 = FIN_TrueDualPortMemory_1_Single_1 AND FIN_Max_0 = FIN_InputCtrl_ParFilter_1 AND FIN_TrueDualPortMemory_1_Single_2 = FIN_Max_0 AND FIN_InputCtrl_ParFilter_2 = FIN_TrueDualPortMemory_1_Single_2 AND FIN_Max_1 = FIN_InputCtrl_ParFilter_2 AND FIN_TrueDualPortMemory_1_Single_3 = FIN_Max_1 AND FIN_InputCtrl_ParFilter_3 = FIN_TrueDualPortMemory_1_Single_3 AND FIN_Max_2 = FIN_InputCtrl_ParFilter_3 AND FIN_ValueArrayCtrl_0 = FIN_Max_2 AND FIN_PlusCtrl_6 = FIN_ValueArrayCtrl_0 AND FIN_Align_0 = FIN_PlusCtrl_6 AND FIN_PlusTwo_3 = FIN_Align_0 AND FIN_TrueDualPortMemory_1_Single_4 = FIN_PlusTwo_3 AND FIN_InputCtrl_SeqFilter_0 = FIN_TrueDualPortMemory_1_Single_4 AND FIN_WeightValue_6 = FIN_InputCtrl_SeqFilter_0 AND FIN_PlusCtrl_7 = FIN_WeightValue_6 AND FIN_TrueDualPortMemory_1_Single_5 = FIN_PlusCtrl_7 AND FIN_InputCtrl_SeqFilter_1 = FIN_TrueDualPortMemory_1_Single_5 AND FIN_WeightValue_7 = FIN_InputCtrl_SeqFilter_1 AND FIN_PlusCtrl_8 = FIN_WeightValue_7 AND FIN_TrueDualPortMemory_1_Single_6 = FIN_PlusCtrl_8 AND FIN_InputCtrl_SeqFilter_2 = FIN_TrueDualPortMemory_1_Single_6 AND FIN_WeightValue_8 = FIN_InputCtrl_SeqFilter_2 AND FIN_PlusCtrl_9 = FIN_WeightValue_8 AND FIN_Align_1 = FIN_PlusCtrl_9 AND FIN_Align_2 = FIN_Align_1 AND FIN_Align_3 = FIN_Align_2 AND FIN_Align_4 = FIN_Align_3 AND FIN_PlusTwo_4 = FIN_Align_4 AND FIN_MultiplyTwo_0 = FIN_PlusTwo_4 AND FIN_MultiplyTwo_1 = FIN_MultiplyTwo_0 AND FIN_PlusTwo_5 = FIN_MultiplyTwo_1 AND FIN_ReluCore_3 = FIN_PlusTwo_5 AND FIN_TrueDualPortMemory_1_Single_7 = FIN_ReluCore_3 AND FIN_InputCtrl_SeqChannel = FIN_TrueDualPortMemory_1_Single_7 AND FIN_Max_3 = FIN_InputCtrl_SeqChannel AND FIN_TrueDualPortMemory_1_Single_8 = FIN_Max_3 AND FIN_NodeCtrl_type10_0 = FIN_TrueDualPortMemory_1_Single_8 AND FIN_WeightValue_9 = FIN_NodeCtrl_type10_0 AND FIN_PlusCtrl_10 = FIN_WeightValue_9 AND FIN_Bias_9 = FIN_PlusCtrl_10 AND FIN_TrueDualPortMemory_1_Single_9 = FIN_Bias_9 AND FIN_NodeCtrl_type10_1 = FIN_TrueDualPortMemory_1_Single_9 AND FIN_WeightValue_10 = FIN_NodeCtrl_type10_1 AND FIN_PlusCtrl_11 = FIN_WeightValue_10 AND FIN_Bias_10 = FIN_PlusCtrl_11 AND FIN_ValueArrayCtrl_1 = FIN_Bias_10 AND FIN_PlusCtrl_12 = FIN_ValueArrayCtrl_1 AND FIN_Exp_0 = FIN_PlusCtrl_12 AND FIN_Exp_1 = FIN_Exp_0 AND FIN_DivideValue_0 = FIN_Exp_1 AND FIN_DivideValue_1 = FIN_DivideValue_0;

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
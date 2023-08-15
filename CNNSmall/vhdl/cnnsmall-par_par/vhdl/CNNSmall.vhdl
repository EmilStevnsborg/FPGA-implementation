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
        ValueBus_255_enable: out T_SYSTEM_BOOL;
        ValueBus_255_Value: out T_SYSTEM_FLOAT;
        ValueBus_255_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_256_enable: out T_SYSTEM_BOOL;
        ValueBus_256_Value: out T_SYSTEM_FLOAT;
        ValueBus_256_LastValue: out T_SYSTEM_BOOL;

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
        ValueBus_60_enable: inout T_SYSTEM_BOOL;
        ValueBus_60_Value: inout T_SYSTEM_FLOAT;
        ValueBus_60_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_61_enable: inout T_SYSTEM_BOOL;
        ValueBus_61_Value: inout T_SYSTEM_FLOAT;
        ValueBus_61_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_62_enable: inout T_SYSTEM_BOOL;
        ValueBus_62_Value: inout T_SYSTEM_FLOAT;
        ValueBus_62_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_63_enable: inout T_SYSTEM_BOOL;
        ValueBus_63_Value: inout T_SYSTEM_FLOAT;
        ValueBus_63_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_64_enable: inout T_SYSTEM_BOOL;
        ValueBus_64_Value: inout T_SYSTEM_FLOAT;
        ValueBus_64_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_65_enable: inout T_SYSTEM_BOOL;
        ValueBus_65_Value: inout T_SYSTEM_FLOAT;
        ValueBus_65_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_69_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_69_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_69_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_66_enable: inout T_SYSTEM_BOOL;
        ValueBus_66_Value: inout T_SYSTEM_FLOAT;
        ValueBus_66_LastValue: inout T_SYSTEM_BOOL;

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

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_96_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_96_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_96_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_93_enable: inout T_SYSTEM_BOOL;
        ValueBus_93_Value: inout T_SYSTEM_FLOAT;
        ValueBus_93_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_117_enable: inout T_SYSTEM_BOOL;
        ValueBus_117_Value: inout T_SYSTEM_FLOAT;
        ValueBus_117_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_118_enable: inout T_SYSTEM_BOOL;
        ValueBus_118_Value: inout T_SYSTEM_FLOAT;
        ValueBus_118_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_119_enable: inout T_SYSTEM_BOOL;
        ValueBus_119_Value: inout T_SYSTEM_FLOAT;
        ValueBus_119_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_123_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_123_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_123_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_120_enable: inout T_SYSTEM_BOOL;
        ValueBus_120_Value: inout T_SYSTEM_FLOAT;
        ValueBus_120_LastValue: inout T_SYSTEM_BOOL;

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

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_144_enable: inout T_SYSTEM_BOOL;
        ValueBus_144_Value: inout T_SYSTEM_FLOAT;
        ValueBus_144_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_145_enable: inout T_SYSTEM_BOOL;
        ValueBus_145_Value: inout T_SYSTEM_FLOAT;
        ValueBus_145_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_146_enable: inout T_SYSTEM_BOOL;
        ValueBus_146_Value: inout T_SYSTEM_FLOAT;
        ValueBus_146_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_150_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_150_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_150_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_147_enable: inout T_SYSTEM_BOOL;
        ValueBus_147_Value: inout T_SYSTEM_FLOAT;
        ValueBus_147_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_151_enable: inout T_SYSTEM_BOOL;
        ValueBus_151_Value: inout T_SYSTEM_FLOAT;
        ValueBus_151_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_152_enable: inout T_SYSTEM_BOOL;
        ValueBus_152_Value: inout T_SYSTEM_FLOAT;
        ValueBus_152_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_153_enable: inout T_SYSTEM_BOOL;
        ValueBus_153_Value: inout T_SYSTEM_FLOAT;
        ValueBus_153_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_154_enable: inout T_SYSTEM_BOOL;
        ValueBus_154_Value: inout T_SYSTEM_FLOAT;
        ValueBus_154_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_155_enable: inout T_SYSTEM_BOOL;
        ValueBus_155_Value: inout T_SYSTEM_FLOAT;
        ValueBus_155_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_156_enable: inout T_SYSTEM_BOOL;
        ValueBus_156_Value: inout T_SYSTEM_FLOAT;
        ValueBus_156_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_157_enable: inout T_SYSTEM_BOOL;
        ValueBus_157_Value: inout T_SYSTEM_FLOAT;
        ValueBus_157_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_158_enable: inout T_SYSTEM_BOOL;
        ValueBus_158_Value: inout T_SYSTEM_FLOAT;
        ValueBus_158_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_159_enable: inout T_SYSTEM_BOOL;
        ValueBus_159_Value: inout T_SYSTEM_FLOAT;
        ValueBus_159_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_160_enable: inout T_SYSTEM_BOOL;
        ValueBus_160_Value: inout T_SYSTEM_FLOAT;
        ValueBus_160_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_161_enable: inout T_SYSTEM_BOOL;
        ValueBus_161_Value: inout T_SYSTEM_FLOAT;
        ValueBus_161_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_162_enable: inout T_SYSTEM_BOOL;
        ValueBus_162_Value: inout T_SYSTEM_FLOAT;
        ValueBus_162_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_163_enable: inout T_SYSTEM_BOOL;
        ValueBus_163_Value: inout T_SYSTEM_FLOAT;
        ValueBus_163_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_164_enable: inout T_SYSTEM_BOOL;
        ValueBus_164_Value: inout T_SYSTEM_FLOAT;
        ValueBus_164_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_165_enable: inout T_SYSTEM_BOOL;
        ValueBus_165_Value: inout T_SYSTEM_FLOAT;
        ValueBus_165_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_166_enable: inout T_SYSTEM_BOOL;
        ValueBus_166_Value: inout T_SYSTEM_FLOAT;
        ValueBus_166_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_167_enable: inout T_SYSTEM_BOOL;
        ValueBus_167_Value: inout T_SYSTEM_FLOAT;
        ValueBus_167_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_168_enable: inout T_SYSTEM_BOOL;
        ValueBus_168_Value: inout T_SYSTEM_FLOAT;
        ValueBus_168_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_169_enable: inout T_SYSTEM_BOOL;
        ValueBus_169_Value: inout T_SYSTEM_FLOAT;
        ValueBus_169_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_170_enable: inout T_SYSTEM_BOOL;
        ValueBus_170_Value: inout T_SYSTEM_FLOAT;
        ValueBus_170_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_171_enable: inout T_SYSTEM_BOOL;
        ValueBus_171_Value: inout T_SYSTEM_FLOAT;
        ValueBus_171_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_172_enable: inout T_SYSTEM_BOOL;
        ValueBus_172_Value: inout T_SYSTEM_FLOAT;
        ValueBus_172_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_173_enable: inout T_SYSTEM_BOOL;
        ValueBus_173_Value: inout T_SYSTEM_FLOAT;
        ValueBus_173_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_177_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_177_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_177_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_174_enable: inout T_SYSTEM_BOOL;
        ValueBus_174_Value: inout T_SYSTEM_FLOAT;
        ValueBus_174_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_178_enable: inout T_SYSTEM_BOOL;
        ValueBus_178_Value: inout T_SYSTEM_FLOAT;
        ValueBus_178_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_179_enable: inout T_SYSTEM_BOOL;
        ValueBus_179_Value: inout T_SYSTEM_FLOAT;
        ValueBus_179_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_180_enable: inout T_SYSTEM_BOOL;
        ValueBus_180_Value: inout T_SYSTEM_FLOAT;
        ValueBus_180_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_181_enable: inout T_SYSTEM_BOOL;
        ValueBus_181_Value: inout T_SYSTEM_FLOAT;
        ValueBus_181_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_182_enable: inout T_SYSTEM_BOOL;
        ValueBus_182_Value: inout T_SYSTEM_FLOAT;
        ValueBus_182_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_183_enable: inout T_SYSTEM_BOOL;
        ValueBus_183_Value: inout T_SYSTEM_FLOAT;
        ValueBus_183_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_184_enable: inout T_SYSTEM_BOOL;
        ValueBus_184_Value: inout T_SYSTEM_FLOAT;
        ValueBus_184_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_185_enable: inout T_SYSTEM_BOOL;
        ValueBus_185_Value: inout T_SYSTEM_FLOAT;
        ValueBus_185_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_186_enable: inout T_SYSTEM_BOOL;
        ValueBus_186_Value: inout T_SYSTEM_FLOAT;
        ValueBus_186_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_187_enable: inout T_SYSTEM_BOOL;
        ValueBus_187_Value: inout T_SYSTEM_FLOAT;
        ValueBus_187_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_188_enable: inout T_SYSTEM_BOOL;
        ValueBus_188_Value: inout T_SYSTEM_FLOAT;
        ValueBus_188_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_189_enable: inout T_SYSTEM_BOOL;
        ValueBus_189_Value: inout T_SYSTEM_FLOAT;
        ValueBus_189_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_190_enable: inout T_SYSTEM_BOOL;
        ValueBus_190_Value: inout T_SYSTEM_FLOAT;
        ValueBus_190_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_191_enable: inout T_SYSTEM_BOOL;
        ValueBus_191_Value: inout T_SYSTEM_FLOAT;
        ValueBus_191_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_192_enable: inout T_SYSTEM_BOOL;
        ValueBus_192_Value: inout T_SYSTEM_FLOAT;
        ValueBus_192_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_193_enable: inout T_SYSTEM_BOOL;
        ValueBus_193_Value: inout T_SYSTEM_FLOAT;
        ValueBus_193_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_194_enable: inout T_SYSTEM_BOOL;
        ValueBus_194_Value: inout T_SYSTEM_FLOAT;
        ValueBus_194_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_195_enable: inout T_SYSTEM_BOOL;
        ValueBus_195_Value: inout T_SYSTEM_FLOAT;
        ValueBus_195_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_196_enable: inout T_SYSTEM_BOOL;
        ValueBus_196_Value: inout T_SYSTEM_FLOAT;
        ValueBus_196_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_197_enable: inout T_SYSTEM_BOOL;
        ValueBus_197_Value: inout T_SYSTEM_FLOAT;
        ValueBus_197_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_198_enable: inout T_SYSTEM_BOOL;
        ValueBus_198_Value: inout T_SYSTEM_FLOAT;
        ValueBus_198_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_199_enable: inout T_SYSTEM_BOOL;
        ValueBus_199_Value: inout T_SYSTEM_FLOAT;
        ValueBus_199_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_200_enable: inout T_SYSTEM_BOOL;
        ValueBus_200_Value: inout T_SYSTEM_FLOAT;
        ValueBus_200_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_201_enable: inout T_SYSTEM_BOOL;
        ValueBus_201_Value: inout T_SYSTEM_FLOAT;
        ValueBus_201_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_202_enable: inout T_SYSTEM_BOOL;
        ValueBus_202_Value: inout T_SYSTEM_FLOAT;
        ValueBus_202_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_203_enable: inout T_SYSTEM_BOOL;
        ValueBus_203_Value: inout T_SYSTEM_FLOAT;
        ValueBus_203_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_204_enable: inout T_SYSTEM_BOOL;
        ValueBus_204_Value: inout T_SYSTEM_FLOAT;
        ValueBus_204_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_205_enable: inout T_SYSTEM_BOOL;
        ValueBus_205_Value: inout T_SYSTEM_FLOAT;
        ValueBus_205_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_206_enable: inout T_SYSTEM_BOOL;
        ValueBus_206_Value: inout T_SYSTEM_FLOAT;
        ValueBus_206_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_207_enable: inout T_SYSTEM_BOOL;
        ValueBus_207_Value: inout T_SYSTEM_FLOAT;
        ValueBus_207_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_208_enable: inout T_SYSTEM_BOOL;
        ValueBus_208_Value: inout T_SYSTEM_FLOAT;
        ValueBus_208_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_209_enable: inout T_SYSTEM_BOOL;
        ValueBus_209_Value: inout T_SYSTEM_FLOAT;
        ValueBus_209_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_210_enable: inout T_SYSTEM_BOOL;
        ValueBus_210_Value: inout T_SYSTEM_FLOAT;
        ValueBus_210_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_211_enable: inout T_SYSTEM_BOOL;
        ValueBus_211_Value: inout T_SYSTEM_FLOAT;
        ValueBus_211_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_212_enable: inout T_SYSTEM_BOOL;
        ValueBus_212_Value: inout T_SYSTEM_FLOAT;
        ValueBus_212_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_213_enable: inout T_SYSTEM_BOOL;
        ValueBus_213_Value: inout T_SYSTEM_FLOAT;
        ValueBus_213_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_214_enable: inout T_SYSTEM_BOOL;
        ValueBus_214_Value: inout T_SYSTEM_FLOAT;
        ValueBus_214_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_215_enable: inout T_SYSTEM_BOOL;
        ValueBus_215_Value: inout T_SYSTEM_FLOAT;
        ValueBus_215_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_216_enable: inout T_SYSTEM_BOOL;
        ValueBus_216_Value: inout T_SYSTEM_FLOAT;
        ValueBus_216_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_217_enable: inout T_SYSTEM_BOOL;
        ValueBus_217_Value: inout T_SYSTEM_FLOAT;
        ValueBus_217_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_218_enable: inout T_SYSTEM_BOOL;
        ValueBus_218_Value: inout T_SYSTEM_FLOAT;
        ValueBus_218_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_219_enable: inout T_SYSTEM_BOOL;
        ValueBus_219_Value: inout T_SYSTEM_FLOAT;
        ValueBus_219_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_220_enable: inout T_SYSTEM_BOOL;
        ValueBus_220_Value: inout T_SYSTEM_FLOAT;
        ValueBus_220_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_221_enable: inout T_SYSTEM_BOOL;
        ValueBus_221_Value: inout T_SYSTEM_FLOAT;
        ValueBus_221_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_222_enable: inout T_SYSTEM_BOOL;
        ValueBus_222_Value: inout T_SYSTEM_FLOAT;
        ValueBus_222_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_223_enable: inout T_SYSTEM_BOOL;
        ValueBus_223_Value: inout T_SYSTEM_FLOAT;
        ValueBus_223_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_224_enable: inout T_SYSTEM_BOOL;
        ValueBus_224_Value: inout T_SYSTEM_FLOAT;
        ValueBus_224_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_225_enable: inout T_SYSTEM_BOOL;
        ValueBus_225_Value: inout T_SYSTEM_FLOAT;
        ValueBus_225_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_226_enable: inout T_SYSTEM_BOOL;
        ValueBus_226_Value: inout T_SYSTEM_FLOAT;
        ValueBus_226_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_227_enable: inout T_SYSTEM_BOOL;
        ValueBus_227_Value: inout T_SYSTEM_FLOAT;
        ValueBus_227_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_240_enable: inout T_SYSTEM_BOOL_ARRAY(4 downto 0);
        ValueBus_240_Value: inout T_SYSTEM_FLOAT_ARRAY(4 downto 0);
        ValueBus_240_LastValue: inout T_SYSTEM_BOOL_ARRAY(4 downto 0);

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
        ValueBus_229_enable: inout T_SYSTEM_BOOL;
        ValueBus_229_Value: inout T_SYSTEM_FLOAT;
        ValueBus_229_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_230_enable: inout T_SYSTEM_BOOL;
        ValueBus_230_Value: inout T_SYSTEM_FLOAT;
        ValueBus_230_LastValue: inout T_SYSTEM_BOOL;

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
        ValueBus_232_enable: inout T_SYSTEM_BOOL;
        ValueBus_232_Value: inout T_SYSTEM_FLOAT;
        ValueBus_232_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_233_enable: inout T_SYSTEM_BOOL;
        ValueBus_233_Value: inout T_SYSTEM_FLOAT;
        ValueBus_233_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_20_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_20_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_20_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_20_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_21_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_21_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_21_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_21_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_20_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_21_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_235_enable: inout T_SYSTEM_BOOL;
        ValueBus_235_Value: inout T_SYSTEM_FLOAT;
        ValueBus_235_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_236_enable: inout T_SYSTEM_BOOL;
        ValueBus_236_Value: inout T_SYSTEM_FLOAT;
        ValueBus_236_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_22_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_22_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_22_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_22_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_23_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_23_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_23_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_23_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_22_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_23_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_238_enable: inout T_SYSTEM_BOOL;
        ValueBus_238_Value: inout T_SYSTEM_FLOAT;
        ValueBus_238_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_239_enable: inout T_SYSTEM_BOOL;
        ValueBus_239_Value: inout T_SYSTEM_FLOAT;
        ValueBus_239_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_24_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_24_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_24_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_24_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_25_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_25_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_25_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_25_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_24_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_25_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_241_enable: inout T_SYSTEM_BOOL;
        ValueBus_241_Value: inout T_SYSTEM_FLOAT;
        ValueBus_241_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_242_enable: inout T_SYSTEM_BOOL;
        ValueBus_242_Value: inout T_SYSTEM_FLOAT;
        ValueBus_242_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_243_enable: inout T_SYSTEM_BOOL;
        ValueBus_243_Value: inout T_SYSTEM_FLOAT;
        ValueBus_243_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_244_enable: inout T_SYSTEM_BOOL;
        ValueBus_244_Value: inout T_SYSTEM_FLOAT;
        ValueBus_244_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_245_enable: inout T_SYSTEM_BOOL;
        ValueBus_245_Value: inout T_SYSTEM_FLOAT;
        ValueBus_245_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_26_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_26_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_26_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_26_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_27_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_27_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_27_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_27_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_26_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_27_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_246_enable: inout T_SYSTEM_BOOL;
        ValueBus_246_Value: inout T_SYSTEM_FLOAT;
        ValueBus_246_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_247_enable: inout T_SYSTEM_BOOL;
        ValueBus_247_Value: inout T_SYSTEM_FLOAT;
        ValueBus_247_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_248_enable: inout T_SYSTEM_BOOL;
        ValueBus_248_Value: inout T_SYSTEM_FLOAT;
        ValueBus_248_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_249_enable: inout T_SYSTEM_BOOL;
        ValueBus_249_Value: inout T_SYSTEM_FLOAT;
        ValueBus_249_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_250_enable: inout T_SYSTEM_BOOL;
        ValueBus_250_Value: inout T_SYSTEM_FLOAT;
        ValueBus_250_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_253_enable: inout T_SYSTEM_BOOL_ARRAY(1 downto 0);
        ValueBus_253_Value: inout T_SYSTEM_FLOAT_ARRAY(1 downto 0);
        ValueBus_253_LastValue: inout T_SYSTEM_BOOL_ARRAY(1 downto 0);

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_251_enable: inout T_SYSTEM_BOOL;
        ValueBus_251_Value: inout T_SYSTEM_FLOAT;
        ValueBus_251_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_254_enable: inout T_SYSTEM_BOOL;
        ValueBus_254_Value: inout T_SYSTEM_FLOAT;
        ValueBus_254_LastValue: inout T_SYSTEM_BOOL;

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
    signal FIN_TrueDualPortMemory_1_Single_4 : std_logic;
    signal FIN_InputCtrl_ParFilter_4 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_5 : std_logic;
    signal FIN_InputCtrl_ParFilter_5 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_6 : std_logic;
    signal FIN_InputCtrl_ParFilter_6 : std_logic;
    signal FIN_ValueArrayCtrl_0 : std_logic;
    signal FIN_PlusCtrl_6 : std_logic;
    signal FIN_Bias_9 : std_logic;
    signal FIN_KernelCtrl_3 : std_logic;
    signal FIN_WeightValue_6 : std_logic;
    signal FIN_WeightValue_7 : std_logic;
    signal FIN_PlusTwo_3 : std_logic;
    signal FIN_PlusCtrl_7 : std_logic;
    signal FIN_KernelCtrl_4 : std_logic;
    signal FIN_WeightValue_8 : std_logic;
    signal FIN_WeightValue_9 : std_logic;
    signal FIN_PlusTwo_4 : std_logic;
    signal FIN_PlusCtrl_8 : std_logic;
    signal FIN_KernelCtrl_5 : std_logic;
    signal FIN_WeightValue_10 : std_logic;
    signal FIN_WeightValue_11 : std_logic;
    signal FIN_PlusTwo_5 : std_logic;
    signal FIN_PlusCtrl_9 : std_logic;
    signal FIN_ValueArrayCtrl_1 : std_logic;
    signal FIN_PlusCtrl_10 : std_logic;
    signal FIN_Bias_10 : std_logic;
    signal FIN_KernelCtrl_6 : std_logic;
    signal FIN_WeightValue_12 : std_logic;
    signal FIN_WeightValue_13 : std_logic;
    signal FIN_PlusTwo_6 : std_logic;
    signal FIN_PlusCtrl_11 : std_logic;
    signal FIN_KernelCtrl_7 : std_logic;
    signal FIN_WeightValue_14 : std_logic;
    signal FIN_WeightValue_15 : std_logic;
    signal FIN_PlusTwo_7 : std_logic;
    signal FIN_PlusCtrl_12 : std_logic;
    signal FIN_KernelCtrl_8 : std_logic;
    signal FIN_WeightValue_16 : std_logic;
    signal FIN_WeightValue_17 : std_logic;
    signal FIN_PlusTwo_8 : std_logic;
    signal FIN_PlusCtrl_13 : std_logic;
    signal FIN_ValueArrayCtrl_2 : std_logic;
    signal FIN_PlusCtrl_14 : std_logic;
    signal FIN_Bias_11 : std_logic;
    signal FIN_KernelCtrl_9 : std_logic;
    signal FIN_WeightValue_18 : std_logic;
    signal FIN_WeightValue_19 : std_logic;
    signal FIN_PlusTwo_9 : std_logic;
    signal FIN_PlusCtrl_15 : std_logic;
    signal FIN_KernelCtrl_10 : std_logic;
    signal FIN_WeightValue_20 : std_logic;
    signal FIN_WeightValue_21 : std_logic;
    signal FIN_PlusTwo_10 : std_logic;
    signal FIN_PlusCtrl_16 : std_logic;
    signal FIN_KernelCtrl_11 : std_logic;
    signal FIN_WeightValue_22 : std_logic;
    signal FIN_WeightValue_23 : std_logic;
    signal FIN_PlusTwo_11 : std_logic;
    signal FIN_PlusCtrl_17 : std_logic;
    signal FIN_ValueArrayCtrl_3 : std_logic;
    signal FIN_PlusCtrl_18 : std_logic;
    signal FIN_Bias_12 : std_logic;
    signal FIN_KernelCtrl_12 : std_logic;
    signal FIN_WeightValue_24 : std_logic;
    signal FIN_WeightValue_25 : std_logic;
    signal FIN_PlusTwo_12 : std_logic;
    signal FIN_PlusCtrl_19 : std_logic;
    signal FIN_KernelCtrl_13 : std_logic;
    signal FIN_WeightValue_26 : std_logic;
    signal FIN_WeightValue_27 : std_logic;
    signal FIN_PlusTwo_13 : std_logic;
    signal FIN_PlusCtrl_20 : std_logic;
    signal FIN_KernelCtrl_14 : std_logic;
    signal FIN_WeightValue_28 : std_logic;
    signal FIN_WeightValue_29 : std_logic;
    signal FIN_PlusTwo_14 : std_logic;
    signal FIN_PlusCtrl_21 : std_logic;
    signal FIN_ValueArrayCtrl_4 : std_logic;
    signal FIN_PlusCtrl_22 : std_logic;
    signal FIN_Bias_13 : std_logic;
    signal FIN_KernelCtrl_15 : std_logic;
    signal FIN_WeightValue_30 : std_logic;
    signal FIN_WeightValue_31 : std_logic;
    signal FIN_PlusTwo_15 : std_logic;
    signal FIN_PlusCtrl_23 : std_logic;
    signal FIN_KernelCtrl_16 : std_logic;
    signal FIN_WeightValue_32 : std_logic;
    signal FIN_WeightValue_33 : std_logic;
    signal FIN_PlusTwo_16 : std_logic;
    signal FIN_PlusCtrl_24 : std_logic;
    signal FIN_KernelCtrl_17 : std_logic;
    signal FIN_WeightValue_34 : std_logic;
    signal FIN_WeightValue_35 : std_logic;
    signal FIN_PlusTwo_17 : std_logic;
    signal FIN_PlusCtrl_25 : std_logic;
    signal FIN_Bias_14 : std_logic;
    signal FIN_Multiply_6 : std_logic;
    signal FIN_Multiply_7 : std_logic;
    signal FIN_Bias_15 : std_logic;
    signal FIN_Bias_16 : std_logic;
    signal FIN_Multiply_8 : std_logic;
    signal FIN_Multiply_9 : std_logic;
    signal FIN_Bias_17 : std_logic;
    signal FIN_Bias_18 : std_logic;
    signal FIN_Multiply_10 : std_logic;
    signal FIN_Multiply_11 : std_logic;
    signal FIN_Bias_19 : std_logic;
    signal FIN_Bias_20 : std_logic;
    signal FIN_Multiply_12 : std_logic;
    signal FIN_Multiply_13 : std_logic;
    signal FIN_Bias_21 : std_logic;
    signal FIN_Bias_22 : std_logic;
    signal FIN_Multiply_14 : std_logic;
    signal FIN_Multiply_15 : std_logic;
    signal FIN_Bias_23 : std_logic;
    signal FIN_ReluCore_3 : std_logic;
    signal FIN_ReluCore_4 : std_logic;
    signal FIN_ReluCore_5 : std_logic;
    signal FIN_ReluCore_6 : std_logic;
    signal FIN_ReluCore_7 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_7 : std_logic;
    signal FIN_InputCtrl_ParFilter_7 : std_logic;
    signal FIN_Max_3 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_8 : std_logic;
    signal FIN_InputCtrl_ParFilter_8 : std_logic;
    signal FIN_Max_4 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_9 : std_logic;
    signal FIN_InputCtrl_ParFilter_9 : std_logic;
    signal FIN_Max_5 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_10 : std_logic;
    signal FIN_InputCtrl_ParFilter_10 : std_logic;
    signal FIN_Max_6 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_11 : std_logic;
    signal FIN_InputCtrl_ParFilter_11 : std_logic;
    signal FIN_Max_7 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_12 : std_logic;
    signal FIN_NodeCtrl_type00_0 : std_logic;
    signal FIN_WeightValue_36 : std_logic;
    signal FIN_PlusCtrl_26 : std_logic;
    signal FIN_Bias_24 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_13 : std_logic;
    signal FIN_NodeCtrl_type00_1 : std_logic;
    signal FIN_WeightValue_37 : std_logic;
    signal FIN_PlusCtrl_27 : std_logic;
    signal FIN_Bias_25 : std_logic;
    signal FIN_ValueArrayCtrl_5 : std_logic;
    signal FIN_PlusCtrl_28 : std_logic;
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

    -- Entity TrueDualPortMemory`1<Single>#4 signals
    TrueDualPortMemory_1_Single_4: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 168) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#4 signals
    InputCtrl_ParFilter_4: entity work.CNN_InputCtrl_ParFilter
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
        Input_enable => ValueBus_53_enable,
        Input_Value => ValueBus_53_Value,
        Input_LastValue => ValueBus_53_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_8_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_9_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_60_enable,
        OutputValueA_LastValue => ValueBus_60_LastValue,
        OutputValueA_Value => ValueBus_60_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_61_enable,
        OutputValueB_Value => ValueBus_61_Value,
        OutputValueB_LastValue => ValueBus_61_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_8_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_8_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_8_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_8_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_9_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_9_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_9_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_9_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#5 signals
    TrueDualPortMemory_1_Single_5: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 168) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#5 signals
    InputCtrl_ParFilter_5: entity work.CNN_InputCtrl_ParFilter
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
        Input_enable => ValueBus_56_enable,
        Input_Value => ValueBus_56_Value,
        Input_LastValue => ValueBus_56_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_10_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_11_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_62_enable,
        OutputValueA_LastValue => ValueBus_62_LastValue,
        OutputValueA_Value => ValueBus_62_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_63_enable,
        OutputValueB_Value => ValueBus_63_Value,
        OutputValueB_LastValue => ValueBus_63_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_10_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_10_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_10_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_10_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_11_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_11_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_11_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_11_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#6 signals
    TrueDualPortMemory_1_Single_6: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 168) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#6 signals
    InputCtrl_ParFilter_6: entity work.CNN_InputCtrl_ParFilter
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
        Input_enable => ValueBus_59_enable,
        Input_Value => ValueBus_59_Value,
        Input_LastValue => ValueBus_59_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_12_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_13_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_64_enable,
        OutputValueA_LastValue => ValueBus_64_LastValue,
        OutputValueA_Value => ValueBus_64_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_65_enable,
        OutputValueB_Value => ValueBus_65_Value,
        OutputValueB_LastValue => ValueBus_65_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_12_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_12_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_12_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_12_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_13_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_13_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_13_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_13_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_6,
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
        Input_enable(0) => ValueBus_69_enable(0),
        Input_enable(1) => ValueBus_69_enable(1),
        Input_enable(2) => ValueBus_69_enable(2),
        Input_Value(0) => ValueBus_69_Value(0),
        Input_Value(1) => ValueBus_69_Value(1),
        Input_Value(2) => ValueBus_69_Value(2),
        Input_LastValue(0) => ValueBus_69_LastValue(0),
        Input_LastValue(1) => ValueBus_69_LastValue(1),
        Input_LastValue(2) => ValueBus_69_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_66_enable,
        Output_LastValue => ValueBus_66_LastValue,
        Output_Value => ValueBus_66_Value,

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
        Input_enable => ValueBus_66_enable,
        Input_Value => ValueBus_66_Value,
        Input_LastValue => ValueBus_66_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_70_enable,
        Output_LastValue => ValueBus_70_LastValue,
        Output_Value => ValueBus_70_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#9 signals
    Bias_9: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bdb54413")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_70_enable,
        Input_Value => ValueBus_70_Value,
        Input_LastValue => ValueBus_70_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_71_enable,
        Output_LastValue => ValueBus_71_LastValue,
        Output_Value => ValueBus_71_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_9,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bd37bd98"), 1 => std_logic_vector'(x"3d23bce4"), 2 => std_logic_vector'(x"3d6db622"), 3 => std_logic_vector'(x"bd81369e"), 4 => std_logic_vector'(x"bdd0ab0a"), 5 => std_logic_vector'(x"bcd44ea9"), 6 => std_logic_vector'(x"3c223b50"), 7 => std_logic_vector'(x"3d323f91"), 8 => std_logic_vector'(x"3d8034c9"), 9 => std_logic_vector'(x"bd5e0a8c"), 10 => std_logic_vector'(x"bd86531d"), 11 => std_logic_vector'(x"3d98b193"), 12 => std_logic_vector'(x"3e0ffec5"), 13 => std_logic_vector'(x"bd9eab4f"), 14 => std_logic_vector'(x"3e04590c"), 15 => std_logic_vector'(x"3c0250af"), 16 => std_logic_vector'(x"3d45daba"), 17 => std_logic_vector'(x"3d474fd6"), 18 => std_logic_vector'(x"bda8868e"), 19 => std_logic_vector'(x"bcc293f7"), 20 => std_logic_vector'(x"b8924910"), 21 => std_logic_vector'(x"bd07462c"), 22 => std_logic_vector'(x"3e0829b0"), 23 => std_logic_vector'(x"3b3596e0"), 24 => std_logic_vector'(x"bca0082e")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_60_enable,
        InputValueA_Value => ValueBus_60_Value,
        InputValueA_LastValue => ValueBus_60_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_61_enable,
        InputValueB_Value => ValueBus_61_Value,
        InputValueB_LastValue => ValueBus_61_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_72_enable,
        OutputValueA_LastValue => ValueBus_72_LastValue,
        OutputValueA_Value => ValueBus_72_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_73_enable,
        OutputWeightA_Value => ValueBus_73_Value,
        OutputWeightA_LastValue => ValueBus_73_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_74_enable,
        OutputValueB_LastValue => ValueBus_74_LastValue,
        OutputValueB_Value => ValueBus_74_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_75_enable,
        OutputWeightB_Value => ValueBus_75_Value,
        OutputWeightB_LastValue => ValueBus_75_LastValue,

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
        InputValue_enable => ValueBus_72_enable,
        InputValue_Value => ValueBus_72_Value,
        InputValue_LastValue => ValueBus_72_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_73_enable,
        InputWeight_Value => ValueBus_73_Value,
        InputWeight_LastValue => ValueBus_73_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_76_enable,
        Output_LastValue => ValueBus_76_LastValue,
        Output_Value => ValueBus_76_Value,

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
        InputValue_enable => ValueBus_74_enable,
        InputValue_Value => ValueBus_74_Value,
        InputValue_LastValue => ValueBus_74_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_75_enable,
        InputWeight_Value => ValueBus_75_Value,
        InputWeight_LastValue => ValueBus_75_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_77_enable,
        Output_LastValue => ValueBus_77_LastValue,
        Output_Value => ValueBus_77_Value,

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
        InputA_enable => ValueBus_76_enable,
        InputA_Value => ValueBus_76_Value,
        InputA_LastValue => ValueBus_76_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_77_enable,
        InputB_Value => ValueBus_77_Value,
        InputB_LastValue => ValueBus_77_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_78_enable,
        Output_LastValue => ValueBus_78_LastValue,
        Output_Value => ValueBus_78_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_3,
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
        Input_enable => ValueBus_78_enable,
        Input_Value => ValueBus_78_Value,
        Input_LastValue => ValueBus_78_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_69_enable(0),
        Output_LastValue => ValueBus_69_LastValue(0),
        Output_Value => ValueBus_69_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_7,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bd59d476"), 1 => std_logic_vector'(x"bdbebd0a"), 2 => std_logic_vector'(x"bd8b07c8"), 3 => std_logic_vector'(x"3d7728c7"), 4 => std_logic_vector'(x"bdb5c607"), 5 => std_logic_vector'(x"bdf1ea81"), 6 => std_logic_vector'(x"bd0550b2"), 7 => std_logic_vector'(x"bda96090"), 8 => std_logic_vector'(x"3ddbe554"), 9 => std_logic_vector'(x"3d97ea55"), 10 => std_logic_vector'(x"bcf80059"), 11 => std_logic_vector'(x"bd550f7d"), 12 => std_logic_vector'(x"3d86d86d"), 13 => std_logic_vector'(x"3ce92ba9"), 14 => std_logic_vector'(x"3cdc9071"), 15 => std_logic_vector'(x"3d8d746d"), 16 => std_logic_vector'(x"3e02fd5b"), 17 => std_logic_vector'(x"bd072997"), 18 => std_logic_vector'(x"3be72605"), 19 => std_logic_vector'(x"bd2ac2e7"), 20 => std_logic_vector'(x"3db95147"), 21 => std_logic_vector'(x"3c3173f1"), 22 => std_logic_vector'(x"3c9d3b5d"), 23 => std_logic_vector'(x"bd2187d6"), 24 => std_logic_vector'(x"bd9a559a")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_62_enable,
        InputValueA_Value => ValueBus_62_Value,
        InputValueA_LastValue => ValueBus_62_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_63_enable,
        InputValueB_Value => ValueBus_63_Value,
        InputValueB_LastValue => ValueBus_63_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_79_enable,
        OutputValueA_LastValue => ValueBus_79_LastValue,
        OutputValueA_Value => ValueBus_79_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_80_enable,
        OutputWeightA_Value => ValueBus_80_Value,
        OutputWeightA_LastValue => ValueBus_80_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_81_enable,
        OutputValueB_LastValue => ValueBus_81_LastValue,
        OutputValueB_Value => ValueBus_81_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_82_enable,
        OutputWeightB_Value => ValueBus_82_Value,
        OutputWeightB_LastValue => ValueBus_82_LastValue,

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
        InputValue_enable => ValueBus_79_enable,
        InputValue_Value => ValueBus_79_Value,
        InputValue_LastValue => ValueBus_79_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_80_enable,
        InputWeight_Value => ValueBus_80_Value,
        InputWeight_LastValue => ValueBus_80_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_83_enable,
        Output_LastValue => ValueBus_83_LastValue,
        Output_Value => ValueBus_83_Value,

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
        InputValue_enable => ValueBus_81_enable,
        InputValue_Value => ValueBus_81_Value,
        InputValue_LastValue => ValueBus_81_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_82_enable,
        InputWeight_Value => ValueBus_82_Value,
        InputWeight_LastValue => ValueBus_82_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_84_enable,
        Output_LastValue => ValueBus_84_LastValue,
        Output_Value => ValueBus_84_Value,

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
        InputA_enable => ValueBus_83_enable,
        InputA_Value => ValueBus_83_Value,
        InputA_LastValue => ValueBus_83_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_84_enable,
        InputB_Value => ValueBus_84_Value,
        InputB_LastValue => ValueBus_84_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_85_enable,
        Output_LastValue => ValueBus_85_LastValue,
        Output_Value => ValueBus_85_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_4,
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
        Input_enable => ValueBus_85_enable,
        Input_Value => ValueBus_85_Value,
        Input_LastValue => ValueBus_85_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_69_enable(1),
        Output_LastValue => ValueBus_69_LastValue(1),
        Output_Value => ValueBus_69_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_8,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bc3dcc59"), 1 => std_logic_vector'(x"3d055d74"), 2 => std_logic_vector'(x"bb154bcf"), 3 => std_logic_vector'(x"3c81cb2e"), 4 => std_logic_vector'(x"3e064f22"), 5 => std_logic_vector'(x"bd973986"), 6 => std_logic_vector'(x"bd648ab0"), 7 => std_logic_vector'(x"bc40f94f"), 8 => std_logic_vector'(x"bbcee791"), 9 => std_logic_vector'(x"3c41cada"), 10 => std_logic_vector'(x"bbf4351a"), 11 => std_logic_vector'(x"3d0e71cb"), 12 => std_logic_vector'(x"bdd4cbf7"), 13 => std_logic_vector'(x"3b34ff23"), 14 => std_logic_vector'(x"3cb39a80"), 15 => std_logic_vector'(x"3cddba78"), 16 => std_logic_vector'(x"3db96aeb"), 17 => std_logic_vector'(x"bdc75b11"), 18 => std_logic_vector'(x"bd80b956"), 19 => std_logic_vector'(x"bdba710e"), 20 => std_logic_vector'(x"3dd6bdb4"), 21 => std_logic_vector'(x"3d547e96"), 22 => std_logic_vector'(x"3c859919"), 23 => std_logic_vector'(x"bdbd4de1"), 24 => std_logic_vector'(x"3d918242")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_64_enable,
        InputValueA_Value => ValueBus_64_Value,
        InputValueA_LastValue => ValueBus_64_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_65_enable,
        InputValueB_Value => ValueBus_65_Value,
        InputValueB_LastValue => ValueBus_65_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_86_enable,
        OutputValueA_LastValue => ValueBus_86_LastValue,
        OutputValueA_Value => ValueBus_86_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_87_enable,
        OutputWeightA_Value => ValueBus_87_Value,
        OutputWeightA_LastValue => ValueBus_87_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_88_enable,
        OutputValueB_LastValue => ValueBus_88_LastValue,
        OutputValueB_Value => ValueBus_88_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_89_enable,
        OutputWeightB_Value => ValueBus_89_Value,
        OutputWeightB_LastValue => ValueBus_89_LastValue,

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
        InputValue_enable => ValueBus_86_enable,
        InputValue_Value => ValueBus_86_Value,
        InputValue_LastValue => ValueBus_86_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_87_enable,
        InputWeight_Value => ValueBus_87_Value,
        InputWeight_LastValue => ValueBus_87_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_90_enable,
        Output_LastValue => ValueBus_90_LastValue,
        Output_Value => ValueBus_90_Value,

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
        InputValue_enable => ValueBus_88_enable,
        InputValue_Value => ValueBus_88_Value,
        InputValue_LastValue => ValueBus_88_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_89_enable,
        InputWeight_Value => ValueBus_89_Value,
        InputWeight_LastValue => ValueBus_89_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_91_enable,
        Output_LastValue => ValueBus_91_LastValue,
        Output_Value => ValueBus_91_Value,

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
        InputA_enable => ValueBus_90_enable,
        InputA_Value => ValueBus_90_Value,
        InputA_LastValue => ValueBus_90_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_91_enable,
        InputB_Value => ValueBus_91_Value,
        InputB_LastValue => ValueBus_91_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_92_enable,
        Output_LastValue => ValueBus_92_LastValue,
        Output_Value => ValueBus_92_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_5,
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
        Input_enable => ValueBus_92_enable,
        Input_Value => ValueBus_92_Value,
        Input_LastValue => ValueBus_92_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_69_enable(2),
        Output_LastValue => ValueBus_69_LastValue(2),
        Output_Value => ValueBus_69_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_9,
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
        Input_enable(0) => ValueBus_96_enable(0),
        Input_enable(1) => ValueBus_96_enable(1),
        Input_enable(2) => ValueBus_96_enable(2),
        Input_Value(0) => ValueBus_96_Value(0),
        Input_Value(1) => ValueBus_96_Value(1),
        Input_Value(2) => ValueBus_96_Value(2),
        Input_LastValue(0) => ValueBus_96_LastValue(0),
        Input_LastValue(1) => ValueBus_96_LastValue(1),
        Input_LastValue(2) => ValueBus_96_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_93_enable,
        Output_LastValue => ValueBus_93_LastValue,
        Output_Value => ValueBus_93_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_1,
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
        Input_enable => ValueBus_93_enable,
        Input_Value => ValueBus_93_Value,
        Input_LastValue => ValueBus_93_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_97_enable,
        Output_LastValue => ValueBus_97_LastValue,
        Output_Value => ValueBus_97_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#10 signals
    Bias_10: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bde34c87")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_97_enable,
        Input_Value => ValueBus_97_Value,
        Input_LastValue => ValueBus_97_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_98_enable,
        Output_LastValue => ValueBus_98_LastValue,
        Output_Value => ValueBus_98_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_10,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bc25392f"), 1 => std_logic_vector'(x"be017437"), 2 => std_logic_vector'(x"3d3fc175"), 3 => std_logic_vector'(x"3de792c0"), 4 => std_logic_vector'(x"bd3959cf"), 5 => std_logic_vector'(x"bd1a49e2"), 6 => std_logic_vector'(x"bc5ddcdc"), 7 => std_logic_vector'(x"3c992b5b"), 8 => std_logic_vector'(x"bc8b11b8"), 9 => std_logic_vector'(x"3e2ac64a"), 10 => std_logic_vector'(x"bcfff72b"), 11 => std_logic_vector'(x"3dbfd289"), 12 => std_logic_vector'(x"3da2aa6d"), 13 => std_logic_vector'(x"bd8d9523"), 14 => std_logic_vector'(x"bdfb9ae2"), 15 => std_logic_vector'(x"bbdcbe89"), 16 => std_logic_vector'(x"bd1e2a49"), 17 => std_logic_vector'(x"bc6333d4"), 18 => std_logic_vector'(x"bdeaf80e"), 19 => std_logic_vector'(x"bdcde9d7"), 20 => std_logic_vector'(x"3c8119f1"), 21 => std_logic_vector'(x"3d5530be"), 22 => std_logic_vector'(x"bc0534ed"), 23 => std_logic_vector'(x"bdc75e2b"), 24 => std_logic_vector'(x"bcf57a16")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_60_enable,
        InputValueA_Value => ValueBus_60_Value,
        InputValueA_LastValue => ValueBus_60_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_61_enable,
        InputValueB_Value => ValueBus_61_Value,
        InputValueB_LastValue => ValueBus_61_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_99_enable,
        OutputValueA_LastValue => ValueBus_99_LastValue,
        OutputValueA_Value => ValueBus_99_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_100_enable,
        OutputWeightA_Value => ValueBus_100_Value,
        OutputWeightA_LastValue => ValueBus_100_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_101_enable,
        OutputValueB_LastValue => ValueBus_101_LastValue,
        OutputValueB_Value => ValueBus_101_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_102_enable,
        OutputWeightB_Value => ValueBus_102_Value,
        OutputWeightB_LastValue => ValueBus_102_LastValue,

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
        InputValue_enable => ValueBus_99_enable,
        InputValue_Value => ValueBus_99_Value,
        InputValue_LastValue => ValueBus_99_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_100_enable,
        InputWeight_Value => ValueBus_100_Value,
        InputWeight_LastValue => ValueBus_100_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_103_enable,
        Output_LastValue => ValueBus_103_LastValue,
        Output_Value => ValueBus_103_Value,

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
        InputValue_enable => ValueBus_101_enable,
        InputValue_Value => ValueBus_101_Value,
        InputValue_LastValue => ValueBus_101_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_102_enable,
        InputWeight_Value => ValueBus_102_Value,
        InputWeight_LastValue => ValueBus_102_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_104_enable,
        Output_LastValue => ValueBus_104_LastValue,
        Output_Value => ValueBus_104_Value,

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
        InputA_enable => ValueBus_103_enable,
        InputA_Value => ValueBus_103_Value,
        InputA_LastValue => ValueBus_103_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_104_enable,
        InputB_Value => ValueBus_104_Value,
        InputB_LastValue => ValueBus_104_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_105_enable,
        Output_LastValue => ValueBus_105_LastValue,
        Output_Value => ValueBus_105_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_6,
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
        Input_enable => ValueBus_105_enable,
        Input_Value => ValueBus_105_Value,
        Input_LastValue => ValueBus_105_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_96_enable(0),
        Output_LastValue => ValueBus_96_LastValue(0),
        Output_Value => ValueBus_96_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_11,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3d53b41c"), 1 => std_logic_vector'(x"be390239"), 2 => std_logic_vector'(x"3b960aa1"), 3 => std_logic_vector'(x"3e2bb8bf"), 4 => std_logic_vector'(x"3e74bb63"), 5 => std_logic_vector'(x"bd5ab85f"), 6 => std_logic_vector'(x"bd5f7615"), 7 => std_logic_vector'(x"3d31612a"), 8 => std_logic_vector'(x"3d8e6dab"), 9 => std_logic_vector'(x"bbd5aae0"), 10 => std_logic_vector'(x"bc0c99fb"), 11 => std_logic_vector'(x"3d9aab0e"), 12 => std_logic_vector'(x"bc16abaa"), 13 => std_logic_vector'(x"bd5002f0"), 14 => std_logic_vector'(x"bd258565"), 15 => std_logic_vector'(x"bd5621a5"), 16 => std_logic_vector'(x"3d01bd70"), 17 => std_logic_vector'(x"bd94457c"), 18 => std_logic_vector'(x"3dd8b7eb"), 19 => std_logic_vector'(x"3dd30909"), 20 => std_logic_vector'(x"3d1d665c"), 21 => std_logic_vector'(x"bc75a401"), 22 => std_logic_vector'(x"bc7008eb"), 23 => std_logic_vector'(x"3df56a7d"), 24 => std_logic_vector'(x"bc12e174")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_62_enable,
        InputValueA_Value => ValueBus_62_Value,
        InputValueA_LastValue => ValueBus_62_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_63_enable,
        InputValueB_Value => ValueBus_63_Value,
        InputValueB_LastValue => ValueBus_63_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_106_enable,
        OutputValueA_LastValue => ValueBus_106_LastValue,
        OutputValueA_Value => ValueBus_106_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_107_enable,
        OutputWeightA_Value => ValueBus_107_Value,
        OutputWeightA_LastValue => ValueBus_107_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_108_enable,
        OutputValueB_LastValue => ValueBus_108_LastValue,
        OutputValueB_Value => ValueBus_108_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_109_enable,
        OutputWeightB_Value => ValueBus_109_Value,
        OutputWeightB_LastValue => ValueBus_109_LastValue,

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
        InputValue_enable => ValueBus_106_enable,
        InputValue_Value => ValueBus_106_Value,
        InputValue_LastValue => ValueBus_106_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_107_enable,
        InputWeight_Value => ValueBus_107_Value,
        InputWeight_LastValue => ValueBus_107_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_110_enable,
        Output_LastValue => ValueBus_110_LastValue,
        Output_Value => ValueBus_110_Value,

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
        InputValue_enable => ValueBus_108_enable,
        InputValue_Value => ValueBus_108_Value,
        InputValue_LastValue => ValueBus_108_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_109_enable,
        InputWeight_Value => ValueBus_109_Value,
        InputWeight_LastValue => ValueBus_109_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_111_enable,
        Output_LastValue => ValueBus_111_LastValue,
        Output_Value => ValueBus_111_Value,

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
        InputA_enable => ValueBus_110_enable,
        InputA_Value => ValueBus_110_Value,
        InputA_LastValue => ValueBus_110_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_111_enable,
        InputB_Value => ValueBus_111_Value,
        InputB_LastValue => ValueBus_111_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_112_enable,
        Output_LastValue => ValueBus_112_LastValue,
        Output_Value => ValueBus_112_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_7,
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
        Input_enable => ValueBus_112_enable,
        Input_Value => ValueBus_112_Value,
        Input_LastValue => ValueBus_112_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_96_enable(1),
        Output_LastValue => ValueBus_96_LastValue(1),
        Output_Value => ValueBus_96_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_12,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bbc54fcd"), 1 => std_logic_vector'(x"bda7ae4c"), 2 => std_logic_vector'(x"3e1e54ec"), 3 => std_logic_vector'(x"3d664890"), 4 => std_logic_vector'(x"bc890921"), 5 => std_logic_vector'(x"bba2405f"), 6 => std_logic_vector'(x"bcdb245c"), 7 => std_logic_vector'(x"bc8c97ac"), 8 => std_logic_vector'(x"3c8f239b"), 9 => std_logic_vector'(x"3e03c424"), 10 => std_logic_vector'(x"bc9cbe9c"), 11 => std_logic_vector'(x"3ce10f07"), 12 => std_logic_vector'(x"bdb3f507"), 13 => std_logic_vector'(x"3c8a1951"), 14 => std_logic_vector'(x"3b632c4e"), 15 => std_logic_vector'(x"3cf567a6"), 16 => std_logic_vector'(x"3cb62f68"), 17 => std_logic_vector'(x"3ca3d1a9"), 18 => std_logic_vector'(x"bcd02027"), 19 => std_logic_vector'(x"3b847f0e"), 20 => std_logic_vector'(x"3d62ec36"), 21 => std_logic_vector'(x"3c0fdbef"), 22 => std_logic_vector'(x"3c43b331"), 23 => std_logic_vector'(x"3d5a0bcc"), 24 => std_logic_vector'(x"3d759d34")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_64_enable,
        InputValueA_Value => ValueBus_64_Value,
        InputValueA_LastValue => ValueBus_64_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_65_enable,
        InputValueB_Value => ValueBus_65_Value,
        InputValueB_LastValue => ValueBus_65_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_113_enable,
        OutputValueA_LastValue => ValueBus_113_LastValue,
        OutputValueA_Value => ValueBus_113_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_114_enable,
        OutputWeightA_Value => ValueBus_114_Value,
        OutputWeightA_LastValue => ValueBus_114_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_115_enable,
        OutputValueB_LastValue => ValueBus_115_LastValue,
        OutputValueB_Value => ValueBus_115_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_116_enable,
        OutputWeightB_Value => ValueBus_116_Value,
        OutputWeightB_LastValue => ValueBus_116_LastValue,

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
        InputValue_enable => ValueBus_113_enable,
        InputValue_Value => ValueBus_113_Value,
        InputValue_LastValue => ValueBus_113_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_114_enable,
        InputWeight_Value => ValueBus_114_Value,
        InputWeight_LastValue => ValueBus_114_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_117_enable,
        Output_LastValue => ValueBus_117_LastValue,
        Output_Value => ValueBus_117_Value,

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
        InputValue_enable => ValueBus_115_enable,
        InputValue_Value => ValueBus_115_Value,
        InputValue_LastValue => ValueBus_115_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_116_enable,
        InputWeight_Value => ValueBus_116_Value,
        InputWeight_LastValue => ValueBus_116_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_118_enable,
        Output_LastValue => ValueBus_118_LastValue,
        Output_Value => ValueBus_118_Value,

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
        InputA_enable => ValueBus_117_enable,
        InputA_Value => ValueBus_117_Value,
        InputA_LastValue => ValueBus_117_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_118_enable,
        InputB_Value => ValueBus_118_Value,
        InputB_LastValue => ValueBus_118_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_119_enable,
        Output_LastValue => ValueBus_119_LastValue,
        Output_Value => ValueBus_119_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_8,
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
        Input_enable => ValueBus_119_enable,
        Input_Value => ValueBus_119_Value,
        Input_LastValue => ValueBus_119_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_96_enable(2),
        Output_LastValue => ValueBus_96_LastValue(2),
        Output_Value => ValueBus_96_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_13,
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
        Input_enable(0) => ValueBus_123_enable(0),
        Input_enable(1) => ValueBus_123_enable(1),
        Input_enable(2) => ValueBus_123_enable(2),
        Input_Value(0) => ValueBus_123_Value(0),
        Input_Value(1) => ValueBus_123_Value(1),
        Input_Value(2) => ValueBus_123_Value(2),
        Input_LastValue(0) => ValueBus_123_LastValue(0),
        Input_LastValue(1) => ValueBus_123_LastValue(1),
        Input_LastValue(2) => ValueBus_123_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_120_enable,
        Output_LastValue => ValueBus_120_LastValue,
        Output_Value => ValueBus_120_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_2,
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
        Input_enable => ValueBus_120_enable,
        Input_Value => ValueBus_120_Value,
        Input_LastValue => ValueBus_120_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_124_enable,
        Output_LastValue => ValueBus_124_LastValue,
        Output_Value => ValueBus_124_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#11 signals
    Bias_11: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3cfc713d")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_124_enable,
        Input_Value => ValueBus_124_Value,
        Input_LastValue => ValueBus_124_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_125_enable,
        Output_LastValue => ValueBus_125_LastValue,
        Output_Value => ValueBus_125_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_11,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bceff905"), 1 => std_logic_vector'(x"3addc543"), 2 => std_logic_vector'(x"bc8fb217"), 3 => std_logic_vector'(x"bd9e9564"), 4 => std_logic_vector'(x"bc12f2cb"), 5 => std_logic_vector'(x"bd1a91ca"), 6 => std_logic_vector'(x"3c88b3b0"), 7 => std_logic_vector'(x"bdbea7e0"), 8 => std_logic_vector'(x"bd76a18e"), 9 => std_logic_vector'(x"bc8b1ef7"), 10 => std_logic_vector'(x"3c3e301d"), 11 => std_logic_vector'(x"be340f25"), 12 => std_logic_vector'(x"3c1557c1"), 13 => std_logic_vector'(x"3da8c025"), 14 => std_logic_vector'(x"3daba265"), 15 => std_logic_vector'(x"bd6feb95"), 16 => std_logic_vector'(x"3de0b9ef"), 17 => std_logic_vector'(x"3e08c806"), 18 => std_logic_vector'(x"3c766370"), 19 => std_logic_vector'(x"bcc8dae1"), 20 => std_logic_vector'(x"bcae1abd"), 21 => std_logic_vector'(x"3ce6a3be"), 22 => std_logic_vector'(x"3a0591f8"), 23 => std_logic_vector'(x"3cfd97ca"), 24 => std_logic_vector'(x"bcc70338")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_60_enable,
        InputValueA_Value => ValueBus_60_Value,
        InputValueA_LastValue => ValueBus_60_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_61_enable,
        InputValueB_Value => ValueBus_61_Value,
        InputValueB_LastValue => ValueBus_61_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_126_enable,
        OutputValueA_LastValue => ValueBus_126_LastValue,
        OutputValueA_Value => ValueBus_126_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_127_enable,
        OutputWeightA_Value => ValueBus_127_Value,
        OutputWeightA_LastValue => ValueBus_127_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_128_enable,
        OutputValueB_LastValue => ValueBus_128_LastValue,
        OutputValueB_Value => ValueBus_128_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_129_enable,
        OutputWeightB_Value => ValueBus_129_Value,
        OutputWeightB_LastValue => ValueBus_129_LastValue,

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
        InputValue_enable => ValueBus_126_enable,
        InputValue_Value => ValueBus_126_Value,
        InputValue_LastValue => ValueBus_126_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_127_enable,
        InputWeight_Value => ValueBus_127_Value,
        InputWeight_LastValue => ValueBus_127_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_130_enable,
        Output_LastValue => ValueBus_130_LastValue,
        Output_Value => ValueBus_130_Value,

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
        InputValue_enable => ValueBus_128_enable,
        InputValue_Value => ValueBus_128_Value,
        InputValue_LastValue => ValueBus_128_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_129_enable,
        InputWeight_Value => ValueBus_129_Value,
        InputWeight_LastValue => ValueBus_129_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_131_enable,
        Output_LastValue => ValueBus_131_LastValue,
        Output_Value => ValueBus_131_Value,

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
        InputA_enable => ValueBus_130_enable,
        InputA_Value => ValueBus_130_Value,
        InputA_LastValue => ValueBus_130_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_131_enable,
        InputB_Value => ValueBus_131_Value,
        InputB_LastValue => ValueBus_131_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_132_enable,
        Output_LastValue => ValueBus_132_LastValue,
        Output_Value => ValueBus_132_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_9,
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
        Input_enable => ValueBus_132_enable,
        Input_Value => ValueBus_132_Value,
        Input_LastValue => ValueBus_132_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_123_enable(0),
        Output_LastValue => ValueBus_123_LastValue(0),
        Output_Value => ValueBus_123_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_15,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3e23d31b"), 1 => std_logic_vector'(x"bc8154e0"), 2 => std_logic_vector'(x"3de6bd31"), 3 => std_logic_vector'(x"bbd404f4"), 4 => std_logic_vector'(x"3b7ec4e6"), 5 => std_logic_vector'(x"3e2a097d"), 6 => std_logic_vector'(x"bdbf8934"), 7 => std_logic_vector'(x"3ccb90f2"), 8 => std_logic_vector'(x"bd9ef8dd"), 9 => std_logic_vector'(x"3c73f9e5"), 10 => std_logic_vector'(x"3af80f67"), 11 => std_logic_vector'(x"3e291b03"), 12 => std_logic_vector'(x"3e048839"), 13 => std_logic_vector'(x"bc7ccdac"), 14 => std_logic_vector'(x"bcea6c66"), 15 => std_logic_vector'(x"3d8a17d9"), 16 => std_logic_vector'(x"3c946d32"), 17 => std_logic_vector'(x"3d87db0b"), 18 => std_logic_vector'(x"bccf6698"), 19 => std_logic_vector'(x"3dab710e"), 20 => std_logic_vector'(x"3be3c09f"), 21 => std_logic_vector'(x"bda090f4"), 22 => std_logic_vector'(x"bdc3a774"), 23 => std_logic_vector'(x"bb8ea66c"), 24 => std_logic_vector'(x"3e73cf11")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_62_enable,
        InputValueA_Value => ValueBus_62_Value,
        InputValueA_LastValue => ValueBus_62_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_63_enable,
        InputValueB_Value => ValueBus_63_Value,
        InputValueB_LastValue => ValueBus_63_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_133_enable,
        OutputValueA_LastValue => ValueBus_133_LastValue,
        OutputValueA_Value => ValueBus_133_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_134_enable,
        OutputWeightA_Value => ValueBus_134_Value,
        OutputWeightA_LastValue => ValueBus_134_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_135_enable,
        OutputValueB_LastValue => ValueBus_135_LastValue,
        OutputValueB_Value => ValueBus_135_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_136_enable,
        OutputWeightB_Value => ValueBus_136_Value,
        OutputWeightB_LastValue => ValueBus_136_LastValue,

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
        InputValue_enable => ValueBus_133_enable,
        InputValue_Value => ValueBus_133_Value,
        InputValue_LastValue => ValueBus_133_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_134_enable,
        InputWeight_Value => ValueBus_134_Value,
        InputWeight_LastValue => ValueBus_134_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_137_enable,
        Output_LastValue => ValueBus_137_LastValue,
        Output_Value => ValueBus_137_Value,

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
        InputValue_enable => ValueBus_135_enable,
        InputValue_Value => ValueBus_135_Value,
        InputValue_LastValue => ValueBus_135_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_136_enable,
        InputWeight_Value => ValueBus_136_Value,
        InputWeight_LastValue => ValueBus_136_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_138_enable,
        Output_LastValue => ValueBus_138_LastValue,
        Output_Value => ValueBus_138_Value,

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
        InputA_enable => ValueBus_137_enable,
        InputA_Value => ValueBus_137_Value,
        InputA_LastValue => ValueBus_137_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_138_enable,
        InputB_Value => ValueBus_138_Value,
        InputB_LastValue => ValueBus_138_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_139_enable,
        Output_LastValue => ValueBus_139_LastValue,
        Output_Value => ValueBus_139_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_10,
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
        Input_enable => ValueBus_139_enable,
        Input_Value => ValueBus_139_Value,
        Input_LastValue => ValueBus_139_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_123_enable(1),
        Output_LastValue => ValueBus_123_LastValue(1),
        Output_Value => ValueBus_123_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_16,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"3da8621b"), 1 => std_logic_vector'(x"3d21742c"), 2 => std_logic_vector'(x"3d91dcb9"), 3 => std_logic_vector'(x"3bb5ef09"), 4 => std_logic_vector'(x"bd1ed344"), 5 => std_logic_vector'(x"bb807c88"), 6 => std_logic_vector'(x"3c1ee66f"), 7 => std_logic_vector'(x"bd085f36"), 8 => std_logic_vector'(x"3d3d820b"), 9 => std_logic_vector'(x"3c8e32f6"), 10 => std_logic_vector'(x"bd432d66"), 11 => std_logic_vector'(x"bd7e7cd6"), 12 => std_logic_vector'(x"3d7f6d45"), 13 => std_logic_vector'(x"3e34c47d"), 14 => std_logic_vector'(x"3dbf971d"), 15 => std_logic_vector'(x"3d2636b1"), 16 => std_logic_vector'(x"3c8c9253"), 17 => std_logic_vector'(x"3c2290c9"), 18 => std_logic_vector'(x"3ced499e"), 19 => std_logic_vector'(x"3e0ecff8"), 20 => std_logic_vector'(x"bd93464f"), 21 => std_logic_vector'(x"bd457b81"), 22 => std_logic_vector'(x"3d8b28e0"), 23 => std_logic_vector'(x"bcdc1431"), 24 => std_logic_vector'(x"3d5b3786")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_64_enable,
        InputValueA_Value => ValueBus_64_Value,
        InputValueA_LastValue => ValueBus_64_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_65_enable,
        InputValueB_Value => ValueBus_65_Value,
        InputValueB_LastValue => ValueBus_65_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_140_enable,
        OutputValueA_LastValue => ValueBus_140_LastValue,
        OutputValueA_Value => ValueBus_140_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_141_enable,
        OutputWeightA_Value => ValueBus_141_Value,
        OutputWeightA_LastValue => ValueBus_141_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_142_enable,
        OutputValueB_LastValue => ValueBus_142_LastValue,
        OutputValueB_Value => ValueBus_142_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_143_enable,
        OutputWeightB_Value => ValueBus_143_Value,
        OutputWeightB_LastValue => ValueBus_143_LastValue,

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
        InputValue_enable => ValueBus_140_enable,
        InputValue_Value => ValueBus_140_Value,
        InputValue_LastValue => ValueBus_140_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_141_enable,
        InputWeight_Value => ValueBus_141_Value,
        InputWeight_LastValue => ValueBus_141_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_144_enable,
        Output_LastValue => ValueBus_144_LastValue,
        Output_Value => ValueBus_144_Value,

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
        InputValue_enable => ValueBus_142_enable,
        InputValue_Value => ValueBus_142_Value,
        InputValue_LastValue => ValueBus_142_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_143_enable,
        InputWeight_Value => ValueBus_143_Value,
        InputWeight_LastValue => ValueBus_143_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_145_enable,
        Output_LastValue => ValueBus_145_LastValue,
        Output_Value => ValueBus_145_Value,

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
        InputA_enable => ValueBus_144_enable,
        InputA_Value => ValueBus_144_Value,
        InputA_LastValue => ValueBus_144_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_145_enable,
        InputB_Value => ValueBus_145_Value,
        InputB_LastValue => ValueBus_145_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_146_enable,
        Output_LastValue => ValueBus_146_LastValue,
        Output_Value => ValueBus_146_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_11,
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
        Input_enable => ValueBus_146_enable,
        Input_Value => ValueBus_146_Value,
        Input_LastValue => ValueBus_146_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_123_enable(2),
        Output_LastValue => ValueBus_123_LastValue(2),
        Output_Value => ValueBus_123_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_17,
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
        Input_enable(0) => ValueBus_150_enable(0),
        Input_enable(1) => ValueBus_150_enable(1),
        Input_enable(2) => ValueBus_150_enable(2),
        Input_Value(0) => ValueBus_150_Value(0),
        Input_Value(1) => ValueBus_150_Value(1),
        Input_Value(2) => ValueBus_150_Value(2),
        Input_LastValue(0) => ValueBus_150_LastValue(0),
        Input_LastValue(1) => ValueBus_150_LastValue(1),
        Input_LastValue(2) => ValueBus_150_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_147_enable,
        Output_LastValue => ValueBus_147_LastValue,
        Output_Value => ValueBus_147_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_3,
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
        Input_enable => ValueBus_147_enable,
        Input_Value => ValueBus_147_Value,
        Input_LastValue => ValueBus_147_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_151_enable,
        Output_LastValue => ValueBus_151_LastValue,
        Output_Value => ValueBus_151_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_18,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#12 signals
    Bias_12: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d9201f7")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_151_enable,
        Input_Value => ValueBus_151_Value,
        Input_LastValue => ValueBus_151_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_152_enable,
        Output_LastValue => ValueBus_152_LastValue,
        Output_Value => ValueBus_152_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_12,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bdaba499"), 1 => std_logic_vector'(x"bd79cfa6"), 2 => std_logic_vector'(x"bda22bbe"), 3 => std_logic_vector'(x"3db4e77f"), 4 => std_logic_vector'(x"3d632138"), 5 => std_logic_vector'(x"3d472014"), 6 => std_logic_vector'(x"bdbf2407"), 7 => std_logic_vector'(x"3b860e32"), 8 => std_logic_vector'(x"3d98817e"), 9 => std_logic_vector'(x"3d95063d"), 10 => std_logic_vector'(x"bccb5100"), 11 => std_logic_vector'(x"3cb619f0"), 12 => std_logic_vector'(x"3d29c636"), 13 => std_logic_vector'(x"3d079ac9"), 14 => std_logic_vector'(x"bd551fde"), 15 => std_logic_vector'(x"bc6dd6de"), 16 => std_logic_vector'(x"3d3a3c01"), 17 => std_logic_vector'(x"bd838e71"), 18 => std_logic_vector'(x"bcbc637d"), 19 => std_logic_vector'(x"bd96deea"), 20 => std_logic_vector'(x"bd4e4eda"), 21 => std_logic_vector'(x"3c942eb5"), 22 => std_logic_vector'(x"3bdc04ac"), 23 => std_logic_vector'(x"3d4f2264"), 24 => std_logic_vector'(x"be45532b")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_60_enable,
        InputValueA_Value => ValueBus_60_Value,
        InputValueA_LastValue => ValueBus_60_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_61_enable,
        InputValueB_Value => ValueBus_61_Value,
        InputValueB_LastValue => ValueBus_61_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_153_enable,
        OutputValueA_LastValue => ValueBus_153_LastValue,
        OutputValueA_Value => ValueBus_153_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_154_enable,
        OutputWeightA_Value => ValueBus_154_Value,
        OutputWeightA_LastValue => ValueBus_154_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_155_enable,
        OutputValueB_LastValue => ValueBus_155_LastValue,
        OutputValueB_Value => ValueBus_155_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_156_enable,
        OutputWeightB_Value => ValueBus_156_Value,
        OutputWeightB_LastValue => ValueBus_156_LastValue,

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
        InputValue_enable => ValueBus_153_enable,
        InputValue_Value => ValueBus_153_Value,
        InputValue_LastValue => ValueBus_153_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_154_enable,
        InputWeight_Value => ValueBus_154_Value,
        InputWeight_LastValue => ValueBus_154_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_157_enable,
        Output_LastValue => ValueBus_157_LastValue,
        Output_Value => ValueBus_157_Value,

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
        InputValue_enable => ValueBus_155_enable,
        InputValue_Value => ValueBus_155_Value,
        InputValue_LastValue => ValueBus_155_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_156_enable,
        InputWeight_Value => ValueBus_156_Value,
        InputWeight_LastValue => ValueBus_156_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_158_enable,
        Output_LastValue => ValueBus_158_LastValue,
        Output_Value => ValueBus_158_Value,

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
        InputA_enable => ValueBus_157_enable,
        InputA_Value => ValueBus_157_Value,
        InputA_LastValue => ValueBus_157_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_158_enable,
        InputB_Value => ValueBus_158_Value,
        InputB_LastValue => ValueBus_158_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_159_enable,
        Output_LastValue => ValueBus_159_LastValue,
        Output_Value => ValueBus_159_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_12,
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
        Input_enable => ValueBus_159_enable,
        Input_Value => ValueBus_159_Value,
        Input_LastValue => ValueBus_159_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_150_enable(0),
        Output_LastValue => ValueBus_150_LastValue(0),
        Output_Value => ValueBus_150_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_19,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"bd987c41"), 1 => std_logic_vector'(x"bd1f66f5"), 2 => std_logic_vector'(x"bcf3baf3"), 3 => std_logic_vector'(x"bbfa6b3f"), 4 => std_logic_vector'(x"3dc4f13a"), 5 => std_logic_vector'(x"3bb17081"), 6 => std_logic_vector'(x"bd827b30"), 7 => std_logic_vector'(x"3cd90eb7"), 8 => std_logic_vector'(x"3dffb3dc"), 9 => std_logic_vector'(x"3da9ac2a"), 10 => std_logic_vector'(x"3af7159b"), 11 => std_logic_vector'(x"3c190964"), 12 => std_logic_vector'(x"bd0bf6b0"), 13 => std_logic_vector'(x"3d4ea9c2"), 14 => std_logic_vector'(x"bdb7592d"), 15 => std_logic_vector'(x"3d9afd27"), 16 => std_logic_vector'(x"3cebe506"), 17 => std_logic_vector'(x"bc6e9eaa"), 18 => std_logic_vector'(x"3d0ca5cd"), 19 => std_logic_vector'(x"bc2c2d75"), 20 => std_logic_vector'(x"3e197340"), 21 => std_logic_vector'(x"3cc0f44a"), 22 => std_logic_vector'(x"bcaef697"), 23 => std_logic_vector'(x"bda2b80a"), 24 => std_logic_vector'(x"bdee0602")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_62_enable,
        InputValueA_Value => ValueBus_62_Value,
        InputValueA_LastValue => ValueBus_62_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_63_enable,
        InputValueB_Value => ValueBus_63_Value,
        InputValueB_LastValue => ValueBus_63_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_160_enable,
        OutputValueA_LastValue => ValueBus_160_LastValue,
        OutputValueA_Value => ValueBus_160_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_161_enable,
        OutputWeightA_Value => ValueBus_161_Value,
        OutputWeightA_LastValue => ValueBus_161_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_162_enable,
        OutputValueB_LastValue => ValueBus_162_LastValue,
        OutputValueB_Value => ValueBus_162_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_163_enable,
        OutputWeightB_Value => ValueBus_163_Value,
        OutputWeightB_LastValue => ValueBus_163_LastValue,

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
        InputValue_enable => ValueBus_160_enable,
        InputValue_Value => ValueBus_160_Value,
        InputValue_LastValue => ValueBus_160_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_161_enable,
        InputWeight_Value => ValueBus_161_Value,
        InputWeight_LastValue => ValueBus_161_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_164_enable,
        Output_LastValue => ValueBus_164_LastValue,
        Output_Value => ValueBus_164_Value,

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
        InputValue_enable => ValueBus_162_enable,
        InputValue_Value => ValueBus_162_Value,
        InputValue_LastValue => ValueBus_162_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_163_enable,
        InputWeight_Value => ValueBus_163_Value,
        InputWeight_LastValue => ValueBus_163_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_165_enable,
        Output_LastValue => ValueBus_165_LastValue,
        Output_Value => ValueBus_165_Value,

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
        InputA_enable => ValueBus_164_enable,
        InputA_Value => ValueBus_164_Value,
        InputA_LastValue => ValueBus_164_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_165_enable,
        InputB_Value => ValueBus_165_Value,
        InputB_LastValue => ValueBus_165_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_166_enable,
        Output_LastValue => ValueBus_166_LastValue,
        Output_Value => ValueBus_166_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#20 signals
    PlusCtrl_20: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_166_enable,
        Input_Value => ValueBus_166_Value,
        Input_LastValue => ValueBus_166_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_150_enable(1),
        Output_LastValue => ValueBus_150_LastValue(1),
        Output_Value => ValueBus_150_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_20,
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
        reset_weights (0 to 24) => (0 => std_logic_vector'(x"b9d35907"), 1 => std_logic_vector'(x"bd44f41e"), 2 => std_logic_vector'(x"bdec1587"), 3 => std_logic_vector'(x"bc9d35ba"), 4 => std_logic_vector'(x"3de4c0eb"), 5 => std_logic_vector'(x"bc0d1712"), 6 => std_logic_vector'(x"bd80c1d8"), 7 => std_logic_vector'(x"bd500c93"), 8 => std_logic_vector'(x"3c84027c"), 9 => std_logic_vector'(x"bc1e66c0"), 10 => std_logic_vector'(x"bc4f03c5"), 11 => std_logic_vector'(x"bcafdcd4"), 12 => std_logic_vector'(x"3cc82587"), 13 => std_logic_vector'(x"bd12b702"), 14 => std_logic_vector'(x"bbff606e"), 15 => std_logic_vector'(x"bc760981"), 16 => std_logic_vector'(x"3d47ced4"), 17 => std_logic_vector'(x"3d6e2582"), 18 => std_logic_vector'(x"bdbed28a"), 19 => std_logic_vector'(x"3d854b76"), 20 => std_logic_vector'(x"3d4b5e08"), 21 => std_logic_vector'(x"bd71dc0f"), 22 => std_logic_vector'(x"bd0985f6"), 23 => std_logic_vector'(x"bcaacfe2"), 24 => std_logic_vector'(x"bdd91922")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_64_enable,
        InputValueA_Value => ValueBus_64_Value,
        InputValueA_LastValue => ValueBus_64_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_65_enable,
        InputValueB_Value => ValueBus_65_Value,
        InputValueB_LastValue => ValueBus_65_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_167_enable,
        OutputValueA_LastValue => ValueBus_167_LastValue,
        OutputValueA_Value => ValueBus_167_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_168_enable,
        OutputWeightA_Value => ValueBus_168_Value,
        OutputWeightA_LastValue => ValueBus_168_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_169_enable,
        OutputValueB_LastValue => ValueBus_169_LastValue,
        OutputValueB_Value => ValueBus_169_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_170_enable,
        OutputWeightB_Value => ValueBus_170_Value,
        OutputWeightB_LastValue => ValueBus_170_LastValue,

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
        InputValue_enable => ValueBus_167_enable,
        InputValue_Value => ValueBus_167_Value,
        InputValue_LastValue => ValueBus_167_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_168_enable,
        InputWeight_Value => ValueBus_168_Value,
        InputWeight_LastValue => ValueBus_168_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_171_enable,
        Output_LastValue => ValueBus_171_LastValue,
        Output_Value => ValueBus_171_Value,

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
        InputValue_enable => ValueBus_169_enable,
        InputValue_Value => ValueBus_169_Value,
        InputValue_LastValue => ValueBus_169_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_170_enable,
        InputWeight_Value => ValueBus_170_Value,
        InputWeight_LastValue => ValueBus_170_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_172_enable,
        Output_LastValue => ValueBus_172_LastValue,
        Output_Value => ValueBus_172_Value,

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
        InputA_enable => ValueBus_171_enable,
        InputA_Value => ValueBus_171_Value,
        InputA_LastValue => ValueBus_171_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_172_enable,
        InputB_Value => ValueBus_172_Value,
        InputB_LastValue => ValueBus_172_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_173_enable,
        Output_LastValue => ValueBus_173_LastValue,
        Output_Value => ValueBus_173_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#21 signals
    PlusCtrl_21: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_173_enable,
        Input_Value => ValueBus_173_Value,
        Input_LastValue => ValueBus_173_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_150_enable(2),
        Output_LastValue => ValueBus_150_LastValue(2),
        Output_Value => ValueBus_150_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_21,
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
        Input_enable(0) => ValueBus_177_enable(0),
        Input_enable(1) => ValueBus_177_enable(1),
        Input_enable(2) => ValueBus_177_enable(2),
        Input_Value(0) => ValueBus_177_Value(0),
        Input_Value(1) => ValueBus_177_Value(1),
        Input_Value(2) => ValueBus_177_Value(2),
        Input_LastValue(0) => ValueBus_177_LastValue(0),
        Input_LastValue(1) => ValueBus_177_LastValue(1),
        Input_LastValue(2) => ValueBus_177_LastValue(2),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_174_enable,
        Output_LastValue => ValueBus_174_LastValue,
        Output_Value => ValueBus_174_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#22 signals
    PlusCtrl_22: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_174_enable,
        Input_Value => ValueBus_174_Value,
        Input_LastValue => ValueBus_174_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_178_enable,
        Output_LastValue => ValueBus_178_LastValue,
        Output_Value => ValueBus_178_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_22,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#13 signals
    Bias_13: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d202fb7")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_178_enable,
        Input_Value => ValueBus_178_Value,
        Input_LastValue => ValueBus_178_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_179_enable,
        Output_LastValue => ValueBus_179_LastValue,
        Output_Value => ValueBus_179_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#15 signals
    KernelCtrl_15: entity work.CNN_KernelCtrl
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
        InputValueA_enable => ValueBus_60_enable,
        InputValueA_Value => ValueBus_60_Value,
        InputValueA_LastValue => ValueBus_60_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_61_enable,
        InputValueB_Value => ValueBus_61_Value,
        InputValueB_LastValue => ValueBus_61_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_180_enable,
        OutputValueA_LastValue => ValueBus_180_LastValue,
        OutputValueA_Value => ValueBus_180_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_181_enable,
        OutputWeightA_Value => ValueBus_181_Value,
        OutputWeightA_LastValue => ValueBus_181_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_182_enable,
        OutputValueB_LastValue => ValueBus_182_LastValue,
        OutputValueB_Value => ValueBus_182_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_183_enable,
        OutputWeightB_Value => ValueBus_183_Value,
        OutputWeightB_LastValue => ValueBus_183_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_15,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#30 signals
    WeightValue_30: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_180_enable,
        InputValue_Value => ValueBus_180_Value,
        InputValue_LastValue => ValueBus_180_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_181_enable,
        InputWeight_Value => ValueBus_181_Value,
        InputWeight_LastValue => ValueBus_181_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_184_enable,
        Output_LastValue => ValueBus_184_LastValue,
        Output_Value => ValueBus_184_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_30,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#31 signals
    WeightValue_31: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_182_enable,
        InputValue_Value => ValueBus_182_Value,
        InputValue_LastValue => ValueBus_182_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_183_enable,
        InputWeight_Value => ValueBus_183_Value,
        InputWeight_LastValue => ValueBus_183_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_185_enable,
        Output_LastValue => ValueBus_185_LastValue,
        Output_Value => ValueBus_185_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_31,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#15 signals
    PlusTwo_15: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_184_enable,
        InputA_Value => ValueBus_184_Value,
        InputA_LastValue => ValueBus_184_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_185_enable,
        InputB_Value => ValueBus_185_Value,
        InputB_LastValue => ValueBus_185_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_186_enable,
        Output_LastValue => ValueBus_186_LastValue,
        Output_Value => ValueBus_186_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_15,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#23 signals
    PlusCtrl_23: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_186_enable,
        Input_Value => ValueBus_186_Value,
        Input_LastValue => ValueBus_186_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_177_enable(0),
        Output_LastValue => ValueBus_177_LastValue(0),
        Output_Value => ValueBus_177_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_23,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#16 signals
    KernelCtrl_16: entity work.CNN_KernelCtrl
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
        InputValueA_enable => ValueBus_62_enable,
        InputValueA_Value => ValueBus_62_Value,
        InputValueA_LastValue => ValueBus_62_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_63_enable,
        InputValueB_Value => ValueBus_63_Value,
        InputValueB_LastValue => ValueBus_63_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_187_enable,
        OutputValueA_LastValue => ValueBus_187_LastValue,
        OutputValueA_Value => ValueBus_187_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_188_enable,
        OutputWeightA_Value => ValueBus_188_Value,
        OutputWeightA_LastValue => ValueBus_188_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_189_enable,
        OutputValueB_LastValue => ValueBus_189_LastValue,
        OutputValueB_Value => ValueBus_189_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_190_enable,
        OutputWeightB_Value => ValueBus_190_Value,
        OutputWeightB_LastValue => ValueBus_190_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_16,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#32 signals
    WeightValue_32: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_187_enable,
        InputValue_Value => ValueBus_187_Value,
        InputValue_LastValue => ValueBus_187_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_188_enable,
        InputWeight_Value => ValueBus_188_Value,
        InputWeight_LastValue => ValueBus_188_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_191_enable,
        Output_LastValue => ValueBus_191_LastValue,
        Output_Value => ValueBus_191_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_32,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#33 signals
    WeightValue_33: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_189_enable,
        InputValue_Value => ValueBus_189_Value,
        InputValue_LastValue => ValueBus_189_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_190_enable,
        InputWeight_Value => ValueBus_190_Value,
        InputWeight_LastValue => ValueBus_190_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_192_enable,
        Output_LastValue => ValueBus_192_LastValue,
        Output_Value => ValueBus_192_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_33,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#16 signals
    PlusTwo_16: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_191_enable,
        InputA_Value => ValueBus_191_Value,
        InputA_LastValue => ValueBus_191_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_192_enable,
        InputB_Value => ValueBus_192_Value,
        InputB_LastValue => ValueBus_192_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_193_enable,
        Output_LastValue => ValueBus_193_LastValue,
        Output_Value => ValueBus_193_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_16,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#24 signals
    PlusCtrl_24: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_193_enable,
        Input_Value => ValueBus_193_Value,
        Input_LastValue => ValueBus_193_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_177_enable(1),
        Output_LastValue => ValueBus_177_LastValue(1),
        Output_Value => ValueBus_177_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_24,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#17 signals
    KernelCtrl_17: entity work.CNN_KernelCtrl
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
        InputValueA_enable => ValueBus_64_enable,
        InputValueA_Value => ValueBus_64_Value,
        InputValueA_LastValue => ValueBus_64_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_65_enable,
        InputValueB_Value => ValueBus_65_Value,
        InputValueB_LastValue => ValueBus_65_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_194_enable,
        OutputValueA_LastValue => ValueBus_194_LastValue,
        OutputValueA_Value => ValueBus_194_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_195_enable,
        OutputWeightA_Value => ValueBus_195_Value,
        OutputWeightA_LastValue => ValueBus_195_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_196_enable,
        OutputValueB_LastValue => ValueBus_196_LastValue,
        OutputValueB_Value => ValueBus_196_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_197_enable,
        OutputWeightB_Value => ValueBus_197_Value,
        OutputWeightB_LastValue => ValueBus_197_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_17,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#34 signals
    WeightValue_34: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_194_enable,
        InputValue_Value => ValueBus_194_Value,
        InputValue_LastValue => ValueBus_194_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_195_enable,
        InputWeight_Value => ValueBus_195_Value,
        InputWeight_LastValue => ValueBus_195_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_198_enable,
        Output_LastValue => ValueBus_198_LastValue,
        Output_Value => ValueBus_198_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_34,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#35 signals
    WeightValue_35: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_196_enable,
        InputValue_Value => ValueBus_196_Value,
        InputValue_LastValue => ValueBus_196_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_197_enable,
        InputWeight_Value => ValueBus_197_Value,
        InputWeight_LastValue => ValueBus_197_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_199_enable,
        Output_LastValue => ValueBus_199_LastValue,
        Output_Value => ValueBus_199_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_35,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#17 signals
    PlusTwo_17: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_198_enable,
        InputA_Value => ValueBus_198_Value,
        InputA_LastValue => ValueBus_198_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_199_enable,
        InputB_Value => ValueBus_199_Value,
        InputB_LastValue => ValueBus_199_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_200_enable,
        Output_LastValue => ValueBus_200_LastValue,
        Output_Value => ValueBus_200_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_17,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#25 signals
    PlusCtrl_25: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_200_enable,
        Input_Value => ValueBus_200_Value,
        Input_LastValue => ValueBus_200_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_177_enable(2),
        Output_LastValue => ValueBus_177_LastValue(2),
        Output_Value => ValueBus_177_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_25,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#14 signals
    Bias_14: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"baddbbc4")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_71_enable,
        Input_Value => ValueBus_71_Value,
        Input_LastValue => ValueBus_71_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_201_enable,
        Output_LastValue => ValueBus_201_LastValue,
        Output_Value => ValueBus_201_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#6 signals
    Multiply_6: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f98d719")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_201_enable,
        Input_Value => ValueBus_201_Value,
        Input_LastValue => ValueBus_201_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_202_enable,
        Output_LastValue => ValueBus_202_LastValue,
        Output_Value => ValueBus_202_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#7 signals
    Multiply_7: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fc16a2b")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_202_enable,
        Input_Value => ValueBus_202_Value,
        Input_LastValue => ValueBus_202_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_203_enable,
        Output_LastValue => ValueBus_203_LastValue,
        Output_Value => ValueBus_203_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#15 signals
    Bias_15: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3cc1befe")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_203_enable,
        Input_Value => ValueBus_203_Value,
        Input_LastValue => ValueBus_203_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_204_enable,
        Output_LastValue => ValueBus_204_LastValue,
        Output_Value => ValueBus_204_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_15,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#16 signals
    Bias_16: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"be569ac0")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_98_enable,
        Input_Value => ValueBus_98_Value,
        Input_LastValue => ValueBus_98_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_205_enable,
        Output_LastValue => ValueBus_205_LastValue,
        Output_Value => ValueBus_205_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_16,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#8 signals
    Multiply_8: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f7d9c67")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_205_enable,
        Input_Value => ValueBus_205_Value,
        Input_LastValue => ValueBus_205_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_206_enable,
        Output_LastValue => ValueBus_206_LastValue,
        Output_Value => ValueBus_206_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#9 signals
    Multiply_9: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fbd2b85")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_206_enable,
        Input_Value => ValueBus_206_Value,
        Input_LastValue => ValueBus_206_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_207_enable,
        Output_LastValue => ValueBus_207_LastValue,
        Output_Value => ValueBus_207_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#17 signals
    Bias_17: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3cdf3e6f")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_207_enable,
        Input_Value => ValueBus_207_Value,
        Input_LastValue => ValueBus_207_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_208_enable,
        Output_LastValue => ValueBus_208_LastValue,
        Output_Value => ValueBus_208_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_17,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#18 signals
    Bias_18: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bf40cfbe")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_125_enable,
        Input_Value => ValueBus_125_Value,
        Input_LastValue => ValueBus_125_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_209_enable,
        Output_LastValue => ValueBus_209_LastValue,
        Output_Value => ValueBus_209_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_18,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#10 signals
    Multiply_10: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fb4c328")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_209_enable,
        Input_Value => ValueBus_209_Value,
        Input_LastValue => ValueBus_209_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_210_enable,
        Output_LastValue => ValueBus_210_LastValue,
        Output_Value => ValueBus_210_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#11 signals
    Multiply_11: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fb89677")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_210_enable,
        Input_Value => ValueBus_210_Value,
        Input_LastValue => ValueBus_210_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_211_enable,
        Output_LastValue => ValueBus_211_LastValue,
        Output_Value => ValueBus_211_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#19 signals
    Bias_19: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bc5c91a0")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_211_enable,
        Input_Value => ValueBus_211_Value,
        Input_LastValue => ValueBus_211_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_212_enable,
        Output_LastValue => ValueBus_212_LastValue,
        Output_Value => ValueBus_212_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_19,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#20 signals
    Bias_20: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3ded87f1")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_152_enable,
        Input_Value => ValueBus_152_Value,
        Input_LastValue => ValueBus_152_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_213_enable,
        Output_LastValue => ValueBus_213_LastValue,
        Output_Value => ValueBus_213_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_20,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#12 signals
    Multiply_12: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f9342c1")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_213_enable,
        Input_Value => ValueBus_213_Value,
        Input_LastValue => ValueBus_213_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_214_enable,
        Output_LastValue => ValueBus_214_LastValue,
        Output_Value => ValueBus_214_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#13 signals
    Multiply_13: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fa81162")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_214_enable,
        Input_Value => ValueBus_214_Value,
        Input_LastValue => ValueBus_214_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_215_enable,
        Output_LastValue => ValueBus_215_LastValue,
        Output_Value => ValueBus_215_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#21 signals
    Bias_21: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d47498f")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_215_enable,
        Input_Value => ValueBus_215_Value,
        Input_LastValue => ValueBus_215_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_216_enable,
        Output_LastValue => ValueBus_216_LastValue,
        Output_Value => ValueBus_216_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_21,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#22 signals
    Bias_22: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e73cd04")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_179_enable,
        Input_Value => ValueBus_179_Value,
        Input_LastValue => ValueBus_179_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_217_enable,
        Output_LastValue => ValueBus_217_LastValue,
        Output_Value => ValueBus_217_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_22,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#14 signals
    Multiply_14: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fb2407a")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_217_enable,
        Input_Value => ValueBus_217_Value,
        Input_LastValue => ValueBus_217_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_218_enable,
        Output_LastValue => ValueBus_218_LastValue,
        Output_Value => ValueBus_218_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_14,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#15 signals
    Multiply_15: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fc066df")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_218_enable,
        Input_Value => ValueBus_218_Value,
        Input_LastValue => ValueBus_218_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_219_enable,
        Output_LastValue => ValueBus_219_LastValue,
        Output_Value => ValueBus_219_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_15,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#23 signals
    Bias_23: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d6ce059")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_219_enable,
        Input_Value => ValueBus_219_Value,
        Input_LastValue => ValueBus_219_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_220_enable,
        Output_LastValue => ValueBus_220_LastValue,
        Output_Value => ValueBus_220_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_23,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#3 signals
    ReluCore_3: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_204_enable,
        Input_Value => ValueBus_204_Value,
        Input_LastValue => ValueBus_204_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_221_enable,
        Output_LastValue => ValueBus_221_LastValue,
        Output_Value => ValueBus_221_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#4 signals
    ReluCore_4: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_208_enable,
        Input_Value => ValueBus_208_Value,
        Input_LastValue => ValueBus_208_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_222_enable,
        Output_LastValue => ValueBus_222_LastValue,
        Output_Value => ValueBus_222_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#5 signals
    ReluCore_5: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_212_enable,
        Input_Value => ValueBus_212_Value,
        Input_LastValue => ValueBus_212_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_223_enable,
        Output_LastValue => ValueBus_223_LastValue,
        Output_Value => ValueBus_223_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#6 signals
    ReluCore_6: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_216_enable,
        Input_Value => ValueBus_216_Value,
        Input_LastValue => ValueBus_216_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_224_enable,
        Output_LastValue => ValueBus_224_LastValue,
        Output_Value => ValueBus_224_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#7 signals
    ReluCore_7: entity work.CNN_ReluCore
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_220_enable,
        Input_Value => ValueBus_220_Value,
        Input_LastValue => ValueBus_220_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_225_enable,
        Output_LastValue => ValueBus_225_LastValue,
        Output_Value => ValueBus_225_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#7 signals
    TrueDualPortMemory_1_Single_7: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 80) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#7 signals
    InputCtrl_ParFilter_7: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(9, 5),
        reset_channelWidth => TO_UNSIGNED(9, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(9, 5),
        reset_newWidth => TO_UNSIGNED(9, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_strideRow => TO_UNSIGNED(3, 2),
        reset_strideCol => TO_UNSIGNED(3, 2),
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
        Input_enable => ValueBus_221_enable,
        Input_Value => ValueBus_221_Value,
        Input_LastValue => ValueBus_221_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_14_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_15_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_226_enable,
        OutputValueA_LastValue => ValueBus_226_LastValue,
        OutputValueA_Value => ValueBus_226_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_227_enable,
        OutputValueB_Value => ValueBus_227_Value,
        OutputValueB_LastValue => ValueBus_227_LastValue,

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
        FIN => FIN_InputCtrl_ParFilter_7,
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
        InputA_enable => ValueBus_226_enable,
        InputA_Value => ValueBus_226_Value,
        InputA_LastValue => ValueBus_226_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_227_enable,
        InputB_Value => ValueBus_227_Value,
        InputB_LastValue => ValueBus_227_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_240_Value(0),
        Output_enable => ValueBus_240_enable(0),
        Output_LastValue => ValueBus_240_LastValue(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#8 signals
    TrueDualPortMemory_1_Single_8: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 80) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#8 signals
    InputCtrl_ParFilter_8: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(9, 5),
        reset_channelWidth => TO_UNSIGNED(9, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(9, 5),
        reset_newWidth => TO_UNSIGNED(9, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_strideRow => TO_UNSIGNED(3, 2),
        reset_strideCol => TO_UNSIGNED(3, 2),
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
        Input_enable => ValueBus_222_enable,
        Input_Value => ValueBus_222_Value,
        Input_LastValue => ValueBus_222_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_16_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_17_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_229_enable,
        OutputValueA_LastValue => ValueBus_229_LastValue,
        OutputValueA_Value => ValueBus_229_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_230_enable,
        OutputValueB_Value => ValueBus_230_Value,
        OutputValueB_LastValue => ValueBus_230_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_16_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_16_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_16_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_16_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_17_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_17_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_17_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_17_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#4 signals
    Max_4: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_229_enable,
        InputA_Value => ValueBus_229_Value,
        InputA_LastValue => ValueBus_229_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_230_enable,
        InputB_Value => ValueBus_230_Value,
        InputB_LastValue => ValueBus_230_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_240_enable(1),
        Output_Value => ValueBus_240_Value(1),
        Output_LastValue => ValueBus_240_LastValue(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#9 signals
    TrueDualPortMemory_1_Single_9: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 80) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#9 signals
    InputCtrl_ParFilter_9: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(9, 5),
        reset_channelWidth => TO_UNSIGNED(9, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(9, 5),
        reset_newWidth => TO_UNSIGNED(9, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_strideRow => TO_UNSIGNED(3, 2),
        reset_strideCol => TO_UNSIGNED(3, 2),
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
        Input_enable => ValueBus_223_enable,
        Input_Value => ValueBus_223_Value,
        Input_LastValue => ValueBus_223_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_18_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_19_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_232_enable,
        OutputValueA_LastValue => ValueBus_232_LastValue,
        OutputValueA_Value => ValueBus_232_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_233_enable,
        OutputValueB_Value => ValueBus_233_Value,
        OutputValueB_LastValue => ValueBus_233_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_18_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_18_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_18_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_18_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_19_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_19_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_19_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_19_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#5 signals
    Max_5: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_232_enable,
        InputA_Value => ValueBus_232_Value,
        InputA_LastValue => ValueBus_232_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_233_enable,
        InputB_Value => ValueBus_233_Value,
        InputB_LastValue => ValueBus_233_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_240_enable(2),
        Output_Value => ValueBus_240_Value(2),
        Output_LastValue => ValueBus_240_LastValue(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#10 signals
    TrueDualPortMemory_1_Single_10: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 80) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_20_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_20_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_20_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_20_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_21_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_21_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_21_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_21_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_20_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_21_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#10 signals
    InputCtrl_ParFilter_10: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(9, 5),
        reset_channelWidth => TO_UNSIGNED(9, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(9, 5),
        reset_newWidth => TO_UNSIGNED(9, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_strideRow => TO_UNSIGNED(3, 2),
        reset_strideCol => TO_UNSIGNED(3, 2),
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
        Input_enable => ValueBus_224_enable,
        Input_Value => ValueBus_224_Value,
        Input_LastValue => ValueBus_224_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_20_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_21_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_235_enable,
        OutputValueA_LastValue => ValueBus_235_LastValue,
        OutputValueA_Value => ValueBus_235_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_236_enable,
        OutputValueB_Value => ValueBus_236_Value,
        OutputValueB_LastValue => ValueBus_236_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_20_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_20_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_20_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_20_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_21_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_21_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_21_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_21_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_10,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#6 signals
    Max_6: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_235_enable,
        InputA_Value => ValueBus_235_Value,
        InputA_LastValue => ValueBus_235_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_236_enable,
        InputB_Value => ValueBus_236_Value,
        InputB_LastValue => ValueBus_236_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_240_enable(3),
        Output_Value => ValueBus_240_Value(3),
        Output_LastValue => ValueBus_240_LastValue(3),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#11 signals
    TrueDualPortMemory_1_Single_11: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 80) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_22_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_22_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_22_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_22_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_23_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_23_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_23_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_23_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_22_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_23_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#11 signals
    InputCtrl_ParFilter_11: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(9, 5),
        reset_channelWidth => TO_UNSIGNED(9, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(9, 5),
        reset_newWidth => TO_UNSIGNED(9, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 3),
        reset_kernelWidth => TO_UNSIGNED(3, 3),
        reset_strideRow => TO_UNSIGNED(3, 2),
        reset_strideCol => TO_UNSIGNED(3, 2),
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
        Input_enable => ValueBus_225_enable,
        Input_Value => ValueBus_225_Value,
        Input_LastValue => ValueBus_225_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_22_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_23_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_238_enable,
        OutputValueA_LastValue => ValueBus_238_LastValue,
        OutputValueA_Value => ValueBus_238_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_239_enable,
        OutputValueB_Value => ValueBus_239_Value,
        OutputValueB_LastValue => ValueBus_239_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_22_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_22_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_22_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_22_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_23_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_23_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_23_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_23_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_11,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#7 signals
    Max_7: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_238_enable,
        InputA_Value => ValueBus_238_Value,
        InputA_LastValue => ValueBus_238_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_239_enable,
        InputB_Value => ValueBus_239_Value,
        InputB_LastValue => ValueBus_239_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_240_enable(4),
        Output_Value => ValueBus_240_Value(4),
        Output_LastValue => ValueBus_240_LastValue(4),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#12 signals
    TrueDualPortMemory_1_Single_12: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 44) => (0 => std_logic_vector'(x"be9d9a79"), 1 => std_logic_vector'(x"3eb435f9"), 2 => std_logic_vector'(x"3e2a2596"), 3 => std_logic_vector'(x"beabc399"), 4 => std_logic_vector'(x"3e0f5df5"), 5 => std_logic_vector'(x"bea61d0d"), 6 => std_logic_vector'(x"be444f7d"), 7 => std_logic_vector'(x"3ea74215"), 8 => std_logic_vector'(x"bd4a46fe"), 9 => std_logic_vector'(x"bf0dc9e8"), 10 => std_logic_vector'(x"3e63c4be"), 11 => std_logic_vector'(x"3e652c1e"), 12 => std_logic_vector'(x"be72528c"), 13 => std_logic_vector'(x"bd584312"), 14 => std_logic_vector'(x"be6831fc"), 15 => std_logic_vector'(x"be3e4cf9"), 16 => std_logic_vector'(x"bdb88cd4"), 17 => std_logic_vector'(x"be5cea4c"), 18 => std_logic_vector'(x"3de0b1fd"), 19 => std_logic_vector'(x"be3519d2"), 20 => std_logic_vector'(x"ba082291"), 21 => std_logic_vector'(x"bef2e16b"), 22 => std_logic_vector'(x"be4a9275"), 23 => std_logic_vector'(x"be95049d"), 24 => std_logic_vector'(x"bc80b4dd"), 25 => std_logic_vector'(x"becd102c"), 26 => std_logic_vector'(x"be9fcb7e"), 27 => std_logic_vector'(x"be1ae424"), 28 => std_logic_vector'(x"3efc1892"), 29 => std_logic_vector'(x"3e79ea87"), 30 => std_logic_vector'(x"3e4fe060"), 31 => std_logic_vector'(x"3c8ae74d"), 32 => std_logic_vector'(x"3e83c3a2"), 33 => std_logic_vector'(x"3e23a13b"), 34 => std_logic_vector'(x"3e194862"), 35 => std_logic_vector'(x"bc3145a4"), 36 => std_logic_vector'(x"3d127e67"), 37 => std_logic_vector'(x"3e02882d"), 38 => std_logic_vector'(x"bed98fcf"), 39 => std_logic_vector'(x"3d8a5985"), 40 => std_logic_vector'(x"3e89c441"), 41 => std_logic_vector'(x"bdae4b27"), 42 => std_logic_vector'(x"3e7c2888"), 43 => std_logic_vector'(x"3efce46c"), 44 => std_logic_vector'(x"3cd14511"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_24_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_24_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_24_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_24_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_25_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_25_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_25_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_25_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_24_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_25_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_12,
        ENB => ENB,
        RST => RST
    );

    -- Entity NodeCtrl_type00#0 signals
    NodeCtrl_type00_0: entity work.CNN_NodeCtrl_type00
    generic map(
        reset_numInChannels => TO_UNSIGNED(5, 3),
        reset_channelHeight => TO_UNSIGNED(3, 4),
        reset_channelWidth => TO_UNSIGNED(3, 4),
        reset_j => TO_UNSIGNED(0, 4),
        reset_adress => TO_UNSIGNED(0, 6),
        reset_k => TO_UNSIGNED(0, 6),
        reset_x => TO_UNSIGNED(0, 6),
        reset_i => TO_UNSIGNED(0, 6),
        reset_vhdl_buffer (0 to 44) => (others => std_logic_vector'(x"00000000")),
        reset_ramValid => '0',
        reset_Input_Length => TO_SIGNED(5, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_240_enable(0),
        Input_enable(1) => ValueBus_240_enable(1),
        Input_enable(2) => ValueBus_240_enable(2),
        Input_enable(3) => ValueBus_240_enable(3),
        Input_enable(4) => ValueBus_240_enable(4),
        Input_Value(0) => ValueBus_240_Value(0),
        Input_Value(1) => ValueBus_240_Value(1),
        Input_Value(2) => ValueBus_240_Value(2),
        Input_Value(3) => ValueBus_240_Value(3),
        Input_Value(4) => ValueBus_240_Value(4),
        Input_LastValue(0) => ValueBus_240_LastValue(0),
        Input_LastValue(1) => ValueBus_240_LastValue(1),
        Input_LastValue(2) => ValueBus_240_LastValue(2),
        Input_LastValue(3) => ValueBus_240_LastValue(3),
        Input_LastValue(4) => ValueBus_240_LastValue(4),

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_read_Data => TrueDualPortMemory_1_IReadResult_Single_24_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_241_enable,
        OutputValue_LastValue => ValueBus_241_LastValue,
        OutputValue_Value => ValueBus_241_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_242_enable,
        OutputWeight_Value => ValueBus_242_Value,
        OutputWeight_LastValue => ValueBus_242_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrl_Enabled => TrueDualPortMemory_1_IControl_Single_24_Enabled,
        ram_ctrl_Address => TrueDualPortMemory_1_IControl_Single_24_Address,
        ram_ctrl_IsWriting => TrueDualPortMemory_1_IControl_Single_24_IsWriting,
        ram_ctrl_Data => TrueDualPortMemory_1_IControl_Single_24_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_NodeCtrl_type00_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#36 signals
    WeightValue_36: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_241_enable,
        InputValue_Value => ValueBus_241_Value,
        InputValue_LastValue => ValueBus_241_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_242_enable,
        InputWeight_Value => ValueBus_242_Value,
        InputWeight_LastValue => ValueBus_242_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_243_enable,
        Output_LastValue => ValueBus_243_LastValue,
        Output_Value => ValueBus_243_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_36,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#26 signals
    PlusCtrl_26: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_243_enable,
        Input_Value => ValueBus_243_Value,
        Input_LastValue => ValueBus_243_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_244_enable,
        Output_LastValue => ValueBus_244_LastValue,
        Output_Value => ValueBus_244_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_26,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#24 signals
    Bias_24: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e240474")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_244_enable,
        Input_Value => ValueBus_244_Value,
        Input_LastValue => ValueBus_244_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_245_enable,
        Output_LastValue => ValueBus_245_LastValue,
        Output_Value => ValueBus_245_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_24,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#13 signals
    TrueDualPortMemory_1_Single_13: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 44) => (0 => std_logic_vector'(x"3e9fe995"), 1 => std_logic_vector'(x"beb86dab"), 2 => std_logic_vector'(x"be062434"), 3 => std_logic_vector'(x"3e8f6051"), 4 => std_logic_vector'(x"bc95dc47"), 5 => std_logic_vector'(x"3e9d8abf"), 6 => std_logic_vector'(x"3d23ceed"), 7 => std_logic_vector'(x"bed11e9f"), 8 => std_logic_vector'(x"3e762654"), 9 => std_logic_vector'(x"3f049909"), 10 => std_logic_vector'(x"be389ec2"), 11 => std_logic_vector'(x"be92c335"), 12 => std_logic_vector'(x"3e272e59"), 13 => std_logic_vector'(x"bcf4b94f"), 14 => std_logic_vector'(x"3e2c9c72"), 15 => std_logic_vector'(x"3e4516b6"), 16 => std_logic_vector'(x"bcba92f1"), 17 => std_logic_vector'(x"3eaf4c24"), 18 => std_logic_vector'(x"3cca5f7c"), 19 => std_logic_vector'(x"3d9df7c3"), 20 => std_logic_vector'(x"3e00b693"), 21 => std_logic_vector'(x"3ee762e4"), 22 => std_logic_vector'(x"3ec50729"), 23 => std_logic_vector'(x"3e9b9456"), 24 => std_logic_vector'(x"3d844736"), 25 => std_logic_vector'(x"3e9bbb14"), 26 => std_logic_vector'(x"3e8f9d04"), 27 => std_logic_vector'(x"3db8746d"), 28 => std_logic_vector'(x"beff1b3c"), 29 => std_logic_vector'(x"be54e8e3"), 30 => std_logic_vector'(x"be155e0b"), 31 => std_logic_vector'(x"3d994e20"), 32 => std_logic_vector'(x"bdcae18d"), 33 => std_logic_vector'(x"bdd0e531"), 34 => std_logic_vector'(x"be78a571"), 35 => std_logic_vector'(x"bb910240"), 36 => std_logic_vector'(x"be56426b"), 37 => std_logic_vector'(x"be4fc9ad"), 38 => std_logic_vector'(x"3ed2d273"), 39 => std_logic_vector'(x"bd44023c"), 40 => std_logic_vector'(x"be5c6994"), 41 => std_logic_vector'(x"3e3a0e4a"), 42 => std_logic_vector'(x"be748744"), 43 => std_logic_vector'(x"bf01c0a9"), 44 => std_logic_vector'(x"bdc240d3"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_26_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_26_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_26_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_26_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_27_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_27_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_27_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_27_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_26_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_27_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_13,
        ENB => ENB,
        RST => RST
    );

    -- Entity NodeCtrl_type00#1 signals
    NodeCtrl_type00_1: entity work.CNN_NodeCtrl_type00
    generic map(
        reset_numInChannels => TO_UNSIGNED(5, 3),
        reset_channelHeight => TO_UNSIGNED(3, 4),
        reset_channelWidth => TO_UNSIGNED(3, 4),
        reset_j => TO_UNSIGNED(0, 4),
        reset_adress => TO_UNSIGNED(0, 6),
        reset_k => TO_UNSIGNED(0, 6),
        reset_x => TO_UNSIGNED(0, 6),
        reset_i => TO_UNSIGNED(0, 6),
        reset_vhdl_buffer (0 to 44) => (others => std_logic_vector'(x"00000000")),
        reset_ramValid => '0',
        reset_Input_Length => TO_SIGNED(5, 32)
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable(0) => ValueBus_240_enable(0),
        Input_enable(1) => ValueBus_240_enable(1),
        Input_enable(2) => ValueBus_240_enable(2),
        Input_enable(3) => ValueBus_240_enable(3),
        Input_enable(4) => ValueBus_240_enable(4),
        Input_Value(0) => ValueBus_240_Value(0),
        Input_Value(1) => ValueBus_240_Value(1),
        Input_Value(2) => ValueBus_240_Value(2),
        Input_Value(3) => ValueBus_240_Value(3),
        Input_Value(4) => ValueBus_240_Value(4),
        Input_LastValue(0) => ValueBus_240_LastValue(0),
        Input_LastValue(1) => ValueBus_240_LastValue(1),
        Input_LastValue(2) => ValueBus_240_LastValue(2),
        Input_LastValue(3) => ValueBus_240_LastValue(3),
        Input_LastValue(4) => ValueBus_240_LastValue(4),

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_read_Data => TrueDualPortMemory_1_IReadResult_Single_26_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_246_enable,
        OutputValue_LastValue => ValueBus_246_LastValue,
        OutputValue_Value => ValueBus_246_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_247_enable,
        OutputWeight_Value => ValueBus_247_Value,
        OutputWeight_LastValue => ValueBus_247_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrl_Enabled => TrueDualPortMemory_1_IControl_Single_26_Enabled,
        ram_ctrl_Address => TrueDualPortMemory_1_IControl_Single_26_Address,
        ram_ctrl_IsWriting => TrueDualPortMemory_1_IControl_Single_26_IsWriting,
        ram_ctrl_Data => TrueDualPortMemory_1_IControl_Single_26_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_NodeCtrl_type00_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#37 signals
    WeightValue_37: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_246_enable,
        InputValue_Value => ValueBus_246_Value,
        InputValue_LastValue => ValueBus_246_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_247_enable,
        InputWeight_Value => ValueBus_247_Value,
        InputWeight_LastValue => ValueBus_247_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_248_enable,
        Output_LastValue => ValueBus_248_LastValue,
        Output_Value => ValueBus_248_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_37,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#27 signals
    PlusCtrl_27: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_248_enable,
        Input_Value => ValueBus_248_Value,
        Input_LastValue => ValueBus_248_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_249_enable,
        Output_LastValue => ValueBus_249_LastValue,
        Output_Value => ValueBus_249_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_27,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#25 signals
    Bias_25: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bd097e62")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_249_enable,
        Input_Value => ValueBus_249_Value,
        Input_LastValue => ValueBus_249_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_250_enable,
        Output_LastValue => ValueBus_250_LastValue,
        Output_Value => ValueBus_250_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_25,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl#5 signals
    ValueArrayCtrl_5: entity work.CNN_ValueArrayCtrl
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
        Input_enable(0) => ValueBus_253_enable(0),
        Input_enable(1) => ValueBus_253_enable(1),
        Input_Value(0) => ValueBus_253_Value(0),
        Input_Value(1) => ValueBus_253_Value(1),
        Input_LastValue(0) => ValueBus_253_LastValue(0),
        Input_LastValue(1) => ValueBus_253_LastValue(1),

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_251_enable,
        Output_LastValue => ValueBus_251_LastValue,
        Output_Value => ValueBus_251_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#28 signals
    PlusCtrl_28: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_251_enable,
        Input_Value => ValueBus_251_Value,
        Input_LastValue => ValueBus_251_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_254_enable,
        Output_LastValue => ValueBus_254_LastValue,
        Output_Value => ValueBus_254_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_28,
        ENB => ENB,
        RST => RST
    );

    -- Entity Exp#0 signals
    Exp_0: entity work.CNN_Exp
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_245_enable,
        Input_Value => ValueBus_245_Value,
        Input_LastValue => ValueBus_245_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_253_Value(0),
        Output_enable => ValueBus_253_enable(0),
        Output_LastValue => ValueBus_253_LastValue(0),

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
        Input_enable => ValueBus_250_enable,
        Input_Value => ValueBus_250_Value,
        Input_LastValue => ValueBus_250_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_253_Value(1),
        Output_enable => ValueBus_253_enable(1),
        Output_LastValue => ValueBus_253_LastValue(1),

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
        InputValue_enable => ValueBus_253_enable(0),
        InputValue_Value => ValueBus_253_Value(0),
        InputValue_LastValue => ValueBus_253_LastValue(0),

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_254_enable,
        InputWeight_Value => ValueBus_254_Value,
        InputWeight_LastValue => ValueBus_254_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_255_enable,
        Output_LastValue => ValueBus_255_LastValue,
        Output_Value => ValueBus_255_Value,

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
        InputValue_enable => ValueBus_253_enable(1),
        InputValue_Value => ValueBus_253_Value(1),
        InputValue_LastValue => ValueBus_253_LastValue(1),

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_254_enable,
        InputWeight_Value => ValueBus_254_Value,
        InputWeight_LastValue => ValueBus_254_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_256_enable,
        Output_LastValue => ValueBus_256_LastValue,
        Output_Value => ValueBus_256_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_DivideValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_TrueDualPortMemory_1_Single_0 when FIN_InputCtrl_ParFilter_0 = FIN_TrueDualPortMemory_1_Single_0 AND FIN_ValueArrayCtrl_single_0 = FIN_InputCtrl_ParFilter_0 AND FIN_PlusCtrl_0 = FIN_ValueArrayCtrl_single_0 AND FIN_Bias_0 = FIN_PlusCtrl_0 AND FIN_KernelCtrl_0 = FIN_Bias_0 AND FIN_WeightValue_0 = FIN_KernelCtrl_0 AND FIN_WeightValue_1 = FIN_WeightValue_0 AND FIN_PlusTwo_0 = FIN_WeightValue_1 AND FIN_PlusCtrl_1 = FIN_PlusTwo_0 AND FIN_ValueArrayCtrl_single_1 = FIN_PlusCtrl_1 AND FIN_PlusCtrl_2 = FIN_ValueArrayCtrl_single_1 AND FIN_Bias_1 = FIN_PlusCtrl_2 AND FIN_KernelCtrl_1 = FIN_Bias_1 AND FIN_WeightValue_2 = FIN_KernelCtrl_1 AND FIN_WeightValue_3 = FIN_WeightValue_2 AND FIN_PlusTwo_1 = FIN_WeightValue_3 AND FIN_PlusCtrl_3 = FIN_PlusTwo_1 AND FIN_ValueArrayCtrl_single_2 = FIN_PlusCtrl_3 AND FIN_PlusCtrl_4 = FIN_ValueArrayCtrl_single_2 AND FIN_Bias_2 = FIN_PlusCtrl_4 AND FIN_KernelCtrl_2 = FIN_Bias_2 AND FIN_WeightValue_4 = FIN_KernelCtrl_2 AND FIN_WeightValue_5 = FIN_WeightValue_4 AND FIN_PlusTwo_2 = FIN_WeightValue_5 AND FIN_PlusCtrl_5 = FIN_PlusTwo_2 AND FIN_Bias_3 = FIN_PlusCtrl_5 AND FIN_Multiply_0 = FIN_Bias_3 AND FIN_Multiply_1 = FIN_Multiply_0 AND FIN_Bias_4 = FIN_Multiply_1 AND FIN_Bias_5 = FIN_Bias_4 AND FIN_Multiply_2 = FIN_Bias_5 AND FIN_Multiply_3 = FIN_Multiply_2 AND FIN_Bias_6 = FIN_Multiply_3 AND FIN_Bias_7 = FIN_Bias_6 AND FIN_Multiply_4 = FIN_Bias_7 AND FIN_Multiply_5 = FIN_Multiply_4 AND FIN_Bias_8 = FIN_Multiply_5 AND FIN_ReluCore_0 = FIN_Bias_8 AND FIN_ReluCore_1 = FIN_ReluCore_0 AND FIN_ReluCore_2 = FIN_ReluCore_1 AND FIN_TrueDualPortMemory_1_Single_1 = FIN_ReluCore_2 AND FIN_InputCtrl_ParFilter_1 = FIN_TrueDualPortMemory_1_Single_1 AND FIN_Max_0 = FIN_InputCtrl_ParFilter_1 AND FIN_TrueDualPortMemory_1_Single_2 = FIN_Max_0 AND FIN_InputCtrl_ParFilter_2 = FIN_TrueDualPortMemory_1_Single_2 AND FIN_Max_1 = FIN_InputCtrl_ParFilter_2 AND FIN_TrueDualPortMemory_1_Single_3 = FIN_Max_1 AND FIN_InputCtrl_ParFilter_3 = FIN_TrueDualPortMemory_1_Single_3 AND FIN_Max_2 = FIN_InputCtrl_ParFilter_3 AND FIN_TrueDualPortMemory_1_Single_4 = FIN_Max_2 AND FIN_InputCtrl_ParFilter_4 = FIN_TrueDualPortMemory_1_Single_4 AND FIN_TrueDualPortMemory_1_Single_5 = FIN_InputCtrl_ParFilter_4 AND FIN_InputCtrl_ParFilter_5 = FIN_TrueDualPortMemory_1_Single_5 AND FIN_TrueDualPortMemory_1_Single_6 = FIN_InputCtrl_ParFilter_5 AND FIN_InputCtrl_ParFilter_6 = FIN_TrueDualPortMemory_1_Single_6 AND FIN_ValueArrayCtrl_0 = FIN_InputCtrl_ParFilter_6 AND FIN_PlusCtrl_6 = FIN_ValueArrayCtrl_0 AND FIN_Bias_9 = FIN_PlusCtrl_6 AND FIN_KernelCtrl_3 = FIN_Bias_9 AND FIN_WeightValue_6 = FIN_KernelCtrl_3 AND FIN_WeightValue_7 = FIN_WeightValue_6 AND FIN_PlusTwo_3 = FIN_WeightValue_7 AND FIN_PlusCtrl_7 = FIN_PlusTwo_3 AND FIN_KernelCtrl_4 = FIN_PlusCtrl_7 AND FIN_WeightValue_8 = FIN_KernelCtrl_4 AND FIN_WeightValue_9 = FIN_WeightValue_8 AND FIN_PlusTwo_4 = FIN_WeightValue_9 AND FIN_PlusCtrl_8 = FIN_PlusTwo_4 AND FIN_KernelCtrl_5 = FIN_PlusCtrl_8 AND FIN_WeightValue_10 = FIN_KernelCtrl_5 AND FIN_WeightValue_11 = FIN_WeightValue_10 AND FIN_PlusTwo_5 = FIN_WeightValue_11 AND FIN_PlusCtrl_9 = FIN_PlusTwo_5 AND FIN_ValueArrayCtrl_1 = FIN_PlusCtrl_9 AND FIN_PlusCtrl_10 = FIN_ValueArrayCtrl_1 AND FIN_Bias_10 = FIN_PlusCtrl_10 AND FIN_KernelCtrl_6 = FIN_Bias_10 AND FIN_WeightValue_12 = FIN_KernelCtrl_6 AND FIN_WeightValue_13 = FIN_WeightValue_12 AND FIN_PlusTwo_6 = FIN_WeightValue_13 AND FIN_PlusCtrl_11 = FIN_PlusTwo_6 AND FIN_KernelCtrl_7 = FIN_PlusCtrl_11 AND FIN_WeightValue_14 = FIN_KernelCtrl_7 AND FIN_WeightValue_15 = FIN_WeightValue_14 AND FIN_PlusTwo_7 = FIN_WeightValue_15 AND FIN_PlusCtrl_12 = FIN_PlusTwo_7 AND FIN_KernelCtrl_8 = FIN_PlusCtrl_12 AND FIN_WeightValue_16 = FIN_KernelCtrl_8 AND FIN_WeightValue_17 = FIN_WeightValue_16 AND FIN_PlusTwo_8 = FIN_WeightValue_17 AND FIN_PlusCtrl_13 = FIN_PlusTwo_8 AND FIN_ValueArrayCtrl_2 = FIN_PlusCtrl_13 AND FIN_PlusCtrl_14 = FIN_ValueArrayCtrl_2 AND FIN_Bias_11 = FIN_PlusCtrl_14 AND FIN_KernelCtrl_9 = FIN_Bias_11 AND FIN_WeightValue_18 = FIN_KernelCtrl_9 AND FIN_WeightValue_19 = FIN_WeightValue_18 AND FIN_PlusTwo_9 = FIN_WeightValue_19 AND FIN_PlusCtrl_15 = FIN_PlusTwo_9 AND FIN_KernelCtrl_10 = FIN_PlusCtrl_15 AND FIN_WeightValue_20 = FIN_KernelCtrl_10 AND FIN_WeightValue_21 = FIN_WeightValue_20 AND FIN_PlusTwo_10 = FIN_WeightValue_21 AND FIN_PlusCtrl_16 = FIN_PlusTwo_10 AND FIN_KernelCtrl_11 = FIN_PlusCtrl_16 AND FIN_WeightValue_22 = FIN_KernelCtrl_11 AND FIN_WeightValue_23 = FIN_WeightValue_22 AND FIN_PlusTwo_11 = FIN_WeightValue_23 AND FIN_PlusCtrl_17 = FIN_PlusTwo_11 AND FIN_ValueArrayCtrl_3 = FIN_PlusCtrl_17 AND FIN_PlusCtrl_18 = FIN_ValueArrayCtrl_3 AND FIN_Bias_12 = FIN_PlusCtrl_18 AND FIN_KernelCtrl_12 = FIN_Bias_12 AND FIN_WeightValue_24 = FIN_KernelCtrl_12 AND FIN_WeightValue_25 = FIN_WeightValue_24 AND FIN_PlusTwo_12 = FIN_WeightValue_25 AND FIN_PlusCtrl_19 = FIN_PlusTwo_12 AND FIN_KernelCtrl_13 = FIN_PlusCtrl_19 AND FIN_WeightValue_26 = FIN_KernelCtrl_13 AND FIN_WeightValue_27 = FIN_WeightValue_26 AND FIN_PlusTwo_13 = FIN_WeightValue_27 AND FIN_PlusCtrl_20 = FIN_PlusTwo_13 AND FIN_KernelCtrl_14 = FIN_PlusCtrl_20 AND FIN_WeightValue_28 = FIN_KernelCtrl_14 AND FIN_WeightValue_29 = FIN_WeightValue_28 AND FIN_PlusTwo_14 = FIN_WeightValue_29 AND FIN_PlusCtrl_21 = FIN_PlusTwo_14 AND FIN_ValueArrayCtrl_4 = FIN_PlusCtrl_21 AND FIN_PlusCtrl_22 = FIN_ValueArrayCtrl_4 AND FIN_Bias_13 = FIN_PlusCtrl_22 AND FIN_KernelCtrl_15 = FIN_Bias_13 AND FIN_WeightValue_30 = FIN_KernelCtrl_15 AND FIN_WeightValue_31 = FIN_WeightValue_30 AND FIN_PlusTwo_15 = FIN_WeightValue_31 AND FIN_PlusCtrl_23 = FIN_PlusTwo_15 AND FIN_KernelCtrl_16 = FIN_PlusCtrl_23 AND FIN_WeightValue_32 = FIN_KernelCtrl_16 AND FIN_WeightValue_33 = FIN_WeightValue_32 AND FIN_PlusTwo_16 = FIN_WeightValue_33 AND FIN_PlusCtrl_24 = FIN_PlusTwo_16 AND FIN_KernelCtrl_17 = FIN_PlusCtrl_24 AND FIN_WeightValue_34 = FIN_KernelCtrl_17 AND FIN_WeightValue_35 = FIN_WeightValue_34 AND FIN_PlusTwo_17 = FIN_WeightValue_35 AND FIN_PlusCtrl_25 = FIN_PlusTwo_17 AND FIN_Bias_14 = FIN_PlusCtrl_25 AND FIN_Multiply_6 = FIN_Bias_14 AND FIN_Multiply_7 = FIN_Multiply_6 AND FIN_Bias_15 = FIN_Multiply_7 AND FIN_Bias_16 = FIN_Bias_15 AND FIN_Multiply_8 = FIN_Bias_16 AND FIN_Multiply_9 = FIN_Multiply_8 AND FIN_Bias_17 = FIN_Multiply_9 AND FIN_Bias_18 = FIN_Bias_17 AND FIN_Multiply_10 = FIN_Bias_18 AND FIN_Multiply_11 = FIN_Multiply_10 AND FIN_Bias_19 = FIN_Multiply_11 AND FIN_Bias_20 = FIN_Bias_19 AND FIN_Multiply_12 = FIN_Bias_20 AND FIN_Multiply_13 = FIN_Multiply_12 AND FIN_Bias_21 = FIN_Multiply_13 AND FIN_Bias_22 = FIN_Bias_21 AND FIN_Multiply_14 = FIN_Bias_22 AND FIN_Multiply_15 = FIN_Multiply_14 AND FIN_Bias_23 = FIN_Multiply_15 AND FIN_ReluCore_3 = FIN_Bias_23 AND FIN_ReluCore_4 = FIN_ReluCore_3 AND FIN_ReluCore_5 = FIN_ReluCore_4 AND FIN_ReluCore_6 = FIN_ReluCore_5 AND FIN_ReluCore_7 = FIN_ReluCore_6 AND FIN_TrueDualPortMemory_1_Single_7 = FIN_ReluCore_7 AND FIN_InputCtrl_ParFilter_7 = FIN_TrueDualPortMemory_1_Single_7 AND FIN_Max_3 = FIN_InputCtrl_ParFilter_7 AND FIN_TrueDualPortMemory_1_Single_8 = FIN_Max_3 AND FIN_InputCtrl_ParFilter_8 = FIN_TrueDualPortMemory_1_Single_8 AND FIN_Max_4 = FIN_InputCtrl_ParFilter_8 AND FIN_TrueDualPortMemory_1_Single_9 = FIN_Max_4 AND FIN_InputCtrl_ParFilter_9 = FIN_TrueDualPortMemory_1_Single_9 AND FIN_Max_5 = FIN_InputCtrl_ParFilter_9 AND FIN_TrueDualPortMemory_1_Single_10 = FIN_Max_5 AND FIN_InputCtrl_ParFilter_10 = FIN_TrueDualPortMemory_1_Single_10 AND FIN_Max_6 = FIN_InputCtrl_ParFilter_10 AND FIN_TrueDualPortMemory_1_Single_11 = FIN_Max_6 AND FIN_InputCtrl_ParFilter_11 = FIN_TrueDualPortMemory_1_Single_11 AND FIN_Max_7 = FIN_InputCtrl_ParFilter_11 AND FIN_TrueDualPortMemory_1_Single_12 = FIN_Max_7 AND FIN_NodeCtrl_type00_0 = FIN_TrueDualPortMemory_1_Single_12 AND FIN_WeightValue_36 = FIN_NodeCtrl_type00_0 AND FIN_PlusCtrl_26 = FIN_WeightValue_36 AND FIN_Bias_24 = FIN_PlusCtrl_26 AND FIN_TrueDualPortMemory_1_Single_13 = FIN_Bias_24 AND FIN_NodeCtrl_type00_1 = FIN_TrueDualPortMemory_1_Single_13 AND FIN_WeightValue_37 = FIN_NodeCtrl_type00_1 AND FIN_PlusCtrl_27 = FIN_WeightValue_37 AND FIN_Bias_25 = FIN_PlusCtrl_27 AND FIN_ValueArrayCtrl_5 = FIN_Bias_25 AND FIN_PlusCtrl_28 = FIN_ValueArrayCtrl_5 AND FIN_Exp_0 = FIN_PlusCtrl_28 AND FIN_Exp_1 = FIN_Exp_0 AND FIN_DivideValue_0 = FIN_Exp_1 AND FIN_DivideValue_1 = FIN_DivideValue_0;

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
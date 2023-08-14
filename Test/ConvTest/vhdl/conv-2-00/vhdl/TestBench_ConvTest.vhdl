library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

--library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;

--library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

use work.csv_util.all;

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity ConvTest_tb is
end;

architecture TestBench of ConvTest_tb is

    signal CLOCK : Std_logic;
    signal StopClock : BOOLEAN;
    signal RESET : Std_logic;
    signal ENABLE : Std_logic;

    signal TrueDualPortMemory_1_IControl_Single_0_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_0_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_0_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_0_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_1_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_1_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_1_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_1_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_2_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_2_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_2_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_2_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_3_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_3_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_3_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_3_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_4_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_4_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_4_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_4_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_5_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_5_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_5_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_5_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IReadResult_Single_0_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_1_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_2_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_3_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_4_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_5_Data : T_SYSTEM_FLOAT;
    signal ValueBus_0_enable : T_SYSTEM_BOOL;
    signal ValueBus_0_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_0_Value : T_SYSTEM_FLOAT;
    signal ValueBus_1_enable : T_SYSTEM_BOOL;
    signal ValueBus_1_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_1_Value : T_SYSTEM_FLOAT;
    signal ValueBus_100_enable : T_SYSTEM_BOOL;
    signal ValueBus_100_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_100_Value : T_SYSTEM_FLOAT;
    signal ValueBus_101_enable : T_SYSTEM_BOOL;
    signal ValueBus_101_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_101_Value : T_SYSTEM_FLOAT;
    signal ValueBus_102_enable : T_SYSTEM_BOOL;
    signal ValueBus_102_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_102_Value : T_SYSTEM_FLOAT;
    signal ValueBus_103_enable : T_SYSTEM_BOOL;
    signal ValueBus_103_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_103_Value : T_SYSTEM_FLOAT;
    signal ValueBus_104_enable : T_SYSTEM_BOOL;
    signal ValueBus_104_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_104_Value : T_SYSTEM_FLOAT;
    signal ValueBus_105_enable : T_SYSTEM_BOOL;
    signal ValueBus_105_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_105_Value : T_SYSTEM_FLOAT;
    signal ValueBus_106_enable : T_SYSTEM_BOOL;
    signal ValueBus_106_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_106_Value : T_SYSTEM_FLOAT;
    signal ValueBus_107_enable : T_SYSTEM_BOOL;
    signal ValueBus_107_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_107_Value : T_SYSTEM_FLOAT;
    signal ValueBus_108_enable : T_SYSTEM_BOOL;
    signal ValueBus_108_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_108_Value : T_SYSTEM_FLOAT;
    signal ValueBus_109_enable : T_SYSTEM_BOOL;
    signal ValueBus_109_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_109_Value : T_SYSTEM_FLOAT;
    signal ValueBus_110_enable : T_SYSTEM_BOOL;
    signal ValueBus_110_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_110_Value : T_SYSTEM_FLOAT;
    signal ValueBus_111_enable : T_SYSTEM_BOOL;
    signal ValueBus_111_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_111_Value : T_SYSTEM_FLOAT;
    signal ValueBus_112_enable : T_SYSTEM_BOOL;
    signal ValueBus_112_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_112_Value : T_SYSTEM_FLOAT;
    signal ValueBus_113_enable : T_SYSTEM_BOOL;
    signal ValueBus_113_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_113_Value : T_SYSTEM_FLOAT;
    signal ValueBus_114_enable : T_SYSTEM_BOOL;
    signal ValueBus_114_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_114_Value : T_SYSTEM_FLOAT;
    signal ValueBus_115_enable : T_SYSTEM_BOOL;
    signal ValueBus_115_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_115_Value : T_SYSTEM_FLOAT;
    signal ValueBus_116_enable : T_SYSTEM_BOOL;
    signal ValueBus_116_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_116_Value : T_SYSTEM_FLOAT;
    signal ValueBus_117_enable : T_SYSTEM_BOOL;
    signal ValueBus_117_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_117_Value : T_SYSTEM_FLOAT;
    signal ValueBus_12_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_12_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_12_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_120_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_120_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_120_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_121_enable : T_SYSTEM_BOOL;
    signal ValueBus_121_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_121_Value : T_SYSTEM_FLOAT;
    signal ValueBus_122_enable : T_SYSTEM_BOOL;
    signal ValueBus_122_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_122_Value : T_SYSTEM_FLOAT;
    signal ValueBus_123_enable : T_SYSTEM_BOOL;
    signal ValueBus_123_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_123_Value : T_SYSTEM_FLOAT;
    signal ValueBus_124_enable : T_SYSTEM_BOOL;
    signal ValueBus_124_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_124_Value : T_SYSTEM_FLOAT;
    signal ValueBus_125_enable : T_SYSTEM_BOOL;
    signal ValueBus_125_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_125_Value : T_SYSTEM_FLOAT;
    signal ValueBus_126_enable : T_SYSTEM_BOOL;
    signal ValueBus_126_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_126_Value : T_SYSTEM_FLOAT;
    signal ValueBus_127_enable : T_SYSTEM_BOOL;
    signal ValueBus_127_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_127_Value : T_SYSTEM_FLOAT;
    signal ValueBus_128_enable : T_SYSTEM_BOOL;
    signal ValueBus_128_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_128_Value : T_SYSTEM_FLOAT;
    signal ValueBus_129_enable : T_SYSTEM_BOOL;
    signal ValueBus_129_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_129_Value : T_SYSTEM_FLOAT;
    signal ValueBus_13_enable : T_SYSTEM_BOOL;
    signal ValueBus_13_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_13_Value : T_SYSTEM_FLOAT;
    signal ValueBus_130_enable : T_SYSTEM_BOOL;
    signal ValueBus_130_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_130_Value : T_SYSTEM_FLOAT;
    signal ValueBus_131_enable : T_SYSTEM_BOOL;
    signal ValueBus_131_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_131_Value : T_SYSTEM_FLOAT;
    signal ValueBus_132_enable : T_SYSTEM_BOOL;
    signal ValueBus_132_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_132_Value : T_SYSTEM_FLOAT;
    signal ValueBus_133_enable : T_SYSTEM_BOOL;
    signal ValueBus_133_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_133_Value : T_SYSTEM_FLOAT;
    signal ValueBus_134_enable : T_SYSTEM_BOOL;
    signal ValueBus_134_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_134_Value : T_SYSTEM_FLOAT;
    signal ValueBus_135_enable : T_SYSTEM_BOOL;
    signal ValueBus_135_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_135_Value : T_SYSTEM_FLOAT;
    signal ValueBus_136_enable : T_SYSTEM_BOOL;
    signal ValueBus_136_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_136_Value : T_SYSTEM_FLOAT;
    signal ValueBus_137_enable : T_SYSTEM_BOOL;
    signal ValueBus_137_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_137_Value : T_SYSTEM_FLOAT;
    signal ValueBus_138_enable : T_SYSTEM_BOOL;
    signal ValueBus_138_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_138_Value : T_SYSTEM_FLOAT;
    signal ValueBus_139_enable : T_SYSTEM_BOOL;
    signal ValueBus_139_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_139_Value : T_SYSTEM_FLOAT;
    signal ValueBus_14_enable : T_SYSTEM_BOOL;
    signal ValueBus_14_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_14_Value : T_SYSTEM_FLOAT;
    signal ValueBus_140_enable : T_SYSTEM_BOOL;
    signal ValueBus_140_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_140_Value : T_SYSTEM_FLOAT;
    signal ValueBus_141_enable : T_SYSTEM_BOOL;
    signal ValueBus_141_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_141_Value : T_SYSTEM_FLOAT;
    signal ValueBus_142_enable : T_SYSTEM_BOOL;
    signal ValueBus_142_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_142_Value : T_SYSTEM_FLOAT;
    signal ValueBus_143_enable : T_SYSTEM_BOOL;
    signal ValueBus_143_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_143_Value : T_SYSTEM_FLOAT;
    signal ValueBus_15_enable : T_SYSTEM_BOOL;
    signal ValueBus_15_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_15_Value : T_SYSTEM_FLOAT;
    signal ValueBus_16_enable : T_SYSTEM_BOOL;
    signal ValueBus_16_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_16_Value : T_SYSTEM_FLOAT;
    signal ValueBus_17_enable : T_SYSTEM_BOOL;
    signal ValueBus_17_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_17_Value : T_SYSTEM_FLOAT;
    signal ValueBus_18_enable : T_SYSTEM_BOOL;
    signal ValueBus_18_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_18_Value : T_SYSTEM_FLOAT;
    signal ValueBus_19_enable : T_SYSTEM_BOOL;
    signal ValueBus_19_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_19_Value : T_SYSTEM_FLOAT;
    signal ValueBus_2_enable : T_SYSTEM_BOOL;
    signal ValueBus_2_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_2_Value : T_SYSTEM_FLOAT;
    signal ValueBus_20_enable : T_SYSTEM_BOOL;
    signal ValueBus_20_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_20_Value : T_SYSTEM_FLOAT;
    signal ValueBus_21_enable : T_SYSTEM_BOOL;
    signal ValueBus_21_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_21_Value : T_SYSTEM_FLOAT;
    signal ValueBus_22_enable : T_SYSTEM_BOOL;
    signal ValueBus_22_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_22_Value : T_SYSTEM_FLOAT;
    signal ValueBus_23_enable : T_SYSTEM_BOOL;
    signal ValueBus_23_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_23_Value : T_SYSTEM_FLOAT;
    signal ValueBus_24_enable : T_SYSTEM_BOOL;
    signal ValueBus_24_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_24_Value : T_SYSTEM_FLOAT;
    signal ValueBus_25_enable : T_SYSTEM_BOOL;
    signal ValueBus_25_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_25_Value : T_SYSTEM_FLOAT;
    signal ValueBus_26_enable : T_SYSTEM_BOOL;
    signal ValueBus_26_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_26_Value : T_SYSTEM_FLOAT;
    signal ValueBus_27_enable : T_SYSTEM_BOOL;
    signal ValueBus_27_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_27_Value : T_SYSTEM_FLOAT;
    signal ValueBus_28_enable : T_SYSTEM_BOOL;
    signal ValueBus_28_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_28_Value : T_SYSTEM_FLOAT;
    signal ValueBus_29_enable : T_SYSTEM_BOOL;
    signal ValueBus_29_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_29_Value : T_SYSTEM_FLOAT;
    signal ValueBus_3_enable : T_SYSTEM_BOOL;
    signal ValueBus_3_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_3_Value : T_SYSTEM_FLOAT;
    signal ValueBus_30_enable : T_SYSTEM_BOOL;
    signal ValueBus_30_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_30_Value : T_SYSTEM_FLOAT;
    signal ValueBus_31_enable : T_SYSTEM_BOOL;
    signal ValueBus_31_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_31_Value : T_SYSTEM_FLOAT;
    signal ValueBus_32_enable : T_SYSTEM_BOOL;
    signal ValueBus_32_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_32_Value : T_SYSTEM_FLOAT;
    signal ValueBus_33_enable : T_SYSTEM_BOOL;
    signal ValueBus_33_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_33_Value : T_SYSTEM_FLOAT;
    signal ValueBus_34_enable : T_SYSTEM_BOOL;
    signal ValueBus_34_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_34_Value : T_SYSTEM_FLOAT;
    signal ValueBus_35_enable : T_SYSTEM_BOOL;
    signal ValueBus_35_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_35_Value : T_SYSTEM_FLOAT;
    signal ValueBus_36_enable : T_SYSTEM_BOOL;
    signal ValueBus_36_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_36_Value : T_SYSTEM_FLOAT;
    signal ValueBus_39_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_39_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_39_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_4_enable : T_SYSTEM_BOOL;
    signal ValueBus_4_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_4_Value : T_SYSTEM_FLOAT;
    signal ValueBus_40_enable : T_SYSTEM_BOOL;
    signal ValueBus_40_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_40_Value : T_SYSTEM_FLOAT;
    signal ValueBus_41_enable : T_SYSTEM_BOOL;
    signal ValueBus_41_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_41_Value : T_SYSTEM_FLOAT;
    signal ValueBus_42_enable : T_SYSTEM_BOOL;
    signal ValueBus_42_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_42_Value : T_SYSTEM_FLOAT;
    signal ValueBus_43_enable : T_SYSTEM_BOOL;
    signal ValueBus_43_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_43_Value : T_SYSTEM_FLOAT;
    signal ValueBus_44_enable : T_SYSTEM_BOOL;
    signal ValueBus_44_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_44_Value : T_SYSTEM_FLOAT;
    signal ValueBus_45_enable : T_SYSTEM_BOOL;
    signal ValueBus_45_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_45_Value : T_SYSTEM_FLOAT;
    signal ValueBus_46_enable : T_SYSTEM_BOOL;
    signal ValueBus_46_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_46_Value : T_SYSTEM_FLOAT;
    signal ValueBus_47_enable : T_SYSTEM_BOOL;
    signal ValueBus_47_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_47_Value : T_SYSTEM_FLOAT;
    signal ValueBus_48_enable : T_SYSTEM_BOOL;
    signal ValueBus_48_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_48_Value : T_SYSTEM_FLOAT;
    signal ValueBus_49_enable : T_SYSTEM_BOOL;
    signal ValueBus_49_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_49_Value : T_SYSTEM_FLOAT;
    signal ValueBus_5_enable : T_SYSTEM_BOOL;
    signal ValueBus_5_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_5_Value : T_SYSTEM_FLOAT;
    signal ValueBus_50_enable : T_SYSTEM_BOOL;
    signal ValueBus_50_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_50_Value : T_SYSTEM_FLOAT;
    signal ValueBus_51_enable : T_SYSTEM_BOOL;
    signal ValueBus_51_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_51_Value : T_SYSTEM_FLOAT;
    signal ValueBus_52_enable : T_SYSTEM_BOOL;
    signal ValueBus_52_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_52_Value : T_SYSTEM_FLOAT;
    signal ValueBus_53_enable : T_SYSTEM_BOOL;
    signal ValueBus_53_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_53_Value : T_SYSTEM_FLOAT;
    signal ValueBus_54_enable : T_SYSTEM_BOOL;
    signal ValueBus_54_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_54_Value : T_SYSTEM_FLOAT;
    signal ValueBus_55_enable : T_SYSTEM_BOOL;
    signal ValueBus_55_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_55_Value : T_SYSTEM_FLOAT;
    signal ValueBus_56_enable : T_SYSTEM_BOOL;
    signal ValueBus_56_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_56_Value : T_SYSTEM_FLOAT;
    signal ValueBus_57_enable : T_SYSTEM_BOOL;
    signal ValueBus_57_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_57_Value : T_SYSTEM_FLOAT;
    signal ValueBus_58_enable : T_SYSTEM_BOOL;
    signal ValueBus_58_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_58_Value : T_SYSTEM_FLOAT;
    signal ValueBus_59_enable : T_SYSTEM_BOOL;
    signal ValueBus_59_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_59_Value : T_SYSTEM_FLOAT;
    signal ValueBus_6_enable : T_SYSTEM_BOOL;
    signal ValueBus_6_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_6_Value : T_SYSTEM_FLOAT;
    signal ValueBus_60_enable : T_SYSTEM_BOOL;
    signal ValueBus_60_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_60_Value : T_SYSTEM_FLOAT;
    signal ValueBus_61_enable : T_SYSTEM_BOOL;
    signal ValueBus_61_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_61_Value : T_SYSTEM_FLOAT;
    signal ValueBus_62_enable : T_SYSTEM_BOOL;
    signal ValueBus_62_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_62_Value : T_SYSTEM_FLOAT;
    signal ValueBus_63_enable : T_SYSTEM_BOOL;
    signal ValueBus_63_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_63_Value : T_SYSTEM_FLOAT;
    signal ValueBus_66_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_66_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_66_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_67_enable : T_SYSTEM_BOOL;
    signal ValueBus_67_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_67_Value : T_SYSTEM_FLOAT;
    signal ValueBus_68_enable : T_SYSTEM_BOOL;
    signal ValueBus_68_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_68_Value : T_SYSTEM_FLOAT;
    signal ValueBus_69_enable : T_SYSTEM_BOOL;
    signal ValueBus_69_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_69_Value : T_SYSTEM_FLOAT;
    signal ValueBus_7_enable : T_SYSTEM_BOOL;
    signal ValueBus_7_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_7_Value : T_SYSTEM_FLOAT;
    signal ValueBus_70_enable : T_SYSTEM_BOOL;
    signal ValueBus_70_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_70_Value : T_SYSTEM_FLOAT;
    signal ValueBus_71_enable : T_SYSTEM_BOOL;
    signal ValueBus_71_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_71_Value : T_SYSTEM_FLOAT;
    signal ValueBus_72_enable : T_SYSTEM_BOOL;
    signal ValueBus_72_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_72_Value : T_SYSTEM_FLOAT;
    signal ValueBus_73_enable : T_SYSTEM_BOOL;
    signal ValueBus_73_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_73_Value : T_SYSTEM_FLOAT;
    signal ValueBus_74_enable : T_SYSTEM_BOOL;
    signal ValueBus_74_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_74_Value : T_SYSTEM_FLOAT;
    signal ValueBus_75_enable : T_SYSTEM_BOOL;
    signal ValueBus_75_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_75_Value : T_SYSTEM_FLOAT;
    signal ValueBus_76_enable : T_SYSTEM_BOOL;
    signal ValueBus_76_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_76_Value : T_SYSTEM_FLOAT;
    signal ValueBus_77_enable : T_SYSTEM_BOOL;
    signal ValueBus_77_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_77_Value : T_SYSTEM_FLOAT;
    signal ValueBus_78_enable : T_SYSTEM_BOOL;
    signal ValueBus_78_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_78_Value : T_SYSTEM_FLOAT;
    signal ValueBus_79_enable : T_SYSTEM_BOOL;
    signal ValueBus_79_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_79_Value : T_SYSTEM_FLOAT;
    signal ValueBus_8_enable : T_SYSTEM_BOOL;
    signal ValueBus_8_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_8_Value : T_SYSTEM_FLOAT;
    signal ValueBus_80_enable : T_SYSTEM_BOOL;
    signal ValueBus_80_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_80_Value : T_SYSTEM_FLOAT;
    signal ValueBus_81_enable : T_SYSTEM_BOOL;
    signal ValueBus_81_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_81_Value : T_SYSTEM_FLOAT;
    signal ValueBus_82_enable : T_SYSTEM_BOOL;
    signal ValueBus_82_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_82_Value : T_SYSTEM_FLOAT;
    signal ValueBus_83_enable : T_SYSTEM_BOOL;
    signal ValueBus_83_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_83_Value : T_SYSTEM_FLOAT;
    signal ValueBus_84_enable : T_SYSTEM_BOOL;
    signal ValueBus_84_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_84_Value : T_SYSTEM_FLOAT;
    signal ValueBus_85_enable : T_SYSTEM_BOOL;
    signal ValueBus_85_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_85_Value : T_SYSTEM_FLOAT;
    signal ValueBus_86_enable : T_SYSTEM_BOOL;
    signal ValueBus_86_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_86_Value : T_SYSTEM_FLOAT;
    signal ValueBus_87_enable : T_SYSTEM_BOOL;
    signal ValueBus_87_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_87_Value : T_SYSTEM_FLOAT;
    signal ValueBus_88_enable : T_SYSTEM_BOOL;
    signal ValueBus_88_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_88_Value : T_SYSTEM_FLOAT;
    signal ValueBus_89_enable : T_SYSTEM_BOOL;
    signal ValueBus_89_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_89_Value : T_SYSTEM_FLOAT;
    signal ValueBus_9_enable : T_SYSTEM_BOOL;
    signal ValueBus_9_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_9_Value : T_SYSTEM_FLOAT;
    signal ValueBus_90_enable : T_SYSTEM_BOOL;
    signal ValueBus_90_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_90_Value : T_SYSTEM_FLOAT;
    signal ValueBus_93_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_93_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_93_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_94_enable : T_SYSTEM_BOOL;
    signal ValueBus_94_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_94_Value : T_SYSTEM_FLOAT;
    signal ValueBus_95_enable : T_SYSTEM_BOOL;
    signal ValueBus_95_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_95_Value : T_SYSTEM_FLOAT;
    signal ValueBus_96_enable : T_SYSTEM_BOOL;
    signal ValueBus_96_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_96_Value : T_SYSTEM_FLOAT;
    signal ValueBus_97_enable : T_SYSTEM_BOOL;
    signal ValueBus_97_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_97_Value : T_SYSTEM_FLOAT;
    signal ValueBus_98_enable : T_SYSTEM_BOOL;
    signal ValueBus_98_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_98_Value : T_SYSTEM_FLOAT;
    signal ValueBus_99_enable : T_SYSTEM_BOOL;
    signal ValueBus_99_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_99_Value : T_SYSTEM_FLOAT;

begin

    uut: entity work.ConvTest
    port map (
        TrueDualPortMemory_1_IControl_Single_0_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        TrueDualPortMemory_1_IControl_Single_0_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        TrueDualPortMemory_1_IControl_Single_0_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        TrueDualPortMemory_1_IControl_Single_0_Data => TrueDualPortMemory_1_IControl_Single_0_Data,
        TrueDualPortMemory_1_IControl_Single_1_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        TrueDualPortMemory_1_IControl_Single_1_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        TrueDualPortMemory_1_IControl_Single_1_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        TrueDualPortMemory_1_IControl_Single_1_Data => TrueDualPortMemory_1_IControl_Single_1_Data,
        TrueDualPortMemory_1_IReadResult_Single_0_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,
        TrueDualPortMemory_1_IReadResult_Single_1_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,
        ValueBus_2_enable => ValueBus_2_enable,
        ValueBus_2_Value => ValueBus_2_Value,
        ValueBus_2_LastValue => ValueBus_2_LastValue,
        ValueBus_0_enable => ValueBus_0_enable,
        ValueBus_0_Value => ValueBus_0_Value,
        ValueBus_0_LastValue => ValueBus_0_LastValue,
        ValueBus_1_enable => ValueBus_1_enable,
        ValueBus_1_Value => ValueBus_1_Value,
        ValueBus_1_LastValue => ValueBus_1_LastValue,
        TrueDualPortMemory_1_IControl_Single_2_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        TrueDualPortMemory_1_IControl_Single_2_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        TrueDualPortMemory_1_IControl_Single_2_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        TrueDualPortMemory_1_IControl_Single_2_Data => TrueDualPortMemory_1_IControl_Single_2_Data,
        TrueDualPortMemory_1_IControl_Single_3_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        TrueDualPortMemory_1_IControl_Single_3_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        TrueDualPortMemory_1_IControl_Single_3_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        TrueDualPortMemory_1_IControl_Single_3_Data => TrueDualPortMemory_1_IControl_Single_3_Data,
        TrueDualPortMemory_1_IReadResult_Single_2_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,
        TrueDualPortMemory_1_IReadResult_Single_3_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,
        ValueBus_5_enable => ValueBus_5_enable,
        ValueBus_5_Value => ValueBus_5_Value,
        ValueBus_5_LastValue => ValueBus_5_LastValue,
        ValueBus_3_enable => ValueBus_3_enable,
        ValueBus_3_Value => ValueBus_3_Value,
        ValueBus_3_LastValue => ValueBus_3_LastValue,
        ValueBus_4_enable => ValueBus_4_enable,
        ValueBus_4_Value => ValueBus_4_Value,
        ValueBus_4_LastValue => ValueBus_4_LastValue,
        TrueDualPortMemory_1_IControl_Single_4_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        TrueDualPortMemory_1_IControl_Single_4_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        TrueDualPortMemory_1_IControl_Single_4_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        TrueDualPortMemory_1_IControl_Single_4_Data => TrueDualPortMemory_1_IControl_Single_4_Data,
        TrueDualPortMemory_1_IControl_Single_5_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        TrueDualPortMemory_1_IControl_Single_5_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        TrueDualPortMemory_1_IControl_Single_5_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        TrueDualPortMemory_1_IControl_Single_5_Data => TrueDualPortMemory_1_IControl_Single_5_Data,
        TrueDualPortMemory_1_IReadResult_Single_4_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,
        TrueDualPortMemory_1_IReadResult_Single_5_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,
        ValueBus_8_enable => ValueBus_8_enable,
        ValueBus_8_Value => ValueBus_8_Value,
        ValueBus_8_LastValue => ValueBus_8_LastValue,
        ValueBus_6_enable => ValueBus_6_enable,
        ValueBus_6_Value => ValueBus_6_Value,
        ValueBus_6_LastValue => ValueBus_6_LastValue,
        ValueBus_7_enable => ValueBus_7_enable,
        ValueBus_7_Value => ValueBus_7_Value,
        ValueBus_7_LastValue => ValueBus_7_LastValue,
        ValueBus_12_enable => ValueBus_12_enable,
        ValueBus_12_Value => ValueBus_12_Value,
        ValueBus_12_LastValue => ValueBus_12_LastValue,
        ValueBus_9_enable => ValueBus_9_enable,
        ValueBus_9_Value => ValueBus_9_Value,
        ValueBus_9_LastValue => ValueBus_9_LastValue,
        ValueBus_13_enable => ValueBus_13_enable,
        ValueBus_13_Value => ValueBus_13_Value,
        ValueBus_13_LastValue => ValueBus_13_LastValue,
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,
        ValueBus_15_enable => ValueBus_15_enable,
        ValueBus_15_Value => ValueBus_15_Value,
        ValueBus_15_LastValue => ValueBus_15_LastValue,
        ValueBus_16_enable => ValueBus_16_enable,
        ValueBus_16_Value => ValueBus_16_Value,
        ValueBus_16_LastValue => ValueBus_16_LastValue,
        ValueBus_17_enable => ValueBus_17_enable,
        ValueBus_17_Value => ValueBus_17_Value,
        ValueBus_17_LastValue => ValueBus_17_LastValue,
        ValueBus_18_enable => ValueBus_18_enable,
        ValueBus_18_Value => ValueBus_18_Value,
        ValueBus_18_LastValue => ValueBus_18_LastValue,
        ValueBus_19_enable => ValueBus_19_enable,
        ValueBus_19_Value => ValueBus_19_Value,
        ValueBus_19_LastValue => ValueBus_19_LastValue,
        ValueBus_20_enable => ValueBus_20_enable,
        ValueBus_20_Value => ValueBus_20_Value,
        ValueBus_20_LastValue => ValueBus_20_LastValue,
        ValueBus_21_enable => ValueBus_21_enable,
        ValueBus_21_Value => ValueBus_21_Value,
        ValueBus_21_LastValue => ValueBus_21_LastValue,
        ValueBus_22_enable => ValueBus_22_enable,
        ValueBus_22_Value => ValueBus_22_Value,
        ValueBus_22_LastValue => ValueBus_22_LastValue,
        ValueBus_23_enable => ValueBus_23_enable,
        ValueBus_23_Value => ValueBus_23_Value,
        ValueBus_23_LastValue => ValueBus_23_LastValue,
        ValueBus_24_enable => ValueBus_24_enable,
        ValueBus_24_Value => ValueBus_24_Value,
        ValueBus_24_LastValue => ValueBus_24_LastValue,
        ValueBus_25_enable => ValueBus_25_enable,
        ValueBus_25_Value => ValueBus_25_Value,
        ValueBus_25_LastValue => ValueBus_25_LastValue,
        ValueBus_26_enable => ValueBus_26_enable,
        ValueBus_26_Value => ValueBus_26_Value,
        ValueBus_26_LastValue => ValueBus_26_LastValue,
        ValueBus_27_enable => ValueBus_27_enable,
        ValueBus_27_Value => ValueBus_27_Value,
        ValueBus_27_LastValue => ValueBus_27_LastValue,
        ValueBus_28_enable => ValueBus_28_enable,
        ValueBus_28_Value => ValueBus_28_Value,
        ValueBus_28_LastValue => ValueBus_28_LastValue,
        ValueBus_29_enable => ValueBus_29_enable,
        ValueBus_29_Value => ValueBus_29_Value,
        ValueBus_29_LastValue => ValueBus_29_LastValue,
        ValueBus_30_enable => ValueBus_30_enable,
        ValueBus_30_Value => ValueBus_30_Value,
        ValueBus_30_LastValue => ValueBus_30_LastValue,
        ValueBus_31_enable => ValueBus_31_enable,
        ValueBus_31_Value => ValueBus_31_Value,
        ValueBus_31_LastValue => ValueBus_31_LastValue,
        ValueBus_32_enable => ValueBus_32_enable,
        ValueBus_32_Value => ValueBus_32_Value,
        ValueBus_32_LastValue => ValueBus_32_LastValue,
        ValueBus_33_enable => ValueBus_33_enable,
        ValueBus_33_Value => ValueBus_33_Value,
        ValueBus_33_LastValue => ValueBus_33_LastValue,
        ValueBus_34_enable => ValueBus_34_enable,
        ValueBus_34_Value => ValueBus_34_Value,
        ValueBus_34_LastValue => ValueBus_34_LastValue,
        ValueBus_35_enable => ValueBus_35_enable,
        ValueBus_35_Value => ValueBus_35_Value,
        ValueBus_35_LastValue => ValueBus_35_LastValue,
        ValueBus_39_enable => ValueBus_39_enable,
        ValueBus_39_Value => ValueBus_39_Value,
        ValueBus_39_LastValue => ValueBus_39_LastValue,
        ValueBus_36_enable => ValueBus_36_enable,
        ValueBus_36_Value => ValueBus_36_Value,
        ValueBus_36_LastValue => ValueBus_36_LastValue,
        ValueBus_40_enable => ValueBus_40_enable,
        ValueBus_40_Value => ValueBus_40_Value,
        ValueBus_40_LastValue => ValueBus_40_LastValue,
        ValueBus_41_enable => ValueBus_41_enable,
        ValueBus_41_Value => ValueBus_41_Value,
        ValueBus_41_LastValue => ValueBus_41_LastValue,
        ValueBus_42_enable => ValueBus_42_enable,
        ValueBus_42_Value => ValueBus_42_Value,
        ValueBus_42_LastValue => ValueBus_42_LastValue,
        ValueBus_43_enable => ValueBus_43_enable,
        ValueBus_43_Value => ValueBus_43_Value,
        ValueBus_43_LastValue => ValueBus_43_LastValue,
        ValueBus_44_enable => ValueBus_44_enable,
        ValueBus_44_Value => ValueBus_44_Value,
        ValueBus_44_LastValue => ValueBus_44_LastValue,
        ValueBus_45_enable => ValueBus_45_enable,
        ValueBus_45_Value => ValueBus_45_Value,
        ValueBus_45_LastValue => ValueBus_45_LastValue,
        ValueBus_46_enable => ValueBus_46_enable,
        ValueBus_46_Value => ValueBus_46_Value,
        ValueBus_46_LastValue => ValueBus_46_LastValue,
        ValueBus_47_enable => ValueBus_47_enable,
        ValueBus_47_Value => ValueBus_47_Value,
        ValueBus_47_LastValue => ValueBus_47_LastValue,
        ValueBus_48_enable => ValueBus_48_enable,
        ValueBus_48_Value => ValueBus_48_Value,
        ValueBus_48_LastValue => ValueBus_48_LastValue,
        ValueBus_49_enable => ValueBus_49_enable,
        ValueBus_49_Value => ValueBus_49_Value,
        ValueBus_49_LastValue => ValueBus_49_LastValue,
        ValueBus_50_enable => ValueBus_50_enable,
        ValueBus_50_Value => ValueBus_50_Value,
        ValueBus_50_LastValue => ValueBus_50_LastValue,
        ValueBus_51_enable => ValueBus_51_enable,
        ValueBus_51_Value => ValueBus_51_Value,
        ValueBus_51_LastValue => ValueBus_51_LastValue,
        ValueBus_52_enable => ValueBus_52_enable,
        ValueBus_52_Value => ValueBus_52_Value,
        ValueBus_52_LastValue => ValueBus_52_LastValue,
        ValueBus_53_enable => ValueBus_53_enable,
        ValueBus_53_Value => ValueBus_53_Value,
        ValueBus_53_LastValue => ValueBus_53_LastValue,
        ValueBus_54_enable => ValueBus_54_enable,
        ValueBus_54_Value => ValueBus_54_Value,
        ValueBus_54_LastValue => ValueBus_54_LastValue,
        ValueBus_55_enable => ValueBus_55_enable,
        ValueBus_55_Value => ValueBus_55_Value,
        ValueBus_55_LastValue => ValueBus_55_LastValue,
        ValueBus_56_enable => ValueBus_56_enable,
        ValueBus_56_Value => ValueBus_56_Value,
        ValueBus_56_LastValue => ValueBus_56_LastValue,
        ValueBus_57_enable => ValueBus_57_enable,
        ValueBus_57_Value => ValueBus_57_Value,
        ValueBus_57_LastValue => ValueBus_57_LastValue,
        ValueBus_58_enable => ValueBus_58_enable,
        ValueBus_58_Value => ValueBus_58_Value,
        ValueBus_58_LastValue => ValueBus_58_LastValue,
        ValueBus_59_enable => ValueBus_59_enable,
        ValueBus_59_Value => ValueBus_59_Value,
        ValueBus_59_LastValue => ValueBus_59_LastValue,
        ValueBus_60_enable => ValueBus_60_enable,
        ValueBus_60_Value => ValueBus_60_Value,
        ValueBus_60_LastValue => ValueBus_60_LastValue,
        ValueBus_61_enable => ValueBus_61_enable,
        ValueBus_61_Value => ValueBus_61_Value,
        ValueBus_61_LastValue => ValueBus_61_LastValue,
        ValueBus_62_enable => ValueBus_62_enable,
        ValueBus_62_Value => ValueBus_62_Value,
        ValueBus_62_LastValue => ValueBus_62_LastValue,
        ValueBus_66_enable => ValueBus_66_enable,
        ValueBus_66_Value => ValueBus_66_Value,
        ValueBus_66_LastValue => ValueBus_66_LastValue,
        ValueBus_63_enable => ValueBus_63_enable,
        ValueBus_63_Value => ValueBus_63_Value,
        ValueBus_63_LastValue => ValueBus_63_LastValue,
        ValueBus_67_enable => ValueBus_67_enable,
        ValueBus_67_Value => ValueBus_67_Value,
        ValueBus_67_LastValue => ValueBus_67_LastValue,
        ValueBus_68_enable => ValueBus_68_enable,
        ValueBus_68_Value => ValueBus_68_Value,
        ValueBus_68_LastValue => ValueBus_68_LastValue,
        ValueBus_69_enable => ValueBus_69_enable,
        ValueBus_69_Value => ValueBus_69_Value,
        ValueBus_69_LastValue => ValueBus_69_LastValue,
        ValueBus_70_enable => ValueBus_70_enable,
        ValueBus_70_Value => ValueBus_70_Value,
        ValueBus_70_LastValue => ValueBus_70_LastValue,
        ValueBus_71_enable => ValueBus_71_enable,
        ValueBus_71_Value => ValueBus_71_Value,
        ValueBus_71_LastValue => ValueBus_71_LastValue,
        ValueBus_72_enable => ValueBus_72_enable,
        ValueBus_72_Value => ValueBus_72_Value,
        ValueBus_72_LastValue => ValueBus_72_LastValue,
        ValueBus_73_enable => ValueBus_73_enable,
        ValueBus_73_Value => ValueBus_73_Value,
        ValueBus_73_LastValue => ValueBus_73_LastValue,
        ValueBus_74_enable => ValueBus_74_enable,
        ValueBus_74_Value => ValueBus_74_Value,
        ValueBus_74_LastValue => ValueBus_74_LastValue,
        ValueBus_75_enable => ValueBus_75_enable,
        ValueBus_75_Value => ValueBus_75_Value,
        ValueBus_75_LastValue => ValueBus_75_LastValue,
        ValueBus_76_enable => ValueBus_76_enable,
        ValueBus_76_Value => ValueBus_76_Value,
        ValueBus_76_LastValue => ValueBus_76_LastValue,
        ValueBus_77_enable => ValueBus_77_enable,
        ValueBus_77_Value => ValueBus_77_Value,
        ValueBus_77_LastValue => ValueBus_77_LastValue,
        ValueBus_78_enable => ValueBus_78_enable,
        ValueBus_78_Value => ValueBus_78_Value,
        ValueBus_78_LastValue => ValueBus_78_LastValue,
        ValueBus_79_enable => ValueBus_79_enable,
        ValueBus_79_Value => ValueBus_79_Value,
        ValueBus_79_LastValue => ValueBus_79_LastValue,
        ValueBus_80_enable => ValueBus_80_enable,
        ValueBus_80_Value => ValueBus_80_Value,
        ValueBus_80_LastValue => ValueBus_80_LastValue,
        ValueBus_81_enable => ValueBus_81_enable,
        ValueBus_81_Value => ValueBus_81_Value,
        ValueBus_81_LastValue => ValueBus_81_LastValue,
        ValueBus_82_enable => ValueBus_82_enable,
        ValueBus_82_Value => ValueBus_82_Value,
        ValueBus_82_LastValue => ValueBus_82_LastValue,
        ValueBus_83_enable => ValueBus_83_enable,
        ValueBus_83_Value => ValueBus_83_Value,
        ValueBus_83_LastValue => ValueBus_83_LastValue,
        ValueBus_84_enable => ValueBus_84_enable,
        ValueBus_84_Value => ValueBus_84_Value,
        ValueBus_84_LastValue => ValueBus_84_LastValue,
        ValueBus_85_enable => ValueBus_85_enable,
        ValueBus_85_Value => ValueBus_85_Value,
        ValueBus_85_LastValue => ValueBus_85_LastValue,
        ValueBus_86_enable => ValueBus_86_enable,
        ValueBus_86_Value => ValueBus_86_Value,
        ValueBus_86_LastValue => ValueBus_86_LastValue,
        ValueBus_87_enable => ValueBus_87_enable,
        ValueBus_87_Value => ValueBus_87_Value,
        ValueBus_87_LastValue => ValueBus_87_LastValue,
        ValueBus_88_enable => ValueBus_88_enable,
        ValueBus_88_Value => ValueBus_88_Value,
        ValueBus_88_LastValue => ValueBus_88_LastValue,
        ValueBus_89_enable => ValueBus_89_enable,
        ValueBus_89_Value => ValueBus_89_Value,
        ValueBus_89_LastValue => ValueBus_89_LastValue,
        ValueBus_93_enable => ValueBus_93_enable,
        ValueBus_93_Value => ValueBus_93_Value,
        ValueBus_93_LastValue => ValueBus_93_LastValue,
        ValueBus_90_enable => ValueBus_90_enable,
        ValueBus_90_Value => ValueBus_90_Value,
        ValueBus_90_LastValue => ValueBus_90_LastValue,
        ValueBus_94_enable => ValueBus_94_enable,
        ValueBus_94_Value => ValueBus_94_Value,
        ValueBus_94_LastValue => ValueBus_94_LastValue,
        ValueBus_95_enable => ValueBus_95_enable,
        ValueBus_95_Value => ValueBus_95_Value,
        ValueBus_95_LastValue => ValueBus_95_LastValue,
        ValueBus_96_enable => ValueBus_96_enable,
        ValueBus_96_Value => ValueBus_96_Value,
        ValueBus_96_LastValue => ValueBus_96_LastValue,
        ValueBus_97_enable => ValueBus_97_enable,
        ValueBus_97_Value => ValueBus_97_Value,
        ValueBus_97_LastValue => ValueBus_97_LastValue,
        ValueBus_98_enable => ValueBus_98_enable,
        ValueBus_98_Value => ValueBus_98_Value,
        ValueBus_98_LastValue => ValueBus_98_LastValue,
        ValueBus_99_enable => ValueBus_99_enable,
        ValueBus_99_Value => ValueBus_99_Value,
        ValueBus_99_LastValue => ValueBus_99_LastValue,
        ValueBus_100_enable => ValueBus_100_enable,
        ValueBus_100_Value => ValueBus_100_Value,
        ValueBus_100_LastValue => ValueBus_100_LastValue,
        ValueBus_101_enable => ValueBus_101_enable,
        ValueBus_101_Value => ValueBus_101_Value,
        ValueBus_101_LastValue => ValueBus_101_LastValue,
        ValueBus_102_enable => ValueBus_102_enable,
        ValueBus_102_Value => ValueBus_102_Value,
        ValueBus_102_LastValue => ValueBus_102_LastValue,
        ValueBus_103_enable => ValueBus_103_enable,
        ValueBus_103_Value => ValueBus_103_Value,
        ValueBus_103_LastValue => ValueBus_103_LastValue,
        ValueBus_104_enable => ValueBus_104_enable,
        ValueBus_104_Value => ValueBus_104_Value,
        ValueBus_104_LastValue => ValueBus_104_LastValue,
        ValueBus_105_enable => ValueBus_105_enable,
        ValueBus_105_Value => ValueBus_105_Value,
        ValueBus_105_LastValue => ValueBus_105_LastValue,
        ValueBus_106_enable => ValueBus_106_enable,
        ValueBus_106_Value => ValueBus_106_Value,
        ValueBus_106_LastValue => ValueBus_106_LastValue,
        ValueBus_107_enable => ValueBus_107_enable,
        ValueBus_107_Value => ValueBus_107_Value,
        ValueBus_107_LastValue => ValueBus_107_LastValue,
        ValueBus_108_enable => ValueBus_108_enable,
        ValueBus_108_Value => ValueBus_108_Value,
        ValueBus_108_LastValue => ValueBus_108_LastValue,
        ValueBus_109_enable => ValueBus_109_enable,
        ValueBus_109_Value => ValueBus_109_Value,
        ValueBus_109_LastValue => ValueBus_109_LastValue,
        ValueBus_110_enable => ValueBus_110_enable,
        ValueBus_110_Value => ValueBus_110_Value,
        ValueBus_110_LastValue => ValueBus_110_LastValue,
        ValueBus_111_enable => ValueBus_111_enable,
        ValueBus_111_Value => ValueBus_111_Value,
        ValueBus_111_LastValue => ValueBus_111_LastValue,
        ValueBus_112_enable => ValueBus_112_enable,
        ValueBus_112_Value => ValueBus_112_Value,
        ValueBus_112_LastValue => ValueBus_112_LastValue,
        ValueBus_113_enable => ValueBus_113_enable,
        ValueBus_113_Value => ValueBus_113_Value,
        ValueBus_113_LastValue => ValueBus_113_LastValue,
        ValueBus_114_enable => ValueBus_114_enable,
        ValueBus_114_Value => ValueBus_114_Value,
        ValueBus_114_LastValue => ValueBus_114_LastValue,
        ValueBus_115_enable => ValueBus_115_enable,
        ValueBus_115_Value => ValueBus_115_Value,
        ValueBus_115_LastValue => ValueBus_115_LastValue,
        ValueBus_116_enable => ValueBus_116_enable,
        ValueBus_116_Value => ValueBus_116_Value,
        ValueBus_116_LastValue => ValueBus_116_LastValue,
        ValueBus_120_enable => ValueBus_120_enable,
        ValueBus_120_Value => ValueBus_120_Value,
        ValueBus_120_LastValue => ValueBus_120_LastValue,
        ValueBus_117_enable => ValueBus_117_enable,
        ValueBus_117_Value => ValueBus_117_Value,
        ValueBus_117_LastValue => ValueBus_117_LastValue,
        ValueBus_121_enable => ValueBus_121_enable,
        ValueBus_121_Value => ValueBus_121_Value,
        ValueBus_121_LastValue => ValueBus_121_LastValue,
        ValueBus_122_enable => ValueBus_122_enable,
        ValueBus_122_Value => ValueBus_122_Value,
        ValueBus_122_LastValue => ValueBus_122_LastValue,
        ValueBus_123_enable => ValueBus_123_enable,
        ValueBus_123_Value => ValueBus_123_Value,
        ValueBus_123_LastValue => ValueBus_123_LastValue,
        ValueBus_124_enable => ValueBus_124_enable,
        ValueBus_124_Value => ValueBus_124_Value,
        ValueBus_124_LastValue => ValueBus_124_LastValue,
        ValueBus_125_enable => ValueBus_125_enable,
        ValueBus_125_Value => ValueBus_125_Value,
        ValueBus_125_LastValue => ValueBus_125_LastValue,
        ValueBus_126_enable => ValueBus_126_enable,
        ValueBus_126_Value => ValueBus_126_Value,
        ValueBus_126_LastValue => ValueBus_126_LastValue,
        ValueBus_127_enable => ValueBus_127_enable,
        ValueBus_127_Value => ValueBus_127_Value,
        ValueBus_127_LastValue => ValueBus_127_LastValue,
        ValueBus_128_enable => ValueBus_128_enable,
        ValueBus_128_Value => ValueBus_128_Value,
        ValueBus_128_LastValue => ValueBus_128_LastValue,
        ValueBus_129_enable => ValueBus_129_enable,
        ValueBus_129_Value => ValueBus_129_Value,
        ValueBus_129_LastValue => ValueBus_129_LastValue,
        ValueBus_130_enable => ValueBus_130_enable,
        ValueBus_130_Value => ValueBus_130_Value,
        ValueBus_130_LastValue => ValueBus_130_LastValue,
        ValueBus_131_enable => ValueBus_131_enable,
        ValueBus_131_Value => ValueBus_131_Value,
        ValueBus_131_LastValue => ValueBus_131_LastValue,
        ValueBus_132_enable => ValueBus_132_enable,
        ValueBus_132_Value => ValueBus_132_Value,
        ValueBus_132_LastValue => ValueBus_132_LastValue,
        ValueBus_133_enable => ValueBus_133_enable,
        ValueBus_133_Value => ValueBus_133_Value,
        ValueBus_133_LastValue => ValueBus_133_LastValue,
        ValueBus_134_enable => ValueBus_134_enable,
        ValueBus_134_Value => ValueBus_134_Value,
        ValueBus_134_LastValue => ValueBus_134_LastValue,
        ValueBus_135_enable => ValueBus_135_enable,
        ValueBus_135_Value => ValueBus_135_Value,
        ValueBus_135_LastValue => ValueBus_135_LastValue,
        ValueBus_136_enable => ValueBus_136_enable,
        ValueBus_136_Value => ValueBus_136_Value,
        ValueBus_136_LastValue => ValueBus_136_LastValue,
        ValueBus_137_enable => ValueBus_137_enable,
        ValueBus_137_Value => ValueBus_137_Value,
        ValueBus_137_LastValue => ValueBus_137_LastValue,
        ValueBus_138_enable => ValueBus_138_enable,
        ValueBus_138_Value => ValueBus_138_Value,
        ValueBus_138_LastValue => ValueBus_138_LastValue,
        ValueBus_139_enable => ValueBus_139_enable,
        ValueBus_139_Value => ValueBus_139_Value,
        ValueBus_139_LastValue => ValueBus_139_LastValue,
        ValueBus_140_enable => ValueBus_140_enable,
        ValueBus_140_Value => ValueBus_140_Value,
        ValueBus_140_LastValue => ValueBus_140_LastValue,
        ValueBus_141_enable => ValueBus_141_enable,
        ValueBus_141_Value => ValueBus_141_Value,
        ValueBus_141_LastValue => ValueBus_141_LastValue,
        ValueBus_142_enable => ValueBus_142_enable,
        ValueBus_142_Value => ValueBus_142_Value,
        ValueBus_142_LastValue => ValueBus_142_LastValue,
        ValueBus_143_enable => ValueBus_143_enable,
        ValueBus_143_Value => ValueBus_143_Value,
        ValueBus_143_LastValue => ValueBus_143_LastValue,

        ENB => ENABLE,
        RST => RESET,
        CLK => CLOCK
    );

    Clk: process
    begin
        while not StopClock loop
            CLOCK <= '1';
            wait for 5 NS;
            CLOCK <= '0';
            wait for 5 NS;
        end loop;
        wait;
    end process;

    TraceFileTester: process

        file F: TEXT;
        variable L: LINE;
        variable Status: FILE_OPEN_STATUS;
        constant filename : string := "../trace.csv";
        variable clockcycle : integer := 0;
        variable tmp : CSV_LINE_T;
        variable readOK : boolean;
        variable fieldno : integer := 0;
        variable failures : integer := 0;
        variable newfailures: integer := 0;
        variable first_failure_tick : integer := -1;
        variable first_round : boolean := true;

    begin

        -- #### USER-DATA-CONDITONING-START
        -- #### USER-DATA-CONDITONING-END

        FILE_OPEN(Status, F, filename, READ_MODE);
        if Status /= OPEN_OK then
            report "Failed to open CSV trace file" severity Failure;
        else
            -- Verify the headers
            READLINE(F, L);

            fieldno := 0;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#5.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#5.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#5.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#5.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#5.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#5.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#0.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#0.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#0.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#0.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#0.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#0.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#0.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#0.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#1.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#1.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#1.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#1.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#1.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#1.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#1.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#1.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#2.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#2.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#2.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#2.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#2.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#2.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#2.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#2.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#3.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#3.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#3.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#3.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#3.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#3.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#3.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#3.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#4.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#4.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#4.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#4.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#4.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#4.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#4.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#4.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#5.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#5.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#5.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#5.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#5.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#5.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#5.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#5.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#0.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#0.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#1.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#1.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#2.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#2.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#3.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#3.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#4.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#4.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#5.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#5.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#100.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#100.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#100.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#100.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#100.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#100.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#101.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#101.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#101.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#101.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#101.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#101.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#102.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#102.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#102.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#102.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#102.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#102.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#103.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#103.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#103.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#103.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#103.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#103.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#104.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#104.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#104.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#104.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#104.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#104.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#105.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#105.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#105.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#105.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#105.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#105.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#106.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#106.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#106.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#106.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#106.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#106.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#107.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#107.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#107.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#107.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#107.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#107.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#108.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#108.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#108.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#108.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#108.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#108.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#109.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#109.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#109.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#109.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#109.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#109.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#110.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#110.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#110.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#110.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#110.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#110.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#111.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#111.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#111.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#111.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#111.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#111.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#112.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#112.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#112.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#112.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#112.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#112.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#113.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#113.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#113.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#113.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#113.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#113.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#114.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#114.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#114.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#114.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#114.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#114.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#115.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#115.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#115.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#115.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#115.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#115.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#116.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#116.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#116.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#116.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#116.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#116.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#117.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#117.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#117.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#117.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#117.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#117.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#121.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#121.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#121.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#121.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#121.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#121.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#122.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#122.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#122.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#122.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#122.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#122.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#123.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#123.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#123.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#123.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#123.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#123.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#124.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#124.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#124.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#124.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#124.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#124.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#125.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#125.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#125.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#125.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#125.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#125.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#126.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#126.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#126.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#126.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#126.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#126.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#127.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#127.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#127.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#127.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#127.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#127.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#128.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#128.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#128.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#128.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#128.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#128.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#129.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#129.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#129.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#129.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#129.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#129.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#13.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#13.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#13.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#13.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#13.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#13.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#130.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#130.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#130.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#130.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#130.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#130.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#131.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#131.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#131.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#131.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#131.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#131.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#132.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#132.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#132.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#132.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#132.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#132.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#133.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#133.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#133.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#133.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#133.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#133.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#134.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#134.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#134.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#134.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#134.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#134.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#135.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#135.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#135.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#135.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#135.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#135.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#136.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#136.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#136.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#136.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#136.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#136.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#137.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#137.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#137.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#137.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#137.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#137.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#138.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#138.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#138.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#138.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#138.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#138.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#139.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#139.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#139.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#139.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#139.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#139.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#14.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#14.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#14.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#14.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#14.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#14.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#140.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#140.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#140.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#140.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#140.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#140.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#141.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#141.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#141.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#141.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#141.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#141.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#142.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#142.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#142.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#142.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#142.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#142.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#143.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#143.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#143.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#143.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#143.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#143.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#15.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#15.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#15.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#15.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#15.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#15.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#16.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#16.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#16.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#16.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#16.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#16.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#17.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#17.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#17.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#17.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#17.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#17.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#18.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#18.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#18.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#18.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#18.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#18.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#19.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#19.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#19.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#19.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#19.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#19.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#20.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#20.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#20.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#20.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#20.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#20.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#21.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#21.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#21.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#21.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#21.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#21.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#22.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#22.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#22.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#22.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#22.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#22.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#23.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#23.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#23.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#23.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#23.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#23.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#24.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#24.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#24.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#24.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#24.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#24.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#25.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#25.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#25.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#25.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#25.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#25.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#26.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#26.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#26.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#26.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#26.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#26.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#27.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#27.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#27.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#27.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#27.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#27.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#28.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#28.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#28.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#28.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#28.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#28.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#29.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#29.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#29.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#29.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#29.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#29.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#3.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#3.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#3.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#3.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#3.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#3.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#30.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#30.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#30.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#30.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#30.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#30.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#31.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#31.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#31.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#31.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#31.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#31.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#32.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#32.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#32.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#32.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#32.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#32.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#33.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#33.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#33.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#33.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#33.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#33.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#34.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#34.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#34.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#34.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#34.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#34.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#35.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#35.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#35.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#35.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#35.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#35.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#36.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#36.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#36.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#36.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#36.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#36.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#4.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#4.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#4.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#4.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#4.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#4.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#40.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#40.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#40.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#40.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#40.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#40.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#41.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#41.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#41.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#41.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#41.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#41.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#42.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#42.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#42.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#42.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#42.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#42.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#43.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#43.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#43.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#43.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#43.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#43.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#44.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#44.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#44.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#44.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#44.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#44.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#45.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#45.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#45.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#45.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#45.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#45.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#46.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#46.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#46.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#46.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#46.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#46.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#47.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#47.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#47.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#47.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#47.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#47.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#48.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#48.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#48.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#48.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#48.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#48.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#49.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#49.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#49.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#49.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#49.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#49.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#50.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#50.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#50.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#50.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#50.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#50.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#51.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#51.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#51.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#51.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#51.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#51.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#52.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#52.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#52.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#52.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#52.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#52.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#53.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#53.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#53.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#53.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#53.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#53.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#54.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#54.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#54.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#54.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#54.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#54.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#55.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#55.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#55.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#55.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#55.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#55.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#56.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#56.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#56.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#56.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#56.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#56.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#57.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#57.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#57.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#57.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#57.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#57.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#58.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#58.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#58.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#58.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#58.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#58.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#59.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#59.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#59.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#59.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#59.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#59.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#6.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#6.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#6.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#6.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#6.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#6.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#60.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#60.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#60.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#60.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#60.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#60.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#61.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#61.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#61.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#61.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#61.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#61.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#62.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#62.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#62.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#62.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#62.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#62.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#63.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#63.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#63.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#63.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#63.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#63.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#67.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#67.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#67.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#67.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#67.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#67.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#68.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#68.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#68.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#68.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#68.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#68.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#69.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#69.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#69.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#69.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#69.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#69.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#7.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#7.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#7.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#7.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#7.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#7.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#70.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#70.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#70.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#70.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#70.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#70.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#71.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#71.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#71.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#71.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#71.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#71.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#72.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#72.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#72.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#72.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#72.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#72.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#73.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#73.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#73.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#73.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#73.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#73.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#74.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#74.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#74.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#74.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#74.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#74.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#75.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#75.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#75.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#75.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#75.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#75.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#76.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#76.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#76.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#76.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#76.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#76.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#77.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#77.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#77.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#77.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#77.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#77.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#78.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#78.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#78.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#78.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#78.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#78.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#79.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#79.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#79.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#79.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#79.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#79.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#80.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#80.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#80.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#80.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#80.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#80.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#81.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#81.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#81.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#81.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#81.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#81.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#82.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#82.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#82.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#82.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#82.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#82.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#83.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#83.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#83.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#83.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#83.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#83.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#84.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#84.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#84.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#84.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#84.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#84.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#85.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#85.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#85.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#85.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#85.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#85.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#86.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#86.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#86.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#86.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#86.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#86.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#87.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#87.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#87.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#87.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#87.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#87.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#88.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#88.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#88.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#88.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#88.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#88.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#89.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#89.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#89.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#89.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#89.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#89.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#9.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#9.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#9.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#9.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#9.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#9.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#90.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#90.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#90.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#90.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#90.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#90.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#0.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#0.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#1.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#1.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#2.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#2.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#94.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#94.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#94.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#94.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#94.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#94.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#95.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#95.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#95.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#95.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#95.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#95.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#96.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#96.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#96.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#96.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#96.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#96.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#97.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#97.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#97.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#97.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#97.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#97.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#98.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#98.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#98.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#98.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#98.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#98.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#99.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#99.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#99.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#99.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#99.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#99.Value" severity Failure;
            fieldno := fieldno + 1;

            RESET <= '1';
            ENABLE <= '0';
            wait for 5 NS;
            RESET <= '0';
            ENABLE <= '1';

            -- Read a line each clock
            while not ENDFILE(F) loop
                READLINE(F, L);
                fieldno := 0;
                newfailures := 0;

                -- Write all driver signals out on the clock edge,
                -- except on the first round, where we make sure the reset
                -- values are propagated _before_ the initial clock edge
                if not first_round then
                    wait until rising_edge(CLOCK);
                end if;

                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_2_enable <= 'U';
                else
                    ValueBus_2_enable <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_2_LastValue <= 'U';
                else
                    ValueBus_2_LastValue <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_2_Value <= (others => 'U');
                else
                    ValueBus_2_Value <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_5_enable <= 'U';
                else
                    ValueBus_5_enable <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_5_LastValue <= 'U';
                else
                    ValueBus_5_LastValue <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_5_Value <= (others => 'U');
                else
                    ValueBus_5_Value <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_8_enable <= 'U';
                else
                    ValueBus_8_enable <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_8_LastValue <= 'U';
                else
                    ValueBus_8_LastValue <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_8_Value <= (others => 'U');
                else
                    ValueBus_8_Value <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;

                if first_round then
                    first_round := false;
                else
                    -- Wait until the signals are settled before veriying the results
                    wait until falling_edge(CLOCK);
                end if;

                -- Compare each signal with the value in the CSV file
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_0_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_0_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_0_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_0_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_0_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_0_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_0_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_0_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_0_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_0_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_0_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_0_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_1_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_1_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_1_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_1_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_1_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_1_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_1_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_1_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_1_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_1_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_1_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_1_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_2_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_2_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_2_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_2_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_2_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_2_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_2_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_2_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_2_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_2_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_2_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_2_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_3_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_3_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_3_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_3_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_3_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_3_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_3_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_3_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_3_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_3_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_3_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_3_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_4_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_4_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_4_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_4_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_4_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_4_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_4_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_4_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_4_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_4_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_4_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_4_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_5_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_5_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_5_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_5_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_5_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_5_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_5_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_5_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_5_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_5_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_5_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_5_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_0_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_0_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_0_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_1_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_1_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_1_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_2_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_2_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_2_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_3_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_3_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_3_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_4_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_4_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_4_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_5_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_5_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_5_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_0_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_0_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_0_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_0_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_0_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_0_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_0_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_0_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_0_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_1_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_1_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_1_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_1_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_1_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_1_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_1_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_1_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_1_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_100_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_100_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_100_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_100_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_100_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_100_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_100_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_100_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_100_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_101_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_101_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_101_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_101_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_101_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_101_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_101_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_101_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_101_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_102_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_102_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_102_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_102_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_102_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_102_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_102_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_102_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_102_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_103_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_103_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_103_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_103_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_103_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_103_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_103_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_103_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_103_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_104_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_104_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_104_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_104_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_104_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_104_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_104_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_104_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_104_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_105_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_105_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_105_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_105_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_105_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_105_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_105_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_105_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_105_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_106_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_106_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_106_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_106_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_106_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_106_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_106_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_106_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_106_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_107_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_107_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_107_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_107_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_107_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_107_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_107_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_107_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_107_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_108_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_108_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_108_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_108_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_108_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_108_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_108_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_108_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_108_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_109_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_109_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_109_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_109_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_109_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_109_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_109_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_109_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_109_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_110_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_110_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_110_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_110_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_110_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_110_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_110_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_110_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_110_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_111_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_111_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_111_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_111_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_111_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_111_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_111_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_111_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_111_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_112_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_112_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_112_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_112_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_112_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_112_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_112_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_112_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_112_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_113_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_113_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_113_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_113_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_113_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_113_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_113_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_113_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_113_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_114_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_114_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_114_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_114_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_114_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_114_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_114_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_114_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_114_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_115_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_115_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_115_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_115_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_115_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_115_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_115_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_115_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_115_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_116_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_116_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_116_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_116_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_116_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_116_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_116_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_116_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_116_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_117_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_117_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_117_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_117_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_117_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_117_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_117_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_117_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_117_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_121_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_121_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_121_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_121_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_121_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_121_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_121_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_121_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_121_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_122_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_122_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_122_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_122_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_122_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_122_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_122_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_122_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_122_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_124_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_124_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_124_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_124_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_124_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_124_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_124_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_124_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_124_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_125_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_125_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_125_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_125_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_125_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_125_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_125_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_125_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_125_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_126_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_126_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_126_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_126_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_126_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_126_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_126_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_126_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_126_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_127_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_127_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_127_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_127_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_127_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_127_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_127_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_127_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_127_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_128_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_128_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_128_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_128_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_128_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_128_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_128_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_128_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_128_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_129_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_129_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_129_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_129_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_129_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_129_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_129_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_129_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_129_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_13_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_13_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_13_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_13_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_13_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_13_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_13_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_13_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_13_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_130_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_130_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_130_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_130_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_130_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_130_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_130_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_130_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_130_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_131_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_131_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_131_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_131_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_131_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_131_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_131_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_131_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_131_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_132_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_132_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_132_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_132_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_132_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_132_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_132_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_132_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_132_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_133_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_133_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_133_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_133_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_133_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_133_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_133_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_133_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_133_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_134_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_134_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_134_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_134_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_134_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_134_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_134_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_134_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_134_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_135_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_135_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_135_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_135_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_135_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_135_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_135_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_135_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_135_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_136_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_136_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_136_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_136_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_136_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_136_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_136_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_136_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_136_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_137_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_137_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_137_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_137_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_137_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_137_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_137_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_137_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_137_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_138_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_138_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_138_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_138_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_138_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_138_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_138_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_138_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_138_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_139_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_139_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_139_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_139_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_139_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_139_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_139_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_139_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_139_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_14_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_14_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_14_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_14_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_14_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_14_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_14_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_14_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_14_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_140_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_140_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_140_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_140_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_140_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_140_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_140_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_140_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_140_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_141_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_141_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_141_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_141_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_141_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_141_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_141_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_141_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_141_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_142_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_142_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_142_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_142_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_142_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_142_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_142_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_142_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_142_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_143_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_143_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_143_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_143_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_143_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_143_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_143_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_143_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_143_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_15_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_15_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_15_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_15_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_15_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_15_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_15_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_15_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_15_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_16_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_16_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_16_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_16_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_16_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_16_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_16_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_16_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_16_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_17_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_17_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_17_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_17_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_17_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_17_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_17_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_17_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_17_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_18_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_18_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_18_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_18_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_18_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_18_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_18_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_18_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_18_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_19_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_19_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_19_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_19_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_19_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_19_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_19_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_19_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_19_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_20_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_20_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_20_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_20_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_20_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_20_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_20_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_20_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_20_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_21_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_21_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_21_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_21_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_21_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_21_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_21_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_21_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_21_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_22_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_22_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_22_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_22_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_22_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_22_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_22_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_22_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_22_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_23_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_23_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_23_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_23_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_23_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_23_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_23_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_23_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_23_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_24_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_24_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_24_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_24_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_24_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_24_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_24_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_24_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_24_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_25_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_25_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_25_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_25_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_25_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_25_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_25_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_25_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_25_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_26_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_26_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_26_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_26_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_26_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_26_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_26_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_26_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_26_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_27_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_27_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_27_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_27_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_27_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_27_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_27_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_27_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_27_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_28_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_28_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_28_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_28_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_28_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_28_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_28_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_28_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_28_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_29_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_29_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_29_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_29_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_29_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_29_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_29_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_29_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_29_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_3_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_3_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_3_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_3_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_3_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_3_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_3_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_3_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_3_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_30_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_30_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_30_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_30_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_30_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_30_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_30_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_30_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_30_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_31_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_31_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_31_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_31_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_31_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_31_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_31_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_31_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_31_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_32_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_32_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_32_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_32_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_32_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_32_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_32_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_32_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_32_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_33_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_33_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_33_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_33_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_33_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_33_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_33_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_33_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_33_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_34_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_34_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_34_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_34_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_34_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_34_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_34_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_34_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_34_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_35_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_35_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_35_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_35_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_35_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_35_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_35_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_35_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_35_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_36_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_36_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_36_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_36_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_36_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_36_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_36_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_36_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_36_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_4_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_4_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_4_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_4_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_4_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_4_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_4_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_4_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_4_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_40_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_40_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_40_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_40_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_40_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_40_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_40_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_40_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_40_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_41_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_41_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_41_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_41_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_41_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_41_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_41_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_41_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_41_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_42_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_42_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_42_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_42_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_42_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_42_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_42_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_42_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_42_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_43_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_43_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_43_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_43_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_43_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_43_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_43_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_43_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_43_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_44_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_44_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_44_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_44_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_44_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_44_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_44_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_44_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_44_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_45_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_45_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_45_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_45_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_45_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_45_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_45_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_45_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_45_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_46_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_46_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_46_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_46_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_46_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_46_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_46_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_46_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_46_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_47_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_47_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_47_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_47_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_47_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_47_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_47_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_47_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_47_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_48_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_48_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_48_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_48_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_48_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_48_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_48_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_48_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_48_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_49_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_49_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_49_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_49_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_49_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_49_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_49_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_49_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_49_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_50_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_50_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_50_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_50_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_50_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_50_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_50_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_50_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_50_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_51_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_51_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_51_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_51_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_51_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_51_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_51_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_51_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_51_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_52_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_52_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_52_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_52_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_52_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_52_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_52_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_52_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_52_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_53_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_53_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_53_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_53_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_53_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_53_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_53_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_53_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_53_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_54_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_54_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_54_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_54_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_54_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_54_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_54_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_54_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_54_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_55_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_55_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_55_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_55_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_55_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_55_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_55_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_55_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_55_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_56_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_56_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_56_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_56_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_56_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_56_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_56_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_56_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_56_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_57_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_57_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_57_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_57_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_57_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_57_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_57_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_57_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_57_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_58_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_58_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_58_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_58_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_58_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_58_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_58_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_58_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_58_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_59_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_59_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_59_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_59_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_59_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_59_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_59_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_59_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_59_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_6_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_6_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_6_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_6_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_6_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_6_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_6_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_6_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_6_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_60_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_60_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_60_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_60_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_60_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_60_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_60_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_60_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_60_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_61_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_61_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_61_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_61_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_61_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_61_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_61_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_61_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_61_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_62_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_62_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_62_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_62_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_62_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_62_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_62_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_62_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_62_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_63_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_63_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_63_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_63_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_63_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_63_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_63_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_63_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_63_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_67_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_67_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_67_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_67_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_67_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_67_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_67_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_67_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_67_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_68_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_68_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_68_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_68_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_68_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_68_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_68_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_68_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_68_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_7_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_7_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_7_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_7_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_7_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_7_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_7_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_7_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_7_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_70_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_70_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_70_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_70_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_70_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_70_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_70_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_70_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_70_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_71_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_71_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_71_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_71_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_71_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_71_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_71_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_71_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_71_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_72_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_72_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_72_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_72_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_72_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_72_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_72_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_72_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_72_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_73_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_73_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_73_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_73_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_73_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_73_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_73_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_73_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_73_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_74_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_74_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_74_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_74_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_74_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_74_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_74_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_74_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_74_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_75_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_75_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_75_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_75_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_75_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_75_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_75_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_75_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_75_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_76_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_76_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_76_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_76_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_76_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_76_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_76_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_76_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_76_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_77_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_77_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_77_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_77_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_77_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_77_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_77_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_77_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_77_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_78_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_78_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_78_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_78_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_78_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_78_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_78_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_78_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_78_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_79_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_79_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_79_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_79_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_79_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_79_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_79_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_79_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_79_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_80_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_80_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_80_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_80_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_80_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_80_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_80_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_80_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_80_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_81_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_81_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_81_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_81_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_81_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_81_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_81_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_81_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_81_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_82_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_82_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_82_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_82_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_82_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_82_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_82_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_82_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_82_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_83_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_83_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_83_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_83_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_83_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_83_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_83_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_83_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_83_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_84_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_84_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_84_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_84_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_84_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_84_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_84_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_84_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_84_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_85_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_85_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_85_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_85_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_85_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_85_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_85_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_85_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_85_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_86_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_86_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_86_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_86_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_86_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_86_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_86_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_86_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_86_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_87_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_87_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_87_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_87_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_87_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_87_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_87_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_87_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_87_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_88_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_88_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_88_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_88_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_88_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_88_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_88_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_88_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_88_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_89_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_89_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_89_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_89_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_89_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_89_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_89_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_89_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_89_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_9_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_9_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_9_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_9_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_9_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_9_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_9_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_9_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_9_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_90_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_90_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_90_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_90_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_90_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_90_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_90_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_90_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_90_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_94_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_94_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_94_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_94_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_94_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_94_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_94_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_94_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_94_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_95_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_95_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_95_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_95_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_95_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_95_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_95_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_95_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_95_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_97_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_97_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_97_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_97_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_97_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_97_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_97_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_97_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_97_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_98_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_98_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_98_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_98_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_98_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_98_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_98_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_98_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_98_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_99_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_99_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_99_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_99_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_99_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_99_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_99_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_99_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_99_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;

                failures := failures + newfailures;
                if newfailures = 0 then
                    first_failure_tick := -1;
                elsif first_failure_tick = -1 then
                    first_failure_tick := clockcycle;
                else
                    if clockcycle - first_failure_tick >= 5 then
                        report "Stopping simulation due to five consecutive failed cycles" severity error;
                        StopClock <= true;
                    elsif failures > 20 then
                        report "Stopping simulation after 20 failures" severity error;
                        StopClock <= true;
                    end if;
                end if;

                clockcycle := clockcycle + 1;
            end loop;

            FILE_CLOSE(F);
        end if;

        if failures = 0 then
            report "completed successfully after " & integer'image(clockcycle) & " clockcycles";
        else
            report "completed with " & integer'image(failures) & " error(s) after " & integer'image(clockcycle) & " clockcycle(s)";
        end if;
        StopClock <= true;

        wait;
    end process;
end architecture TestBench;
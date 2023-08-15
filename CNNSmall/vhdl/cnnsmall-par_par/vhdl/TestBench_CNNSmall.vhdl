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

entity CNNSmall_tb is
end;

architecture TestBench of CNNSmall_tb is

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
    signal TrueDualPortMemory_1_IControl_Single_10_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_10_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_10_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_10_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_11_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_11_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_11_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_11_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_12_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_12_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_12_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_12_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_13_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_13_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_13_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_13_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_14_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_14_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_14_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_14_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_15_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_15_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_15_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_15_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_16_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_16_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_16_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_16_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_17_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_17_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_17_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_17_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_18_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_18_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_18_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_18_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_19_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_19_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_19_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_19_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_2_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_2_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_2_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_2_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_20_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_20_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_20_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_20_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_21_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_21_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_21_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_21_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_22_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_22_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_22_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_22_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_23_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_23_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_23_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_23_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_24_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_24_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_24_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_24_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_25_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_25_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_25_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_25_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_26_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_26_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_26_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_26_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_27_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_27_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_27_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_27_IsWriting : T_SYSTEM_BOOL;
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
    signal TrueDualPortMemory_1_IControl_Single_6_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_6_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_6_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_6_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_7_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_7_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_7_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_7_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_8_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_8_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_8_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_8_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_9_Address : T_SYSTEM_INT32;
    signal TrueDualPortMemory_1_IControl_Single_9_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IControl_Single_9_Enabled : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IControl_Single_9_IsWriting : T_SYSTEM_BOOL;
    signal TrueDualPortMemory_1_IReadResult_Single_0_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_1_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_10_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_11_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_12_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_13_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_14_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_15_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_16_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_17_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_18_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_19_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_2_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_20_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_21_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_22_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_23_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_24_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_25_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_26_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_27_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_3_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_4_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_5_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_6_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_7_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_8_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_9_Data : T_SYSTEM_FLOAT;
    signal ValueBus_0_enable : T_SYSTEM_BOOL;
    signal ValueBus_0_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_0_Value : T_SYSTEM_FLOAT;
    signal ValueBus_1_enable : T_SYSTEM_BOOL;
    signal ValueBus_1_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_1_Value : T_SYSTEM_FLOAT;
    signal ValueBus_10_enable : T_SYSTEM_BOOL;
    signal ValueBus_10_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_10_Value : T_SYSTEM_FLOAT;
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
    signal ValueBus_11_enable : T_SYSTEM_BOOL;
    signal ValueBus_11_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_11_Value : T_SYSTEM_FLOAT;
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
    signal ValueBus_118_enable : T_SYSTEM_BOOL;
    signal ValueBus_118_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_118_Value : T_SYSTEM_FLOAT;
    signal ValueBus_119_enable : T_SYSTEM_BOOL;
    signal ValueBus_119_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_119_Value : T_SYSTEM_FLOAT;
    signal ValueBus_12_enable : T_SYSTEM_BOOL;
    signal ValueBus_12_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_12_Value : T_SYSTEM_FLOAT;
    signal ValueBus_120_enable : T_SYSTEM_BOOL;
    signal ValueBus_120_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_120_Value : T_SYSTEM_FLOAT;
    signal ValueBus_123_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_123_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_123_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
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
    signal ValueBus_144_enable : T_SYSTEM_BOOL;
    signal ValueBus_144_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_144_Value : T_SYSTEM_FLOAT;
    signal ValueBus_145_enable : T_SYSTEM_BOOL;
    signal ValueBus_145_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_145_Value : T_SYSTEM_FLOAT;
    signal ValueBus_146_enable : T_SYSTEM_BOOL;
    signal ValueBus_146_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_146_Value : T_SYSTEM_FLOAT;
    signal ValueBus_147_enable : T_SYSTEM_BOOL;
    signal ValueBus_147_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_147_Value : T_SYSTEM_FLOAT;
    signal ValueBus_15_enable : T_SYSTEM_BOOL;
    signal ValueBus_15_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_15_Value : T_SYSTEM_FLOAT;
    signal ValueBus_150_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_150_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_150_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_151_enable : T_SYSTEM_BOOL;
    signal ValueBus_151_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_151_Value : T_SYSTEM_FLOAT;
    signal ValueBus_152_enable : T_SYSTEM_BOOL;
    signal ValueBus_152_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_152_Value : T_SYSTEM_FLOAT;
    signal ValueBus_153_enable : T_SYSTEM_BOOL;
    signal ValueBus_153_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_153_Value : T_SYSTEM_FLOAT;
    signal ValueBus_154_enable : T_SYSTEM_BOOL;
    signal ValueBus_154_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_154_Value : T_SYSTEM_FLOAT;
    signal ValueBus_155_enable : T_SYSTEM_BOOL;
    signal ValueBus_155_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_155_Value : T_SYSTEM_FLOAT;
    signal ValueBus_156_enable : T_SYSTEM_BOOL;
    signal ValueBus_156_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_156_Value : T_SYSTEM_FLOAT;
    signal ValueBus_157_enable : T_SYSTEM_BOOL;
    signal ValueBus_157_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_157_Value : T_SYSTEM_FLOAT;
    signal ValueBus_158_enable : T_SYSTEM_BOOL;
    signal ValueBus_158_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_158_Value : T_SYSTEM_FLOAT;
    signal ValueBus_159_enable : T_SYSTEM_BOOL;
    signal ValueBus_159_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_159_Value : T_SYSTEM_FLOAT;
    signal ValueBus_16_enable : T_SYSTEM_BOOL;
    signal ValueBus_16_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_16_Value : T_SYSTEM_FLOAT;
    signal ValueBus_160_enable : T_SYSTEM_BOOL;
    signal ValueBus_160_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_160_Value : T_SYSTEM_FLOAT;
    signal ValueBus_161_enable : T_SYSTEM_BOOL;
    signal ValueBus_161_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_161_Value : T_SYSTEM_FLOAT;
    signal ValueBus_162_enable : T_SYSTEM_BOOL;
    signal ValueBus_162_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_162_Value : T_SYSTEM_FLOAT;
    signal ValueBus_163_enable : T_SYSTEM_BOOL;
    signal ValueBus_163_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_163_Value : T_SYSTEM_FLOAT;
    signal ValueBus_164_enable : T_SYSTEM_BOOL;
    signal ValueBus_164_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_164_Value : T_SYSTEM_FLOAT;
    signal ValueBus_165_enable : T_SYSTEM_BOOL;
    signal ValueBus_165_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_165_Value : T_SYSTEM_FLOAT;
    signal ValueBus_166_enable : T_SYSTEM_BOOL;
    signal ValueBus_166_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_166_Value : T_SYSTEM_FLOAT;
    signal ValueBus_167_enable : T_SYSTEM_BOOL;
    signal ValueBus_167_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_167_Value : T_SYSTEM_FLOAT;
    signal ValueBus_168_enable : T_SYSTEM_BOOL;
    signal ValueBus_168_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_168_Value : T_SYSTEM_FLOAT;
    signal ValueBus_169_enable : T_SYSTEM_BOOL;
    signal ValueBus_169_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_169_Value : T_SYSTEM_FLOAT;
    signal ValueBus_17_enable : T_SYSTEM_BOOL;
    signal ValueBus_17_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_17_Value : T_SYSTEM_FLOAT;
    signal ValueBus_170_enable : T_SYSTEM_BOOL;
    signal ValueBus_170_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_170_Value : T_SYSTEM_FLOAT;
    signal ValueBus_171_enable : T_SYSTEM_BOOL;
    signal ValueBus_171_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_171_Value : T_SYSTEM_FLOAT;
    signal ValueBus_172_enable : T_SYSTEM_BOOL;
    signal ValueBus_172_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_172_Value : T_SYSTEM_FLOAT;
    signal ValueBus_173_enable : T_SYSTEM_BOOL;
    signal ValueBus_173_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_173_Value : T_SYSTEM_FLOAT;
    signal ValueBus_174_enable : T_SYSTEM_BOOL;
    signal ValueBus_174_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_174_Value : T_SYSTEM_FLOAT;
    signal ValueBus_177_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_177_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_177_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
    signal ValueBus_178_enable : T_SYSTEM_BOOL;
    signal ValueBus_178_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_178_Value : T_SYSTEM_FLOAT;
    signal ValueBus_179_enable : T_SYSTEM_BOOL;
    signal ValueBus_179_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_179_Value : T_SYSTEM_FLOAT;
    signal ValueBus_18_enable : T_SYSTEM_BOOL;
    signal ValueBus_18_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_18_Value : T_SYSTEM_FLOAT;
    signal ValueBus_180_enable : T_SYSTEM_BOOL;
    signal ValueBus_180_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_180_Value : T_SYSTEM_FLOAT;
    signal ValueBus_181_enable : T_SYSTEM_BOOL;
    signal ValueBus_181_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_181_Value : T_SYSTEM_FLOAT;
    signal ValueBus_182_enable : T_SYSTEM_BOOL;
    signal ValueBus_182_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_182_Value : T_SYSTEM_FLOAT;
    signal ValueBus_183_enable : T_SYSTEM_BOOL;
    signal ValueBus_183_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_183_Value : T_SYSTEM_FLOAT;
    signal ValueBus_184_enable : T_SYSTEM_BOOL;
    signal ValueBus_184_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_184_Value : T_SYSTEM_FLOAT;
    signal ValueBus_185_enable : T_SYSTEM_BOOL;
    signal ValueBus_185_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_185_Value : T_SYSTEM_FLOAT;
    signal ValueBus_186_enable : T_SYSTEM_BOOL;
    signal ValueBus_186_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_186_Value : T_SYSTEM_FLOAT;
    signal ValueBus_187_enable : T_SYSTEM_BOOL;
    signal ValueBus_187_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_187_Value : T_SYSTEM_FLOAT;
    signal ValueBus_188_enable : T_SYSTEM_BOOL;
    signal ValueBus_188_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_188_Value : T_SYSTEM_FLOAT;
    signal ValueBus_189_enable : T_SYSTEM_BOOL;
    signal ValueBus_189_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_189_Value : T_SYSTEM_FLOAT;
    signal ValueBus_19_enable : T_SYSTEM_BOOL;
    signal ValueBus_19_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_19_Value : T_SYSTEM_FLOAT;
    signal ValueBus_190_enable : T_SYSTEM_BOOL;
    signal ValueBus_190_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_190_Value : T_SYSTEM_FLOAT;
    signal ValueBus_191_enable : T_SYSTEM_BOOL;
    signal ValueBus_191_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_191_Value : T_SYSTEM_FLOAT;
    signal ValueBus_192_enable : T_SYSTEM_BOOL;
    signal ValueBus_192_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_192_Value : T_SYSTEM_FLOAT;
    signal ValueBus_193_enable : T_SYSTEM_BOOL;
    signal ValueBus_193_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_193_Value : T_SYSTEM_FLOAT;
    signal ValueBus_194_enable : T_SYSTEM_BOOL;
    signal ValueBus_194_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_194_Value : T_SYSTEM_FLOAT;
    signal ValueBus_195_enable : T_SYSTEM_BOOL;
    signal ValueBus_195_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_195_Value : T_SYSTEM_FLOAT;
    signal ValueBus_196_enable : T_SYSTEM_BOOL;
    signal ValueBus_196_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_196_Value : T_SYSTEM_FLOAT;
    signal ValueBus_197_enable : T_SYSTEM_BOOL;
    signal ValueBus_197_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_197_Value : T_SYSTEM_FLOAT;
    signal ValueBus_198_enable : T_SYSTEM_BOOL;
    signal ValueBus_198_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_198_Value : T_SYSTEM_FLOAT;
    signal ValueBus_199_enable : T_SYSTEM_BOOL;
    signal ValueBus_199_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_199_Value : T_SYSTEM_FLOAT;
    signal ValueBus_2_enable : T_SYSTEM_BOOL;
    signal ValueBus_2_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_2_Value : T_SYSTEM_FLOAT;
    signal ValueBus_20_enable : T_SYSTEM_BOOL;
    signal ValueBus_20_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_20_Value : T_SYSTEM_FLOAT;
    signal ValueBus_200_enable : T_SYSTEM_BOOL;
    signal ValueBus_200_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_200_Value : T_SYSTEM_FLOAT;
    signal ValueBus_201_enable : T_SYSTEM_BOOL;
    signal ValueBus_201_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_201_Value : T_SYSTEM_FLOAT;
    signal ValueBus_202_enable : T_SYSTEM_BOOL;
    signal ValueBus_202_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_202_Value : T_SYSTEM_FLOAT;
    signal ValueBus_203_enable : T_SYSTEM_BOOL;
    signal ValueBus_203_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_203_Value : T_SYSTEM_FLOAT;
    signal ValueBus_204_enable : T_SYSTEM_BOOL;
    signal ValueBus_204_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_204_Value : T_SYSTEM_FLOAT;
    signal ValueBus_205_enable : T_SYSTEM_BOOL;
    signal ValueBus_205_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_205_Value : T_SYSTEM_FLOAT;
    signal ValueBus_206_enable : T_SYSTEM_BOOL;
    signal ValueBus_206_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_206_Value : T_SYSTEM_FLOAT;
    signal ValueBus_207_enable : T_SYSTEM_BOOL;
    signal ValueBus_207_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_207_Value : T_SYSTEM_FLOAT;
    signal ValueBus_208_enable : T_SYSTEM_BOOL;
    signal ValueBus_208_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_208_Value : T_SYSTEM_FLOAT;
    signal ValueBus_209_enable : T_SYSTEM_BOOL;
    signal ValueBus_209_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_209_Value : T_SYSTEM_FLOAT;
    signal ValueBus_21_enable : T_SYSTEM_BOOL;
    signal ValueBus_21_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_21_Value : T_SYSTEM_FLOAT;
    signal ValueBus_210_enable : T_SYSTEM_BOOL;
    signal ValueBus_210_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_210_Value : T_SYSTEM_FLOAT;
    signal ValueBus_211_enable : T_SYSTEM_BOOL;
    signal ValueBus_211_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_211_Value : T_SYSTEM_FLOAT;
    signal ValueBus_212_enable : T_SYSTEM_BOOL;
    signal ValueBus_212_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_212_Value : T_SYSTEM_FLOAT;
    signal ValueBus_213_enable : T_SYSTEM_BOOL;
    signal ValueBus_213_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_213_Value : T_SYSTEM_FLOAT;
    signal ValueBus_214_enable : T_SYSTEM_BOOL;
    signal ValueBus_214_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_214_Value : T_SYSTEM_FLOAT;
    signal ValueBus_215_enable : T_SYSTEM_BOOL;
    signal ValueBus_215_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_215_Value : T_SYSTEM_FLOAT;
    signal ValueBus_216_enable : T_SYSTEM_BOOL;
    signal ValueBus_216_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_216_Value : T_SYSTEM_FLOAT;
    signal ValueBus_217_enable : T_SYSTEM_BOOL;
    signal ValueBus_217_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_217_Value : T_SYSTEM_FLOAT;
    signal ValueBus_218_enable : T_SYSTEM_BOOL;
    signal ValueBus_218_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_218_Value : T_SYSTEM_FLOAT;
    signal ValueBus_219_enable : T_SYSTEM_BOOL;
    signal ValueBus_219_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_219_Value : T_SYSTEM_FLOAT;
    signal ValueBus_22_enable : T_SYSTEM_BOOL;
    signal ValueBus_22_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_22_Value : T_SYSTEM_FLOAT;
    signal ValueBus_220_enable : T_SYSTEM_BOOL;
    signal ValueBus_220_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_220_Value : T_SYSTEM_FLOAT;
    signal ValueBus_221_enable : T_SYSTEM_BOOL;
    signal ValueBus_221_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_221_Value : T_SYSTEM_FLOAT;
    signal ValueBus_222_enable : T_SYSTEM_BOOL;
    signal ValueBus_222_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_222_Value : T_SYSTEM_FLOAT;
    signal ValueBus_223_enable : T_SYSTEM_BOOL;
    signal ValueBus_223_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_223_Value : T_SYSTEM_FLOAT;
    signal ValueBus_224_enable : T_SYSTEM_BOOL;
    signal ValueBus_224_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_224_Value : T_SYSTEM_FLOAT;
    signal ValueBus_225_enable : T_SYSTEM_BOOL;
    signal ValueBus_225_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_225_Value : T_SYSTEM_FLOAT;
    signal ValueBus_226_enable : T_SYSTEM_BOOL;
    signal ValueBus_226_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_226_Value : T_SYSTEM_FLOAT;
    signal ValueBus_227_enable : T_SYSTEM_BOOL;
    signal ValueBus_227_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_227_Value : T_SYSTEM_FLOAT;
    signal ValueBus_229_enable : T_SYSTEM_BOOL;
    signal ValueBus_229_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_229_Value : T_SYSTEM_FLOAT;
    signal ValueBus_23_enable : T_SYSTEM_BOOL;
    signal ValueBus_23_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_23_Value : T_SYSTEM_FLOAT;
    signal ValueBus_230_enable : T_SYSTEM_BOOL;
    signal ValueBus_230_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_230_Value : T_SYSTEM_FLOAT;
    signal ValueBus_232_enable : T_SYSTEM_BOOL;
    signal ValueBus_232_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_232_Value : T_SYSTEM_FLOAT;
    signal ValueBus_233_enable : T_SYSTEM_BOOL;
    signal ValueBus_233_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_233_Value : T_SYSTEM_FLOAT;
    signal ValueBus_235_enable : T_SYSTEM_BOOL;
    signal ValueBus_235_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_235_Value : T_SYSTEM_FLOAT;
    signal ValueBus_236_enable : T_SYSTEM_BOOL;
    signal ValueBus_236_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_236_Value : T_SYSTEM_FLOAT;
    signal ValueBus_238_enable : T_SYSTEM_BOOL;
    signal ValueBus_238_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_238_Value : T_SYSTEM_FLOAT;
    signal ValueBus_239_enable : T_SYSTEM_BOOL;
    signal ValueBus_239_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_239_Value : T_SYSTEM_FLOAT;
    signal ValueBus_24_enable : T_SYSTEM_BOOL;
    signal ValueBus_24_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_24_Value : T_SYSTEM_FLOAT;
    signal ValueBus_240_enable : T_SYSTEM_BOOL_ARRAY(4 downto 0);
    signal ValueBus_240_LastValue : T_SYSTEM_BOOL_ARRAY(4 downto 0);
    signal ValueBus_240_Value : T_SYSTEM_FLOAT_ARRAY(4 downto 0);
    signal ValueBus_241_enable : T_SYSTEM_BOOL;
    signal ValueBus_241_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_241_Value : T_SYSTEM_FLOAT;
    signal ValueBus_242_enable : T_SYSTEM_BOOL;
    signal ValueBus_242_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_242_Value : T_SYSTEM_FLOAT;
    signal ValueBus_243_enable : T_SYSTEM_BOOL;
    signal ValueBus_243_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_243_Value : T_SYSTEM_FLOAT;
    signal ValueBus_244_enable : T_SYSTEM_BOOL;
    signal ValueBus_244_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_244_Value : T_SYSTEM_FLOAT;
    signal ValueBus_245_enable : T_SYSTEM_BOOL;
    signal ValueBus_245_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_245_Value : T_SYSTEM_FLOAT;
    signal ValueBus_246_enable : T_SYSTEM_BOOL;
    signal ValueBus_246_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_246_Value : T_SYSTEM_FLOAT;
    signal ValueBus_247_enable : T_SYSTEM_BOOL;
    signal ValueBus_247_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_247_Value : T_SYSTEM_FLOAT;
    signal ValueBus_248_enable : T_SYSTEM_BOOL;
    signal ValueBus_248_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_248_Value : T_SYSTEM_FLOAT;
    signal ValueBus_249_enable : T_SYSTEM_BOOL;
    signal ValueBus_249_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_249_Value : T_SYSTEM_FLOAT;
    signal ValueBus_25_enable : T_SYSTEM_BOOL;
    signal ValueBus_25_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_25_Value : T_SYSTEM_FLOAT;
    signal ValueBus_250_enable : T_SYSTEM_BOOL;
    signal ValueBus_250_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_250_Value : T_SYSTEM_FLOAT;
    signal ValueBus_251_enable : T_SYSTEM_BOOL;
    signal ValueBus_251_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_251_Value : T_SYSTEM_FLOAT;
    signal ValueBus_253_enable : T_SYSTEM_BOOL_ARRAY(1 downto 0);
    signal ValueBus_253_LastValue : T_SYSTEM_BOOL_ARRAY(1 downto 0);
    signal ValueBus_253_Value : T_SYSTEM_FLOAT_ARRAY(1 downto 0);
    signal ValueBus_254_enable : T_SYSTEM_BOOL;
    signal ValueBus_254_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_254_Value : T_SYSTEM_FLOAT;
    signal ValueBus_255_enable : T_SYSTEM_BOOL;
    signal ValueBus_255_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_255_Value : T_SYSTEM_FLOAT;
    signal ValueBus_256_enable : T_SYSTEM_BOOL;
    signal ValueBus_256_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_256_Value : T_SYSTEM_FLOAT;
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
    signal ValueBus_37_enable : T_SYSTEM_BOOL;
    signal ValueBus_37_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_37_Value : T_SYSTEM_FLOAT;
    signal ValueBus_38_enable : T_SYSTEM_BOOL;
    signal ValueBus_38_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_38_Value : T_SYSTEM_FLOAT;
    signal ValueBus_39_enable : T_SYSTEM_BOOL;
    signal ValueBus_39_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_39_Value : T_SYSTEM_FLOAT;
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
    signal ValueBus_64_enable : T_SYSTEM_BOOL;
    signal ValueBus_64_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_64_Value : T_SYSTEM_FLOAT;
    signal ValueBus_65_enable : T_SYSTEM_BOOL;
    signal ValueBus_65_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_65_Value : T_SYSTEM_FLOAT;
    signal ValueBus_66_enable : T_SYSTEM_BOOL;
    signal ValueBus_66_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_66_Value : T_SYSTEM_FLOAT;
    signal ValueBus_69_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_69_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_69_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
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
    signal ValueBus_91_enable : T_SYSTEM_BOOL;
    signal ValueBus_91_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_91_Value : T_SYSTEM_FLOAT;
    signal ValueBus_92_enable : T_SYSTEM_BOOL;
    signal ValueBus_92_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_92_Value : T_SYSTEM_FLOAT;
    signal ValueBus_93_enable : T_SYSTEM_BOOL;
    signal ValueBus_93_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_93_Value : T_SYSTEM_FLOAT;
    signal ValueBus_96_enable : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_96_LastValue : T_SYSTEM_BOOL_ARRAY(2 downto 0);
    signal ValueBus_96_Value : T_SYSTEM_FLOAT_ARRAY(2 downto 0);
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

    uut: entity work.CNNSmall
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
        ValueBus_4_enable => ValueBus_4_enable,
        ValueBus_4_Value => ValueBus_4_Value,
        ValueBus_4_LastValue => ValueBus_4_LastValue,
        ValueBus_3_enable => ValueBus_3_enable,
        ValueBus_3_Value => ValueBus_3_Value,
        ValueBus_3_LastValue => ValueBus_3_LastValue,
        ValueBus_5_enable => ValueBus_5_enable,
        ValueBus_5_Value => ValueBus_5_Value,
        ValueBus_5_LastValue => ValueBus_5_LastValue,
        ValueBus_6_enable => ValueBus_6_enable,
        ValueBus_6_Value => ValueBus_6_Value,
        ValueBus_6_LastValue => ValueBus_6_LastValue,
        ValueBus_7_enable => ValueBus_7_enable,
        ValueBus_7_Value => ValueBus_7_Value,
        ValueBus_7_LastValue => ValueBus_7_LastValue,
        ValueBus_8_enable => ValueBus_8_enable,
        ValueBus_8_Value => ValueBus_8_Value,
        ValueBus_8_LastValue => ValueBus_8_LastValue,
        ValueBus_9_enable => ValueBus_9_enable,
        ValueBus_9_Value => ValueBus_9_Value,
        ValueBus_9_LastValue => ValueBus_9_LastValue,
        ValueBus_10_enable => ValueBus_10_enable,
        ValueBus_10_Value => ValueBus_10_Value,
        ValueBus_10_LastValue => ValueBus_10_LastValue,
        ValueBus_11_enable => ValueBus_11_enable,
        ValueBus_11_Value => ValueBus_11_Value,
        ValueBus_11_LastValue => ValueBus_11_LastValue,
        ValueBus_12_enable => ValueBus_12_enable,
        ValueBus_12_Value => ValueBus_12_Value,
        ValueBus_12_LastValue => ValueBus_12_LastValue,
        ValueBus_13_enable => ValueBus_13_enable,
        ValueBus_13_Value => ValueBus_13_Value,
        ValueBus_13_LastValue => ValueBus_13_LastValue,
        ValueBus_15_enable => ValueBus_15_enable,
        ValueBus_15_Value => ValueBus_15_Value,
        ValueBus_15_LastValue => ValueBus_15_LastValue,
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,
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
        ValueBus_26_enable => ValueBus_26_enable,
        ValueBus_26_Value => ValueBus_26_Value,
        ValueBus_26_LastValue => ValueBus_26_LastValue,
        ValueBus_25_enable => ValueBus_25_enable,
        ValueBus_25_Value => ValueBus_25_Value,
        ValueBus_25_LastValue => ValueBus_25_LastValue,
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
        ValueBus_36_enable => ValueBus_36_enable,
        ValueBus_36_Value => ValueBus_36_Value,
        ValueBus_36_LastValue => ValueBus_36_LastValue,
        ValueBus_37_enable => ValueBus_37_enable,
        ValueBus_37_Value => ValueBus_37_Value,
        ValueBus_37_LastValue => ValueBus_37_LastValue,
        ValueBus_38_enable => ValueBus_38_enable,
        ValueBus_38_Value => ValueBus_38_Value,
        ValueBus_38_LastValue => ValueBus_38_LastValue,
        ValueBus_39_enable => ValueBus_39_enable,
        ValueBus_39_Value => ValueBus_39_Value,
        ValueBus_39_LastValue => ValueBus_39_LastValue,
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
        ValueBus_51_enable => ValueBus_51_enable,
        ValueBus_51_Value => ValueBus_51_Value,
        ValueBus_51_LastValue => ValueBus_51_LastValue,
        ValueBus_52_enable => ValueBus_52_enable,
        ValueBus_52_Value => ValueBus_52_Value,
        ValueBus_52_LastValue => ValueBus_52_LastValue,
        ValueBus_53_enable => ValueBus_53_enable,
        ValueBus_53_Value => ValueBus_53_Value,
        ValueBus_53_LastValue => ValueBus_53_LastValue,
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
        ValueBus_54_enable => ValueBus_54_enable,
        ValueBus_54_Value => ValueBus_54_Value,
        ValueBus_54_LastValue => ValueBus_54_LastValue,
        ValueBus_55_enable => ValueBus_55_enable,
        ValueBus_55_Value => ValueBus_55_Value,
        ValueBus_55_LastValue => ValueBus_55_LastValue,
        ValueBus_56_enable => ValueBus_56_enable,
        ValueBus_56_Value => ValueBus_56_Value,
        ValueBus_56_LastValue => ValueBus_56_LastValue,
        TrueDualPortMemory_1_IControl_Single_6_IsWriting => TrueDualPortMemory_1_IControl_Single_6_IsWriting,
        TrueDualPortMemory_1_IControl_Single_6_Enabled => TrueDualPortMemory_1_IControl_Single_6_Enabled,
        TrueDualPortMemory_1_IControl_Single_6_Address => TrueDualPortMemory_1_IControl_Single_6_Address,
        TrueDualPortMemory_1_IControl_Single_6_Data => TrueDualPortMemory_1_IControl_Single_6_Data,
        TrueDualPortMemory_1_IControl_Single_7_IsWriting => TrueDualPortMemory_1_IControl_Single_7_IsWriting,
        TrueDualPortMemory_1_IControl_Single_7_Enabled => TrueDualPortMemory_1_IControl_Single_7_Enabled,
        TrueDualPortMemory_1_IControl_Single_7_Address => TrueDualPortMemory_1_IControl_Single_7_Address,
        TrueDualPortMemory_1_IControl_Single_7_Data => TrueDualPortMemory_1_IControl_Single_7_Data,
        TrueDualPortMemory_1_IReadResult_Single_6_Data => TrueDualPortMemory_1_IReadResult_Single_6_Data,
        TrueDualPortMemory_1_IReadResult_Single_7_Data => TrueDualPortMemory_1_IReadResult_Single_7_Data,
        ValueBus_57_enable => ValueBus_57_enable,
        ValueBus_57_Value => ValueBus_57_Value,
        ValueBus_57_LastValue => ValueBus_57_LastValue,
        ValueBus_58_enable => ValueBus_58_enable,
        ValueBus_58_Value => ValueBus_58_Value,
        ValueBus_58_LastValue => ValueBus_58_LastValue,
        ValueBus_59_enable => ValueBus_59_enable,
        ValueBus_59_Value => ValueBus_59_Value,
        ValueBus_59_LastValue => ValueBus_59_LastValue,
        TrueDualPortMemory_1_IControl_Single_8_IsWriting => TrueDualPortMemory_1_IControl_Single_8_IsWriting,
        TrueDualPortMemory_1_IControl_Single_8_Enabled => TrueDualPortMemory_1_IControl_Single_8_Enabled,
        TrueDualPortMemory_1_IControl_Single_8_Address => TrueDualPortMemory_1_IControl_Single_8_Address,
        TrueDualPortMemory_1_IControl_Single_8_Data => TrueDualPortMemory_1_IControl_Single_8_Data,
        TrueDualPortMemory_1_IControl_Single_9_IsWriting => TrueDualPortMemory_1_IControl_Single_9_IsWriting,
        TrueDualPortMemory_1_IControl_Single_9_Enabled => TrueDualPortMemory_1_IControl_Single_9_Enabled,
        TrueDualPortMemory_1_IControl_Single_9_Address => TrueDualPortMemory_1_IControl_Single_9_Address,
        TrueDualPortMemory_1_IControl_Single_9_Data => TrueDualPortMemory_1_IControl_Single_9_Data,
        TrueDualPortMemory_1_IReadResult_Single_8_Data => TrueDualPortMemory_1_IReadResult_Single_8_Data,
        TrueDualPortMemory_1_IReadResult_Single_9_Data => TrueDualPortMemory_1_IReadResult_Single_9_Data,
        ValueBus_60_enable => ValueBus_60_enable,
        ValueBus_60_Value => ValueBus_60_Value,
        ValueBus_60_LastValue => ValueBus_60_LastValue,
        ValueBus_61_enable => ValueBus_61_enable,
        ValueBus_61_Value => ValueBus_61_Value,
        ValueBus_61_LastValue => ValueBus_61_LastValue,
        TrueDualPortMemory_1_IControl_Single_10_IsWriting => TrueDualPortMemory_1_IControl_Single_10_IsWriting,
        TrueDualPortMemory_1_IControl_Single_10_Enabled => TrueDualPortMemory_1_IControl_Single_10_Enabled,
        TrueDualPortMemory_1_IControl_Single_10_Address => TrueDualPortMemory_1_IControl_Single_10_Address,
        TrueDualPortMemory_1_IControl_Single_10_Data => TrueDualPortMemory_1_IControl_Single_10_Data,
        TrueDualPortMemory_1_IControl_Single_11_IsWriting => TrueDualPortMemory_1_IControl_Single_11_IsWriting,
        TrueDualPortMemory_1_IControl_Single_11_Enabled => TrueDualPortMemory_1_IControl_Single_11_Enabled,
        TrueDualPortMemory_1_IControl_Single_11_Address => TrueDualPortMemory_1_IControl_Single_11_Address,
        TrueDualPortMemory_1_IControl_Single_11_Data => TrueDualPortMemory_1_IControl_Single_11_Data,
        TrueDualPortMemory_1_IReadResult_Single_10_Data => TrueDualPortMemory_1_IReadResult_Single_10_Data,
        TrueDualPortMemory_1_IReadResult_Single_11_Data => TrueDualPortMemory_1_IReadResult_Single_11_Data,
        ValueBus_62_enable => ValueBus_62_enable,
        ValueBus_62_Value => ValueBus_62_Value,
        ValueBus_62_LastValue => ValueBus_62_LastValue,
        ValueBus_63_enable => ValueBus_63_enable,
        ValueBus_63_Value => ValueBus_63_Value,
        ValueBus_63_LastValue => ValueBus_63_LastValue,
        TrueDualPortMemory_1_IControl_Single_12_IsWriting => TrueDualPortMemory_1_IControl_Single_12_IsWriting,
        TrueDualPortMemory_1_IControl_Single_12_Enabled => TrueDualPortMemory_1_IControl_Single_12_Enabled,
        TrueDualPortMemory_1_IControl_Single_12_Address => TrueDualPortMemory_1_IControl_Single_12_Address,
        TrueDualPortMemory_1_IControl_Single_12_Data => TrueDualPortMemory_1_IControl_Single_12_Data,
        TrueDualPortMemory_1_IControl_Single_13_IsWriting => TrueDualPortMemory_1_IControl_Single_13_IsWriting,
        TrueDualPortMemory_1_IControl_Single_13_Enabled => TrueDualPortMemory_1_IControl_Single_13_Enabled,
        TrueDualPortMemory_1_IControl_Single_13_Address => TrueDualPortMemory_1_IControl_Single_13_Address,
        TrueDualPortMemory_1_IControl_Single_13_Data => TrueDualPortMemory_1_IControl_Single_13_Data,
        TrueDualPortMemory_1_IReadResult_Single_12_Data => TrueDualPortMemory_1_IReadResult_Single_12_Data,
        TrueDualPortMemory_1_IReadResult_Single_13_Data => TrueDualPortMemory_1_IReadResult_Single_13_Data,
        ValueBus_64_enable => ValueBus_64_enable,
        ValueBus_64_Value => ValueBus_64_Value,
        ValueBus_64_LastValue => ValueBus_64_LastValue,
        ValueBus_65_enable => ValueBus_65_enable,
        ValueBus_65_Value => ValueBus_65_Value,
        ValueBus_65_LastValue => ValueBus_65_LastValue,
        ValueBus_69_enable => ValueBus_69_enable,
        ValueBus_69_Value => ValueBus_69_Value,
        ValueBus_69_LastValue => ValueBus_69_LastValue,
        ValueBus_66_enable => ValueBus_66_enable,
        ValueBus_66_Value => ValueBus_66_Value,
        ValueBus_66_LastValue => ValueBus_66_LastValue,
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
        ValueBus_90_enable => ValueBus_90_enable,
        ValueBus_90_Value => ValueBus_90_Value,
        ValueBus_90_LastValue => ValueBus_90_LastValue,
        ValueBus_91_enable => ValueBus_91_enable,
        ValueBus_91_Value => ValueBus_91_Value,
        ValueBus_91_LastValue => ValueBus_91_LastValue,
        ValueBus_92_enable => ValueBus_92_enable,
        ValueBus_92_Value => ValueBus_92_Value,
        ValueBus_92_LastValue => ValueBus_92_LastValue,
        ValueBus_96_enable => ValueBus_96_enable,
        ValueBus_96_Value => ValueBus_96_Value,
        ValueBus_96_LastValue => ValueBus_96_LastValue,
        ValueBus_93_enable => ValueBus_93_enable,
        ValueBus_93_Value => ValueBus_93_Value,
        ValueBus_93_LastValue => ValueBus_93_LastValue,
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
        ValueBus_117_enable => ValueBus_117_enable,
        ValueBus_117_Value => ValueBus_117_Value,
        ValueBus_117_LastValue => ValueBus_117_LastValue,
        ValueBus_118_enable => ValueBus_118_enable,
        ValueBus_118_Value => ValueBus_118_Value,
        ValueBus_118_LastValue => ValueBus_118_LastValue,
        ValueBus_119_enable => ValueBus_119_enable,
        ValueBus_119_Value => ValueBus_119_Value,
        ValueBus_119_LastValue => ValueBus_119_LastValue,
        ValueBus_123_enable => ValueBus_123_enable,
        ValueBus_123_Value => ValueBus_123_Value,
        ValueBus_123_LastValue => ValueBus_123_LastValue,
        ValueBus_120_enable => ValueBus_120_enable,
        ValueBus_120_Value => ValueBus_120_Value,
        ValueBus_120_LastValue => ValueBus_120_LastValue,
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
        ValueBus_144_enable => ValueBus_144_enable,
        ValueBus_144_Value => ValueBus_144_Value,
        ValueBus_144_LastValue => ValueBus_144_LastValue,
        ValueBus_145_enable => ValueBus_145_enable,
        ValueBus_145_Value => ValueBus_145_Value,
        ValueBus_145_LastValue => ValueBus_145_LastValue,
        ValueBus_146_enable => ValueBus_146_enable,
        ValueBus_146_Value => ValueBus_146_Value,
        ValueBus_146_LastValue => ValueBus_146_LastValue,
        ValueBus_150_enable => ValueBus_150_enable,
        ValueBus_150_Value => ValueBus_150_Value,
        ValueBus_150_LastValue => ValueBus_150_LastValue,
        ValueBus_147_enable => ValueBus_147_enable,
        ValueBus_147_Value => ValueBus_147_Value,
        ValueBus_147_LastValue => ValueBus_147_LastValue,
        ValueBus_151_enable => ValueBus_151_enable,
        ValueBus_151_Value => ValueBus_151_Value,
        ValueBus_151_LastValue => ValueBus_151_LastValue,
        ValueBus_152_enable => ValueBus_152_enable,
        ValueBus_152_Value => ValueBus_152_Value,
        ValueBus_152_LastValue => ValueBus_152_LastValue,
        ValueBus_153_enable => ValueBus_153_enable,
        ValueBus_153_Value => ValueBus_153_Value,
        ValueBus_153_LastValue => ValueBus_153_LastValue,
        ValueBus_154_enable => ValueBus_154_enable,
        ValueBus_154_Value => ValueBus_154_Value,
        ValueBus_154_LastValue => ValueBus_154_LastValue,
        ValueBus_155_enable => ValueBus_155_enable,
        ValueBus_155_Value => ValueBus_155_Value,
        ValueBus_155_LastValue => ValueBus_155_LastValue,
        ValueBus_156_enable => ValueBus_156_enable,
        ValueBus_156_Value => ValueBus_156_Value,
        ValueBus_156_LastValue => ValueBus_156_LastValue,
        ValueBus_157_enable => ValueBus_157_enable,
        ValueBus_157_Value => ValueBus_157_Value,
        ValueBus_157_LastValue => ValueBus_157_LastValue,
        ValueBus_158_enable => ValueBus_158_enable,
        ValueBus_158_Value => ValueBus_158_Value,
        ValueBus_158_LastValue => ValueBus_158_LastValue,
        ValueBus_159_enable => ValueBus_159_enable,
        ValueBus_159_Value => ValueBus_159_Value,
        ValueBus_159_LastValue => ValueBus_159_LastValue,
        ValueBus_160_enable => ValueBus_160_enable,
        ValueBus_160_Value => ValueBus_160_Value,
        ValueBus_160_LastValue => ValueBus_160_LastValue,
        ValueBus_161_enable => ValueBus_161_enable,
        ValueBus_161_Value => ValueBus_161_Value,
        ValueBus_161_LastValue => ValueBus_161_LastValue,
        ValueBus_162_enable => ValueBus_162_enable,
        ValueBus_162_Value => ValueBus_162_Value,
        ValueBus_162_LastValue => ValueBus_162_LastValue,
        ValueBus_163_enable => ValueBus_163_enable,
        ValueBus_163_Value => ValueBus_163_Value,
        ValueBus_163_LastValue => ValueBus_163_LastValue,
        ValueBus_164_enable => ValueBus_164_enable,
        ValueBus_164_Value => ValueBus_164_Value,
        ValueBus_164_LastValue => ValueBus_164_LastValue,
        ValueBus_165_enable => ValueBus_165_enable,
        ValueBus_165_Value => ValueBus_165_Value,
        ValueBus_165_LastValue => ValueBus_165_LastValue,
        ValueBus_166_enable => ValueBus_166_enable,
        ValueBus_166_Value => ValueBus_166_Value,
        ValueBus_166_LastValue => ValueBus_166_LastValue,
        ValueBus_167_enable => ValueBus_167_enable,
        ValueBus_167_Value => ValueBus_167_Value,
        ValueBus_167_LastValue => ValueBus_167_LastValue,
        ValueBus_168_enable => ValueBus_168_enable,
        ValueBus_168_Value => ValueBus_168_Value,
        ValueBus_168_LastValue => ValueBus_168_LastValue,
        ValueBus_169_enable => ValueBus_169_enable,
        ValueBus_169_Value => ValueBus_169_Value,
        ValueBus_169_LastValue => ValueBus_169_LastValue,
        ValueBus_170_enable => ValueBus_170_enable,
        ValueBus_170_Value => ValueBus_170_Value,
        ValueBus_170_LastValue => ValueBus_170_LastValue,
        ValueBus_171_enable => ValueBus_171_enable,
        ValueBus_171_Value => ValueBus_171_Value,
        ValueBus_171_LastValue => ValueBus_171_LastValue,
        ValueBus_172_enable => ValueBus_172_enable,
        ValueBus_172_Value => ValueBus_172_Value,
        ValueBus_172_LastValue => ValueBus_172_LastValue,
        ValueBus_173_enable => ValueBus_173_enable,
        ValueBus_173_Value => ValueBus_173_Value,
        ValueBus_173_LastValue => ValueBus_173_LastValue,
        ValueBus_177_enable => ValueBus_177_enable,
        ValueBus_177_Value => ValueBus_177_Value,
        ValueBus_177_LastValue => ValueBus_177_LastValue,
        ValueBus_174_enable => ValueBus_174_enable,
        ValueBus_174_Value => ValueBus_174_Value,
        ValueBus_174_LastValue => ValueBus_174_LastValue,
        ValueBus_178_enable => ValueBus_178_enable,
        ValueBus_178_Value => ValueBus_178_Value,
        ValueBus_178_LastValue => ValueBus_178_LastValue,
        ValueBus_179_enable => ValueBus_179_enable,
        ValueBus_179_Value => ValueBus_179_Value,
        ValueBus_179_LastValue => ValueBus_179_LastValue,
        ValueBus_180_enable => ValueBus_180_enable,
        ValueBus_180_Value => ValueBus_180_Value,
        ValueBus_180_LastValue => ValueBus_180_LastValue,
        ValueBus_181_enable => ValueBus_181_enable,
        ValueBus_181_Value => ValueBus_181_Value,
        ValueBus_181_LastValue => ValueBus_181_LastValue,
        ValueBus_182_enable => ValueBus_182_enable,
        ValueBus_182_Value => ValueBus_182_Value,
        ValueBus_182_LastValue => ValueBus_182_LastValue,
        ValueBus_183_enable => ValueBus_183_enable,
        ValueBus_183_Value => ValueBus_183_Value,
        ValueBus_183_LastValue => ValueBus_183_LastValue,
        ValueBus_184_enable => ValueBus_184_enable,
        ValueBus_184_Value => ValueBus_184_Value,
        ValueBus_184_LastValue => ValueBus_184_LastValue,
        ValueBus_185_enable => ValueBus_185_enable,
        ValueBus_185_Value => ValueBus_185_Value,
        ValueBus_185_LastValue => ValueBus_185_LastValue,
        ValueBus_186_enable => ValueBus_186_enable,
        ValueBus_186_Value => ValueBus_186_Value,
        ValueBus_186_LastValue => ValueBus_186_LastValue,
        ValueBus_187_enable => ValueBus_187_enable,
        ValueBus_187_Value => ValueBus_187_Value,
        ValueBus_187_LastValue => ValueBus_187_LastValue,
        ValueBus_188_enable => ValueBus_188_enable,
        ValueBus_188_Value => ValueBus_188_Value,
        ValueBus_188_LastValue => ValueBus_188_LastValue,
        ValueBus_189_enable => ValueBus_189_enable,
        ValueBus_189_Value => ValueBus_189_Value,
        ValueBus_189_LastValue => ValueBus_189_LastValue,
        ValueBus_190_enable => ValueBus_190_enable,
        ValueBus_190_Value => ValueBus_190_Value,
        ValueBus_190_LastValue => ValueBus_190_LastValue,
        ValueBus_191_enable => ValueBus_191_enable,
        ValueBus_191_Value => ValueBus_191_Value,
        ValueBus_191_LastValue => ValueBus_191_LastValue,
        ValueBus_192_enable => ValueBus_192_enable,
        ValueBus_192_Value => ValueBus_192_Value,
        ValueBus_192_LastValue => ValueBus_192_LastValue,
        ValueBus_193_enable => ValueBus_193_enable,
        ValueBus_193_Value => ValueBus_193_Value,
        ValueBus_193_LastValue => ValueBus_193_LastValue,
        ValueBus_194_enable => ValueBus_194_enable,
        ValueBus_194_Value => ValueBus_194_Value,
        ValueBus_194_LastValue => ValueBus_194_LastValue,
        ValueBus_195_enable => ValueBus_195_enable,
        ValueBus_195_Value => ValueBus_195_Value,
        ValueBus_195_LastValue => ValueBus_195_LastValue,
        ValueBus_196_enable => ValueBus_196_enable,
        ValueBus_196_Value => ValueBus_196_Value,
        ValueBus_196_LastValue => ValueBus_196_LastValue,
        ValueBus_197_enable => ValueBus_197_enable,
        ValueBus_197_Value => ValueBus_197_Value,
        ValueBus_197_LastValue => ValueBus_197_LastValue,
        ValueBus_198_enable => ValueBus_198_enable,
        ValueBus_198_Value => ValueBus_198_Value,
        ValueBus_198_LastValue => ValueBus_198_LastValue,
        ValueBus_199_enable => ValueBus_199_enable,
        ValueBus_199_Value => ValueBus_199_Value,
        ValueBus_199_LastValue => ValueBus_199_LastValue,
        ValueBus_200_enable => ValueBus_200_enable,
        ValueBus_200_Value => ValueBus_200_Value,
        ValueBus_200_LastValue => ValueBus_200_LastValue,
        ValueBus_201_enable => ValueBus_201_enable,
        ValueBus_201_Value => ValueBus_201_Value,
        ValueBus_201_LastValue => ValueBus_201_LastValue,
        ValueBus_202_enable => ValueBus_202_enable,
        ValueBus_202_Value => ValueBus_202_Value,
        ValueBus_202_LastValue => ValueBus_202_LastValue,
        ValueBus_203_enable => ValueBus_203_enable,
        ValueBus_203_Value => ValueBus_203_Value,
        ValueBus_203_LastValue => ValueBus_203_LastValue,
        ValueBus_204_enable => ValueBus_204_enable,
        ValueBus_204_Value => ValueBus_204_Value,
        ValueBus_204_LastValue => ValueBus_204_LastValue,
        ValueBus_205_enable => ValueBus_205_enable,
        ValueBus_205_Value => ValueBus_205_Value,
        ValueBus_205_LastValue => ValueBus_205_LastValue,
        ValueBus_206_enable => ValueBus_206_enable,
        ValueBus_206_Value => ValueBus_206_Value,
        ValueBus_206_LastValue => ValueBus_206_LastValue,
        ValueBus_207_enable => ValueBus_207_enable,
        ValueBus_207_Value => ValueBus_207_Value,
        ValueBus_207_LastValue => ValueBus_207_LastValue,
        ValueBus_208_enable => ValueBus_208_enable,
        ValueBus_208_Value => ValueBus_208_Value,
        ValueBus_208_LastValue => ValueBus_208_LastValue,
        ValueBus_209_enable => ValueBus_209_enable,
        ValueBus_209_Value => ValueBus_209_Value,
        ValueBus_209_LastValue => ValueBus_209_LastValue,
        ValueBus_210_enable => ValueBus_210_enable,
        ValueBus_210_Value => ValueBus_210_Value,
        ValueBus_210_LastValue => ValueBus_210_LastValue,
        ValueBus_211_enable => ValueBus_211_enable,
        ValueBus_211_Value => ValueBus_211_Value,
        ValueBus_211_LastValue => ValueBus_211_LastValue,
        ValueBus_212_enable => ValueBus_212_enable,
        ValueBus_212_Value => ValueBus_212_Value,
        ValueBus_212_LastValue => ValueBus_212_LastValue,
        ValueBus_213_enable => ValueBus_213_enable,
        ValueBus_213_Value => ValueBus_213_Value,
        ValueBus_213_LastValue => ValueBus_213_LastValue,
        ValueBus_214_enable => ValueBus_214_enable,
        ValueBus_214_Value => ValueBus_214_Value,
        ValueBus_214_LastValue => ValueBus_214_LastValue,
        ValueBus_215_enable => ValueBus_215_enable,
        ValueBus_215_Value => ValueBus_215_Value,
        ValueBus_215_LastValue => ValueBus_215_LastValue,
        ValueBus_216_enable => ValueBus_216_enable,
        ValueBus_216_Value => ValueBus_216_Value,
        ValueBus_216_LastValue => ValueBus_216_LastValue,
        ValueBus_217_enable => ValueBus_217_enable,
        ValueBus_217_Value => ValueBus_217_Value,
        ValueBus_217_LastValue => ValueBus_217_LastValue,
        ValueBus_218_enable => ValueBus_218_enable,
        ValueBus_218_Value => ValueBus_218_Value,
        ValueBus_218_LastValue => ValueBus_218_LastValue,
        ValueBus_219_enable => ValueBus_219_enable,
        ValueBus_219_Value => ValueBus_219_Value,
        ValueBus_219_LastValue => ValueBus_219_LastValue,
        ValueBus_220_enable => ValueBus_220_enable,
        ValueBus_220_Value => ValueBus_220_Value,
        ValueBus_220_LastValue => ValueBus_220_LastValue,
        ValueBus_221_enable => ValueBus_221_enable,
        ValueBus_221_Value => ValueBus_221_Value,
        ValueBus_221_LastValue => ValueBus_221_LastValue,
        ValueBus_222_enable => ValueBus_222_enable,
        ValueBus_222_Value => ValueBus_222_Value,
        ValueBus_222_LastValue => ValueBus_222_LastValue,
        ValueBus_223_enable => ValueBus_223_enable,
        ValueBus_223_Value => ValueBus_223_Value,
        ValueBus_223_LastValue => ValueBus_223_LastValue,
        ValueBus_224_enable => ValueBus_224_enable,
        ValueBus_224_Value => ValueBus_224_Value,
        ValueBus_224_LastValue => ValueBus_224_LastValue,
        ValueBus_225_enable => ValueBus_225_enable,
        ValueBus_225_Value => ValueBus_225_Value,
        ValueBus_225_LastValue => ValueBus_225_LastValue,
        TrueDualPortMemory_1_IControl_Single_14_IsWriting => TrueDualPortMemory_1_IControl_Single_14_IsWriting,
        TrueDualPortMemory_1_IControl_Single_14_Enabled => TrueDualPortMemory_1_IControl_Single_14_Enabled,
        TrueDualPortMemory_1_IControl_Single_14_Address => TrueDualPortMemory_1_IControl_Single_14_Address,
        TrueDualPortMemory_1_IControl_Single_14_Data => TrueDualPortMemory_1_IControl_Single_14_Data,
        TrueDualPortMemory_1_IControl_Single_15_IsWriting => TrueDualPortMemory_1_IControl_Single_15_IsWriting,
        TrueDualPortMemory_1_IControl_Single_15_Enabled => TrueDualPortMemory_1_IControl_Single_15_Enabled,
        TrueDualPortMemory_1_IControl_Single_15_Address => TrueDualPortMemory_1_IControl_Single_15_Address,
        TrueDualPortMemory_1_IControl_Single_15_Data => TrueDualPortMemory_1_IControl_Single_15_Data,
        TrueDualPortMemory_1_IReadResult_Single_14_Data => TrueDualPortMemory_1_IReadResult_Single_14_Data,
        TrueDualPortMemory_1_IReadResult_Single_15_Data => TrueDualPortMemory_1_IReadResult_Single_15_Data,
        ValueBus_226_enable => ValueBus_226_enable,
        ValueBus_226_Value => ValueBus_226_Value,
        ValueBus_226_LastValue => ValueBus_226_LastValue,
        ValueBus_227_enable => ValueBus_227_enable,
        ValueBus_227_Value => ValueBus_227_Value,
        ValueBus_227_LastValue => ValueBus_227_LastValue,
        ValueBus_240_enable => ValueBus_240_enable,
        ValueBus_240_Value => ValueBus_240_Value,
        ValueBus_240_LastValue => ValueBus_240_LastValue,
        TrueDualPortMemory_1_IControl_Single_16_IsWriting => TrueDualPortMemory_1_IControl_Single_16_IsWriting,
        TrueDualPortMemory_1_IControl_Single_16_Enabled => TrueDualPortMemory_1_IControl_Single_16_Enabled,
        TrueDualPortMemory_1_IControl_Single_16_Address => TrueDualPortMemory_1_IControl_Single_16_Address,
        TrueDualPortMemory_1_IControl_Single_16_Data => TrueDualPortMemory_1_IControl_Single_16_Data,
        TrueDualPortMemory_1_IControl_Single_17_IsWriting => TrueDualPortMemory_1_IControl_Single_17_IsWriting,
        TrueDualPortMemory_1_IControl_Single_17_Enabled => TrueDualPortMemory_1_IControl_Single_17_Enabled,
        TrueDualPortMemory_1_IControl_Single_17_Address => TrueDualPortMemory_1_IControl_Single_17_Address,
        TrueDualPortMemory_1_IControl_Single_17_Data => TrueDualPortMemory_1_IControl_Single_17_Data,
        TrueDualPortMemory_1_IReadResult_Single_16_Data => TrueDualPortMemory_1_IReadResult_Single_16_Data,
        TrueDualPortMemory_1_IReadResult_Single_17_Data => TrueDualPortMemory_1_IReadResult_Single_17_Data,
        ValueBus_229_enable => ValueBus_229_enable,
        ValueBus_229_Value => ValueBus_229_Value,
        ValueBus_229_LastValue => ValueBus_229_LastValue,
        ValueBus_230_enable => ValueBus_230_enable,
        ValueBus_230_Value => ValueBus_230_Value,
        ValueBus_230_LastValue => ValueBus_230_LastValue,
        TrueDualPortMemory_1_IControl_Single_18_IsWriting => TrueDualPortMemory_1_IControl_Single_18_IsWriting,
        TrueDualPortMemory_1_IControl_Single_18_Enabled => TrueDualPortMemory_1_IControl_Single_18_Enabled,
        TrueDualPortMemory_1_IControl_Single_18_Address => TrueDualPortMemory_1_IControl_Single_18_Address,
        TrueDualPortMemory_1_IControl_Single_18_Data => TrueDualPortMemory_1_IControl_Single_18_Data,
        TrueDualPortMemory_1_IControl_Single_19_IsWriting => TrueDualPortMemory_1_IControl_Single_19_IsWriting,
        TrueDualPortMemory_1_IControl_Single_19_Enabled => TrueDualPortMemory_1_IControl_Single_19_Enabled,
        TrueDualPortMemory_1_IControl_Single_19_Address => TrueDualPortMemory_1_IControl_Single_19_Address,
        TrueDualPortMemory_1_IControl_Single_19_Data => TrueDualPortMemory_1_IControl_Single_19_Data,
        TrueDualPortMemory_1_IReadResult_Single_18_Data => TrueDualPortMemory_1_IReadResult_Single_18_Data,
        TrueDualPortMemory_1_IReadResult_Single_19_Data => TrueDualPortMemory_1_IReadResult_Single_19_Data,
        ValueBus_232_enable => ValueBus_232_enable,
        ValueBus_232_Value => ValueBus_232_Value,
        ValueBus_232_LastValue => ValueBus_232_LastValue,
        ValueBus_233_enable => ValueBus_233_enable,
        ValueBus_233_Value => ValueBus_233_Value,
        ValueBus_233_LastValue => ValueBus_233_LastValue,
        TrueDualPortMemory_1_IControl_Single_20_IsWriting => TrueDualPortMemory_1_IControl_Single_20_IsWriting,
        TrueDualPortMemory_1_IControl_Single_20_Enabled => TrueDualPortMemory_1_IControl_Single_20_Enabled,
        TrueDualPortMemory_1_IControl_Single_20_Address => TrueDualPortMemory_1_IControl_Single_20_Address,
        TrueDualPortMemory_1_IControl_Single_20_Data => TrueDualPortMemory_1_IControl_Single_20_Data,
        TrueDualPortMemory_1_IControl_Single_21_IsWriting => TrueDualPortMemory_1_IControl_Single_21_IsWriting,
        TrueDualPortMemory_1_IControl_Single_21_Enabled => TrueDualPortMemory_1_IControl_Single_21_Enabled,
        TrueDualPortMemory_1_IControl_Single_21_Address => TrueDualPortMemory_1_IControl_Single_21_Address,
        TrueDualPortMemory_1_IControl_Single_21_Data => TrueDualPortMemory_1_IControl_Single_21_Data,
        TrueDualPortMemory_1_IReadResult_Single_20_Data => TrueDualPortMemory_1_IReadResult_Single_20_Data,
        TrueDualPortMemory_1_IReadResult_Single_21_Data => TrueDualPortMemory_1_IReadResult_Single_21_Data,
        ValueBus_235_enable => ValueBus_235_enable,
        ValueBus_235_Value => ValueBus_235_Value,
        ValueBus_235_LastValue => ValueBus_235_LastValue,
        ValueBus_236_enable => ValueBus_236_enable,
        ValueBus_236_Value => ValueBus_236_Value,
        ValueBus_236_LastValue => ValueBus_236_LastValue,
        TrueDualPortMemory_1_IControl_Single_22_IsWriting => TrueDualPortMemory_1_IControl_Single_22_IsWriting,
        TrueDualPortMemory_1_IControl_Single_22_Enabled => TrueDualPortMemory_1_IControl_Single_22_Enabled,
        TrueDualPortMemory_1_IControl_Single_22_Address => TrueDualPortMemory_1_IControl_Single_22_Address,
        TrueDualPortMemory_1_IControl_Single_22_Data => TrueDualPortMemory_1_IControl_Single_22_Data,
        TrueDualPortMemory_1_IControl_Single_23_IsWriting => TrueDualPortMemory_1_IControl_Single_23_IsWriting,
        TrueDualPortMemory_1_IControl_Single_23_Enabled => TrueDualPortMemory_1_IControl_Single_23_Enabled,
        TrueDualPortMemory_1_IControl_Single_23_Address => TrueDualPortMemory_1_IControl_Single_23_Address,
        TrueDualPortMemory_1_IControl_Single_23_Data => TrueDualPortMemory_1_IControl_Single_23_Data,
        TrueDualPortMemory_1_IReadResult_Single_22_Data => TrueDualPortMemory_1_IReadResult_Single_22_Data,
        TrueDualPortMemory_1_IReadResult_Single_23_Data => TrueDualPortMemory_1_IReadResult_Single_23_Data,
        ValueBus_238_enable => ValueBus_238_enable,
        ValueBus_238_Value => ValueBus_238_Value,
        ValueBus_238_LastValue => ValueBus_238_LastValue,
        ValueBus_239_enable => ValueBus_239_enable,
        ValueBus_239_Value => ValueBus_239_Value,
        ValueBus_239_LastValue => ValueBus_239_LastValue,
        TrueDualPortMemory_1_IControl_Single_24_IsWriting => TrueDualPortMemory_1_IControl_Single_24_IsWriting,
        TrueDualPortMemory_1_IControl_Single_24_Enabled => TrueDualPortMemory_1_IControl_Single_24_Enabled,
        TrueDualPortMemory_1_IControl_Single_24_Address => TrueDualPortMemory_1_IControl_Single_24_Address,
        TrueDualPortMemory_1_IControl_Single_24_Data => TrueDualPortMemory_1_IControl_Single_24_Data,
        TrueDualPortMemory_1_IControl_Single_25_IsWriting => TrueDualPortMemory_1_IControl_Single_25_IsWriting,
        TrueDualPortMemory_1_IControl_Single_25_Enabled => TrueDualPortMemory_1_IControl_Single_25_Enabled,
        TrueDualPortMemory_1_IControl_Single_25_Address => TrueDualPortMemory_1_IControl_Single_25_Address,
        TrueDualPortMemory_1_IControl_Single_25_Data => TrueDualPortMemory_1_IControl_Single_25_Data,
        TrueDualPortMemory_1_IReadResult_Single_24_Data => TrueDualPortMemory_1_IReadResult_Single_24_Data,
        TrueDualPortMemory_1_IReadResult_Single_25_Data => TrueDualPortMemory_1_IReadResult_Single_25_Data,
        ValueBus_241_enable => ValueBus_241_enable,
        ValueBus_241_Value => ValueBus_241_Value,
        ValueBus_241_LastValue => ValueBus_241_LastValue,
        ValueBus_242_enable => ValueBus_242_enable,
        ValueBus_242_Value => ValueBus_242_Value,
        ValueBus_242_LastValue => ValueBus_242_LastValue,
        ValueBus_243_enable => ValueBus_243_enable,
        ValueBus_243_Value => ValueBus_243_Value,
        ValueBus_243_LastValue => ValueBus_243_LastValue,
        ValueBus_244_enable => ValueBus_244_enable,
        ValueBus_244_Value => ValueBus_244_Value,
        ValueBus_244_LastValue => ValueBus_244_LastValue,
        ValueBus_245_enable => ValueBus_245_enable,
        ValueBus_245_Value => ValueBus_245_Value,
        ValueBus_245_LastValue => ValueBus_245_LastValue,
        TrueDualPortMemory_1_IControl_Single_26_IsWriting => TrueDualPortMemory_1_IControl_Single_26_IsWriting,
        TrueDualPortMemory_1_IControl_Single_26_Enabled => TrueDualPortMemory_1_IControl_Single_26_Enabled,
        TrueDualPortMemory_1_IControl_Single_26_Address => TrueDualPortMemory_1_IControl_Single_26_Address,
        TrueDualPortMemory_1_IControl_Single_26_Data => TrueDualPortMemory_1_IControl_Single_26_Data,
        TrueDualPortMemory_1_IControl_Single_27_IsWriting => TrueDualPortMemory_1_IControl_Single_27_IsWriting,
        TrueDualPortMemory_1_IControl_Single_27_Enabled => TrueDualPortMemory_1_IControl_Single_27_Enabled,
        TrueDualPortMemory_1_IControl_Single_27_Address => TrueDualPortMemory_1_IControl_Single_27_Address,
        TrueDualPortMemory_1_IControl_Single_27_Data => TrueDualPortMemory_1_IControl_Single_27_Data,
        TrueDualPortMemory_1_IReadResult_Single_26_Data => TrueDualPortMemory_1_IReadResult_Single_26_Data,
        TrueDualPortMemory_1_IReadResult_Single_27_Data => TrueDualPortMemory_1_IReadResult_Single_27_Data,
        ValueBus_246_enable => ValueBus_246_enable,
        ValueBus_246_Value => ValueBus_246_Value,
        ValueBus_246_LastValue => ValueBus_246_LastValue,
        ValueBus_247_enable => ValueBus_247_enable,
        ValueBus_247_Value => ValueBus_247_Value,
        ValueBus_247_LastValue => ValueBus_247_LastValue,
        ValueBus_248_enable => ValueBus_248_enable,
        ValueBus_248_Value => ValueBus_248_Value,
        ValueBus_248_LastValue => ValueBus_248_LastValue,
        ValueBus_249_enable => ValueBus_249_enable,
        ValueBus_249_Value => ValueBus_249_Value,
        ValueBus_249_LastValue => ValueBus_249_LastValue,
        ValueBus_250_enable => ValueBus_250_enable,
        ValueBus_250_Value => ValueBus_250_Value,
        ValueBus_250_LastValue => ValueBus_250_LastValue,
        ValueBus_253_enable => ValueBus_253_enable,
        ValueBus_253_Value => ValueBus_253_Value,
        ValueBus_253_LastValue => ValueBus_253_LastValue,
        ValueBus_251_enable => ValueBus_251_enable,
        ValueBus_251_Value => ValueBus_251_Value,
        ValueBus_251_LastValue => ValueBus_251_LastValue,
        ValueBus_254_enable => ValueBus_254_enable,
        ValueBus_254_Value => ValueBus_254_Value,
        ValueBus_254_LastValue => ValueBus_254_LastValue,
        ValueBus_255_enable => ValueBus_255_enable,
        ValueBus_255_Value => ValueBus_255_Value,
        ValueBus_255_LastValue => ValueBus_255_LastValue,
        ValueBus_256_enable => ValueBus_256_enable,
        ValueBus_256_Value => ValueBus_256_Value,
        ValueBus_256_LastValue => ValueBus_256_LastValue,

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
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#10.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#10.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#10.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#10.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#10.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#10.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#10.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#10.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#11.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#11.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#11.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#11.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#11.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#11.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#11.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#11.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#12.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#12.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#12.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#12.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#12.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#12.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#12.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#12.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#13.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#13.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#13.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#13.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#13.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#13.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#13.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#13.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#14.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#14.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#14.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#14.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#14.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#14.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#14.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#14.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#15.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#15.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#15.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#15.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#15.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#15.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#15.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#15.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#16.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#16.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#16.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#16.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#16.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#16.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#16.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#16.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#17.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#17.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#17.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#17.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#17.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#17.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#17.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#17.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#18.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#18.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#18.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#18.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#18.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#18.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#18.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#18.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#19.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#19.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#19.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#19.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#19.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#19.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#19.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#19.IsWriting" severity Failure;
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
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#20.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#20.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#20.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#20.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#20.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#20.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#20.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#20.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#21.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#21.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#21.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#21.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#21.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#21.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#21.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#21.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#22.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#22.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#22.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#22.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#22.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#22.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#22.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#22.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#23.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#23.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#23.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#23.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#23.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#23.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#23.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#23.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#24.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#24.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#24.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#24.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#24.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#24.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#24.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#24.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#25.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#25.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#25.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#25.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#25.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#25.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#25.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#25.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#26.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#26.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#26.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#26.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#26.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#26.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#26.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#26.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#27.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#27.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#27.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#27.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#27.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#27.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#27.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#27.IsWriting" severity Failure;
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
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#6.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#6.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#6.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#6.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#6.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#6.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#6.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#6.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#7.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#7.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#7.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#7.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#7.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#7.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#7.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#7.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#8.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#8.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#8.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#8.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#8.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#8.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#8.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#8.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#9.Address") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#9.Address" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#9.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#9.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#9.Enabled") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#9.Enabled" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IControl<Single>#9.IsWriting") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IControl<Single>#9.IsWriting" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#0.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#0.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#1.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#1.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#10.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#10.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#11.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#11.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#12.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#12.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#13.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#13.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#14.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#14.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#15.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#15.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#16.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#16.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#17.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#17.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#18.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#18.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#19.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#19.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#2.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#2.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#20.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#20.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#21.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#21.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#22.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#22.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#23.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#23.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#24.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#24.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#25.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#25.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#26.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#26.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#27.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#27.Data" severity Failure;
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
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#6.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#6.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#7.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#7.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#8.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#8.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#9.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#9.Data" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#10.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#10.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#10.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#10.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#10.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#10.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#11.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#11.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#11.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#11.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#11.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#11.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#118.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#118.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#118.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#118.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#118.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#118.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#119.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#119.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#119.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#119.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#119.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#119.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#12.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#12.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#12.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#12.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#12.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#12.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#120.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#120.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#120.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#120.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#120.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#120.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#144.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#144.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#144.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#144.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#144.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#144.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#145.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#145.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#145.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#145.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#145.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#145.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#146.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#146.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#146.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#146.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#146.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#146.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#147.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#147.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#147.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#147.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#147.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#147.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#151.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#151.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#151.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#151.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#151.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#151.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#152.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#152.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#152.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#152.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#152.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#152.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#153.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#153.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#153.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#153.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#153.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#153.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#154.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#154.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#154.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#154.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#154.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#154.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#155.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#155.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#155.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#155.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#155.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#155.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#156.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#156.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#156.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#156.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#156.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#156.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#157.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#157.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#157.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#157.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#157.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#157.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#158.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#158.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#158.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#158.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#158.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#158.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#159.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#159.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#159.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#159.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#159.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#159.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#160.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#160.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#160.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#160.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#160.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#160.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#161.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#161.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#161.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#161.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#161.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#161.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#162.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#162.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#162.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#162.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#162.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#162.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#163.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#163.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#163.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#163.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#163.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#163.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#164.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#164.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#164.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#164.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#164.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#164.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#165.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#165.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#165.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#165.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#165.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#165.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#166.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#166.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#166.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#166.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#166.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#166.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#167.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#167.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#167.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#167.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#167.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#167.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#168.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#168.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#168.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#168.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#168.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#168.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#169.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#169.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#169.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#169.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#169.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#169.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#170.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#170.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#170.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#170.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#170.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#170.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#171.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#171.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#171.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#171.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#171.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#171.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#172.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#172.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#172.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#172.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#172.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#172.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#173.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#173.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#173.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#173.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#173.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#173.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#174.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#174.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#174.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#174.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#174.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#174.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#178.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#178.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#178.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#178.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#178.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#178.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#179.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#179.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#179.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#179.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#179.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#179.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#180.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#180.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#180.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#180.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#180.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#180.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#181.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#181.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#181.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#181.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#181.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#181.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#182.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#182.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#182.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#182.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#182.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#182.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#183.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#183.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#183.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#183.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#183.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#183.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#184.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#184.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#184.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#184.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#184.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#184.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#185.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#185.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#185.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#185.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#185.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#185.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#186.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#186.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#186.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#186.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#186.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#186.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#187.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#187.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#187.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#187.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#187.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#187.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#188.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#188.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#188.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#188.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#188.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#188.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#189.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#189.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#189.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#189.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#189.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#189.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#190.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#190.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#190.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#190.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#190.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#190.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#191.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#191.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#191.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#191.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#191.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#191.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#192.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#192.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#192.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#192.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#192.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#192.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#193.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#193.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#193.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#193.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#193.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#193.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#194.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#194.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#194.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#194.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#194.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#194.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#195.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#195.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#195.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#195.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#195.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#195.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#196.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#196.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#196.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#196.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#196.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#196.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#197.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#197.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#197.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#197.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#197.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#197.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#198.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#198.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#198.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#198.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#198.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#198.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#199.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#199.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#199.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#199.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#199.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#199.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#200.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#200.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#200.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#200.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#200.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#200.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#201.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#201.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#201.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#201.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#201.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#201.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#202.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#202.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#202.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#202.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#202.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#202.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#203.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#203.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#203.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#203.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#203.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#203.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#204.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#204.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#204.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#204.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#204.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#204.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#205.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#205.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#205.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#205.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#205.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#205.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#206.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#206.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#206.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#206.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#206.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#206.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#207.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#207.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#207.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#207.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#207.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#207.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#208.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#208.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#208.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#208.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#208.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#208.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#209.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#209.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#209.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#209.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#209.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#209.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#210.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#210.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#210.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#210.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#210.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#210.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#211.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#211.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#211.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#211.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#211.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#211.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#212.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#212.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#212.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#212.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#212.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#212.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#213.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#213.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#213.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#213.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#213.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#213.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#214.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#214.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#214.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#214.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#214.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#214.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#215.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#215.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#215.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#215.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#215.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#215.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#216.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#216.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#216.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#216.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#216.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#216.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#217.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#217.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#217.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#217.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#217.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#217.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#218.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#218.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#218.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#218.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#218.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#218.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#219.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#219.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#219.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#219.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#219.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#219.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#220.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#220.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#220.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#220.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#220.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#220.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#221.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#221.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#221.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#221.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#221.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#221.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#222.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#222.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#222.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#222.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#222.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#222.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#223.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#223.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#223.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#223.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#223.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#223.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#224.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#224.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#224.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#224.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#224.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#224.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#225.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#225.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#225.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#225.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#225.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#225.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#226.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#226.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#226.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#226.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#226.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#226.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#227.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#227.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#227.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#227.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#227.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#227.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#229.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#229.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#229.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#229.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#229.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#229.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#230.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#230.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#230.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#230.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#230.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#230.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#232.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#232.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#232.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#232.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#232.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#232.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#233.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#233.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#233.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#233.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#233.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#233.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#235.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#235.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#235.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#235.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#235.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#235.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#236.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#236.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#236.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#236.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#236.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#236.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#238.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#238.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#238.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#238.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#238.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#238.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#239.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#239.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#239.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#239.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#239.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#239.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#3.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#3.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#3.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#3.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#3.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#3.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#241.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#241.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#241.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#241.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#241.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#241.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#242.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#242.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#242.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#242.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#242.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#242.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#243.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#243.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#243.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#243.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#243.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#243.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#244.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#244.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#244.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#244.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#244.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#244.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#245.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#245.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#245.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#245.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#245.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#245.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#246.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#246.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#246.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#246.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#246.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#246.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#247.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#247.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#247.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#247.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#247.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#247.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#248.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#248.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#248.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#248.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#248.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#248.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#249.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#249.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#249.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#249.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#249.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#249.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#250.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#250.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#250.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#250.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#250.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#250.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#251.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#251.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#251.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#251.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#251.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#251.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#254.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#254.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#254.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#254.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#254.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#254.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#255.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#255.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#255.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#255.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#255.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#255.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#256.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#256.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#256.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#256.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#256.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#256.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#37.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#37.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#37.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#37.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#37.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#37.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#38.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#38.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#38.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#38.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#38.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#38.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#39.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#39.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#39.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#39.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#39.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#39.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#5.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#5.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#5.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#5.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#5.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#5.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#64.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#64.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#64.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#64.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#64.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#64.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#65.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#65.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#65.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#65.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#65.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#65.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#66.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#66.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#66.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#66.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#66.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#66.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#8.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#91.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#91.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#91.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#91.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#91.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#91.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#92.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#92.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#92.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#92.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#92.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#92.Value" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#93.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#93.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#93.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#93.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#93.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#93.Value" severity Failure;
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
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_10_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_10_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_10_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_10_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_10_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_10_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_10_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_10_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_10_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_10_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_10_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_10_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_11_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_11_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_11_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_11_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_11_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_11_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_11_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_11_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_11_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_11_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_11_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_11_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_12_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_12_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_12_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_12_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_12_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_12_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_12_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_12_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_12_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_12_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_12_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_12_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_13_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_13_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_13_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_13_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_13_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_13_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_13_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_13_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_13_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_13_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_13_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_13_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_14_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_14_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_14_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_14_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_14_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_14_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_14_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_14_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_14_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_14_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_14_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_14_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_15_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_15_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_15_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_15_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_15_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_15_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_15_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_15_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_15_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_15_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_15_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_15_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_16_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_16_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_16_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_16_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_16_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_16_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_16_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_16_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_16_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_16_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_16_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_16_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_17_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_17_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_17_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_17_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_17_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_17_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_17_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_17_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_17_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_17_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_17_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_17_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_18_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_18_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_18_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_18_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_18_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_18_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_18_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_18_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_18_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_18_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_18_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_18_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_19_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_19_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_19_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_19_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_19_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_19_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_19_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_19_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_19_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_19_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_19_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_19_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_20_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_20_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_20_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_20_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_20_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_20_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_20_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_20_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_20_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_20_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_20_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_20_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_21_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_21_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_21_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_21_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_21_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_21_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_21_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_21_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_21_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_21_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_21_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_21_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_22_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_22_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_22_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_22_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_22_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_22_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_22_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_22_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_22_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_22_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_22_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_22_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_23_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_23_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_23_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_23_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_23_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_23_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_23_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_23_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_23_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_23_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_23_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_23_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_24_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_24_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_24_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_24_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_24_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_24_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_24_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_24_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_24_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_24_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_24_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_24_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_25_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_25_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_25_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_25_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_25_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_25_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_25_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_25_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_25_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_25_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_25_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_25_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_26_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_26_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_26_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_26_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_26_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_26_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_26_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_26_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_26_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_26_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_26_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_26_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_27_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_27_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_27_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_27_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_27_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_27_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_27_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_27_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_27_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_27_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_27_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_27_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_6_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_6_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_6_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_6_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_6_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_6_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_6_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_6_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_6_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_6_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_6_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_6_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_7_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_7_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_7_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_7_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_7_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_7_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_7_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_7_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_7_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_7_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_7_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_7_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_8_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_8_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_8_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_8_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_8_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_8_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_8_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_8_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_8_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_8_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_8_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_8_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_9_Address), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_9_Address in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_9_Address) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_9_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_9_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_9_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_9_Enabled), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_9_Enabled in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_9_Enabled) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IControl_Single_9_IsWriting), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IControl_Single_9_IsWriting in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IControl_Single_9_IsWriting) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_10_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_10_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_10_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_11_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_11_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_11_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_12_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_12_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_12_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_13_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_13_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_13_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_14_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_14_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_14_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_15_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_15_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_15_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_16_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_16_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_16_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_17_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_17_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_17_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_18_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_18_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_18_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_19_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_19_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_19_Data) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_20_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_20_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_20_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_21_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_21_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_21_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_22_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_22_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_22_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_23_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_23_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_23_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_24_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_24_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_24_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_25_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_25_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_25_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_26_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_26_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_26_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_27_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_27_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_27_Data) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_6_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_6_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_6_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_7_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_7_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_7_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_8_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_8_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_8_Data) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(TrueDualPortMemory_1_IReadResult_Single_9_Data), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for TrueDualPortMemory_1_IReadResult_Single_9_Data in cycle " & integer'image(clockcycle) & " was: " & str(TrueDualPortMemory_1_IReadResult_Single_9_Data) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_10_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_10_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_10_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_10_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_10_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_10_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_10_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_10_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_10_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_11_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_11_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_11_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_11_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_11_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_11_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_11_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_11_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_11_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_118_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_118_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_118_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_118_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_118_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_118_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_118_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_118_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_118_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_119_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_119_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_119_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_119_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_119_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_119_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_119_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_119_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_119_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_12_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_12_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_12_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_120_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_120_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_120_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_123_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_123_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_123_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_144_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_144_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_144_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_144_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_144_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_144_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_144_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_144_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_144_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_145_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_145_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_145_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_145_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_145_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_145_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_145_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_145_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_145_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_146_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_146_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_146_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_146_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_146_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_146_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_146_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_146_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_146_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_147_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_147_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_147_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_147_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_147_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_147_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_147_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_147_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_147_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_150_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_150_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_150_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_150_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_151_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_151_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_151_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_151_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_151_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_151_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_151_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_151_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_151_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_152_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_152_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_152_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_152_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_152_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_152_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_152_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_152_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_152_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_153_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_153_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_153_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_153_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_153_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_153_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_153_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_153_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_153_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_154_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_154_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_154_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_154_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_154_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_154_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_154_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_154_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_154_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_155_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_155_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_155_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_155_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_155_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_155_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_155_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_155_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_155_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_156_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_156_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_156_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_156_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_156_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_156_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_156_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_156_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_156_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_157_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_157_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_157_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_157_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_157_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_157_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_157_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_157_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_157_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_158_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_158_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_158_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_158_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_158_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_158_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_158_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_158_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_158_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_159_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_159_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_159_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_159_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_159_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_159_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_159_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_159_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_159_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_160_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_160_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_160_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_160_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_160_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_160_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_160_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_160_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_160_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_161_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_161_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_161_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_161_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_161_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_161_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_161_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_161_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_161_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_162_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_162_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_162_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_162_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_162_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_162_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_162_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_162_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_162_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_163_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_163_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_163_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_163_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_163_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_163_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_163_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_163_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_163_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_164_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_164_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_164_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_164_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_164_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_164_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_164_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_164_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_164_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_165_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_165_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_165_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_165_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_165_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_165_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_165_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_165_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_165_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_166_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_166_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_166_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_166_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_166_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_166_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_166_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_166_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_166_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_167_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_167_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_167_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_167_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_167_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_167_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_167_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_167_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_167_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_168_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_168_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_168_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_168_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_168_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_168_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_168_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_168_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_168_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_169_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_169_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_169_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_169_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_169_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_169_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_169_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_169_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_169_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_170_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_170_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_170_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_170_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_170_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_170_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_170_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_170_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_170_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_171_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_171_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_171_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_171_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_171_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_171_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_171_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_171_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_171_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_172_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_172_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_172_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_172_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_172_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_172_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_172_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_172_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_172_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_173_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_173_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_173_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_173_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_173_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_173_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_173_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_173_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_173_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_174_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_174_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_174_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_174_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_174_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_174_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_174_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_174_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_174_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_177_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_177_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_177_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_178_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_178_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_178_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_178_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_178_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_178_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_178_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_178_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_178_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_179_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_179_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_179_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_179_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_179_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_179_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_179_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_179_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_179_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_180_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_180_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_180_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_180_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_180_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_180_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_180_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_180_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_180_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_181_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_181_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_181_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_181_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_181_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_181_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_181_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_181_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_181_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_182_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_182_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_182_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_182_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_182_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_182_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_182_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_182_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_182_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_183_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_183_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_183_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_183_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_183_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_183_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_183_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_183_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_183_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_184_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_184_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_184_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_184_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_184_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_184_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_184_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_184_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_184_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_185_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_185_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_185_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_185_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_185_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_185_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_185_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_185_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_185_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_186_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_186_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_186_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_186_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_186_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_186_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_186_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_186_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_186_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_187_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_187_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_187_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_187_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_187_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_187_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_187_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_187_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_187_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_188_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_188_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_188_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_188_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_188_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_188_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_188_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_188_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_188_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_189_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_189_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_189_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_189_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_189_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_189_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_189_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_189_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_189_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_190_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_190_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_190_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_190_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_190_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_190_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_190_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_190_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_190_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_191_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_191_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_191_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_191_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_191_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_191_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_191_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_191_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_191_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_192_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_192_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_192_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_192_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_192_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_192_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_192_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_192_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_192_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_193_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_193_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_193_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_193_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_193_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_193_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_193_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_193_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_193_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_194_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_194_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_194_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_194_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_194_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_194_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_194_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_194_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_194_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_195_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_195_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_195_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_195_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_195_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_195_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_195_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_195_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_195_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_196_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_196_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_196_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_196_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_196_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_196_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_196_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_196_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_196_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_197_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_197_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_197_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_197_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_197_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_197_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_197_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_197_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_197_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_198_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_198_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_198_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_198_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_198_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_198_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_198_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_198_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_198_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_199_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_199_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_199_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_199_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_199_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_199_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_199_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_199_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_199_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_200_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_200_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_200_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_200_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_200_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_200_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_200_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_200_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_200_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_201_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_201_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_201_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_201_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_201_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_201_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_201_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_201_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_201_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_202_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_202_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_202_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_202_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_202_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_202_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_202_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_202_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_202_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_203_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_203_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_203_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_203_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_203_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_203_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_203_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_203_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_203_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_204_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_204_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_204_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_204_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_204_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_204_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_204_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_204_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_204_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_205_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_205_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_205_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_205_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_205_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_205_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_205_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_205_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_205_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_206_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_206_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_206_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_206_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_206_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_206_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_206_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_206_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_206_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_207_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_207_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_207_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_207_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_207_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_207_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_207_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_207_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_207_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_208_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_208_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_208_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_208_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_208_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_208_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_208_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_208_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_208_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_209_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_209_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_209_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_209_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_209_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_209_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_209_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_209_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_209_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_210_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_210_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_210_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_210_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_210_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_210_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_210_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_210_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_210_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_211_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_211_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_211_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_211_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_211_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_211_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_211_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_211_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_211_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_212_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_212_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_212_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_212_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_212_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_212_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_212_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_212_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_212_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_213_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_213_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_213_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_213_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_213_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_213_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_213_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_213_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_213_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_214_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_214_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_214_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_214_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_214_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_214_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_214_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_214_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_214_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_215_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_215_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_215_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_215_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_215_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_215_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_215_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_215_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_215_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_216_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_216_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_216_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_216_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_216_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_216_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_216_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_216_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_216_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_217_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_217_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_217_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_217_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_217_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_217_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_217_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_217_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_217_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_218_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_218_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_218_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_218_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_218_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_218_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_218_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_218_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_218_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_219_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_219_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_219_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_219_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_219_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_219_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_219_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_219_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_219_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_220_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_220_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_220_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_220_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_220_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_220_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_220_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_220_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_220_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_221_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_221_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_221_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_221_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_221_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_221_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_221_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_221_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_221_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_222_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_222_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_222_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_222_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_222_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_222_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_222_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_222_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_222_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_223_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_223_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_223_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_223_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_223_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_223_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_223_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_223_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_223_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_224_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_224_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_224_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_224_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_224_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_224_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_224_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_224_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_224_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_225_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_225_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_225_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_225_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_225_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_225_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_225_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_225_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_225_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_226_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_226_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_226_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_226_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_226_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_226_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_226_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_226_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_226_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_227_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_227_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_227_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_227_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_227_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_227_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_227_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_227_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_227_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_229_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_229_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_229_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_229_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_229_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_229_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_229_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_229_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_229_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_230_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_230_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_230_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_230_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_230_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_230_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_230_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_230_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_230_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_232_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_232_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_232_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_232_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_232_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_232_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_232_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_232_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_232_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_233_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_233_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_233_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_233_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_233_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_233_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_233_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_233_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_233_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_235_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_235_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_235_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_235_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_235_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_235_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_235_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_235_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_235_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_236_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_236_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_236_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_236_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_236_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_236_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_236_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_236_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_236_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_238_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_238_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_238_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_238_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_238_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_238_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_238_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_238_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_238_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_239_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_239_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_239_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_239_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_239_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_239_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_239_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_239_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_239_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_240_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_enable(3)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_enable(3) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_enable(3)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_LastValue(3)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_LastValue(3) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_LastValue(3)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_Value(3)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_Value(3) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_Value(3)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_enable(4)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_enable(4) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_enable(4)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_LastValue(4)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_LastValue(4) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_LastValue(4)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_240_Value(4)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_240_Value(4) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_240_Value(4)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_241_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_241_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_241_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_241_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_241_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_241_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_241_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_241_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_241_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_242_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_242_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_242_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_242_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_242_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_242_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_242_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_242_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_242_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_243_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_243_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_243_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_243_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_243_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_243_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_243_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_243_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_243_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_244_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_244_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_244_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_244_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_244_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_244_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_244_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_244_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_244_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_245_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_245_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_245_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_245_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_245_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_245_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_245_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_245_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_245_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_246_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_246_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_246_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_246_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_246_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_246_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_246_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_246_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_246_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_247_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_247_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_247_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_247_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_247_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_247_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_247_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_247_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_247_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_248_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_248_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_248_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_248_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_248_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_248_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_248_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_248_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_248_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_249_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_249_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_249_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_249_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_249_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_249_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_249_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_249_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_249_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_250_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_250_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_250_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_250_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_250_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_250_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_250_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_250_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_250_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_251_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_251_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_251_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_251_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_251_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_251_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_251_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_251_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_251_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_253_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_253_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_253_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_253_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_253_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_253_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_253_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_253_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_253_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_253_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_253_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_253_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_253_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_253_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_253_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_253_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_253_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_253_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_254_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_254_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_254_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_254_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_254_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_254_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_254_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_254_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_254_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_255_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_255_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_255_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_255_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_255_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_255_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_255_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_255_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_255_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_256_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_256_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_256_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_256_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_256_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_256_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_256_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_256_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_256_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_37_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_37_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_37_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_37_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_37_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_37_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_37_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_37_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_37_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_38_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_38_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_38_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_38_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_38_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_38_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_38_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_38_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_38_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_39_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_39_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_39_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_5_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_5_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_5_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_5_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_5_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_5_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_5_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_5_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_5_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_64_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_64_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_64_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_64_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_64_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_64_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_64_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_64_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_64_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_65_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_65_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_65_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_65_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_65_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_65_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_65_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_65_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_65_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_66_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_66_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_66_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_69_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_69_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_69_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_8_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_8_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_8_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_8_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_8_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_8_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_8_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_8_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_8_Value) & " but should have been: " & truncate(tmp) severity Error;
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
                    if not are_strings_equal(str(ValueBus_91_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_91_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_91_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_91_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_91_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_91_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_91_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_91_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_91_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_92_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_92_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_92_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_92_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_92_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_92_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_92_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_92_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_92_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_enable), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_enable in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_enable) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_LastValue), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_LastValue in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_LastValue) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_93_Value), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_93_Value in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_93_Value) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_enable(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_enable(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_enable(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_LastValue(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_LastValue(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_LastValue(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_Value(0)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_Value(0) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_Value(0)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_enable(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_enable(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_enable(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_LastValue(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_LastValue(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_LastValue(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_Value(1)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_Value(1) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_Value(1)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_enable(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_enable(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_enable(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_LastValue(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_LastValue(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_LastValue(2)) & " but should have been: " & truncate(tmp) severity Error;
                    end if;
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if not are_strings_equal(tmp, "U") then
                    if not are_strings_equal(str(ValueBus_96_Value(2)), tmp) then
                        newfailures := newfailures + 1;
                        report "Value for ValueBus_96_Value(2) in cycle " & integer'image(clockcycle) & " was: " & str(ValueBus_96_Value(2)) & " but should have been: " & truncate(tmp) severity Error;
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
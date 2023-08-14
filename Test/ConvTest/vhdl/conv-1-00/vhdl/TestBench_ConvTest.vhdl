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
    signal TrueDualPortMemory_1_IReadResult_Single_0_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_1_Data : T_SYSTEM_FLOAT;
    signal ValueBus_0_enable : T_SYSTEM_BOOL;
    signal ValueBus_0_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_0_Value : T_SYSTEM_FLOAT;
    signal ValueBus_1_enable : T_SYSTEM_BOOL;
    signal ValueBus_1_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_1_Value : T_SYSTEM_FLOAT;
    signal ValueBus_10_enable : T_SYSTEM_BOOL;
    signal ValueBus_10_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_10_Value : T_SYSTEM_FLOAT;
    signal ValueBus_11_enable : T_SYSTEM_BOOL;
    signal ValueBus_11_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_11_Value : T_SYSTEM_FLOAT;
    signal ValueBus_12_enable : T_SYSTEM_BOOL;
    signal ValueBus_12_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_12_Value : T_SYSTEM_FLOAT;
    signal ValueBus_13_enable : T_SYSTEM_BOOL;
    signal ValueBus_13_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_13_Value : T_SYSTEM_FLOAT;
    signal ValueBus_14_enable : T_SYSTEM_BOOL;
    signal ValueBus_14_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_14_Value : T_SYSTEM_FLOAT;
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
    signal ValueBus_4_enable : T_SYSTEM_BOOL;
    signal ValueBus_4_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_4_Value : T_SYSTEM_FLOAT;
    signal ValueBus_5_enable : T_SYSTEM_BOOL;
    signal ValueBus_5_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_5_Value : T_SYSTEM_FLOAT;
    signal ValueBus_6_enable : T_SYSTEM_BOOL;
    signal ValueBus_6_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_6_Value : T_SYSTEM_FLOAT;
    signal ValueBus_7_enable : T_SYSTEM_BOOL;
    signal ValueBus_7_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_7_Value : T_SYSTEM_FLOAT;
    signal ValueBus_8_enable : T_SYSTEM_BOOL;
    signal ValueBus_8_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_8_Value : T_SYSTEM_FLOAT;
    signal ValueBus_9_enable : T_SYSTEM_BOOL;
    signal ValueBus_9_LastValue : T_SYSTEM_BOOL;
    signal ValueBus_9_Value : T_SYSTEM_FLOAT;

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
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#0.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#0.Data" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "TrueDualPortMemory`1+IReadResult<Single>#1.Data") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected TrueDualPortMemory`1+IReadResult<Single>#1.Data" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#11.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#11.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#11.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#11.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#11.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#11.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#13.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#13.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#13.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#13.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#13.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#13.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#4.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#4.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#4.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#4.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#4.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#4.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#6.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#6.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#6.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#6.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#6.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#6.Value" severity Failure;
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
            assert are_strings_equal(tmp, "ValueBus#8.enable") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.enable" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.LastValue") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.LastValue" severity Failure;
            fieldno := fieldno + 1;
            read_csv_field(L, tmp);
            assert are_strings_equal(tmp, "ValueBus#8.Value") report "Field #" & integer'image(fieldno) & " is not correctly named: " & truncate(tmp) & ", expected ValueBus#8.Value" severity Failure;
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
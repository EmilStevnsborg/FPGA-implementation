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

entity Linear_tb is
end;

architecture TestBench of Linear_tb is

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
    signal TrueDualPortMemory_1_IReadResult_Single_0_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_1_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_2_Data : T_SYSTEM_FLOAT;
    signal TrueDualPortMemory_1_IReadResult_Single_3_Data : T_SYSTEM_FLOAT;
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
    signal ValueBus_6_enable : T_SYSTEM_BOOL_ARRAY(4 downto 0);
    signal ValueBus_6_LastValue : T_SYSTEM_BOOL_ARRAY(4 downto 0);
    signal ValueBus_6_Value : T_SYSTEM_FLOAT_ARRAY(4 downto 0);
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

    uut: entity work.Linear
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
        ValueBus_6_enable => ValueBus_6_enable,
        ValueBus_6_Value => ValueBus_6_Value,
        ValueBus_6_LastValue => ValueBus_6_LastValue,
        ValueBus_0_enable => ValueBus_0_enable,
        ValueBus_0_Value => ValueBus_0_Value,
        ValueBus_0_LastValue => ValueBus_0_LastValue,
        ValueBus_1_enable => ValueBus_1_enable,
        ValueBus_1_Value => ValueBus_1_Value,
        ValueBus_1_LastValue => ValueBus_1_LastValue,
        ValueBus_7_enable => ValueBus_7_enable,
        ValueBus_7_Value => ValueBus_7_Value,
        ValueBus_7_LastValue => ValueBus_7_LastValue,
        ValueBus_8_enable => ValueBus_8_enable,
        ValueBus_8_Value => ValueBus_8_Value,
        ValueBus_8_LastValue => ValueBus_8_LastValue,
        ValueBus_9_enable => ValueBus_9_enable,
        ValueBus_9_Value => ValueBus_9_Value,
        ValueBus_9_LastValue => ValueBus_9_LastValue,
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
        ValueBus_14_enable => ValueBus_14_enable,
        ValueBus_14_Value => ValueBus_14_Value,
        ValueBus_14_LastValue => ValueBus_14_LastValue,

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
                    ValueBus_6_enable(0) <= 'U';
                else
                    ValueBus_6_enable(0) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_LastValue(0) <= 'U';
                else
                    ValueBus_6_LastValue(0) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_Value(0) <= (others => 'U');
                else
                    ValueBus_6_Value(0) <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_enable(1) <= 'U';
                else
                    ValueBus_6_enable(1) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_LastValue(1) <= 'U';
                else
                    ValueBus_6_LastValue(1) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_Value(1) <= (others => 'U');
                else
                    ValueBus_6_Value(1) <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_enable(2) <= 'U';
                else
                    ValueBus_6_enable(2) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_LastValue(2) <= 'U';
                else
                    ValueBus_6_LastValue(2) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_Value(2) <= (others => 'U');
                else
                    ValueBus_6_Value(2) <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_enable(3) <= 'U';
                else
                    ValueBus_6_enable(3) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_LastValue(3) <= 'U';
                else
                    ValueBus_6_LastValue(3) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_Value(3) <= (others => 'U');
                else
                    ValueBus_6_Value(3) <= to_std_logic_vector(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_enable(4) <= 'U';
                else
                    ValueBus_6_enable(4) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_LastValue(4) <= 'U';
                else
                    ValueBus_6_LastValue(4) <= to_std_logic(truncate(tmp));
                end if;
                fieldno := fieldno + 1;
                read_csv_field(L, tmp);
                if are_strings_equal(tmp, "U") then
                    ValueBus_6_Value(4) <= (others => 'U');
                else
                    ValueBus_6_Value(4) <= to_std_logic_vector(truncate(tmp));
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
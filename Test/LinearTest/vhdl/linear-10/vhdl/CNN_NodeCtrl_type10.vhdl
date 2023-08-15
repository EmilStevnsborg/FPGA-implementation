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

entity CNN_NodeCtrl_type10 is
    generic(
        reset_numInChannels: in T_UINT2;
        reset_channelHeight: in T_UINT4;
        reset_channelWidth: in T_UINT4;
        reset_numInputs: in T_UINT9;
        reset_k: in T_UINT2;
        reset_x: in T_UINT9;
        reset_i: in T_UINT9;
        reset_adress: in T_UINT9;
        reset_vhdl_buffer: in CNN_NodeCtrl_type10_vhdl_buffer_type;
        reset_ramValid: in T_SYSTEM_BOOL
    );
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL;
        Input_Value: in T_SYSTEM_FLOAT;
        Input_LastValue: in T_SYSTEM_BOOL;
        -- Input bus ram_read signals
        ram_read_Data: in T_SYSTEM_FLOAT;

        -- Output bus OutputValue signals
        OutputValue_enable: out T_SYSTEM_BOOL;
        OutputValue_LastValue: out T_SYSTEM_BOOL;
        OutputValue_Value: out T_SYSTEM_FLOAT;
        -- Output bus OutputWeight signals
        OutputWeight_enable: out T_SYSTEM_BOOL;
        OutputWeight_Value: out T_SYSTEM_FLOAT;
        OutputWeight_LastValue: out T_SYSTEM_BOOL;
        -- Output bus ram_ctrl signals
        ram_ctrl_Enabled: out T_SYSTEM_BOOL;
        ram_ctrl_Address: out T_SYSTEM_INT32;
        ram_ctrl_IsWriting: out T_SYSTEM_BOOL;
        ram_ctrl_Data: out T_SYSTEM_FLOAT;

        -- Clock signal
        CLK : in Std_logic;

        -- Ready signal
        RDY : in Std_logic;

        -- Finished signal
        FIN : out Std_logic;

        -- Enable signal
        ENB : in Std_logic;

        -- Reset signal
        RST : in Std_logic
    );
end CNN_NodeCtrl_type10;

architecture RTL of CNN_NodeCtrl_type10 is 

    -- User defined signals, procedures and components here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

begin

    -- Custom processes go here
    -- #### USER-DATA-PROCESSES-START
    -- #### USER-DATA-PROCESSES-END

    process(
        -- Custom sensitivity signals here
        -- #### USER-DATA-SENSITIVITY-START
        -- #### USER-DATA-SENSITIVITY-END
        CLK,
        RST
    )
        -- Internal variables
        variable local_var_0 : T_SYSTEM_BOOL;
        variable numInChannels : T_UINT2 := reset_numInChannels;
        variable channelHeight : T_UINT4 := reset_channelHeight;
        variable channelWidth : T_UINT4 := reset_channelWidth;
        variable numInputs : T_UINT9 := reset_numInputs;
        variable k : T_UINT2 := reset_k;
        variable x : T_UINT9 := reset_x;
        variable i : T_UINT9 := reset_i;
        variable adress : T_UINT9 := reset_adress;
        variable vhdl_buffer : CNN_NodeCtrl_type10_vhdl_buffer_type (0 to 2) := reset_vhdl_buffer;
        variable ramValid : T_SYSTEM_BOOL := reset_ramValid;


        -- #### USER-DATA-NONCLOCKEDVARIABLES-START
        -- #### USER-DATA-NONCLOCKEDVARIABLES-END
    begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            OutputValue_enable <= '0';
            OutputValue_LastValue <= '0';
            OutputValue_Value <= std_logic_vector'(x"00000000");
            OutputWeight_enable <= '0';
            OutputWeight_Value <= std_logic_vector'(x"00000000");
            OutputWeight_LastValue <= '0';
            ram_ctrl_Enabled <= '0';
            ram_ctrl_Address <= TO_SIGNED(0, 32);
            ram_ctrl_IsWriting <= '0';
            ram_ctrl_Data <= std_logic_vector'(x"00000000");
            local_var_0 := '0';
            numInChannels := reset_numInChannels;
            channelHeight := reset_channelHeight;
            channelWidth := reset_channelWidth;
            numInputs := reset_numInputs;
            k := reset_k;
            x := reset_x;
            i := reset_i;
            adress := reset_adress;
            vhdl_buffer := reset_vhdl_buffer;
            ramValid := reset_ramValid;
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END

            OutputValue_enable <= '0';
            OutputWeight_enable <= '0';
            OutputValue_LastValue <= '0';
            if Input_enable = '1' then
                vhdl_buffer(TO_INTEGER((SIGNED(resize(x, 32)) mod TO_SIGNED(3, 32)))) := Input_Value;
                x := x + TO_UNSIGNED(1, 9);
            end if;
            if (i < x) and (x > TO_UNSIGNED(0, 9)) then
                if adress < numInputs then
                    ram_ctrl_Enabled <= '1';
                else
                    ram_ctrl_Enabled <= '0';
                end if;
                ram_ctrl_Address <= SIGNED(resize(adress, T_SYSTEM_INT32'length));
                ram_ctrl_IsWriting <= '0';
                ram_ctrl_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if k >= TO_UNSIGNED(2, 2) then
                    ramValid := '1';
                else
                    ramValid := '0';
                end if;
                if not (ramValid = '1') then
                    k := k + TO_UNSIGNED(1, 2);
                end if;
                adress := adress + TO_UNSIGNED(1, 9);
                local_var_0 := ramValid;
                OutputValue_enable <= local_var_0;
                OutputWeight_enable <= local_var_0;
                if ramValid = '1' then
                    OutputValue_Value <= vhdl_buffer(TO_INTEGER((SIGNED(resize(i, 32)) mod TO_SIGNED(3, 32))));
                    OutputWeight_Value <= ram_read_Data;
                    i := i + TO_UNSIGNED(1, 9);
                    if i = x then
                        k := TO_UNSIGNED(0, 2);
                        adress := adress - TO_UNSIGNED(1, 9);
                        adress := adress - TO_UNSIGNED(1, 9);
                    end if;
                    if i = numInputs then
                        OutputValue_LastValue <= '1';
                        ramValid := '0';
                        x := TO_UNSIGNED(0, 9);
                        i := TO_UNSIGNED(0, 9);
                        k := TO_UNSIGNED(0, 2);
                    end if;
                end if;
            end if;

            FIN <= not RDY;

        end if;

        -- Non-clocked process actions here
        -- #### USER-DATA-CODE-START
        -- #### USER-DATA-CODE-END

    end process;

end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END

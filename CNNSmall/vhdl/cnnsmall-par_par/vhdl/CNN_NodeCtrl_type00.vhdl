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

entity CNN_NodeCtrl_type00 is
    generic(
        reset_numInChannels: in T_UINT3;
        reset_channelHeight: in T_UINT4;
        reset_channelWidth: in T_UINT4;
        reset_j: in T_UINT4;
        reset_adress: in T_UINT6;
        reset_k: in T_UINT6;
        reset_x: in T_UINT6;
        reset_i: in T_UINT6;
        reset_vhdl_buffer: in CNN_NodeCtrl_type00_vhdl_buffer_type;
        reset_ramValid: in T_SYSTEM_BOOL;
        reset_Input_Length: in T_SYSTEM_INT32
    );
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL_ARRAY(4 downto 0);
        Input_Value: in T_SYSTEM_FLOAT_ARRAY(4 downto 0);
        Input_LastValue: in T_SYSTEM_BOOL_ARRAY(4 downto 0);
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
end CNN_NodeCtrl_type00;

architecture RTL of CNN_NodeCtrl_type00 is 

    -- Internal constants
    constant Input_Length : T_SYSTEM_INT32 := reset_Input_Length;

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
        variable local_var_1 : T_UINT4;
        variable numInChannels : T_UINT3 := reset_numInChannels;
        variable channelHeight : T_UINT4 := reset_channelHeight;
        variable channelWidth : T_UINT4 := reset_channelWidth;
        variable j : T_UINT4 := reset_j;
        variable adress : T_UINT6 := reset_adress;
        variable k : T_UINT6 := reset_k;
        variable x : T_UINT6 := reset_x;
        variable i : T_UINT6 := reset_i;
        variable vhdl_buffer : CNN_NodeCtrl_type00_vhdl_buffer_type (0 to 44) := reset_vhdl_buffer;
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
            local_var_1 := TO_UNSIGNED(0, 4);
            numInChannels := reset_numInChannels;
            channelHeight := reset_channelHeight;
            channelWidth := reset_channelWidth;
            j := reset_j;
            adress := reset_adress;
            k := reset_k;
            x := reset_x;
            i := reset_i;
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

            if Input_Length > TO_SIGNED(0, 32) then
                for OnTick_ii in 0 to 5-1 loop
                    if Input_enable(OnTick_ii) = '1' then
                        vhdl_buffer(TO_INTEGER(SIGNED(resize(x, T_SYSTEM_INT32'length)))) := Input_Value(OnTick_ii);
                        x := x + TO_UNSIGNED(1, 6);
                    end if;
                end loop;
            end if;
            OutputValue_enable <= '0';
            OutputWeight_enable <= '0';
            OutputValue_LastValue <= '0';
            if (x > TO_UNSIGNED(0, 6)) and (i < x) then
                ram_ctrl_Enabled <= '1';
                ram_ctrl_Address <= SIGNED(resize(adress, T_SYSTEM_INT32'length));
                ram_ctrl_IsWriting <= '0';
                ram_ctrl_Data <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, T_SYSTEM_FLOAT'length));
                if k >= TO_UNSIGNED(2, 6) then
                    ramValid := '1';
                else
                    ramValid := '0';
                end if;
                k := k + TO_UNSIGNED(1, 6);
                if (k mod resize(numInChannels, T_UINT6'length)) = TO_UNSIGNED(0, 6) then
                    local_var_1 := j + TO_UNSIGNED(1, 4);
                else
                    local_var_1 := j;
                end if;
                j := local_var_1;
                adress := (resize((k mod resize(numInChannels, T_UINT6'length)) * resize((resize(channelHeight * channelWidth, 4)), T_UINT6'length), 6)) + resize(j, T_UINT6'length);
                local_var_0 := ramValid;
                OutputValue_enable <= local_var_0;
                OutputWeight_enable <= local_var_0;
                if ramValid = '1' then
                    OutputValue_Value <= vhdl_buffer(TO_INTEGER(SIGNED(resize(i, T_SYSTEM_INT32'length))));
                    OutputWeight_Value <= ram_read_Data;
                    i := i + TO_UNSIGNED(1, 6);
                    if i = x then
                        OutputValue_LastValue <= '1';
                        ramValid := '0';
                        x := TO_UNSIGNED(0, 6);
                        i := TO_UNSIGNED(0, 6);
                        k := TO_UNSIGNED(0, 6);
                        j := TO_UNSIGNED(0, 4);
                        adress := TO_UNSIGNED(0, 6);
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

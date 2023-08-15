library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
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

entity CNN_ValueArrayCtrl is
    generic(
        reset_numInChannels: in T_UINT3;
        reset_channelHeight: in T_UINT5;
        reset_channelWidth: in T_UINT5;
        reset_i: in T_UINT3;
        reset_k: in T_UINT3;
        reset_vhdl_buffer: in CNN_ValueArrayCtrl_vhdl_buffer_type;
        reset_Input_Length: in T_SYSTEM_INT32
    );
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL_ARRAY(to_integer(reset_numInChannels)-1 downto 0);
        Input_Value: in T_SYSTEM_FLOAT_ARRAY(to_integer(reset_numInChannels)-1 downto 0);
        Input_LastValue: in T_SYSTEM_BOOL_ARRAY(to_integer(reset_numInChannels)-1 downto 0);

        -- Output bus Output signals
        Output_enable: out T_SYSTEM_BOOL;
        Output_LastValue: out T_SYSTEM_BOOL;
        Output_Value: out T_SYSTEM_FLOAT;

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
end CNN_ValueArrayCtrl;

architecture RTL of CNN_ValueArrayCtrl is

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
        variable numInChannels : T_UINT3 := reset_numInChannels;
        variable channelHeight : T_UINT5 := reset_channelHeight;
        variable channelWidth : T_UINT5 := reset_channelWidth;
        variable i : T_UINT3 := reset_i;
        variable k : T_UINT3 := reset_k;
        variable vhdl_buffer : CNN_ValueArrayCtrl_vhdl_buffer_type (0 to to_integer(reset_numInChannels)-1) := reset_vhdl_buffer;


        -- #### USER-DATA-NONCLOCKEDVARIABLES-START
        -- #### USER-DATA-NONCLOCKEDVARIABLES-END
    begin
        -- Initialize code here
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-START
        -- #### USER-DATA-NONCLOCKEDSHAREDINITIALIZECODE-END

        if RST = '1' then
            Output_enable <= '0';
            Output_LastValue <= '0';
            Output_Value <= std_logic_vector'(x"00000000");
            numInChannels := reset_numInChannels;
            channelHeight := reset_channelHeight;
            channelWidth := reset_channelWidth;
            i := reset_i;
            k := reset_k;
            vhdl_buffer := reset_vhdl_buffer;
            FIN <= '0';

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDRESETCODE-START
            -- #### USER-DATA-NONCLOCKEDRESETCODE-END

        elsif rising_edge(CLK) then

            -- Initialize code here
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-START
            -- #### USER-DATA-NONCLOCKEDINITIALIZECODE-END

            Output_enable <= '0';
            Output_LastValue <= '0';
            if Input_Length > TO_SIGNED(0, 32) then
                for OnTick_ii in 0 to to_integer(reset_numInChannels)-1 loop
                    if Input_enable(OnTick_ii) = '1' then
                        vhdl_buffer(OnTick_ii) := Input_Value(OnTick_ii);
                        i := i + TO_UNSIGNED(1, 3);
                    end if;
                end loop;
            end if;
            if (i > TO_UNSIGNED(0, 3)) and (k < i) then
                Output_Value <= vhdl_buffer(TO_INTEGER(SIGNED(resize(k, T_SYSTEM_INT32'length))));
                Output_enable <= '1';
                k := k + TO_UNSIGNED(1, 3);
                if (k mod numInChannels) = TO_UNSIGNED(0, 3) then
                    Output_LastValue <= '1';
                end if;
                if k = i then
                    i := TO_UNSIGNED(0, 3);
                    k := TO_UNSIGNED(0, 3);
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
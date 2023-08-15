library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- library SYSTEM_TYPES;
use work.SYSTEM_TYPES.ALL;
-- library CUSTOM_TYPES;
use work.CUSTOM_TYPES.ALL;

  -- Component declaration and signals

-- User defined packages here
-- #### USER-DATA-IMPORTS-START
-- #### USER-DATA-IMPORTS-END

entity CNN_ReluCore is
    port(
        -- Input bus Input signals
        Input_enable: in T_SYSTEM_BOOL;
        Input_Value: in T_SYSTEM_FLOAT;
        Input_LastValue: in T_SYSTEM_BOOL;

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
end CNN_ReluCore;

architecture RTL of CNN_ReluCore is 


begin
    process(
        CLK,
        RST
    )
    begin
        if (RST = '1') then
            Output_enable <= '0';
            Output_LastValue <= '0';
            Output_Value <= (others => '0');
            FIN <= '0';
        elsif rising_edge(CLK) then
            Output_enable <= Input_enable;
            Output_LastValue <= '0';
            if (Input_enable = '1') then
                if Input_Value(31) = '0' then
                    Output_Value <= Input_Value;
                else
                    Output_Value <= (others => '0');
                end if;
            else
                Output_Value <= (others => '0');
            end if;
            FIN <= not RDY;
        end if;
    end process;


end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END

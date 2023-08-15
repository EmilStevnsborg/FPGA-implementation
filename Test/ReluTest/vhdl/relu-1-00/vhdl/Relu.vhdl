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

entity Relu is
    port(
        -- Top-level bus ValueBus signals
        ValueBus_1_enable: in T_SYSTEM_BOOL;
        ValueBus_1_Value: in T_SYSTEM_FLOAT;
        ValueBus_1_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_0_enable: out T_SYSTEM_BOOL;
        ValueBus_0_Value: out T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_3_enable: in T_SYSTEM_BOOL;
        ValueBus_3_Value: in T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_2_enable: out T_SYSTEM_BOOL;
        ValueBus_2_Value: out T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_5_enable: in T_SYSTEM_BOOL;
        ValueBus_5_Value: in T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_4_enable: out T_SYSTEM_BOOL;
        ValueBus_4_Value: out T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: out T_SYSTEM_BOOL;

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
end Relu;

architecture RTL of Relu is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_ReluCore_0 : std_logic;
    signal FIN_ReluCore_1 : std_logic;
    signal FIN_ReluCore_2 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity ReluCore#0 signals
    ReluCore_0: entity work.CNN_ReluCore
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_1_enable,
        Input_Value => ValueBus_1_Value,
        Input_LastValue => ValueBus_1_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_0_enable,
        Output_LastValue => ValueBus_0_LastValue,
        Output_Value => ValueBus_0_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#1 signals
    ReluCore_1: entity work.CNN_ReluCore
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_3_enable,
        Input_Value => ValueBus_3_Value,
        Input_LastValue => ValueBus_3_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_2_enable,
        Output_LastValue => ValueBus_2_LastValue,
        Output_Value => ValueBus_2_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity ReluCore#2 signals
    ReluCore_2: entity work.CNN_ReluCore
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_4_enable,
        Output_LastValue => ValueBus_4_LastValue,
        Output_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ReluCore_2,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_ReluCore_0 when FIN_ReluCore_1 = FIN_ReluCore_0 AND FIN_ReluCore_2 = FIN_ReluCore_1;

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
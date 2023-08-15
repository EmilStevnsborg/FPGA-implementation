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

entity BatchNormTest is
    port(
        -- Top-level bus ValueBus signals
        ValueBus_2_enable: in T_SYSTEM_BOOL;
        ValueBus_2_Value: in T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_12_enable: out T_SYSTEM_BOOL;
        ValueBus_12_Value: out T_SYSTEM_FLOAT;
        ValueBus_12_LastValue: out T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_0_enable: inout T_SYSTEM_BOOL;
        ValueBus_0_Value: inout T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_1_enable: inout T_SYSTEM_BOOL;
        ValueBus_1_Value: inout T_SYSTEM_FLOAT;
        ValueBus_1_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_5_enable: inout T_SYSTEM_BOOL;
        ValueBus_5_Value: inout T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_8_enable: inout T_SYSTEM_BOOL;
        ValueBus_8_Value: inout T_SYSTEM_FLOAT;
        ValueBus_8_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_6_enable: inout T_SYSTEM_BOOL;
        ValueBus_6_Value: inout T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_7_enable: inout T_SYSTEM_BOOL;
        ValueBus_7_Value: inout T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_11_enable: inout T_SYSTEM_BOOL;
        ValueBus_11_Value: inout T_SYSTEM_FLOAT;
        ValueBus_11_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_9_enable: inout T_SYSTEM_BOOL;
        ValueBus_9_Value: inout T_SYSTEM_FLOAT;
        ValueBus_9_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_10_enable: inout T_SYSTEM_BOOL;
        ValueBus_10_Value: inout T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: inout T_SYSTEM_BOOL;

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
end BatchNormTest;

architecture RTL of BatchNormTest is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_Align_0 : std_logic;
    signal FIN_Align_1 : std_logic;
    signal FIN_Align_2 : std_logic;
    signal FIN_Align_3 : std_logic;
    signal FIN_PlusTwo_0 : std_logic;
    signal FIN_MultiplyTwo_0 : std_logic;
    signal FIN_MultiplyTwo_1 : std_logic;
    signal FIN_PlusTwo_1 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity Align#0 signals
    Align_0: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"baddbbc4"), 1 => std_logic_vector'(x"be569ac0"), 2 => std_logic_vector'(x"bf40cfbe"), 3 => std_logic_vector'(x"3ded87f1"), 4 => std_logic_vector'(x"3e73cd04")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_2_enable,
        Input_Value => ValueBus_2_Value,
        Input_LastValue => ValueBus_2_LastValue,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_0_enable,
        OutputValue_LastValue => ValueBus_0_LastValue,
        OutputValue_Value => ValueBus_0_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_1_enable,
        OutputWeight_LastValue => ValueBus_1_LastValue,
        OutputWeight_Value => ValueBus_1_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#1 signals
    Align_1: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"3f98d719"), 1 => std_logic_vector'(x"3f7d9c67"), 2 => std_logic_vector'(x"3fb4c328"), 3 => std_logic_vector'(x"3f9342c1"), 4 => std_logic_vector'(x"3fb2407a")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_3_enable,
        OutputValue_LastValue => ValueBus_3_LastValue,
        OutputValue_Value => ValueBus_3_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_4_enable,
        OutputWeight_LastValue => ValueBus_4_LastValue,
        OutputWeight_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#2 signals
    Align_2: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"3fc16a2b"), 1 => std_logic_vector'(x"3fbd2b85"), 2 => std_logic_vector'(x"3fb89677"), 3 => std_logic_vector'(x"3fa81162"), 4 => std_logic_vector'(x"3fc066df")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_8_enable,
        Input_Value => ValueBus_8_Value,
        Input_LastValue => ValueBus_8_LastValue,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_6_enable,
        OutputValue_LastValue => ValueBus_6_LastValue,
        OutputValue_Value => ValueBus_6_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_7_enable,
        OutputWeight_LastValue => ValueBus_7_LastValue,
        OutputWeight_Value => ValueBus_7_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align#3 signals
    Align_3: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"3cc1befe"), 1 => std_logic_vector'(x"3cdf3e6f"), 2 => std_logic_vector'(x"bc5c91a0"), 3 => std_logic_vector'(x"3d47498f"), 4 => std_logic_vector'(x"3d6ce059")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_11_enable,
        Input_Value => ValueBus_11_Value,
        Input_LastValue => ValueBus_11_LastValue,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_9_enable,
        OutputValue_LastValue => ValueBus_9_LastValue,
        OutputValue_Value => ValueBus_9_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_10_enable,
        OutputWeight_LastValue => ValueBus_10_LastValue,
        OutputWeight_Value => ValueBus_10_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#0 signals
    PlusTwo_0: entity work.CNN_PlusTwo
    port map (
        -- Input bus ValueBus
        InputA_enable => ValueBus_1_enable,
        InputA_Value => ValueBus_1_Value,
        InputA_LastValue => ValueBus_1_LastValue,

        -- Input bus ValueBus
        InputB_enable => ValueBus_0_enable,
        InputB_Value => ValueBus_0_Value,
        InputB_LastValue => ValueBus_0_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_5_enable,
        Output_LastValue => ValueBus_5_LastValue,
        Output_Value => ValueBus_5_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity MultiplyTwo#0 signals
    MultiplyTwo_0: entity work.CNN_MultiplyTwo
    port map (
        -- Input bus ValueBus
        InputA_enable => ValueBus_4_enable,
        InputA_Value => ValueBus_4_Value,
        InputA_LastValue => ValueBus_4_LastValue,

        -- Input bus ValueBus
        InputB_enable => ValueBus_3_enable,
        InputB_Value => ValueBus_3_Value,
        InputB_LastValue => ValueBus_3_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_8_enable,
        Output_LastValue => ValueBus_8_LastValue,
        Output_Value => ValueBus_8_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_MultiplyTwo_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity MultiplyTwo#1 signals
    MultiplyTwo_1: entity work.CNN_MultiplyTwo
    port map (
        -- Input bus ValueBus
        InputA_enable => ValueBus_7_enable,
        InputA_Value => ValueBus_7_Value,
        InputA_LastValue => ValueBus_7_LastValue,

        -- Input bus ValueBus
        InputB_enable => ValueBus_6_enable,
        InputB_Value => ValueBus_6_Value,
        InputB_LastValue => ValueBus_6_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_11_enable,
        Output_LastValue => ValueBus_11_LastValue,
        Output_Value => ValueBus_11_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_MultiplyTwo_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#1 signals
    PlusTwo_1: entity work.CNN_PlusTwo
    port map (
        -- Input bus ValueBus
        InputA_enable => ValueBus_10_enable,
        InputA_Value => ValueBus_10_Value,
        InputA_LastValue => ValueBus_10_LastValue,

        -- Input bus ValueBus
        InputB_enable => ValueBus_9_enable,
        InputB_Value => ValueBus_9_Value,
        InputB_LastValue => ValueBus_9_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_12_enable,
        Output_LastValue => ValueBus_12_LastValue,
        Output_Value => ValueBus_12_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_1,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_Align_0 when FIN_Align_1 = FIN_Align_0 AND FIN_Align_2 = FIN_Align_1 AND FIN_Align_3 = FIN_Align_2 AND FIN_PlusTwo_0 = FIN_Align_3 AND FIN_MultiplyTwo_0 = FIN_PlusTwo_0 AND FIN_MultiplyTwo_1 = FIN_MultiplyTwo_0 AND FIN_PlusTwo_1 = FIN_MultiplyTwo_1;

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
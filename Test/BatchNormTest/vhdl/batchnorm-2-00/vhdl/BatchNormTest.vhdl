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
        ValueBus_1_enable: in T_SYSTEM_BOOL;
        ValueBus_1_Value: in T_SYSTEM_FLOAT;
        ValueBus_1_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_4_enable: out T_SYSTEM_BOOL;
        ValueBus_4_Value: out T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_6_enable: in T_SYSTEM_BOOL;
        ValueBus_6_Value: in T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_9_enable: out T_SYSTEM_BOOL;
        ValueBus_9_Value: out T_SYSTEM_FLOAT;
        ValueBus_9_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_11_enable: in T_SYSTEM_BOOL;
        ValueBus_11_Value: in T_SYSTEM_FLOAT;
        ValueBus_11_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_14_enable: out T_SYSTEM_BOOL;
        ValueBus_14_Value: out T_SYSTEM_FLOAT;
        ValueBus_14_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_16_enable: in T_SYSTEM_BOOL;
        ValueBus_16_Value: in T_SYSTEM_FLOAT;
        ValueBus_16_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_19_enable: out T_SYSTEM_BOOL;
        ValueBus_19_Value: out T_SYSTEM_FLOAT;
        ValueBus_19_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_21_enable: in T_SYSTEM_BOOL;
        ValueBus_21_Value: in T_SYSTEM_FLOAT;
        ValueBus_21_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_24_enable: out T_SYSTEM_BOOL;
        ValueBus_24_Value: out T_SYSTEM_FLOAT;
        ValueBus_24_LastValue: out T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_0_enable: inout T_SYSTEM_BOOL;
        ValueBus_0_Value: inout T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_2_enable: inout T_SYSTEM_BOOL;
        ValueBus_2_Value: inout T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_5_enable: inout T_SYSTEM_BOOL;
        ValueBus_5_Value: inout T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_7_enable: inout T_SYSTEM_BOOL;
        ValueBus_7_Value: inout T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_8_enable: inout T_SYSTEM_BOOL;
        ValueBus_8_Value: inout T_SYSTEM_FLOAT;
        ValueBus_8_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_10_enable: inout T_SYSTEM_BOOL;
        ValueBus_10_Value: inout T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_12_enable: inout T_SYSTEM_BOOL;
        ValueBus_12_Value: inout T_SYSTEM_FLOAT;
        ValueBus_12_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_13_enable: inout T_SYSTEM_BOOL;
        ValueBus_13_Value: inout T_SYSTEM_FLOAT;
        ValueBus_13_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_15_enable: inout T_SYSTEM_BOOL;
        ValueBus_15_Value: inout T_SYSTEM_FLOAT;
        ValueBus_15_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_17_enable: inout T_SYSTEM_BOOL;
        ValueBus_17_Value: inout T_SYSTEM_FLOAT;
        ValueBus_17_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_18_enable: inout T_SYSTEM_BOOL;
        ValueBus_18_Value: inout T_SYSTEM_FLOAT;
        ValueBus_18_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_20_enable: inout T_SYSTEM_BOOL;
        ValueBus_20_Value: inout T_SYSTEM_FLOAT;
        ValueBus_20_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_22_enable: inout T_SYSTEM_BOOL;
        ValueBus_22_Value: inout T_SYSTEM_FLOAT;
        ValueBus_22_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_23_enable: inout T_SYSTEM_BOOL;
        ValueBus_23_Value: inout T_SYSTEM_FLOAT;
        ValueBus_23_LastValue: inout T_SYSTEM_BOOL;

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
    signal FIN_Bias_0 : std_logic;
    signal FIN_Multiply_0 : std_logic;
    signal FIN_Multiply_1 : std_logic;
    signal FIN_Bias_1 : std_logic;
    signal FIN_Bias_2 : std_logic;
    signal FIN_Multiply_2 : std_logic;
    signal FIN_Multiply_3 : std_logic;
    signal FIN_Bias_3 : std_logic;
    signal FIN_Bias_4 : std_logic;
    signal FIN_Multiply_4 : std_logic;
    signal FIN_Multiply_5 : std_logic;
    signal FIN_Bias_5 : std_logic;
    signal FIN_Bias_6 : std_logic;
    signal FIN_Multiply_6 : std_logic;
    signal FIN_Multiply_7 : std_logic;
    signal FIN_Bias_7 : std_logic;
    signal FIN_Bias_8 : std_logic;
    signal FIN_Multiply_8 : std_logic;
    signal FIN_Multiply_9 : std_logic;
    signal FIN_Bias_9 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity Bias#0 signals
    Bias_0: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"baddbbc4")
    )
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
        FIN => FIN_Bias_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#0 signals
    Multiply_0: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f98d719")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_0_enable,
        Input_Value => ValueBus_0_Value,
        Input_LastValue => ValueBus_0_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_2_enable,
        Output_LastValue => ValueBus_2_LastValue,
        Output_Value => ValueBus_2_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#1 signals
    Multiply_1: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fc16a2b")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_2_enable,
        Input_Value => ValueBus_2_Value,
        Input_LastValue => ValueBus_2_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_3_enable,
        Output_LastValue => ValueBus_3_LastValue,
        Output_Value => ValueBus_3_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#1 signals
    Bias_1: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3cc1befe")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_3_enable,
        Input_Value => ValueBus_3_Value,
        Input_LastValue => ValueBus_3_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_4_enable,
        Output_LastValue => ValueBus_4_LastValue,
        Output_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#2 signals
    Bias_2: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"be569ac0")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_6_enable,
        Input_Value => ValueBus_6_Value,
        Input_LastValue => ValueBus_6_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_5_enable,
        Output_LastValue => ValueBus_5_LastValue,
        Output_Value => ValueBus_5_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#2 signals
    Multiply_2: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f7d9c67")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_7_enable,
        Output_LastValue => ValueBus_7_LastValue,
        Output_Value => ValueBus_7_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#3 signals
    Multiply_3: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fbd2b85")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_7_enable,
        Input_Value => ValueBus_7_Value,
        Input_LastValue => ValueBus_7_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_8_enable,
        Output_LastValue => ValueBus_8_LastValue,
        Output_Value => ValueBus_8_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#3 signals
    Bias_3: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3cdf3e6f")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_8_enable,
        Input_Value => ValueBus_8_Value,
        Input_LastValue => ValueBus_8_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_9_enable,
        Output_LastValue => ValueBus_9_LastValue,
        Output_Value => ValueBus_9_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#4 signals
    Bias_4: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bf40cfbe")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_11_enable,
        Input_Value => ValueBus_11_Value,
        Input_LastValue => ValueBus_11_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_10_enable,
        Output_LastValue => ValueBus_10_LastValue,
        Output_Value => ValueBus_10_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#4 signals
    Multiply_4: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fb4c328")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_10_enable,
        Input_Value => ValueBus_10_Value,
        Input_LastValue => ValueBus_10_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_12_enable,
        Output_LastValue => ValueBus_12_LastValue,
        Output_Value => ValueBus_12_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#5 signals
    Multiply_5: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fb89677")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_12_enable,
        Input_Value => ValueBus_12_Value,
        Input_LastValue => ValueBus_12_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_13_enable,
        Output_LastValue => ValueBus_13_LastValue,
        Output_Value => ValueBus_13_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#5 signals
    Bias_5: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bc5c91a0")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_13_enable,
        Input_Value => ValueBus_13_Value,
        Input_LastValue => ValueBus_13_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_14_enable,
        Output_LastValue => ValueBus_14_LastValue,
        Output_Value => ValueBus_14_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#6 signals
    Bias_6: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3ded87f1")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_16_enable,
        Input_Value => ValueBus_16_Value,
        Input_LastValue => ValueBus_16_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_15_enable,
        Output_LastValue => ValueBus_15_LastValue,
        Output_Value => ValueBus_15_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#6 signals
    Multiply_6: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3f9342c1")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_15_enable,
        Input_Value => ValueBus_15_Value,
        Input_LastValue => ValueBus_15_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_17_enable,
        Output_LastValue => ValueBus_17_LastValue,
        Output_Value => ValueBus_17_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_6,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#7 signals
    Multiply_7: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fa81162")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_17_enable,
        Input_Value => ValueBus_17_Value,
        Input_LastValue => ValueBus_17_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_18_enable,
        Output_LastValue => ValueBus_18_LastValue,
        Output_Value => ValueBus_18_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#7 signals
    Bias_7: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d47498f")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_18_enable,
        Input_Value => ValueBus_18_Value,
        Input_LastValue => ValueBus_18_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_19_enable,
        Output_LastValue => ValueBus_19_LastValue,
        Output_Value => ValueBus_19_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_7,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#8 signals
    Bias_8: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e73cd04")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_21_enable,
        Input_Value => ValueBus_21_Value,
        Input_LastValue => ValueBus_21_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_20_enable,
        Output_LastValue => ValueBus_20_LastValue,
        Output_Value => ValueBus_20_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#8 signals
    Multiply_8: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fb2407a")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_20_enable,
        Input_Value => ValueBus_20_Value,
        Input_LastValue => ValueBus_20_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_22_enable,
        Output_LastValue => ValueBus_22_LastValue,
        Output_Value => ValueBus_22_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_8,
        ENB => ENB,
        RST => RST
    );

    -- Entity Multiply#9 signals
    Multiply_9: entity work.CNN_Multiply
    generic map(
        reset_val => std_logic_vector'(x"3fc066df")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_22_enable,
        Input_Value => ValueBus_22_Value,
        Input_LastValue => ValueBus_22_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_23_enable,
        Output_LastValue => ValueBus_23_LastValue,
        Output_Value => ValueBus_23_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Multiply_9,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#9 signals
    Bias_9: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3d6ce059")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_23_enable,
        Input_Value => ValueBus_23_Value,
        Input_LastValue => ValueBus_23_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_24_enable,
        Output_LastValue => ValueBus_24_LastValue,
        Output_Value => ValueBus_24_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_9,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_Bias_0 when FIN_Multiply_0 = FIN_Bias_0 AND FIN_Multiply_1 = FIN_Multiply_0 AND FIN_Bias_1 = FIN_Multiply_1 AND FIN_Bias_2 = FIN_Bias_1 AND FIN_Multiply_2 = FIN_Bias_2 AND FIN_Multiply_3 = FIN_Multiply_2 AND FIN_Bias_3 = FIN_Multiply_3 AND FIN_Bias_4 = FIN_Bias_3 AND FIN_Multiply_4 = FIN_Bias_4 AND FIN_Multiply_5 = FIN_Multiply_4 AND FIN_Bias_5 = FIN_Multiply_5 AND FIN_Bias_6 = FIN_Bias_5 AND FIN_Multiply_6 = FIN_Bias_6 AND FIN_Multiply_7 = FIN_Multiply_6 AND FIN_Bias_7 = FIN_Multiply_7 AND FIN_Bias_8 = FIN_Bias_7 AND FIN_Multiply_8 = FIN_Bias_8 AND FIN_Multiply_9 = FIN_Multiply_8 AND FIN_Bias_9 = FIN_Multiply_9;

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
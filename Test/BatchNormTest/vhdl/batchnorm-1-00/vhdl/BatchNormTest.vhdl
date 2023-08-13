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

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity Bias#0 signals
    Bias_0: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"beb89625")
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
        reset_val => std_logic_vector'(x"40ab4888")
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
        reset_val => std_logic_vector'(x"3f81faaf")
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
        reset_bias => std_logic_vector'(x"bbf1f6c6")
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
        reset_bias => std_logic_vector'(x"3e71dd71")
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
        reset_val => std_logic_vector'(x"40dd6fd8")
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
        reset_val => std_logic_vector'(x"3f84e135")
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
        reset_bias => std_logic_vector'(x"bbbdc1f4")
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
        reset_bias => std_logic_vector'(x"be08cac8")
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
        reset_val => std_logic_vector'(x"411f70a3")
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
        reset_val => std_logic_vector'(x"3f745737")
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
        reset_bias => std_logic_vector'(x"3b146c7a")
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

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_Bias_0 when FIN_Multiply_0 = FIN_Bias_0 AND FIN_Multiply_1 = FIN_Multiply_0 AND FIN_Bias_1 = FIN_Multiply_1 AND FIN_Bias_2 = FIN_Bias_1 AND FIN_Multiply_2 = FIN_Bias_2 AND FIN_Multiply_3 = FIN_Multiply_2 AND FIN_Bias_3 = FIN_Multiply_3 AND FIN_Bias_4 = FIN_Bias_3 AND FIN_Multiply_4 = FIN_Bias_4 AND FIN_Multiply_5 = FIN_Multiply_4 AND FIN_Bias_5 = FIN_Multiply_5;

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
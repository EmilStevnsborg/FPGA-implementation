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

entity SoftmaxTest is
    port(
        -- Top-level bus ValueBus signals
        ValueBus_4_enable: in T_SYSTEM_BOOL;
        ValueBus_4_Value: in T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_5_enable: in T_SYSTEM_BOOL;
        ValueBus_5_Value: in T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_6_enable: out T_SYSTEM_BOOL;
        ValueBus_6_Value: out T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_7_enable: out T_SYSTEM_BOOL;
        ValueBus_7_Value: out T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: out T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_2_enable: inout T_SYSTEM_BOOL_ARRAY(1 downto 0);
        ValueBus_2_Value: inout T_SYSTEM_FLOAT_ARRAY(1 downto 0);
        ValueBus_2_LastValue: inout T_SYSTEM_BOOL_ARRAY(1 downto 0);

        -- Interconnection bus ValueBus signals
        ValueBus_0_enable: inout T_SYSTEM_BOOL;
        ValueBus_0_Value: inout T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

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
end SoftmaxTest;

architecture RTL of SoftmaxTest is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_ValueArrayCtrl : std_logic;
    signal FIN_PlusCtrl : std_logic;
    signal FIN_Exp_0 : std_logic;
    signal FIN_Exp_1 : std_logic;
    signal FIN_DivideValue_0 : std_logic;
    signal FIN_DivideValue_1 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity ValueArrayCtrl signals
    ValueArrayCtrl: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(2, 3),
        reset_channelHeight => TO_UNSIGNED(1, 5),
        reset_channelWidth => TO_UNSIGNED(1, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 1) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(2, 32)
    )
    port map (
        -- Input bus ValueBus
        Input_enable(0) => ValueBus_2_enable(0),
        Input_enable(1) => ValueBus_2_enable(1),
        Input_Value(0) => ValueBus_2_Value(0),
        Input_Value(1) => ValueBus_2_Value(1),
        Input_LastValue(0) => ValueBus_2_LastValue(0),
        Input_LastValue(1) => ValueBus_2_LastValue(1),

        -- Output bus ValueBus
        Output_enable => ValueBus_0_enable,
        Output_LastValue => ValueBus_0_LastValue,
        Output_Value => ValueBus_0_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl signals
    PlusCtrl: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_0_enable,
        Input_Value => ValueBus_0_Value,
        Input_LastValue => ValueBus_0_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_3_enable,
        Output_LastValue => ValueBus_3_LastValue,
        Output_Value => ValueBus_3_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl,
        ENB => ENB,
        RST => RST
    );

    -- Entity Exp#0 signals
    Exp_0: entity work.CNN_Exp
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_4_enable,
        Input_Value => ValueBus_4_Value,
        Input_LastValue => ValueBus_4_LastValue,

        -- Output bus ValueBus
        Output_Value => ValueBus_2_Value(0),
        Output_enable => ValueBus_2_enable(0),
        Output_LastValue => ValueBus_2_LastValue(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Exp_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Exp#1 signals
    Exp_1: entity work.CNN_Exp
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Output bus ValueBus
        Output_Value => ValueBus_2_Value(1),
        Output_enable => ValueBus_2_enable(1),
        Output_LastValue => ValueBus_2_LastValue(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Exp_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity DivideValue#0 signals
    DivideValue_0: entity work.CNN_DivideValue
    generic map(
        reset_value => std_logic_vector'(x"00000000"),
        reset_denominator => std_logic_vector'(x"3f800000"),
        reset_divideValid => '0'
    )
    port map (
        -- Input bus ValueBus
        InputValue_enable => ValueBus_2_enable(0),
        InputValue_Value => ValueBus_2_Value(0),
        InputValue_LastValue => ValueBus_2_LastValue(0),

        -- Input bus ValueBus
        InputWeight_enable => ValueBus_3_enable,
        InputWeight_Value => ValueBus_3_Value,
        InputWeight_LastValue => ValueBus_3_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_6_enable,
        Output_LastValue => ValueBus_6_LastValue,
        Output_Value => ValueBus_6_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_DivideValue_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity DivideValue#1 signals
    DivideValue_1: entity work.CNN_DivideValue
    generic map(
        reset_value => std_logic_vector'(x"00000000"),
        reset_denominator => std_logic_vector'(x"3f800000"),
        reset_divideValid => '0'
    )
    port map (
        -- Input bus ValueBus
        InputValue_enable => ValueBus_2_enable(1),
        InputValue_Value => ValueBus_2_Value(1),
        InputValue_LastValue => ValueBus_2_LastValue(1),

        -- Input bus ValueBus
        InputWeight_enable => ValueBus_3_enable,
        InputWeight_Value => ValueBus_3_Value,
        InputWeight_LastValue => ValueBus_3_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_7_enable,
        Output_LastValue => ValueBus_7_LastValue,
        Output_Value => ValueBus_7_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_DivideValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_ValueArrayCtrl when FIN_PlusCtrl = FIN_ValueArrayCtrl AND FIN_Exp_0 = FIN_PlusCtrl AND FIN_Exp_1 = FIN_Exp_0 AND FIN_DivideValue_0 = FIN_Exp_1 AND FIN_DivideValue_1 = FIN_DivideValue_0;

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
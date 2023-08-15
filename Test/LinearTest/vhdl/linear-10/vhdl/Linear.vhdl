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

entity Linear is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in T_SYSTEM_BOOL;
        ValueBus_2_Value: in T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_5_enable: out T_SYSTEM_BOOL;
        ValueBus_5_Value: out T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_10_enable: out T_SYSTEM_BOOL;
        ValueBus_10_Value: out T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: out T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_0_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_0_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_0_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_0_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_1_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_1_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_1_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_1_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_0_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_1_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_0_enable: inout T_SYSTEM_BOOL;
        ValueBus_0_Value: inout T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_1_enable: inout T_SYSTEM_BOOL;
        ValueBus_1_Value: inout T_SYSTEM_FLOAT;
        ValueBus_1_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_2_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_2_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_2_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_2_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_3_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_3_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_3_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_3_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_2_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_3_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_6_enable: inout T_SYSTEM_BOOL;
        ValueBus_6_Value: inout T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_7_enable: inout T_SYSTEM_BOOL;
        ValueBus_7_Value: inout T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_8_enable: inout T_SYSTEM_BOOL;
        ValueBus_8_Value: inout T_SYSTEM_FLOAT;
        ValueBus_8_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_9_enable: inout T_SYSTEM_BOOL;
        ValueBus_9_Value: inout T_SYSTEM_FLOAT;
        ValueBus_9_LastValue: inout T_SYSTEM_BOOL;

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
end Linear;

architecture RTL of Linear is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_TrueDualPortMemory_1_Single_0 : std_logic;
    signal FIN_NodeCtrl_type10_0 : std_logic;
    signal FIN_WeightValue_0 : std_logic;
    signal FIN_PlusCtrl_0 : std_logic;
    signal FIN_Bias_0 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_1 : std_logic;
    signal FIN_NodeCtrl_type10_1 : std_logic;
    signal FIN_WeightValue_1 : std_logic;
    signal FIN_PlusCtrl_1 : std_logic;
    signal FIN_Bias_1 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity TrueDualPortMemory`1<Single>#0 signals
    TrueDualPortMemory_1_Single_0: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 44) => (0 => std_logic_vector'(x"be9d9a79"), 1 => std_logic_vector'(x"3eb435f9"), 2 => std_logic_vector'(x"3e2a2596"), 3 => std_logic_vector'(x"beabc399"), 4 => std_logic_vector'(x"3e0f5df5"), 5 => std_logic_vector'(x"bea61d0d"), 6 => std_logic_vector'(x"be444f7d"), 7 => std_logic_vector'(x"3ea74215"), 8 => std_logic_vector'(x"bd4a46fe"), 9 => std_logic_vector'(x"bf0dc9e8"), 10 => std_logic_vector'(x"3e63c4be"), 11 => std_logic_vector'(x"3e652c1e"), 12 => std_logic_vector'(x"be72528c"), 13 => std_logic_vector'(x"bd584312"), 14 => std_logic_vector'(x"be6831fc"), 15 => std_logic_vector'(x"be3e4cf9"), 16 => std_logic_vector'(x"bdb88cd4"), 17 => std_logic_vector'(x"be5cea4c"), 18 => std_logic_vector'(x"3de0b1fd"), 19 => std_logic_vector'(x"be3519d2"), 20 => std_logic_vector'(x"ba082291"), 21 => std_logic_vector'(x"bef2e16b"), 22 => std_logic_vector'(x"be4a9275"), 23 => std_logic_vector'(x"be95049d"), 24 => std_logic_vector'(x"bc80b4dd"), 25 => std_logic_vector'(x"becd102c"), 26 => std_logic_vector'(x"be9fcb7e"), 27 => std_logic_vector'(x"be1ae424"), 28 => std_logic_vector'(x"3efc1892"), 29 => std_logic_vector'(x"3e79ea87"), 30 => std_logic_vector'(x"3e4fe060"), 31 => std_logic_vector'(x"3c8ae74d"), 32 => std_logic_vector'(x"3e83c3a2"), 33 => std_logic_vector'(x"3e23a13b"), 34 => std_logic_vector'(x"3e194862"), 35 => std_logic_vector'(x"bc3145a4"), 36 => std_logic_vector'(x"3d127e67"), 37 => std_logic_vector'(x"3e02882d"), 38 => std_logic_vector'(x"bed98fcf"), 39 => std_logic_vector'(x"3d8a5985"), 40 => std_logic_vector'(x"3e89c441"), 41 => std_logic_vector'(x"bdae4b27"), 42 => std_logic_vector'(x"3e7c2888"), 43 => std_logic_vector'(x"3efce46c"), 44 => std_logic_vector'(x"3cd14511"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_1_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity NodeCtrl_type10#0 signals
    NodeCtrl_type10_0: entity work.CNN_NodeCtrl_type10
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 2),
        reset_channelHeight => TO_UNSIGNED(3, 4),
        reset_channelWidth => TO_UNSIGNED(3, 4),
        reset_numInputs => TO_UNSIGNED(45, 9),
        reset_k => TO_UNSIGNED(0, 2),
        reset_x => TO_UNSIGNED(0, 9),
        reset_i => TO_UNSIGNED(0, 9),
        reset_adress => TO_UNSIGNED(0, 9),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_ramValid => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_2_enable,
        Input_Value => ValueBus_2_Value,
        Input_LastValue => ValueBus_2_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_read_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_0_enable,
        OutputValue_LastValue => ValueBus_0_LastValue,
        OutputValue_Value => ValueBus_0_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_1_enable,
        OutputWeight_Value => ValueBus_1_Value,
        OutputWeight_LastValue => ValueBus_1_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrl_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ram_ctrl_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ram_ctrl_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ram_ctrl_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_NodeCtrl_type10_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#0 signals
    WeightValue_0: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_0_enable,
        InputValue_Value => ValueBus_0_Value,
        InputValue_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_1_enable,
        InputWeight_Value => ValueBus_1_Value,
        InputWeight_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_3_enable,
        Output_LastValue => ValueBus_3_LastValue,
        Output_Value => ValueBus_3_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#0 signals
    PlusCtrl_0: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_3_enable,
        Input_Value => ValueBus_3_Value,
        Input_LastValue => ValueBus_3_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_4_enable,
        Output_LastValue => ValueBus_4_LastValue,
        Output_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#0 signals
    Bias_0: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e240474")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_4_enable,
        Input_Value => ValueBus_4_Value,
        Input_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_5_enable,
        Output_LastValue => ValueBus_5_LastValue,
        Output_Value => ValueBus_5_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#1 signals
    TrueDualPortMemory_1_Single_1: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 44) => (0 => std_logic_vector'(x"3e9fe995"), 1 => std_logic_vector'(x"beb86dab"), 2 => std_logic_vector'(x"be062434"), 3 => std_logic_vector'(x"3e8f6051"), 4 => std_logic_vector'(x"bc95dc47"), 5 => std_logic_vector'(x"3e9d8abf"), 6 => std_logic_vector'(x"3d23ceed"), 7 => std_logic_vector'(x"bed11e9f"), 8 => std_logic_vector'(x"3e762654"), 9 => std_logic_vector'(x"3f049909"), 10 => std_logic_vector'(x"be389ec2"), 11 => std_logic_vector'(x"be92c335"), 12 => std_logic_vector'(x"3e272e59"), 13 => std_logic_vector'(x"bcf4b94f"), 14 => std_logic_vector'(x"3e2c9c72"), 15 => std_logic_vector'(x"3e4516b6"), 16 => std_logic_vector'(x"bcba92f1"), 17 => std_logic_vector'(x"3eaf4c24"), 18 => std_logic_vector'(x"3cca5f7c"), 19 => std_logic_vector'(x"3d9df7c3"), 20 => std_logic_vector'(x"3e00b693"), 21 => std_logic_vector'(x"3ee762e4"), 22 => std_logic_vector'(x"3ec50729"), 23 => std_logic_vector'(x"3e9b9456"), 24 => std_logic_vector'(x"3d844736"), 25 => std_logic_vector'(x"3e9bbb14"), 26 => std_logic_vector'(x"3e8f9d04"), 27 => std_logic_vector'(x"3db8746d"), 28 => std_logic_vector'(x"beff1b3c"), 29 => std_logic_vector'(x"be54e8e3"), 30 => std_logic_vector'(x"be155e0b"), 31 => std_logic_vector'(x"3d994e20"), 32 => std_logic_vector'(x"bdcae18d"), 33 => std_logic_vector'(x"bdd0e531"), 34 => std_logic_vector'(x"be78a571"), 35 => std_logic_vector'(x"bb910240"), 36 => std_logic_vector'(x"be56426b"), 37 => std_logic_vector'(x"be4fc9ad"), 38 => std_logic_vector'(x"3ed2d273"), 39 => std_logic_vector'(x"bd44023c"), 40 => std_logic_vector'(x"be5c6994"), 41 => std_logic_vector'(x"3e3a0e4a"), 42 => std_logic_vector'(x"be748744"), 43 => std_logic_vector'(x"bf01c0a9"), 44 => std_logic_vector'(x"bdc240d3"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_3_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity NodeCtrl_type10#1 signals
    NodeCtrl_type10_1: entity work.CNN_NodeCtrl_type10
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 2),
        reset_channelHeight => TO_UNSIGNED(3, 4),
        reset_channelWidth => TO_UNSIGNED(3, 4),
        reset_numInputs => TO_UNSIGNED(45, 9),
        reset_k => TO_UNSIGNED(0, 2),
        reset_x => TO_UNSIGNED(0, 9),
        reset_i => TO_UNSIGNED(0, 9),
        reset_adress => TO_UNSIGNED(0, 9),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_ramValid => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_2_enable,
        Input_Value => ValueBus_2_Value,
        Input_LastValue => ValueBus_2_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_read_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Output bus CNN_ValueBus
        OutputValue_enable => ValueBus_6_enable,
        OutputValue_LastValue => ValueBus_6_LastValue,
        OutputValue_Value => ValueBus_6_Value,

        -- Output bus CNN_ValueBus
        OutputWeight_enable => ValueBus_7_enable,
        OutputWeight_Value => ValueBus_7_Value,
        OutputWeight_LastValue => ValueBus_7_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrl_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ram_ctrl_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ram_ctrl_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ram_ctrl_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_NodeCtrl_type10_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#1 signals
    WeightValue_1: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_6_enable,
        InputValue_Value => ValueBus_6_Value,
        InputValue_LastValue => ValueBus_6_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_7_enable,
        InputWeight_Value => ValueBus_7_Value,
        InputWeight_LastValue => ValueBus_7_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_8_enable,
        Output_LastValue => ValueBus_8_LastValue,
        Output_Value => ValueBus_8_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#1 signals
    PlusCtrl_1: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_8_enable,
        Input_Value => ValueBus_8_Value,
        Input_LastValue => ValueBus_8_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_9_enable,
        Output_LastValue => ValueBus_9_LastValue,
        Output_Value => ValueBus_9_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#1 signals
    Bias_1: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"bd097e62")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_9_enable,
        Input_Value => ValueBus_9_Value,
        Input_LastValue => ValueBus_9_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_10_enable,
        Output_LastValue => ValueBus_10_LastValue,
        Output_Value => ValueBus_10_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_1,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_TrueDualPortMemory_1_Single_0 when FIN_NodeCtrl_type10_0 = FIN_TrueDualPortMemory_1_Single_0 AND FIN_WeightValue_0 = FIN_NodeCtrl_type10_0 AND FIN_PlusCtrl_0 = FIN_WeightValue_0 AND FIN_Bias_0 = FIN_PlusCtrl_0 AND FIN_TrueDualPortMemory_1_Single_1 = FIN_Bias_0 AND FIN_NodeCtrl_type10_1 = FIN_TrueDualPortMemory_1_Single_1 AND FIN_WeightValue_1 = FIN_NodeCtrl_type10_1 AND FIN_PlusCtrl_1 = FIN_WeightValue_1 AND FIN_Bias_1 = FIN_PlusCtrl_1;

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
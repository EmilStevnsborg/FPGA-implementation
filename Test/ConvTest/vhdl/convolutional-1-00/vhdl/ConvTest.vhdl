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

entity ConvTest is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in T_SYSTEM_BOOL;
        ValueBus_2_Value: in T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_6_enable: out T_SYSTEM_BOOL;
        ValueBus_6_Value: out T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_17_enable: out T_SYSTEM_BOOL;
        ValueBus_17_Value: out T_SYSTEM_FLOAT;
        ValueBus_17_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_28_enable: out T_SYSTEM_BOOL;
        ValueBus_28_Value: out T_SYSTEM_FLOAT;
        ValueBus_28_LastValue: out T_SYSTEM_BOOL;

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
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL;
        ValueBus_3_Value: inout T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_5_enable: inout T_SYSTEM_BOOL;
        ValueBus_5_Value: inout T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: inout T_SYSTEM_BOOL;

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

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_10_enable: inout T_SYSTEM_BOOL;
        ValueBus_10_Value: inout T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_11_enable: inout T_SYSTEM_BOOL;
        ValueBus_11_Value: inout T_SYSTEM_FLOAT;
        ValueBus_11_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_12_enable: inout T_SYSTEM_BOOL;
        ValueBus_12_Value: inout T_SYSTEM_FLOAT;
        ValueBus_12_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_13_enable: inout T_SYSTEM_BOOL;
        ValueBus_13_Value: inout T_SYSTEM_FLOAT;
        ValueBus_13_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_15_enable: inout T_SYSTEM_BOOL;
        ValueBus_15_Value: inout T_SYSTEM_FLOAT;
        ValueBus_15_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_14_enable: inout T_SYSTEM_BOOL;
        ValueBus_14_Value: inout T_SYSTEM_FLOAT;
        ValueBus_14_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_16_enable: inout T_SYSTEM_BOOL;
        ValueBus_16_Value: inout T_SYSTEM_FLOAT;
        ValueBus_16_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_18_enable: inout T_SYSTEM_BOOL;
        ValueBus_18_Value: inout T_SYSTEM_FLOAT;
        ValueBus_18_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_19_enable: inout T_SYSTEM_BOOL;
        ValueBus_19_Value: inout T_SYSTEM_FLOAT;
        ValueBus_19_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_20_enable: inout T_SYSTEM_BOOL;
        ValueBus_20_Value: inout T_SYSTEM_FLOAT;
        ValueBus_20_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_21_enable: inout T_SYSTEM_BOOL;
        ValueBus_21_Value: inout T_SYSTEM_FLOAT;
        ValueBus_21_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_22_enable: inout T_SYSTEM_BOOL;
        ValueBus_22_Value: inout T_SYSTEM_FLOAT;
        ValueBus_22_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_23_enable: inout T_SYSTEM_BOOL;
        ValueBus_23_Value: inout T_SYSTEM_FLOAT;
        ValueBus_23_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_24_enable: inout T_SYSTEM_BOOL;
        ValueBus_24_Value: inout T_SYSTEM_FLOAT;
        ValueBus_24_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_26_enable: inout T_SYSTEM_BOOL;
        ValueBus_26_Value: inout T_SYSTEM_FLOAT;
        ValueBus_26_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_25_enable: inout T_SYSTEM_BOOL;
        ValueBus_25_Value: inout T_SYSTEM_FLOAT;
        ValueBus_25_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_27_enable: inout T_SYSTEM_BOOL;
        ValueBus_27_Value: inout T_SYSTEM_FLOAT;
        ValueBus_27_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_29_enable: inout T_SYSTEM_BOOL;
        ValueBus_29_Value: inout T_SYSTEM_FLOAT;
        ValueBus_29_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_30_enable: inout T_SYSTEM_BOOL;
        ValueBus_30_Value: inout T_SYSTEM_FLOAT;
        ValueBus_30_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_31_enable: inout T_SYSTEM_BOOL;
        ValueBus_31_Value: inout T_SYSTEM_FLOAT;
        ValueBus_31_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_32_enable: inout T_SYSTEM_BOOL;
        ValueBus_32_Value: inout T_SYSTEM_FLOAT;
        ValueBus_32_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_33_enable: inout T_SYSTEM_BOOL;
        ValueBus_33_Value: inout T_SYSTEM_FLOAT;
        ValueBus_33_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_34_enable: inout T_SYSTEM_BOOL;
        ValueBus_34_Value: inout T_SYSTEM_FLOAT;
        ValueBus_34_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_35_enable: inout T_SYSTEM_BOOL;
        ValueBus_35_Value: inout T_SYSTEM_FLOAT;
        ValueBus_35_LastValue: inout T_SYSTEM_BOOL;

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
end ConvTest;

architecture RTL of ConvTest is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_TrueDualPortMemory_1_Single : std_logic;
    signal FIN_InputCtrl_ParFilter : std_logic;
    signal FIN_ValueArrayCtrl_single_0 : std_logic;
    signal FIN_PlusCtrl_0 : std_logic;
    signal FIN_Bias_0 : std_logic;
    signal FIN_KernelCtrl_0 : std_logic;
    signal FIN_WeightValue_0 : std_logic;
    signal FIN_WeightValue_1 : std_logic;
    signal FIN_PlusTwo_0 : std_logic;
    signal FIN_PlusCtrl_1 : std_logic;
    signal FIN_ValueArrayCtrl_single_1 : std_logic;
    signal FIN_PlusCtrl_2 : std_logic;
    signal FIN_Bias_1 : std_logic;
    signal FIN_KernelCtrl_1 : std_logic;
    signal FIN_WeightValue_2 : std_logic;
    signal FIN_WeightValue_3 : std_logic;
    signal FIN_PlusTwo_1 : std_logic;
    signal FIN_PlusCtrl_3 : std_logic;
    signal FIN_ValueArrayCtrl_single_2 : std_logic;
    signal FIN_PlusCtrl_4 : std_logic;
    signal FIN_Bias_2 : std_logic;
    signal FIN_KernelCtrl_2 : std_logic;
    signal FIN_WeightValue_4 : std_logic;
    signal FIN_WeightValue_5 : std_logic;
    signal FIN_PlusTwo_2 : std_logic;
    signal FIN_PlusCtrl_5 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity TrueDualPortMemory`1<Single> signals
    TrueDualPortMemory_1_Single: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 783) => (others => std_logic_vector'(x"00000000"))
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
        FIN => FIN_TrueDualPortMemory_1_Single,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter signals
    InputCtrl_ParFilter: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 2),
        reset_j => TO_UNSIGNED(0, 2),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 4),
        reset_kernelB => TO_UNSIGNED(0, 4),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(28, 5),
        reset_newWidth => TO_UNSIGNED(28, 5),
        reset_kernelHeight => TO_UNSIGNED(3, 2),
        reset_kernelWidth => TO_UNSIGNED(3, 2),
        reset_strideRow => TO_UNSIGNED(1, 2),
        reset_strideCol => TO_UNSIGNED(1, 2),
        reset_startRow => TO_UNSIGNED(0, 5),
        reset_startCol => TO_UNSIGNED(0, 5),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_2_enable,
        Input_Value => ValueBus_2_Value,
        Input_LastValue => ValueBus_2_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_0_enable,
        OutputValueA_LastValue => ValueBus_0_LastValue,
        OutputValueA_Value => ValueBus_0_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_1_enable,
        OutputValueB_Value => ValueBus_1_Value,
        OutputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_1_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl_single#0 signals
    ValueArrayCtrl_single_0: entity work.CNN_ValueArrayCtrl_single
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 3),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_4_enable,
        Input_Value => ValueBus_4_Value,
        Input_LastValue => ValueBus_4_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_3_enable,
        Output_LastValue => ValueBus_3_LastValue,
        Output_Value => ValueBus_3_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_single_0,
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
        Output_enable => ValueBus_5_enable,
        Output_LastValue => ValueBus_5_LastValue,
        Output_Value => ValueBus_5_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#0 signals
    Bias_0: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3ea1ece6")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_5_enable,
        Input_Value => ValueBus_5_Value,
        Input_LastValue => ValueBus_5_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_6_enable,
        Output_LastValue => ValueBus_6_LastValue,
        Output_Value => ValueBus_6_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#0 signals
    KernelCtrl_0: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 4),
        reset_kernelB => TO_UNSIGNED(1, 4),
        reset_kernelHeight => TO_UNSIGNED(3, 2),
        reset_kernelWidth => TO_UNSIGNED(3, 2),
        reset_weights (0 to 8) => (std_logic_vector'(x"be348466"), std_logic_vector'(x"be09cef3"), std_logic_vector'(x"3e8c6b34"), std_logic_vector'(x"beaaa983"), std_logic_vector'(x"3e9cf988"), std_logic_vector'(x"3eb0b0b3"), std_logic_vector'(x"3e11bab4"), std_logic_vector'(x"be527361"), std_logic_vector'(x"3dc03e2e")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_7_enable,
        OutputValueA_LastValue => ValueBus_7_LastValue,
        OutputValueA_Value => ValueBus_7_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_8_enable,
        OutputWeightA_Value => ValueBus_8_Value,
        OutputWeightA_LastValue => ValueBus_8_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_9_enable,
        OutputValueB_LastValue => ValueBus_9_LastValue,
        OutputValueB_Value => ValueBus_9_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_10_enable,
        OutputWeightB_Value => ValueBus_10_Value,
        OutputWeightB_LastValue => ValueBus_10_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#0 signals
    WeightValue_0: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_7_enable,
        InputValue_Value => ValueBus_7_Value,
        InputValue_LastValue => ValueBus_7_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_8_enable,
        InputWeight_Value => ValueBus_8_Value,
        InputWeight_LastValue => ValueBus_8_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_11_enable,
        Output_LastValue => ValueBus_11_LastValue,
        Output_Value => ValueBus_11_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#1 signals
    WeightValue_1: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_9_enable,
        InputValue_Value => ValueBus_9_Value,
        InputValue_LastValue => ValueBus_9_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_10_enable,
        InputWeight_Value => ValueBus_10_Value,
        InputWeight_LastValue => ValueBus_10_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_12_enable,
        Output_LastValue => ValueBus_12_LastValue,
        Output_Value => ValueBus_12_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#0 signals
    PlusTwo_0: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_11_enable,
        InputA_Value => ValueBus_11_Value,
        InputA_LastValue => ValueBus_11_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_12_enable,
        InputB_Value => ValueBus_12_Value,
        InputB_LastValue => ValueBus_12_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_13_enable,
        Output_LastValue => ValueBus_13_LastValue,
        Output_Value => ValueBus_13_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_0,
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
        Input_enable => ValueBus_13_enable,
        Input_Value => ValueBus_13_Value,
        Input_LastValue => ValueBus_13_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_4_enable,
        Output_LastValue => ValueBus_4_LastValue,
        Output_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl_single#1 signals
    ValueArrayCtrl_single_1: entity work.CNN_ValueArrayCtrl_single
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 3),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_15_enable,
        Input_Value => ValueBus_15_Value,
        Input_LastValue => ValueBus_15_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_14_enable,
        Output_LastValue => ValueBus_14_LastValue,
        Output_Value => ValueBus_14_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_single_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#2 signals
    PlusCtrl_2: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_14_enable,
        Input_Value => ValueBus_14_Value,
        Input_LastValue => ValueBus_14_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_16_enable,
        Output_LastValue => ValueBus_16_LastValue,
        Output_Value => ValueBus_16_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#1 signals
    Bias_1: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"be87dfa3")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_16_enable,
        Input_Value => ValueBus_16_Value,
        Input_LastValue => ValueBus_16_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_17_enable,
        Output_LastValue => ValueBus_17_LastValue,
        Output_Value => ValueBus_17_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#1 signals
    KernelCtrl_1: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 4),
        reset_kernelB => TO_UNSIGNED(1, 4),
        reset_kernelHeight => TO_UNSIGNED(3, 2),
        reset_kernelWidth => TO_UNSIGNED(3, 2),
        reset_weights (0 to 8) => (std_logic_vector'(x"bd0c87c1"), std_logic_vector'(x"beaa9a68"), std_logic_vector'(x"be5c0329"), std_logic_vector'(x"3d7bec0d"), std_logic_vector'(x"3e55a436"), std_logic_vector'(x"3ddd49ab"), std_logic_vector'(x"3dd40866"), std_logic_vector'(x"3e06eb87"), std_logic_vector'(x"3e33a89d")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_18_enable,
        OutputValueA_LastValue => ValueBus_18_LastValue,
        OutputValueA_Value => ValueBus_18_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_19_enable,
        OutputWeightA_Value => ValueBus_19_Value,
        OutputWeightA_LastValue => ValueBus_19_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_20_enable,
        OutputValueB_LastValue => ValueBus_20_LastValue,
        OutputValueB_Value => ValueBus_20_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_21_enable,
        OutputWeightB_Value => ValueBus_21_Value,
        OutputWeightB_LastValue => ValueBus_21_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#2 signals
    WeightValue_2: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_18_enable,
        InputValue_Value => ValueBus_18_Value,
        InputValue_LastValue => ValueBus_18_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_19_enable,
        InputWeight_Value => ValueBus_19_Value,
        InputWeight_LastValue => ValueBus_19_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_22_enable,
        Output_LastValue => ValueBus_22_LastValue,
        Output_Value => ValueBus_22_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#3 signals
    WeightValue_3: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_20_enable,
        InputValue_Value => ValueBus_20_Value,
        InputValue_LastValue => ValueBus_20_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_21_enable,
        InputWeight_Value => ValueBus_21_Value,
        InputWeight_LastValue => ValueBus_21_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_23_enable,
        Output_LastValue => ValueBus_23_LastValue,
        Output_Value => ValueBus_23_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#1 signals
    PlusTwo_1: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_22_enable,
        InputA_Value => ValueBus_22_Value,
        InputA_LastValue => ValueBus_22_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_23_enable,
        InputB_Value => ValueBus_23_Value,
        InputB_LastValue => ValueBus_23_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_24_enable,
        Output_LastValue => ValueBus_24_LastValue,
        Output_Value => ValueBus_24_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#3 signals
    PlusCtrl_3: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_24_enable,
        Input_Value => ValueBus_24_Value,
        Input_LastValue => ValueBus_24_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_15_enable,
        Output_LastValue => ValueBus_15_LastValue,
        Output_Value => ValueBus_15_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_3,
        ENB => ENB,
        RST => RST
    );

    -- Entity ValueArrayCtrl_single#2 signals
    ValueArrayCtrl_single_2: entity work.CNN_ValueArrayCtrl_single
    generic map(
        reset_numInChannels => TO_UNSIGNED(1, 3),
        reset_channelHeight => TO_UNSIGNED(28, 5),
        reset_channelWidth => TO_UNSIGNED(28, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_26_enable,
        Input_Value => ValueBus_26_Value,
        Input_LastValue => ValueBus_26_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_25_enable,
        Output_LastValue => ValueBus_25_LastValue,
        Output_Value => ValueBus_25_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_ValueArrayCtrl_single_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#4 signals
    PlusCtrl_4: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_25_enable,
        Input_Value => ValueBus_25_Value,
        Input_LastValue => ValueBus_25_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_27_enable,
        Output_LastValue => ValueBus_27_LastValue,
        Output_Value => ValueBus_27_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity Bias#2 signals
    Bias_2: entity work.CNN_Bias
    generic map(
        reset_bias => std_logic_vector'(x"3e18eeea")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_27_enable,
        Input_Value => ValueBus_27_Value,
        Input_LastValue => ValueBus_27_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_28_enable,
        Output_LastValue => ValueBus_28_LastValue,
        Output_Value => ValueBus_28_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Bias_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity KernelCtrl#2 signals
    KernelCtrl_2: entity work.CNN_KernelCtrl
    generic map(
        reset_kernelA => TO_UNSIGNED(0, 4),
        reset_kernelB => TO_UNSIGNED(1, 4),
        reset_kernelHeight => TO_UNSIGNED(3, 2),
        reset_kernelWidth => TO_UNSIGNED(3, 2),
        reset_weights (0 to 8) => (std_logic_vector'(x"3e4cd87e"), std_logic_vector'(x"3e853c5a"), std_logic_vector'(x"3bc59d82"), std_logic_vector'(x"beab0a5a"), std_logic_vector'(x"be947cbe"), std_logic_vector'(x"be37b5f8"), std_logic_vector'(x"3e0ab608"), std_logic_vector'(x"bda1e434"), std_logic_vector'(x"3e2b6ece")),
        reset_lastKernelVal => '0'
    )
    port map (
        -- Input bus CNN_ValueBus
        InputValueA_enable => ValueBus_0_enable,
        InputValueA_Value => ValueBus_0_Value,
        InputValueA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputValueB_enable => ValueBus_1_enable,
        InputValueB_Value => ValueBus_1_Value,
        InputValueB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_29_enable,
        OutputValueA_LastValue => ValueBus_29_LastValue,
        OutputValueA_Value => ValueBus_29_Value,

        -- Output bus CNN_ValueBus
        OutputWeightA_enable => ValueBus_30_enable,
        OutputWeightA_Value => ValueBus_30_Value,
        OutputWeightA_LastValue => ValueBus_30_LastValue,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_31_enable,
        OutputValueB_LastValue => ValueBus_31_LastValue,
        OutputValueB_Value => ValueBus_31_Value,

        -- Output bus CNN_ValueBus
        OutputWeightB_enable => ValueBus_32_enable,
        OutputWeightB_Value => ValueBus_32_Value,
        OutputWeightB_LastValue => ValueBus_32_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_KernelCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#4 signals
    WeightValue_4: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_29_enable,
        InputValue_Value => ValueBus_29_Value,
        InputValue_LastValue => ValueBus_29_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_30_enable,
        InputWeight_Value => ValueBus_30_Value,
        InputWeight_LastValue => ValueBus_30_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_33_enable,
        Output_LastValue => ValueBus_33_LastValue,
        Output_Value => ValueBus_33_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_4,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#5 signals
    WeightValue_5: entity work.CNN_WeightValue
    port map (
        -- Input bus CNN_ValueBus
        InputValue_enable => ValueBus_31_enable,
        InputValue_Value => ValueBus_31_Value,
        InputValue_LastValue => ValueBus_31_LastValue,

        -- Input bus CNN_ValueBus
        InputWeight_enable => ValueBus_32_enable,
        InputWeight_Value => ValueBus_32_Value,
        InputWeight_LastValue => ValueBus_32_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_34_enable,
        Output_LastValue => ValueBus_34_LastValue,
        Output_Value => ValueBus_34_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_5,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo#2 signals
    PlusTwo_2: entity work.CNN_PlusTwo
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_33_enable,
        InputA_Value => ValueBus_33_Value,
        InputA_LastValue => ValueBus_33_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_34_enable,
        InputB_Value => ValueBus_34_Value,
        InputB_LastValue => ValueBus_34_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_35_enable,
        Output_LastValue => ValueBus_35_LastValue,
        Output_Value => ValueBus_35_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#5 signals
    PlusCtrl_5: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus CNN_ValueBus
        Input_enable => ValueBus_35_enable,
        Input_Value => ValueBus_35_Value,
        Input_LastValue => ValueBus_35_LastValue,

        -- Output bus CNN_ValueBus
        Output_enable => ValueBus_26_enable,
        Output_LastValue => ValueBus_26_LastValue,
        Output_Value => ValueBus_26_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_5,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_TrueDualPortMemory_1_Single when FIN_InputCtrl_ParFilter = FIN_TrueDualPortMemory_1_Single AND FIN_ValueArrayCtrl_single_0 = FIN_InputCtrl_ParFilter AND FIN_PlusCtrl_0 = FIN_ValueArrayCtrl_single_0 AND FIN_Bias_0 = FIN_PlusCtrl_0 AND FIN_KernelCtrl_0 = FIN_Bias_0 AND FIN_WeightValue_0 = FIN_KernelCtrl_0 AND FIN_WeightValue_1 = FIN_WeightValue_0 AND FIN_PlusTwo_0 = FIN_WeightValue_1 AND FIN_PlusCtrl_1 = FIN_PlusTwo_0 AND FIN_ValueArrayCtrl_single_1 = FIN_PlusCtrl_1 AND FIN_PlusCtrl_2 = FIN_ValueArrayCtrl_single_1 AND FIN_Bias_1 = FIN_PlusCtrl_2 AND FIN_KernelCtrl_1 = FIN_Bias_1 AND FIN_WeightValue_2 = FIN_KernelCtrl_1 AND FIN_WeightValue_3 = FIN_WeightValue_2 AND FIN_PlusTwo_1 = FIN_WeightValue_3 AND FIN_PlusCtrl_3 = FIN_PlusTwo_1 AND FIN_ValueArrayCtrl_single_2 = FIN_PlusCtrl_3 AND FIN_PlusCtrl_4 = FIN_ValueArrayCtrl_single_2 AND FIN_Bias_2 = FIN_PlusCtrl_4 AND FIN_KernelCtrl_2 = FIN_Bias_2 AND FIN_WeightValue_4 = FIN_KernelCtrl_2 AND FIN_WeightValue_5 = FIN_WeightValue_4 AND FIN_PlusTwo_2 = FIN_WeightValue_5 AND FIN_PlusCtrl_5 = FIN_PlusTwo_2;

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
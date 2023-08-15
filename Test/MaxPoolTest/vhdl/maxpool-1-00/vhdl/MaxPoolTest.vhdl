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

entity MaxPoolTest is
    port(
        -- Top-level bus CNN_ValueBus signals
        ValueBus_2_enable: in T_SYSTEM_BOOL;
        ValueBus_2_Value: in T_SYSTEM_FLOAT;
        ValueBus_2_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_3_enable: out T_SYSTEM_BOOL;
        ValueBus_3_Value: out T_SYSTEM_FLOAT;
        ValueBus_3_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_6_enable: in T_SYSTEM_BOOL;
        ValueBus_6_Value: in T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_7_enable: out T_SYSTEM_BOOL;
        ValueBus_7_Value: out T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_10_enable: in T_SYSTEM_BOOL;
        ValueBus_10_Value: in T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus CNN_ValueBus signals
        ValueBus_11_enable: out T_SYSTEM_BOOL;
        ValueBus_11_Value: out T_SYSTEM_FLOAT;
        ValueBus_11_LastValue: out T_SYSTEM_BOOL;

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
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus CNN_ValueBus signals
        ValueBus_5_enable: inout T_SYSTEM_BOOL;
        ValueBus_5_Value: inout T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_4_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_4_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_4_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_4_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_5_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_5_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_5_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_5_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_4_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_5_Data: inout T_SYSTEM_FLOAT;

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
end MaxPoolTest;

architecture RTL of MaxPoolTest is

    -- User defined signals here
    -- #### USER-DATA-SIGNALS-START
    -- #### USER-DATA-SIGNALS-END

    -- Process ready triggers
    signal FIN_TrueDualPortMemory_1_Single_0 : std_logic;
    signal FIN_InputCtrl_ParFilter_0 : std_logic;
    signal FIN_Max_0 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_1 : std_logic;
    signal FIN_InputCtrl_ParFilter_1 : std_logic;
    signal FIN_Max_1 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_2 : std_logic;
    signal FIN_InputCtrl_ParFilter_2 : std_logic;
    signal FIN_Max_2 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity TrueDualPortMemory`1<Single>#0 signals
    TrueDualPortMemory_1_Single_0: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 675) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#0 signals
    InputCtrl_ParFilter_0: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(26, 5),
        reset_channelWidth => TO_UNSIGNED(26, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(26, 5),
        reset_newWidth => TO_UNSIGNED(26, 5),
        reset_kernelHeight => TO_UNSIGNED(2, 3),
        reset_kernelWidth => TO_UNSIGNED(2, 3),
        reset_strideRow => TO_UNSIGNED(2, 2),
        reset_strideCol => TO_UNSIGNED(2, 2),
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
        FIN => FIN_InputCtrl_ParFilter_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#0 signals
    Max_0: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_0_enable,
        InputA_Value => ValueBus_0_Value,
        InputA_LastValue => ValueBus_0_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_1_enable,
        InputB_Value => ValueBus_1_Value,
        InputB_LastValue => ValueBus_1_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_3_Value,
        Output_enable => ValueBus_3_enable,
        Output_LastValue => ValueBus_3_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#1 signals
    TrueDualPortMemory_1_Single_1: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 675) => (others => std_logic_vector'(x"00000000"))
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

    -- Entity InputCtrl_ParFilter#1 signals
    InputCtrl_ParFilter_1: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(26, 5),
        reset_channelWidth => TO_UNSIGNED(26, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(26, 5),
        reset_newWidth => TO_UNSIGNED(26, 5),
        reset_kernelHeight => TO_UNSIGNED(2, 3),
        reset_kernelWidth => TO_UNSIGNED(2, 3),
        reset_strideRow => TO_UNSIGNED(2, 2),
        reset_strideCol => TO_UNSIGNED(2, 2),
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
        Input_enable => ValueBus_6_enable,
        Input_Value => ValueBus_6_Value,
        Input_LastValue => ValueBus_6_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_4_enable,
        OutputValueA_LastValue => ValueBus_4_LastValue,
        OutputValueA_Value => ValueBus_4_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_5_enable,
        OutputValueB_Value => ValueBus_5_Value,
        OutputValueB_LastValue => ValueBus_5_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_3_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#1 signals
    Max_1: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_4_enable,
        InputA_Value => ValueBus_4_Value,
        InputA_LastValue => ValueBus_4_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_5_enable,
        InputB_Value => ValueBus_5_Value,
        InputB_LastValue => ValueBus_5_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_7_Value,
        Output_enable => ValueBus_7_enable,
        Output_LastValue => ValueBus_7_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#2 signals
    TrueDualPortMemory_1_Single_2: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 675) => (others => std_logic_vector'(x"00000000"))
    )
    port map (
        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_4_Data,

        -- Input bus TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_5_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Output bus TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_ParFilter#2 signals
    InputCtrl_ParFilter_2: entity work.CNN_InputCtrl_ParFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 5),
        reset_jj => TO_UNSIGNED(0, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 2),
        reset_kernelA => TO_UNSIGNED(0, 5),
        reset_kernelB => TO_UNSIGNED(0, 5),
        reset_channelHeight => TO_UNSIGNED(26, 5),
        reset_channelWidth => TO_UNSIGNED(26, 5),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(26, 5),
        reset_newWidth => TO_UNSIGNED(26, 5),
        reset_kernelHeight => TO_UNSIGNED(2, 3),
        reset_kernelWidth => TO_UNSIGNED(2, 3),
        reset_strideRow => TO_UNSIGNED(2, 2),
        reset_strideCol => TO_UNSIGNED(2, 2),
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
        Input_enable => ValueBus_10_enable,
        Input_Value => ValueBus_10_Value,
        Input_LastValue => ValueBus_10_LastValue,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readA_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Input bus TrueDualPortMemory_1_IReadResult_Single
        ram_readB_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        -- Output bus CNN_ValueBus
        OutputValueA_enable => ValueBus_8_enable,
        OutputValueA_LastValue => ValueBus_8_LastValue,
        OutputValueA_Value => ValueBus_8_Value,

        -- Output bus CNN_ValueBus
        OutputValueB_enable => ValueBus_9_enable,
        OutputValueB_Value => ValueBus_9_Value,
        OutputValueB_LastValue => ValueBus_9_LastValue,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlA_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        ram_ctrlA_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        ram_ctrlA_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        ram_ctrlA_Data => TrueDualPortMemory_1_IControl_Single_4_Data,

        -- Output bus TrueDualPortMemory_1_IControl_Single
        ram_ctrlB_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        ram_ctrlB_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        ram_ctrlB_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        ram_ctrlB_Data => TrueDualPortMemory_1_IControl_Single_5_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_ParFilter_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity Max#2 signals
    Max_2: entity work.CNN_Max
    generic map(
        reset_max => std_logic_vector'(x"c47a0000")
    )
    port map (
        -- Input bus CNN_ValueBus
        InputA_enable => ValueBus_8_enable,
        InputA_Value => ValueBus_8_Value,
        InputA_LastValue => ValueBus_8_LastValue,

        -- Input bus CNN_ValueBus
        InputB_enable => ValueBus_9_enable,
        InputB_Value => ValueBus_9_Value,
        InputB_LastValue => ValueBus_9_LastValue,

        -- Output bus CNN_ValueBus
        Output_Value => ValueBus_11_Value,
        Output_enable => ValueBus_11_enable,
        Output_LastValue => ValueBus_11_LastValue,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Max_2,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_TrueDualPortMemory_1_Single_0 when FIN_InputCtrl_ParFilter_0 = FIN_TrueDualPortMemory_1_Single_0 AND FIN_Max_0 = FIN_InputCtrl_ParFilter_0 AND FIN_TrueDualPortMemory_1_Single_1 = FIN_Max_0 AND FIN_InputCtrl_ParFilter_1 = FIN_TrueDualPortMemory_1_Single_1 AND FIN_Max_1 = FIN_InputCtrl_ParFilter_1 AND FIN_TrueDualPortMemory_1_Single_2 = FIN_Max_1 AND FIN_InputCtrl_ParFilter_2 = FIN_TrueDualPortMemory_1_Single_2 AND FIN_Max_2 = FIN_InputCtrl_ParFilter_2;

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
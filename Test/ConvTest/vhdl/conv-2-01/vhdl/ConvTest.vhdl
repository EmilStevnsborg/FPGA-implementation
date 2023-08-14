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
        -- Top-level bus ValueBus signals
        ValueBus_7_enable: out T_SYSTEM_BOOL;
        ValueBus_7_Value: out T_SYSTEM_FLOAT;
        ValueBus_7_LastValue: out T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_10_enable: in T_SYSTEM_BOOL;
        ValueBus_10_Value: in T_SYSTEM_FLOAT;
        ValueBus_10_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_14_enable: in T_SYSTEM_BOOL;
        ValueBus_14_Value: in T_SYSTEM_FLOAT;
        ValueBus_14_LastValue: in T_SYSTEM_BOOL;

        -- Top-level bus ValueBus signals
        ValueBus_18_enable: in T_SYSTEM_BOOL;
        ValueBus_18_Value: in T_SYSTEM_FLOAT;
        ValueBus_18_LastValue: in T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_3_enable: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);
        ValueBus_3_Value: inout T_SYSTEM_FLOAT_ARRAY(2 downto 0);
        ValueBus_3_LastValue: inout T_SYSTEM_BOOL_ARRAY(2 downto 0);

        -- Interconnection bus ValueBus signals
        ValueBus_0_enable: inout T_SYSTEM_BOOL;
        ValueBus_0_Value: inout T_SYSTEM_FLOAT;
        ValueBus_0_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_4_enable: inout T_SYSTEM_BOOL;
        ValueBus_4_Value: inout T_SYSTEM_FLOAT;
        ValueBus_4_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_5_enable: inout T_SYSTEM_BOOL;
        ValueBus_5_Value: inout T_SYSTEM_FLOAT;
        ValueBus_5_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_6_enable: inout T_SYSTEM_BOOL;
        ValueBus_6_Value: inout T_SYSTEM_FLOAT;
        ValueBus_6_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_0_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_0_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_0_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_0_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_1_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_1_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_1_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_1_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_0_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_1_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus ValueBus signals
        ValueBus_8_enable: inout T_SYSTEM_BOOL;
        ValueBus_8_Value: inout T_SYSTEM_FLOAT;
        ValueBus_8_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_9_enable: inout T_SYSTEM_BOOL;
        ValueBus_9_Value: inout T_SYSTEM_FLOAT;
        ValueBus_9_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_11_enable: inout T_SYSTEM_BOOL;
        ValueBus_11_Value: inout T_SYSTEM_FLOAT;
        ValueBus_11_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_2_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_2_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_2_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_2_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_3_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_3_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_3_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_3_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_2_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_3_Data: inout T_SYSTEM_FLOAT;

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

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_4_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_4_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_4_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_4_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IControl_Single signals
        TrueDualPortMemory_1_IControl_Single_5_IsWriting: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_5_Enabled: inout T_SYSTEM_BOOL;
        TrueDualPortMemory_1_IControl_Single_5_Address: inout T_SYSTEM_INT32;
        TrueDualPortMemory_1_IControl_Single_5_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_4_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus SME_Components_TrueDualPortMemory_1_IReadResult_Single signals
        TrueDualPortMemory_1_IReadResult_Single_5_Data: inout T_SYSTEM_FLOAT;

        -- Interconnection bus ValueBus signals
        ValueBus_16_enable: inout T_SYSTEM_BOOL;
        ValueBus_16_Value: inout T_SYSTEM_FLOAT;
        ValueBus_16_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_17_enable: inout T_SYSTEM_BOOL;
        ValueBus_17_Value: inout T_SYSTEM_FLOAT;
        ValueBus_17_LastValue: inout T_SYSTEM_BOOL;

        -- Interconnection bus ValueBus signals
        ValueBus_19_enable: inout T_SYSTEM_BOOL;
        ValueBus_19_Value: inout T_SYSTEM_FLOAT;
        ValueBus_19_LastValue: inout T_SYSTEM_BOOL;

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
    signal FIN_ValueArrayCtrl : std_logic;
    signal FIN_PlusCtrl_0 : std_logic;
    signal FIN_Align : std_logic;
    signal FIN_PlusTwo : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_0 : std_logic;
    signal FIN_InputCtrl_SeqFilter_0 : std_logic;
    signal FIN_WeightValue_0 : std_logic;
    signal FIN_PlusCtrl_1 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_1 : std_logic;
    signal FIN_InputCtrl_SeqFilter_1 : std_logic;
    signal FIN_WeightValue_1 : std_logic;
    signal FIN_PlusCtrl_2 : std_logic;
    signal FIN_TrueDualPortMemory_1_Single_2 : std_logic;
    signal FIN_InputCtrl_SeqFilter_2 : std_logic;
    signal FIN_WeightValue_2 : std_logic;
    signal FIN_PlusCtrl_3 : std_logic;

    -- The primary ready driver signal
    signal RDY : std_logic;

begin

    -- Entity ValueArrayCtrl signals
    ValueArrayCtrl: entity work.CNN_ValueArrayCtrl
    generic map(
        reset_numInChannels => TO_UNSIGNED(3, 3),
        reset_channelHeight => TO_UNSIGNED(13, 5),
        reset_channelWidth => TO_UNSIGNED(13, 5),
        reset_i => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_vhdl_buffer (0 to 2) => (others => std_logic_vector'(x"00000000")),
        reset_Input_Length => TO_SIGNED(3, 32)
    )
    port map (
        -- Input bus ValueBus
        Input_enable(0) => ValueBus_3_enable(0),
        Input_enable(1) => ValueBus_3_enable(1),
        Input_enable(2) => ValueBus_3_enable(2),
        Input_Value(0) => ValueBus_3_Value(0),
        Input_Value(1) => ValueBus_3_Value(1),
        Input_Value(2) => ValueBus_3_Value(2),
        Input_LastValue(0) => ValueBus_3_LastValue(0),
        Input_LastValue(1) => ValueBus_3_LastValue(1),
        Input_LastValue(2) => ValueBus_3_LastValue(2),

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

    -- Entity PlusCtrl#0 signals
    PlusCtrl_0: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_0_enable,
        Input_Value => ValueBus_0_Value,
        Input_LastValue => ValueBus_0_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_4_enable,
        Output_LastValue => ValueBus_4_LastValue,
        Output_Value => ValueBus_4_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity Align signals
    Align: entity work.CNN_Align
    generic map(
        reset_weights (0 to 4) => (0 => std_logic_vector'(x"bdb54413"), 1 => std_logic_vector'(x"bde34c87"), 2 => std_logic_vector'(x"3cfc713d"), 3 => std_logic_vector'(x"3d9201f7"), 4 => std_logic_vector'(x"3d202fb7")),
        reset_outValues => TO_UNSIGNED(81, 7),
        reset_i => TO_UNSIGNED(0, 9),
        reset_c => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3)
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_4_enable,
        Input_Value => ValueBus_4_Value,
        Input_LastValue => ValueBus_4_LastValue,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_5_enable,
        OutputValue_LastValue => ValueBus_5_LastValue,
        OutputValue_Value => ValueBus_5_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_6_enable,
        OutputWeight_LastValue => ValueBus_6_LastValue,
        OutputWeight_Value => ValueBus_6_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_Align,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusTwo signals
    PlusTwo: entity work.CNN_PlusTwo
    port map (
        -- Input bus ValueBus
        InputA_enable => ValueBus_5_enable,
        InputA_Value => ValueBus_5_Value,
        InputA_LastValue => ValueBus_5_LastValue,

        -- Input bus ValueBus
        InputB_enable => ValueBus_6_enable,
        InputB_Value => ValueBus_6_Value,
        InputB_LastValue => ValueBus_6_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_7_enable,
        Output_LastValue => ValueBus_7_LastValue,
        Output_Value => ValueBus_7_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusTwo,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#0 signals
    TrueDualPortMemory_1_Single_0: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 293) => (0 => std_logic_vector'(x"00000000"), 1 => std_logic_vector'(x"00000000"), 2 => std_logic_vector'(x"00000000"), 3 => std_logic_vector'(x"00000000"), 4 => std_logic_vector'(x"00000000"), 5 => std_logic_vector'(x"00000000"), 6 => std_logic_vector'(x"00000000"), 7 => std_logic_vector'(x"00000000"), 8 => std_logic_vector'(x"00000000"), 9 => std_logic_vector'(x"00000000"), 10 => std_logic_vector'(x"00000000"), 11 => std_logic_vector'(x"00000000"), 12 => std_logic_vector'(x"00000000"), 13 => std_logic_vector'(x"00000000"), 14 => std_logic_vector'(x"00000000"), 15 => std_logic_vector'(x"00000000"), 16 => std_logic_vector'(x"00000000"), 17 => std_logic_vector'(x"00000000"), 18 => std_logic_vector'(x"00000000"), 19 => std_logic_vector'(x"00000000"), 20 => std_logic_vector'(x"00000000"), 21 => std_logic_vector'(x"00000000"), 22 => std_logic_vector'(x"00000000"), 23 => std_logic_vector'(x"00000000"), 24 => std_logic_vector'(x"00000000"), 25 => std_logic_vector'(x"00000000"), 26 => std_logic_vector'(x"00000000"), 27 => std_logic_vector'(x"00000000"), 28 => std_logic_vector'(x"00000000"), 29 => std_logic_vector'(x"00000000"), 30 => std_logic_vector'(x"00000000"), 31 => std_logic_vector'(x"00000000"), 32 => std_logic_vector'(x"00000000"), 33 => std_logic_vector'(x"00000000"), 34 => std_logic_vector'(x"00000000"), 35 => std_logic_vector'(x"00000000"), 36 => std_logic_vector'(x"00000000"), 37 => std_logic_vector'(x"00000000"), 38 => std_logic_vector'(x"00000000"), 39 => std_logic_vector'(x"00000000"), 40 => std_logic_vector'(x"00000000"), 41 => std_logic_vector'(x"00000000"), 42 => std_logic_vector'(x"00000000"), 43 => std_logic_vector'(x"00000000"), 44 => std_logic_vector'(x"00000000"), 45 => std_logic_vector'(x"00000000"), 46 => std_logic_vector'(x"00000000"), 47 => std_logic_vector'(x"00000000"), 48 => std_logic_vector'(x"00000000"), 49 => std_logic_vector'(x"00000000"), 50 => std_logic_vector'(x"00000000"), 51 => std_logic_vector'(x"00000000"), 52 => std_logic_vector'(x"00000000"), 53 => std_logic_vector'(x"00000000"), 54 => std_logic_vector'(x"00000000"), 55 => std_logic_vector'(x"00000000"), 56 => std_logic_vector'(x"00000000"), 57 => std_logic_vector'(x"00000000"), 58 => std_logic_vector'(x"00000000"), 59 => std_logic_vector'(x"00000000"), 60 => std_logic_vector'(x"00000000"), 61 => std_logic_vector'(x"00000000"), 62 => std_logic_vector'(x"00000000"), 63 => std_logic_vector'(x"00000000"), 64 => std_logic_vector'(x"00000000"), 65 => std_logic_vector'(x"00000000"), 66 => std_logic_vector'(x"00000000"), 67 => std_logic_vector'(x"00000000"), 68 => std_logic_vector'(x"00000000"), 69 => std_logic_vector'(x"00000000"), 70 => std_logic_vector'(x"00000000"), 71 => std_logic_vector'(x"00000000"), 72 => std_logic_vector'(x"00000000"), 73 => std_logic_vector'(x"00000000"), 74 => std_logic_vector'(x"00000000"), 75 => std_logic_vector'(x"00000000"), 76 => std_logic_vector'(x"00000000"), 77 => std_logic_vector'(x"00000000"), 78 => std_logic_vector'(x"00000000"), 79 => std_logic_vector'(x"00000000"), 80 => std_logic_vector'(x"00000000"), 81 => std_logic_vector'(x"00000000"), 82 => std_logic_vector'(x"00000000"), 83 => std_logic_vector'(x"00000000"), 84 => std_logic_vector'(x"00000000"), 85 => std_logic_vector'(x"00000000"), 86 => std_logic_vector'(x"00000000"), 87 => std_logic_vector'(x"00000000"), 88 => std_logic_vector'(x"00000000"), 89 => std_logic_vector'(x"00000000"), 90 => std_logic_vector'(x"00000000"), 91 => std_logic_vector'(x"00000000"), 92 => std_logic_vector'(x"00000000"), 93 => std_logic_vector'(x"00000000"), 94 => std_logic_vector'(x"00000000"), 95 => std_logic_vector'(x"00000000"), 96 => std_logic_vector'(x"00000000"), 97 => std_logic_vector'(x"00000000"), 98 => std_logic_vector'(x"00000000"), 99 => std_logic_vector'(x"00000000"), 100 => std_logic_vector'(x"00000000"), 101 => std_logic_vector'(x"00000000"), 102 => std_logic_vector'(x"00000000"), 103 => std_logic_vector'(x"00000000"), 104 => std_logic_vector'(x"00000000"), 105 => std_logic_vector'(x"00000000"), 106 => std_logic_vector'(x"00000000"), 107 => std_logic_vector'(x"00000000"), 108 => std_logic_vector'(x"00000000"), 109 => std_logic_vector'(x"00000000"), 110 => std_logic_vector'(x"00000000"), 111 => std_logic_vector'(x"00000000"), 112 => std_logic_vector'(x"00000000"), 113 => std_logic_vector'(x"00000000"), 114 => std_logic_vector'(x"00000000"), 115 => std_logic_vector'(x"00000000"), 116 => std_logic_vector'(x"00000000"), 117 => std_logic_vector'(x"00000000"), 118 => std_logic_vector'(x"00000000"), 119 => std_logic_vector'(x"00000000"), 120 => std_logic_vector'(x"00000000"), 121 => std_logic_vector'(x"00000000"), 122 => std_logic_vector'(x"00000000"), 123 => std_logic_vector'(x"00000000"), 124 => std_logic_vector'(x"00000000"), 125 => std_logic_vector'(x"00000000"), 126 => std_logic_vector'(x"00000000"), 127 => std_logic_vector'(x"00000000"), 128 => std_logic_vector'(x"00000000"), 129 => std_logic_vector'(x"00000000"), 130 => std_logic_vector'(x"00000000"), 131 => std_logic_vector'(x"00000000"), 132 => std_logic_vector'(x"00000000"), 133 => std_logic_vector'(x"00000000"), 134 => std_logic_vector'(x"00000000"), 135 => std_logic_vector'(x"00000000"), 136 => std_logic_vector'(x"00000000"), 137 => std_logic_vector'(x"00000000"), 138 => std_logic_vector'(x"00000000"), 139 => std_logic_vector'(x"00000000"), 140 => std_logic_vector'(x"00000000"), 141 => std_logic_vector'(x"00000000"), 142 => std_logic_vector'(x"00000000"), 143 => std_logic_vector'(x"00000000"), 144 => std_logic_vector'(x"00000000"), 145 => std_logic_vector'(x"00000000"), 146 => std_logic_vector'(x"00000000"), 147 => std_logic_vector'(x"00000000"), 148 => std_logic_vector'(x"00000000"), 149 => std_logic_vector'(x"00000000"), 150 => std_logic_vector'(x"00000000"), 151 => std_logic_vector'(x"00000000"), 152 => std_logic_vector'(x"00000000"), 153 => std_logic_vector'(x"00000000"), 154 => std_logic_vector'(x"00000000"), 155 => std_logic_vector'(x"00000000"), 156 => std_logic_vector'(x"00000000"), 157 => std_logic_vector'(x"00000000"), 158 => std_logic_vector'(x"00000000"), 159 => std_logic_vector'(x"00000000"), 160 => std_logic_vector'(x"00000000"), 161 => std_logic_vector'(x"00000000"), 162 => std_logic_vector'(x"00000000"), 163 => std_logic_vector'(x"00000000"), 164 => std_logic_vector'(x"00000000"), 165 => std_logic_vector'(x"00000000"), 166 => std_logic_vector'(x"00000000"), 167 => std_logic_vector'(x"00000000"), 168 => std_logic_vector'(x"00000000"), 169 => std_logic_vector'(x"bd37bd98"), 170 => std_logic_vector'(x"3d23bce4"), 171 => std_logic_vector'(x"3d6db622"), 172 => std_logic_vector'(x"bd81369e"), 173 => std_logic_vector'(x"bdd0ab0a"), 174 => std_logic_vector'(x"bcd44ea9"), 175 => std_logic_vector'(x"3c223b50"), 176 => std_logic_vector'(x"3d323f91"), 177 => std_logic_vector'(x"3d8034c9"), 178 => std_logic_vector'(x"bd5e0a8c"), 179 => std_logic_vector'(x"bd86531d"), 180 => std_logic_vector'(x"3d98b193"), 181 => std_logic_vector'(x"3e0ffec5"), 182 => std_logic_vector'(x"bd9eab4f"), 183 => std_logic_vector'(x"3e04590c"), 184 => std_logic_vector'(x"3c0250af"), 185 => std_logic_vector'(x"3d45daba"), 186 => std_logic_vector'(x"3d474fd6"), 187 => std_logic_vector'(x"bda8868e"), 188 => std_logic_vector'(x"bcc293f7"), 189 => std_logic_vector'(x"b8924910"), 190 => std_logic_vector'(x"bd07462c"), 191 => std_logic_vector'(x"3e0829b0"), 192 => std_logic_vector'(x"3b3596e0"), 193 => std_logic_vector'(x"bca0082e"), 194 => std_logic_vector'(x"bc25392f"), 195 => std_logic_vector'(x"be017437"), 196 => std_logic_vector'(x"3d3fc175"), 197 => std_logic_vector'(x"3de792c0"), 198 => std_logic_vector'(x"bd3959cf"), 199 => std_logic_vector'(x"bd1a49e2"), 200 => std_logic_vector'(x"bc5ddcdc"), 201 => std_logic_vector'(x"3c992b5b"), 202 => std_logic_vector'(x"bc8b11b8"), 203 => std_logic_vector'(x"3e2ac64a"), 204 => std_logic_vector'(x"bcfff72b"), 205 => std_logic_vector'(x"3dbfd289"), 206 => std_logic_vector'(x"3da2aa6d"), 207 => std_logic_vector'(x"bd8d9523"), 208 => std_logic_vector'(x"bdfb9ae2"), 209 => std_logic_vector'(x"bbdcbe89"), 210 => std_logic_vector'(x"bd1e2a49"), 211 => std_logic_vector'(x"bc6333d4"), 212 => std_logic_vector'(x"bdeaf80e"), 213 => std_logic_vector'(x"bdcde9d7"), 214 => std_logic_vector'(x"3c8119f1"), 215 => std_logic_vector'(x"3d5530be"), 216 => std_logic_vector'(x"bc0534ed"), 217 => std_logic_vector'(x"bdc75e2b"), 218 => std_logic_vector'(x"bcf57a16"), 219 => std_logic_vector'(x"bceff905"), 220 => std_logic_vector'(x"3addc543"), 221 => std_logic_vector'(x"bc8fb217"), 222 => std_logic_vector'(x"bd9e9564"), 223 => std_logic_vector'(x"bc12f2cb"), 224 => std_logic_vector'(x"bd1a91ca"), 225 => std_logic_vector'(x"3c88b3b0"), 226 => std_logic_vector'(x"bdbea7e0"), 227 => std_logic_vector'(x"bd76a18e"), 228 => std_logic_vector'(x"bc8b1ef7"), 229 => std_logic_vector'(x"3c3e301d"), 230 => std_logic_vector'(x"be340f25"), 231 => std_logic_vector'(x"3c1557c1"), 232 => std_logic_vector'(x"3da8c025"), 233 => std_logic_vector'(x"3daba265"), 234 => std_logic_vector'(x"bd6feb95"), 235 => std_logic_vector'(x"3de0b9ef"), 236 => std_logic_vector'(x"3e08c806"), 237 => std_logic_vector'(x"3c766370"), 238 => std_logic_vector'(x"bcc8dae1"), 239 => std_logic_vector'(x"bcae1abd"), 240 => std_logic_vector'(x"3ce6a3be"), 241 => std_logic_vector'(x"3a0591f8"), 242 => std_logic_vector'(x"3cfd97ca"), 243 => std_logic_vector'(x"bcc70338"), 244 => std_logic_vector'(x"bdaba499"), 245 => std_logic_vector'(x"bd79cfa6"), 246 => std_logic_vector'(x"bda22bbe"), 247 => std_logic_vector'(x"3db4e77f"), 248 => std_logic_vector'(x"3d632138"), 249 => std_logic_vector'(x"3d472014"), 250 => std_logic_vector'(x"bdbf2407"), 251 => std_logic_vector'(x"3b860e32"), 252 => std_logic_vector'(x"3d98817e"), 253 => std_logic_vector'(x"3d95063d"), 254 => std_logic_vector'(x"bccb5100"), 255 => std_logic_vector'(x"3cb619f0"), 256 => std_logic_vector'(x"3d29c636"), 257 => std_logic_vector'(x"3d079ac9"), 258 => std_logic_vector'(x"bd551fde"), 259 => std_logic_vector'(x"bc6dd6de"), 260 => std_logic_vector'(x"3d3a3c01"), 261 => std_logic_vector'(x"bd838e71"), 262 => std_logic_vector'(x"bcbc637d"), 263 => std_logic_vector'(x"bd96deea"), 264 => std_logic_vector'(x"bd4e4eda"), 265 => std_logic_vector'(x"3c942eb5"), 266 => std_logic_vector'(x"3bdc04ac"), 267 => std_logic_vector'(x"3d4f2264"), 268 => std_logic_vector'(x"be45532b"), 269 => std_logic_vector'(x"3e031f51"), 270 => std_logic_vector'(x"3abf9e33"), 271 => std_logic_vector'(x"bd9c7bcc"), 272 => std_logic_vector'(x"bd9c431a"), 273 => std_logic_vector'(x"bd21108f"), 274 => std_logic_vector'(x"3cae1a19"), 275 => std_logic_vector'(x"3d997194"), 276 => std_logic_vector'(x"bd1f19f7"), 277 => std_logic_vector'(x"bc7e7643"), 278 => std_logic_vector'(x"bd55ac59"), 279 => std_logic_vector'(x"be02b6c6"), 280 => std_logic_vector'(x"3e308c8a"), 281 => std_logic_vector'(x"be287813"), 282 => std_logic_vector'(x"bcc731e5"), 283 => std_logic_vector'(x"babe37ee"), 284 => std_logic_vector'(x"bd14f9f8"), 285 => std_logic_vector'(x"3dd59928"), 286 => std_logic_vector'(x"bd22e8bd"), 287 => std_logic_vector'(x"3c3fa440"), 288 => std_logic_vector'(x"bd68ca72"), 289 => std_logic_vector'(x"3b536d36"), 290 => std_logic_vector'(x"3e17b1f0"), 291 => std_logic_vector'(x"bd9f090d"), 292 => std_logic_vector'(x"bb5cf563"), 293 => std_logic_vector'(x"3d346ea8"))
    )
    port map (
        -- Input bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        -- Input bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_1_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqFilter#0 signals
    InputCtrl_SeqFilter_0: entity work.CNN_InputCtrl_SeqFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3),
        reset_c => TO_UNSIGNED(0, 3),
        reset_inputAdress => TO_UNSIGNED(0, 9),
        reset_kernelIdx => TO_UNSIGNED(0, 5),
        reset_weightAdress => TO_UNSIGNED(0, 9),
        reset_channelHeight => TO_UNSIGNED(13, 4),
        reset_channelWidth => TO_UNSIGNED(13, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 4),
        reset_newWidth => TO_UNSIGNED(13, 4),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 1),
        reset_strideCol => TO_UNSIGNED(1, 1),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelValue => '0'
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_10_enable,
        Input_Value => ValueBus_10_Value,
        Input_LastValue => ValueBus_10_LastValue,

        -- Input bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ram_readValue_Data => TrueDualPortMemory_1_IReadResult_Single_0_Data,

        -- Input bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ram_readWeight_Data => TrueDualPortMemory_1_IReadResult_Single_1_Data,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_8_enable,
        OutputValue_LastValue => ValueBus_8_LastValue,
        OutputValue_Value => ValueBus_8_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_9_enable,
        OutputWeight_Value => ValueBus_9_Value,
        OutputWeight_LastValue => ValueBus_9_LastValue,

        -- Output bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ram_ctrlValue_Enabled => TrueDualPortMemory_1_IControl_Single_0_Enabled,
        ram_ctrlValue_Address => TrueDualPortMemory_1_IControl_Single_0_Address,
        ram_ctrlValue_IsWriting => TrueDualPortMemory_1_IControl_Single_0_IsWriting,
        ram_ctrlValue_Data => TrueDualPortMemory_1_IControl_Single_0_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ram_ctrlWeight_Enabled => TrueDualPortMemory_1_IControl_Single_1_Enabled,
        ram_ctrlWeight_Address => TrueDualPortMemory_1_IControl_Single_1_Address,
        ram_ctrlWeight_IsWriting => TrueDualPortMemory_1_IControl_Single_1_IsWriting,
        ram_ctrlWeight_Data => TrueDualPortMemory_1_IControl_Single_1_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqFilter_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#0 signals
    WeightValue_0: entity work.CNN_WeightValue
    port map (
        -- Input bus ValueBus
        InputValue_enable => ValueBus_8_enable,
        InputValue_Value => ValueBus_8_Value,
        InputValue_LastValue => ValueBus_8_LastValue,

        -- Input bus ValueBus
        InputWeight_enable => ValueBus_9_enable,
        InputWeight_Value => ValueBus_9_Value,
        InputWeight_LastValue => ValueBus_9_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_11_enable,
        Output_LastValue => ValueBus_11_LastValue,
        Output_Value => ValueBus_11_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_0,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#1 signals
    PlusCtrl_1: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_11_enable,
        Input_Value => ValueBus_11_Value,
        Input_LastValue => ValueBus_11_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_3_enable(0),
        Output_LastValue => ValueBus_3_LastValue(0),
        Output_Value => ValueBus_3_Value(0),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#1 signals
    TrueDualPortMemory_1_Single_1: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 293) => (0 => std_logic_vector'(x"00000000"), 1 => std_logic_vector'(x"00000000"), 2 => std_logic_vector'(x"00000000"), 3 => std_logic_vector'(x"00000000"), 4 => std_logic_vector'(x"00000000"), 5 => std_logic_vector'(x"00000000"), 6 => std_logic_vector'(x"00000000"), 7 => std_logic_vector'(x"00000000"), 8 => std_logic_vector'(x"00000000"), 9 => std_logic_vector'(x"00000000"), 10 => std_logic_vector'(x"00000000"), 11 => std_logic_vector'(x"00000000"), 12 => std_logic_vector'(x"00000000"), 13 => std_logic_vector'(x"00000000"), 14 => std_logic_vector'(x"00000000"), 15 => std_logic_vector'(x"00000000"), 16 => std_logic_vector'(x"00000000"), 17 => std_logic_vector'(x"00000000"), 18 => std_logic_vector'(x"00000000"), 19 => std_logic_vector'(x"00000000"), 20 => std_logic_vector'(x"00000000"), 21 => std_logic_vector'(x"00000000"), 22 => std_logic_vector'(x"00000000"), 23 => std_logic_vector'(x"00000000"), 24 => std_logic_vector'(x"00000000"), 25 => std_logic_vector'(x"00000000"), 26 => std_logic_vector'(x"00000000"), 27 => std_logic_vector'(x"00000000"), 28 => std_logic_vector'(x"00000000"), 29 => std_logic_vector'(x"00000000"), 30 => std_logic_vector'(x"00000000"), 31 => std_logic_vector'(x"00000000"), 32 => std_logic_vector'(x"00000000"), 33 => std_logic_vector'(x"00000000"), 34 => std_logic_vector'(x"00000000"), 35 => std_logic_vector'(x"00000000"), 36 => std_logic_vector'(x"00000000"), 37 => std_logic_vector'(x"00000000"), 38 => std_logic_vector'(x"00000000"), 39 => std_logic_vector'(x"00000000"), 40 => std_logic_vector'(x"00000000"), 41 => std_logic_vector'(x"00000000"), 42 => std_logic_vector'(x"00000000"), 43 => std_logic_vector'(x"00000000"), 44 => std_logic_vector'(x"00000000"), 45 => std_logic_vector'(x"00000000"), 46 => std_logic_vector'(x"00000000"), 47 => std_logic_vector'(x"00000000"), 48 => std_logic_vector'(x"00000000"), 49 => std_logic_vector'(x"00000000"), 50 => std_logic_vector'(x"00000000"), 51 => std_logic_vector'(x"00000000"), 52 => std_logic_vector'(x"00000000"), 53 => std_logic_vector'(x"00000000"), 54 => std_logic_vector'(x"00000000"), 55 => std_logic_vector'(x"00000000"), 56 => std_logic_vector'(x"00000000"), 57 => std_logic_vector'(x"00000000"), 58 => std_logic_vector'(x"00000000"), 59 => std_logic_vector'(x"00000000"), 60 => std_logic_vector'(x"00000000"), 61 => std_logic_vector'(x"00000000"), 62 => std_logic_vector'(x"00000000"), 63 => std_logic_vector'(x"00000000"), 64 => std_logic_vector'(x"00000000"), 65 => std_logic_vector'(x"00000000"), 66 => std_logic_vector'(x"00000000"), 67 => std_logic_vector'(x"00000000"), 68 => std_logic_vector'(x"00000000"), 69 => std_logic_vector'(x"00000000"), 70 => std_logic_vector'(x"00000000"), 71 => std_logic_vector'(x"00000000"), 72 => std_logic_vector'(x"00000000"), 73 => std_logic_vector'(x"00000000"), 74 => std_logic_vector'(x"00000000"), 75 => std_logic_vector'(x"00000000"), 76 => std_logic_vector'(x"00000000"), 77 => std_logic_vector'(x"00000000"), 78 => std_logic_vector'(x"00000000"), 79 => std_logic_vector'(x"00000000"), 80 => std_logic_vector'(x"00000000"), 81 => std_logic_vector'(x"00000000"), 82 => std_logic_vector'(x"00000000"), 83 => std_logic_vector'(x"00000000"), 84 => std_logic_vector'(x"00000000"), 85 => std_logic_vector'(x"00000000"), 86 => std_logic_vector'(x"00000000"), 87 => std_logic_vector'(x"00000000"), 88 => std_logic_vector'(x"00000000"), 89 => std_logic_vector'(x"00000000"), 90 => std_logic_vector'(x"00000000"), 91 => std_logic_vector'(x"00000000"), 92 => std_logic_vector'(x"00000000"), 93 => std_logic_vector'(x"00000000"), 94 => std_logic_vector'(x"00000000"), 95 => std_logic_vector'(x"00000000"), 96 => std_logic_vector'(x"00000000"), 97 => std_logic_vector'(x"00000000"), 98 => std_logic_vector'(x"00000000"), 99 => std_logic_vector'(x"00000000"), 100 => std_logic_vector'(x"00000000"), 101 => std_logic_vector'(x"00000000"), 102 => std_logic_vector'(x"00000000"), 103 => std_logic_vector'(x"00000000"), 104 => std_logic_vector'(x"00000000"), 105 => std_logic_vector'(x"00000000"), 106 => std_logic_vector'(x"00000000"), 107 => std_logic_vector'(x"00000000"), 108 => std_logic_vector'(x"00000000"), 109 => std_logic_vector'(x"00000000"), 110 => std_logic_vector'(x"00000000"), 111 => std_logic_vector'(x"00000000"), 112 => std_logic_vector'(x"00000000"), 113 => std_logic_vector'(x"00000000"), 114 => std_logic_vector'(x"00000000"), 115 => std_logic_vector'(x"00000000"), 116 => std_logic_vector'(x"00000000"), 117 => std_logic_vector'(x"00000000"), 118 => std_logic_vector'(x"00000000"), 119 => std_logic_vector'(x"00000000"), 120 => std_logic_vector'(x"00000000"), 121 => std_logic_vector'(x"00000000"), 122 => std_logic_vector'(x"00000000"), 123 => std_logic_vector'(x"00000000"), 124 => std_logic_vector'(x"00000000"), 125 => std_logic_vector'(x"00000000"), 126 => std_logic_vector'(x"00000000"), 127 => std_logic_vector'(x"00000000"), 128 => std_logic_vector'(x"00000000"), 129 => std_logic_vector'(x"00000000"), 130 => std_logic_vector'(x"00000000"), 131 => std_logic_vector'(x"00000000"), 132 => std_logic_vector'(x"00000000"), 133 => std_logic_vector'(x"00000000"), 134 => std_logic_vector'(x"00000000"), 135 => std_logic_vector'(x"00000000"), 136 => std_logic_vector'(x"00000000"), 137 => std_logic_vector'(x"00000000"), 138 => std_logic_vector'(x"00000000"), 139 => std_logic_vector'(x"00000000"), 140 => std_logic_vector'(x"00000000"), 141 => std_logic_vector'(x"00000000"), 142 => std_logic_vector'(x"00000000"), 143 => std_logic_vector'(x"00000000"), 144 => std_logic_vector'(x"00000000"), 145 => std_logic_vector'(x"00000000"), 146 => std_logic_vector'(x"00000000"), 147 => std_logic_vector'(x"00000000"), 148 => std_logic_vector'(x"00000000"), 149 => std_logic_vector'(x"00000000"), 150 => std_logic_vector'(x"00000000"), 151 => std_logic_vector'(x"00000000"), 152 => std_logic_vector'(x"00000000"), 153 => std_logic_vector'(x"00000000"), 154 => std_logic_vector'(x"00000000"), 155 => std_logic_vector'(x"00000000"), 156 => std_logic_vector'(x"00000000"), 157 => std_logic_vector'(x"00000000"), 158 => std_logic_vector'(x"00000000"), 159 => std_logic_vector'(x"00000000"), 160 => std_logic_vector'(x"00000000"), 161 => std_logic_vector'(x"00000000"), 162 => std_logic_vector'(x"00000000"), 163 => std_logic_vector'(x"00000000"), 164 => std_logic_vector'(x"00000000"), 165 => std_logic_vector'(x"00000000"), 166 => std_logic_vector'(x"00000000"), 167 => std_logic_vector'(x"00000000"), 168 => std_logic_vector'(x"00000000"), 169 => std_logic_vector'(x"bd59d476"), 170 => std_logic_vector'(x"bdbebd0a"), 171 => std_logic_vector'(x"bd8b07c8"), 172 => std_logic_vector'(x"3d7728c7"), 173 => std_logic_vector'(x"bdb5c607"), 174 => std_logic_vector'(x"bdf1ea81"), 175 => std_logic_vector'(x"bd0550b2"), 176 => std_logic_vector'(x"bda96090"), 177 => std_logic_vector'(x"3ddbe554"), 178 => std_logic_vector'(x"3d97ea55"), 179 => std_logic_vector'(x"bcf80059"), 180 => std_logic_vector'(x"bd550f7d"), 181 => std_logic_vector'(x"3d86d86d"), 182 => std_logic_vector'(x"3ce92ba9"), 183 => std_logic_vector'(x"3cdc9071"), 184 => std_logic_vector'(x"3d8d746d"), 185 => std_logic_vector'(x"3e02fd5b"), 186 => std_logic_vector'(x"bd072997"), 187 => std_logic_vector'(x"3be72605"), 188 => std_logic_vector'(x"bd2ac2e7"), 189 => std_logic_vector'(x"3db95147"), 190 => std_logic_vector'(x"3c3173f1"), 191 => std_logic_vector'(x"3c9d3b5d"), 192 => std_logic_vector'(x"bd2187d6"), 193 => std_logic_vector'(x"bd9a559a"), 194 => std_logic_vector'(x"3d53b41c"), 195 => std_logic_vector'(x"be390239"), 196 => std_logic_vector'(x"3b960aa1"), 197 => std_logic_vector'(x"3e2bb8bf"), 198 => std_logic_vector'(x"3e74bb63"), 199 => std_logic_vector'(x"bd5ab85f"), 200 => std_logic_vector'(x"bd5f7615"), 201 => std_logic_vector'(x"3d31612a"), 202 => std_logic_vector'(x"3d8e6dab"), 203 => std_logic_vector'(x"bbd5aae0"), 204 => std_logic_vector'(x"bc0c99fb"), 205 => std_logic_vector'(x"3d9aab0e"), 206 => std_logic_vector'(x"bc16abaa"), 207 => std_logic_vector'(x"bd5002f0"), 208 => std_logic_vector'(x"bd258565"), 209 => std_logic_vector'(x"bd5621a5"), 210 => std_logic_vector'(x"3d01bd70"), 211 => std_logic_vector'(x"bd94457c"), 212 => std_logic_vector'(x"3dd8b7eb"), 213 => std_logic_vector'(x"3dd30909"), 214 => std_logic_vector'(x"3d1d665c"), 215 => std_logic_vector'(x"bc75a401"), 216 => std_logic_vector'(x"bc7008eb"), 217 => std_logic_vector'(x"3df56a7d"), 218 => std_logic_vector'(x"bc12e174"), 219 => std_logic_vector'(x"3e23d31b"), 220 => std_logic_vector'(x"bc8154e0"), 221 => std_logic_vector'(x"3de6bd31"), 222 => std_logic_vector'(x"bbd404f4"), 223 => std_logic_vector'(x"3b7ec4e6"), 224 => std_logic_vector'(x"3e2a097d"), 225 => std_logic_vector'(x"bdbf8934"), 226 => std_logic_vector'(x"3ccb90f2"), 227 => std_logic_vector'(x"bd9ef8dd"), 228 => std_logic_vector'(x"3c73f9e5"), 229 => std_logic_vector'(x"3af80f67"), 230 => std_logic_vector'(x"3e291b03"), 231 => std_logic_vector'(x"3e048839"), 232 => std_logic_vector'(x"bc7ccdac"), 233 => std_logic_vector'(x"bcea6c66"), 234 => std_logic_vector'(x"3d8a17d9"), 235 => std_logic_vector'(x"3c946d32"), 236 => std_logic_vector'(x"3d87db0b"), 237 => std_logic_vector'(x"bccf6698"), 238 => std_logic_vector'(x"3dab710e"), 239 => std_logic_vector'(x"3be3c09f"), 240 => std_logic_vector'(x"bda090f4"), 241 => std_logic_vector'(x"bdc3a774"), 242 => std_logic_vector'(x"bb8ea66c"), 243 => std_logic_vector'(x"3e73cf11"), 244 => std_logic_vector'(x"bd987c41"), 245 => std_logic_vector'(x"bd1f66f5"), 246 => std_logic_vector'(x"bcf3baf3"), 247 => std_logic_vector'(x"bbfa6b3f"), 248 => std_logic_vector'(x"3dc4f13a"), 249 => std_logic_vector'(x"3bb17081"), 250 => std_logic_vector'(x"bd827b30"), 251 => std_logic_vector'(x"3cd90eb7"), 252 => std_logic_vector'(x"3dffb3dc"), 253 => std_logic_vector'(x"3da9ac2a"), 254 => std_logic_vector'(x"3af7159b"), 255 => std_logic_vector'(x"3c190964"), 256 => std_logic_vector'(x"bd0bf6b0"), 257 => std_logic_vector'(x"3d4ea9c2"), 258 => std_logic_vector'(x"bdb7592d"), 259 => std_logic_vector'(x"3d9afd27"), 260 => std_logic_vector'(x"3cebe506"), 261 => std_logic_vector'(x"bc6e9eaa"), 262 => std_logic_vector'(x"3d0ca5cd"), 263 => std_logic_vector'(x"bc2c2d75"), 264 => std_logic_vector'(x"3e197340"), 265 => std_logic_vector'(x"3cc0f44a"), 266 => std_logic_vector'(x"bcaef697"), 267 => std_logic_vector'(x"bda2b80a"), 268 => std_logic_vector'(x"bdee0602"), 269 => std_logic_vector'(x"baaf0847"), 270 => std_logic_vector'(x"3db6c531"), 271 => std_logic_vector'(x"bc2e4f89"), 272 => std_logic_vector'(x"bd5f8317"), 273 => std_logic_vector'(x"3d602039"), 274 => std_logic_vector'(x"bdd79d21"), 275 => std_logic_vector'(x"bcd79136"), 276 => std_logic_vector'(x"3be4707d"), 277 => std_logic_vector'(x"bd456748"), 278 => std_logic_vector'(x"3cc19a7b"), 279 => std_logic_vector'(x"bd881b93"), 280 => std_logic_vector'(x"be0f57fd"), 281 => std_logic_vector'(x"3b9121ba"), 282 => std_logic_vector'(x"3d8b3eb7"), 283 => std_logic_vector'(x"bac93f2a"), 284 => std_logic_vector'(x"bb95f54a"), 285 => std_logic_vector'(x"bd05a5bc"), 286 => std_logic_vector'(x"bd07637d"), 287 => std_logic_vector'(x"3e0711bb"), 288 => std_logic_vector'(x"ba2071fd"), 289 => std_logic_vector'(x"3a85a3ed"), 290 => std_logic_vector'(x"bc9aada4"), 291 => std_logic_vector'(x"3bd2d638"), 292 => std_logic_vector'(x"3e0c9306"), 293 => std_logic_vector'(x"3cb22eec"))
    )
    port map (
        -- Input bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        -- Input bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_3_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqFilter#1 signals
    InputCtrl_SeqFilter_1: entity work.CNN_InputCtrl_SeqFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3),
        reset_c => TO_UNSIGNED(0, 3),
        reset_inputAdress => TO_UNSIGNED(0, 9),
        reset_kernelIdx => TO_UNSIGNED(0, 5),
        reset_weightAdress => TO_UNSIGNED(0, 9),
        reset_channelHeight => TO_UNSIGNED(13, 4),
        reset_channelWidth => TO_UNSIGNED(13, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 4),
        reset_newWidth => TO_UNSIGNED(13, 4),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 1),
        reset_strideCol => TO_UNSIGNED(1, 1),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelValue => '0'
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_14_enable,
        Input_Value => ValueBus_14_Value,
        Input_LastValue => ValueBus_14_LastValue,

        -- Input bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ram_readValue_Data => TrueDualPortMemory_1_IReadResult_Single_2_Data,

        -- Input bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ram_readWeight_Data => TrueDualPortMemory_1_IReadResult_Single_3_Data,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_12_enable,
        OutputValue_LastValue => ValueBus_12_LastValue,
        OutputValue_Value => ValueBus_12_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_13_enable,
        OutputWeight_Value => ValueBus_13_Value,
        OutputWeight_LastValue => ValueBus_13_LastValue,

        -- Output bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ram_ctrlValue_Enabled => TrueDualPortMemory_1_IControl_Single_2_Enabled,
        ram_ctrlValue_Address => TrueDualPortMemory_1_IControl_Single_2_Address,
        ram_ctrlValue_IsWriting => TrueDualPortMemory_1_IControl_Single_2_IsWriting,
        ram_ctrlValue_Data => TrueDualPortMemory_1_IControl_Single_2_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ram_ctrlWeight_Enabled => TrueDualPortMemory_1_IControl_Single_3_Enabled,
        ram_ctrlWeight_Address => TrueDualPortMemory_1_IControl_Single_3_Address,
        ram_ctrlWeight_IsWriting => TrueDualPortMemory_1_IControl_Single_3_IsWriting,
        ram_ctrlWeight_Data => TrueDualPortMemory_1_IControl_Single_3_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqFilter_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#1 signals
    WeightValue_1: entity work.CNN_WeightValue
    port map (
        -- Input bus ValueBus
        InputValue_enable => ValueBus_12_enable,
        InputValue_Value => ValueBus_12_Value,
        InputValue_LastValue => ValueBus_12_LastValue,

        -- Input bus ValueBus
        InputWeight_enable => ValueBus_13_enable,
        InputWeight_Value => ValueBus_13_Value,
        InputWeight_LastValue => ValueBus_13_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_15_enable,
        Output_LastValue => ValueBus_15_LastValue,
        Output_Value => ValueBus_15_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_1,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#2 signals
    PlusCtrl_2: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_15_enable,
        Input_Value => ValueBus_15_Value,
        Input_LastValue => ValueBus_15_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_3_enable(1),
        Output_LastValue => ValueBus_3_LastValue(1),
        Output_Value => ValueBus_3_Value(1),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity TrueDualPortMemory`1<Single>#2 signals
    TrueDualPortMemory_1_Single_2: entity work.SME_Components_TrueDualPortMemory_1_Single
    generic map(
        reset_m_memory (0 to 293) => (0 => std_logic_vector'(x"00000000"), 1 => std_logic_vector'(x"00000000"), 2 => std_logic_vector'(x"00000000"), 3 => std_logic_vector'(x"00000000"), 4 => std_logic_vector'(x"00000000"), 5 => std_logic_vector'(x"00000000"), 6 => std_logic_vector'(x"00000000"), 7 => std_logic_vector'(x"00000000"), 8 => std_logic_vector'(x"00000000"), 9 => std_logic_vector'(x"00000000"), 10 => std_logic_vector'(x"00000000"), 11 => std_logic_vector'(x"00000000"), 12 => std_logic_vector'(x"00000000"), 13 => std_logic_vector'(x"00000000"), 14 => std_logic_vector'(x"00000000"), 15 => std_logic_vector'(x"00000000"), 16 => std_logic_vector'(x"00000000"), 17 => std_logic_vector'(x"00000000"), 18 => std_logic_vector'(x"00000000"), 19 => std_logic_vector'(x"00000000"), 20 => std_logic_vector'(x"00000000"), 21 => std_logic_vector'(x"00000000"), 22 => std_logic_vector'(x"00000000"), 23 => std_logic_vector'(x"00000000"), 24 => std_logic_vector'(x"00000000"), 25 => std_logic_vector'(x"00000000"), 26 => std_logic_vector'(x"00000000"), 27 => std_logic_vector'(x"00000000"), 28 => std_logic_vector'(x"00000000"), 29 => std_logic_vector'(x"00000000"), 30 => std_logic_vector'(x"00000000"), 31 => std_logic_vector'(x"00000000"), 32 => std_logic_vector'(x"00000000"), 33 => std_logic_vector'(x"00000000"), 34 => std_logic_vector'(x"00000000"), 35 => std_logic_vector'(x"00000000"), 36 => std_logic_vector'(x"00000000"), 37 => std_logic_vector'(x"00000000"), 38 => std_logic_vector'(x"00000000"), 39 => std_logic_vector'(x"00000000"), 40 => std_logic_vector'(x"00000000"), 41 => std_logic_vector'(x"00000000"), 42 => std_logic_vector'(x"00000000"), 43 => std_logic_vector'(x"00000000"), 44 => std_logic_vector'(x"00000000"), 45 => std_logic_vector'(x"00000000"), 46 => std_logic_vector'(x"00000000"), 47 => std_logic_vector'(x"00000000"), 48 => std_logic_vector'(x"00000000"), 49 => std_logic_vector'(x"00000000"), 50 => std_logic_vector'(x"00000000"), 51 => std_logic_vector'(x"00000000"), 52 => std_logic_vector'(x"00000000"), 53 => std_logic_vector'(x"00000000"), 54 => std_logic_vector'(x"00000000"), 55 => std_logic_vector'(x"00000000"), 56 => std_logic_vector'(x"00000000"), 57 => std_logic_vector'(x"00000000"), 58 => std_logic_vector'(x"00000000"), 59 => std_logic_vector'(x"00000000"), 60 => std_logic_vector'(x"00000000"), 61 => std_logic_vector'(x"00000000"), 62 => std_logic_vector'(x"00000000"), 63 => std_logic_vector'(x"00000000"), 64 => std_logic_vector'(x"00000000"), 65 => std_logic_vector'(x"00000000"), 66 => std_logic_vector'(x"00000000"), 67 => std_logic_vector'(x"00000000"), 68 => std_logic_vector'(x"00000000"), 69 => std_logic_vector'(x"00000000"), 70 => std_logic_vector'(x"00000000"), 71 => std_logic_vector'(x"00000000"), 72 => std_logic_vector'(x"00000000"), 73 => std_logic_vector'(x"00000000"), 74 => std_logic_vector'(x"00000000"), 75 => std_logic_vector'(x"00000000"), 76 => std_logic_vector'(x"00000000"), 77 => std_logic_vector'(x"00000000"), 78 => std_logic_vector'(x"00000000"), 79 => std_logic_vector'(x"00000000"), 80 => std_logic_vector'(x"00000000"), 81 => std_logic_vector'(x"00000000"), 82 => std_logic_vector'(x"00000000"), 83 => std_logic_vector'(x"00000000"), 84 => std_logic_vector'(x"00000000"), 85 => std_logic_vector'(x"00000000"), 86 => std_logic_vector'(x"00000000"), 87 => std_logic_vector'(x"00000000"), 88 => std_logic_vector'(x"00000000"), 89 => std_logic_vector'(x"00000000"), 90 => std_logic_vector'(x"00000000"), 91 => std_logic_vector'(x"00000000"), 92 => std_logic_vector'(x"00000000"), 93 => std_logic_vector'(x"00000000"), 94 => std_logic_vector'(x"00000000"), 95 => std_logic_vector'(x"00000000"), 96 => std_logic_vector'(x"00000000"), 97 => std_logic_vector'(x"00000000"), 98 => std_logic_vector'(x"00000000"), 99 => std_logic_vector'(x"00000000"), 100 => std_logic_vector'(x"00000000"), 101 => std_logic_vector'(x"00000000"), 102 => std_logic_vector'(x"00000000"), 103 => std_logic_vector'(x"00000000"), 104 => std_logic_vector'(x"00000000"), 105 => std_logic_vector'(x"00000000"), 106 => std_logic_vector'(x"00000000"), 107 => std_logic_vector'(x"00000000"), 108 => std_logic_vector'(x"00000000"), 109 => std_logic_vector'(x"00000000"), 110 => std_logic_vector'(x"00000000"), 111 => std_logic_vector'(x"00000000"), 112 => std_logic_vector'(x"00000000"), 113 => std_logic_vector'(x"00000000"), 114 => std_logic_vector'(x"00000000"), 115 => std_logic_vector'(x"00000000"), 116 => std_logic_vector'(x"00000000"), 117 => std_logic_vector'(x"00000000"), 118 => std_logic_vector'(x"00000000"), 119 => std_logic_vector'(x"00000000"), 120 => std_logic_vector'(x"00000000"), 121 => std_logic_vector'(x"00000000"), 122 => std_logic_vector'(x"00000000"), 123 => std_logic_vector'(x"00000000"), 124 => std_logic_vector'(x"00000000"), 125 => std_logic_vector'(x"00000000"), 126 => std_logic_vector'(x"00000000"), 127 => std_logic_vector'(x"00000000"), 128 => std_logic_vector'(x"00000000"), 129 => std_logic_vector'(x"00000000"), 130 => std_logic_vector'(x"00000000"), 131 => std_logic_vector'(x"00000000"), 132 => std_logic_vector'(x"00000000"), 133 => std_logic_vector'(x"00000000"), 134 => std_logic_vector'(x"00000000"), 135 => std_logic_vector'(x"00000000"), 136 => std_logic_vector'(x"00000000"), 137 => std_logic_vector'(x"00000000"), 138 => std_logic_vector'(x"00000000"), 139 => std_logic_vector'(x"00000000"), 140 => std_logic_vector'(x"00000000"), 141 => std_logic_vector'(x"00000000"), 142 => std_logic_vector'(x"00000000"), 143 => std_logic_vector'(x"00000000"), 144 => std_logic_vector'(x"00000000"), 145 => std_logic_vector'(x"00000000"), 146 => std_logic_vector'(x"00000000"), 147 => std_logic_vector'(x"00000000"), 148 => std_logic_vector'(x"00000000"), 149 => std_logic_vector'(x"00000000"), 150 => std_logic_vector'(x"00000000"), 151 => std_logic_vector'(x"00000000"), 152 => std_logic_vector'(x"00000000"), 153 => std_logic_vector'(x"00000000"), 154 => std_logic_vector'(x"00000000"), 155 => std_logic_vector'(x"00000000"), 156 => std_logic_vector'(x"00000000"), 157 => std_logic_vector'(x"00000000"), 158 => std_logic_vector'(x"00000000"), 159 => std_logic_vector'(x"00000000"), 160 => std_logic_vector'(x"00000000"), 161 => std_logic_vector'(x"00000000"), 162 => std_logic_vector'(x"00000000"), 163 => std_logic_vector'(x"00000000"), 164 => std_logic_vector'(x"00000000"), 165 => std_logic_vector'(x"00000000"), 166 => std_logic_vector'(x"00000000"), 167 => std_logic_vector'(x"00000000"), 168 => std_logic_vector'(x"00000000"), 169 => std_logic_vector'(x"bc3dcc59"), 170 => std_logic_vector'(x"3d055d74"), 171 => std_logic_vector'(x"bb154bcf"), 172 => std_logic_vector'(x"3c81cb2e"), 173 => std_logic_vector'(x"3e064f22"), 174 => std_logic_vector'(x"bd973986"), 175 => std_logic_vector'(x"bd648ab0"), 176 => std_logic_vector'(x"bc40f94f"), 177 => std_logic_vector'(x"bbcee791"), 178 => std_logic_vector'(x"3c41cada"), 179 => std_logic_vector'(x"bbf4351a"), 180 => std_logic_vector'(x"3d0e71cb"), 181 => std_logic_vector'(x"bdd4cbf7"), 182 => std_logic_vector'(x"3b34ff23"), 183 => std_logic_vector'(x"3cb39a80"), 184 => std_logic_vector'(x"3cddba78"), 185 => std_logic_vector'(x"3db96aeb"), 186 => std_logic_vector'(x"bdc75b11"), 187 => std_logic_vector'(x"bd80b956"), 188 => std_logic_vector'(x"bdba710e"), 189 => std_logic_vector'(x"3dd6bdb4"), 190 => std_logic_vector'(x"3d547e96"), 191 => std_logic_vector'(x"3c859919"), 192 => std_logic_vector'(x"bdbd4de1"), 193 => std_logic_vector'(x"3d918242"), 194 => std_logic_vector'(x"bbc54fcd"), 195 => std_logic_vector'(x"bda7ae4c"), 196 => std_logic_vector'(x"3e1e54ec"), 197 => std_logic_vector'(x"3d664890"), 198 => std_logic_vector'(x"bc890921"), 199 => std_logic_vector'(x"bba2405f"), 200 => std_logic_vector'(x"bcdb245c"), 201 => std_logic_vector'(x"bc8c97ac"), 202 => std_logic_vector'(x"3c8f239b"), 203 => std_logic_vector'(x"3e03c424"), 204 => std_logic_vector'(x"bc9cbe9c"), 205 => std_logic_vector'(x"3ce10f07"), 206 => std_logic_vector'(x"bdb3f507"), 207 => std_logic_vector'(x"3c8a1951"), 208 => std_logic_vector'(x"3b632c4e"), 209 => std_logic_vector'(x"3cf567a6"), 210 => std_logic_vector'(x"3cb62f68"), 211 => std_logic_vector'(x"3ca3d1a9"), 212 => std_logic_vector'(x"bcd02027"), 213 => std_logic_vector'(x"3b847f0e"), 214 => std_logic_vector'(x"3d62ec36"), 215 => std_logic_vector'(x"3c0fdbef"), 216 => std_logic_vector'(x"3c43b331"), 217 => std_logic_vector'(x"3d5a0bcc"), 218 => std_logic_vector'(x"3d759d34"), 219 => std_logic_vector'(x"3da8621b"), 220 => std_logic_vector'(x"3d21742c"), 221 => std_logic_vector'(x"3d91dcb9"), 222 => std_logic_vector'(x"3bb5ef09"), 223 => std_logic_vector'(x"bd1ed344"), 224 => std_logic_vector'(x"bb807c88"), 225 => std_logic_vector'(x"3c1ee66f"), 226 => std_logic_vector'(x"bd085f36"), 227 => std_logic_vector'(x"3d3d820b"), 228 => std_logic_vector'(x"3c8e32f6"), 229 => std_logic_vector'(x"bd432d66"), 230 => std_logic_vector'(x"bd7e7cd6"), 231 => std_logic_vector'(x"3d7f6d45"), 232 => std_logic_vector'(x"3e34c47d"), 233 => std_logic_vector'(x"3dbf971d"), 234 => std_logic_vector'(x"3d2636b1"), 235 => std_logic_vector'(x"3c8c9253"), 236 => std_logic_vector'(x"3c2290c9"), 237 => std_logic_vector'(x"3ced499e"), 238 => std_logic_vector'(x"3e0ecff8"), 239 => std_logic_vector'(x"bd93464f"), 240 => std_logic_vector'(x"bd457b81"), 241 => std_logic_vector'(x"3d8b28e0"), 242 => std_logic_vector'(x"bcdc1431"), 243 => std_logic_vector'(x"3d5b3786"), 244 => std_logic_vector'(x"b9d35907"), 245 => std_logic_vector'(x"bd44f41e"), 246 => std_logic_vector'(x"bdec1587"), 247 => std_logic_vector'(x"bc9d35ba"), 248 => std_logic_vector'(x"3de4c0eb"), 249 => std_logic_vector'(x"bc0d1712"), 250 => std_logic_vector'(x"bd80c1d8"), 251 => std_logic_vector'(x"bd500c93"), 252 => std_logic_vector'(x"3c84027c"), 253 => std_logic_vector'(x"bc1e66c0"), 254 => std_logic_vector'(x"bc4f03c5"), 255 => std_logic_vector'(x"bcafdcd4"), 256 => std_logic_vector'(x"3cc82587"), 257 => std_logic_vector'(x"bd12b702"), 258 => std_logic_vector'(x"bbff606e"), 259 => std_logic_vector'(x"bc760981"), 260 => std_logic_vector'(x"3d47ced4"), 261 => std_logic_vector'(x"3d6e2582"), 262 => std_logic_vector'(x"bdbed28a"), 263 => std_logic_vector'(x"3d854b76"), 264 => std_logic_vector'(x"3d4b5e08"), 265 => std_logic_vector'(x"bd71dc0f"), 266 => std_logic_vector'(x"bd0985f6"), 267 => std_logic_vector'(x"bcaacfe2"), 268 => std_logic_vector'(x"bdd91922"), 269 => std_logic_vector'(x"bc224e1a"), 270 => std_logic_vector'(x"3ca75d9c"), 271 => std_logic_vector'(x"3da9c504"), 272 => std_logic_vector'(x"bdf9eaa8"), 273 => std_logic_vector'(x"bdef17fa"), 274 => std_logic_vector'(x"3d08293e"), 275 => std_logic_vector'(x"3ce3e1c3"), 276 => std_logic_vector'(x"be1be1f5"), 277 => std_logic_vector'(x"bdc40b4f"), 278 => std_logic_vector'(x"bde37e2a"), 279 => std_logic_vector'(x"3c979f23"), 280 => std_logic_vector'(x"3dcc2973"), 281 => std_logic_vector'(x"bdc8bb4e"), 282 => std_logic_vector'(x"bd9c908b"), 283 => std_logic_vector'(x"3b956915"), 284 => std_logic_vector'(x"3d4fd87b"), 285 => std_logic_vector'(x"3d4635b3"), 286 => std_logic_vector'(x"bbff74c6"), 287 => std_logic_vector'(x"bd8c7471"), 288 => std_logic_vector'(x"bcbcf280"), 289 => std_logic_vector'(x"bc77cb6c"), 290 => std_logic_vector'(x"3e13fb37"), 291 => std_logic_vector'(x"3d745e2d"), 292 => std_logic_vector'(x"3d393e9a"), 293 => std_logic_vector'(x"bd7b5988"))
    )
    port map (
        -- Input bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ControlA_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        ControlA_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        ControlA_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        ControlA_Data => TrueDualPortMemory_1_IControl_Single_4_Data,

        -- Input bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ControlB_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        ControlB_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        ControlB_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        ControlB_Data => TrueDualPortMemory_1_IControl_Single_5_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ReadResultA_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ReadResultB_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_TrueDualPortMemory_1_Single_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity InputCtrl_SeqFilter#2 signals
    InputCtrl_SeqFilter_2: entity work.CNN_InputCtrl_SeqFilter
    generic map(
        reset_ii => TO_UNSIGNED(0, 4),
        reset_jj => TO_UNSIGNED(0, 4),
        reset_i => TO_UNSIGNED(0, 3),
        reset_j => TO_UNSIGNED(0, 3),
        reset_k => TO_UNSIGNED(0, 3),
        reset_numOutChannels => TO_UNSIGNED(5, 3),
        reset_c => TO_UNSIGNED(0, 3),
        reset_inputAdress => TO_UNSIGNED(0, 9),
        reset_kernelIdx => TO_UNSIGNED(0, 5),
        reset_weightAdress => TO_UNSIGNED(0, 9),
        reset_channelHeight => TO_UNSIGNED(13, 4),
        reset_channelWidth => TO_UNSIGNED(13, 4),
        reset_padHeight => TO_UNSIGNED(0, 1),
        reset_padWidth => TO_UNSIGNED(0, 1),
        reset_newHeight => TO_UNSIGNED(13, 4),
        reset_newWidth => TO_UNSIGNED(13, 4),
        reset_kernelHeight => TO_UNSIGNED(5, 3),
        reset_kernelWidth => TO_UNSIGNED(5, 3),
        reset_strideRow => TO_UNSIGNED(1, 1),
        reset_strideCol => TO_UNSIGNED(1, 1),
        reset_startRow => TO_UNSIGNED(0, 4),
        reset_startCol => TO_UNSIGNED(0, 4),
        reset_bufferValid => '0',
        reset_ramValid => '0',
        reset_loaded => '0',
        reset_wholeChannel => '0',
        reset_lastKernelValue => '0'
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_18_enable,
        Input_Value => ValueBus_18_Value,
        Input_LastValue => ValueBus_18_LastValue,

        -- Input bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ram_readValue_Data => TrueDualPortMemory_1_IReadResult_Single_4_Data,

        -- Input bus SME_Components_TrueDualPortMemory_1_IReadResult_Single
        ram_readWeight_Data => TrueDualPortMemory_1_IReadResult_Single_5_Data,

        -- Output bus ValueBus
        OutputValue_enable => ValueBus_16_enable,
        OutputValue_LastValue => ValueBus_16_LastValue,
        OutputValue_Value => ValueBus_16_Value,

        -- Output bus ValueBus
        OutputWeight_enable => ValueBus_17_enable,
        OutputWeight_Value => ValueBus_17_Value,
        OutputWeight_LastValue => ValueBus_17_LastValue,

        -- Output bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ram_ctrlValue_Enabled => TrueDualPortMemory_1_IControl_Single_4_Enabled,
        ram_ctrlValue_Address => TrueDualPortMemory_1_IControl_Single_4_Address,
        ram_ctrlValue_IsWriting => TrueDualPortMemory_1_IControl_Single_4_IsWriting,
        ram_ctrlValue_Data => TrueDualPortMemory_1_IControl_Single_4_Data,

        -- Output bus SME_Components_TrueDualPortMemory_1_IControl_Single
        ram_ctrlWeight_Enabled => TrueDualPortMemory_1_IControl_Single_5_Enabled,
        ram_ctrlWeight_Address => TrueDualPortMemory_1_IControl_Single_5_Address,
        ram_ctrlWeight_IsWriting => TrueDualPortMemory_1_IControl_Single_5_IsWriting,
        ram_ctrlWeight_Data => TrueDualPortMemory_1_IControl_Single_5_Data,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_InputCtrl_SeqFilter_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity WeightValue#2 signals
    WeightValue_2: entity work.CNN_WeightValue
    port map (
        -- Input bus ValueBus
        InputValue_enable => ValueBus_16_enable,
        InputValue_Value => ValueBus_16_Value,
        InputValue_LastValue => ValueBus_16_LastValue,

        -- Input bus ValueBus
        InputWeight_enable => ValueBus_17_enable,
        InputWeight_Value => ValueBus_17_Value,
        InputWeight_LastValue => ValueBus_17_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_19_enable,
        Output_LastValue => ValueBus_19_LastValue,
        Output_Value => ValueBus_19_Value,

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_WeightValue_2,
        ENB => ENB,
        RST => RST
    );

    -- Entity PlusCtrl#3 signals
    PlusCtrl_3: entity work.CNN_PlusCtrl
    generic map(
        reset_vhdl_buffer => std_logic_vector'(x"00000000")
    )
    port map (
        -- Input bus ValueBus
        Input_enable => ValueBus_19_enable,
        Input_Value => ValueBus_19_Value,
        Input_LastValue => ValueBus_19_LastValue,

        -- Output bus ValueBus
        Output_enable => ValueBus_3_enable(2),
        Output_LastValue => ValueBus_3_LastValue(2),
        Output_Value => ValueBus_3_Value(2),

        CLK => CLK,
        RDY => RDY,
        FIN => FIN_PlusCtrl_3,
        ENB => ENB,
        RST => RST
    );

    -- Connect ready signals

    -- Setup the FIN feedback signals
    FIN <= FIN_ValueArrayCtrl when FIN_PlusCtrl_0 = FIN_ValueArrayCtrl AND FIN_Align = FIN_PlusCtrl_0 AND FIN_PlusTwo = FIN_Align AND FIN_TrueDualPortMemory_1_Single_0 = FIN_PlusTwo AND FIN_InputCtrl_SeqFilter_0 = FIN_TrueDualPortMemory_1_Single_0 AND FIN_WeightValue_0 = FIN_InputCtrl_SeqFilter_0 AND FIN_PlusCtrl_1 = FIN_WeightValue_0 AND FIN_TrueDualPortMemory_1_Single_1 = FIN_PlusCtrl_1 AND FIN_InputCtrl_SeqFilter_1 = FIN_TrueDualPortMemory_1_Single_1 AND FIN_WeightValue_1 = FIN_InputCtrl_SeqFilter_1 AND FIN_PlusCtrl_2 = FIN_WeightValue_1 AND FIN_TrueDualPortMemory_1_Single_2 = FIN_PlusCtrl_2 AND FIN_InputCtrl_SeqFilter_2 = FIN_TrueDualPortMemory_1_Single_2 AND FIN_WeightValue_2 = FIN_InputCtrl_SeqFilter_2 AND FIN_PlusCtrl_3 = FIN_WeightValue_2;

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
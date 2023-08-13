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

entity CNN_Multiply is
    generic(
        reset_val: in T_SYSTEM_FLOAT
    );
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
end CNN_Multiply;

architecture RTL of CNN_Multiply is 


-- create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name weightvalue_fl_mul
-- set_property -dict [list \
--   CONFIG.A_Precision_Type {Single} \
--   CONFIG.C_A_Exponent_Width {8} \
--   CONFIG.C_A_Fraction_Width {24} \
--   CONFIG.C_Latency {6} \
--   CONFIG.C_Mult_Usage {Max_Usage} \
--   CONFIG.C_Rate {1} \
--   CONFIG.C_Result_Exponent_Width {8} \
--   CONFIG.C_Result_Fraction_Width {24} \
--   CONFIG.Component_Name {weightvalue_fl_mul} \
--   CONFIG.Flow_Control {NonBlocking} \
--   CONFIG.Has_ARESETn {true} \
--   CONFIG.Has_A_TLAST {true} \
--   CONFIG.Has_B_TLAST {true} \
--   CONFIG.Has_RESULT_TREADY {false} \
--   CONFIG.Operation_Type {Multiply} \
--   CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
--   CONFIG.Result_Precision_Type {Single} \
-- ] [get_ips weightvalue_fl_mul]

component weightvalue_fl_mul
port (
    aclk : in std_logic;
    aresetn : in std_logic;
    s_axis_a_tvalid : in std_logic;
    s_axis_a_tdata : in std_logic_vector(31 downto 0);
    s_axis_a_tlast : in std_logic;
    s_axis_b_tvalid : in std_logic;
    s_axis_b_tdata : in std_logic_vector(31 downto 0);
    s_axis_b_tlast : in std_logic;
    m_axis_result_tvalid : out std_logic;
    m_axis_result_tdata : out std_logic_vector(31 downto 0);
    m_axis_result_tlast : out std_logic
);
end component;

signal RSTn : std_logic;

begin
    process (
        CLK,
        RST
    )
    begin
        if RST = '1' then
            FIN <= '0';
        elsif rising_edge(CLK) then
            FIN <= not RDY;
        end if;
    end process;

    RSTn <= not RST;

    fl_mul_inst : weightvalue_fl_mul
    port map (
        aclk => CLK,
        aresetn => RSTn,
        s_axis_a_tvalid => Input_enable,
        s_axis_a_tdata => Input_Value,
        s_axis_a_tlast => Input_LastValue,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => x"3f98d719",
        s_axis_b_tlast => Input_LastValue,
        m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => Output_Value,
        m_axis_result_tlast => Output_LastValue
    );


end RTL;

-- User defined architectures here
-- #### USER-DATA-ARCH-START
-- #### USER-DATA-ARCH-END

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


component fl_mul
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

    fl_mul_inst : fl_mul
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

using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Multiplies the values of the two Input Buses together.
    [ClockedProcess]
    public class MultiplyTwo : SimpleProcess
    {
        [InputBus]
        public ValueBus InputA;
        [InputBus]
        public ValueBus InputB;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        public MultiplyTwo()
        {
            renderer = new Renderer();
        }

        public class Renderer : ICustomRenderer
        {
            public string IncludeRegion(RenderStateProcess rsp, int indentation)
            {
                return "";
            }

            public string BodyRegion(RenderStateProcess rsp, int indentation)
            {
                return $@"
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
        s_axis_a_tvalid => InputA_enable,
        s_axis_a_tdata => InputA_Value,
        s_axis_a_tlast => InputA_LastValue,
        s_axis_b_tvalid => InputB_enable,
        s_axis_b_tdata => InputB_Value,
        s_axis_b_tlast => InputB_LastValue,
        m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => Output_Value,
        m_axis_result_tlast => Output_LastValue
    );
";

            }
        }
        [Ignore] private Renderer renderer;
        public override object CustomRenderer { get => renderer; }

        protected override void OnTick()
        {
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (InputA.enable && InputB.enable)
            {
                Output.Value = InputA.Value * InputB.Value;
                Output.enable = InputA.enable;
                Output.LastValue = InputA.LastValue;
            }
        }
    }
}
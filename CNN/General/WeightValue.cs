using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Almost quivalent to MultiplyTwo but has different name due to semantics.
    [ClockedProcess]
    public class WeightValue : SimpleProcess
    {
        [InputBus]
        public ValueBus InputValue;
        [InputBus]
        public ValueBus InputWeight;

        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

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
        s_axis_a_tvalid => InputValue_enable,
        s_axis_a_tdata => InputValue_Value,
        s_axis_a_tlast => InputValue_LastValue,
        s_axis_b_tvalid => InputWeight_enable,
        s_axis_b_tdata => InputWeight_Value,
        s_axis_b_tlast => InputWeight_LastValue,
        m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => Output_Value,
        m_axis_result_tlast => Output_LastValue
    );
";

            }
        }
        [Ignore] private Renderer renderer = new Renderer();
        public override object CustomRenderer { get => renderer; }

        protected override void OnTick()
        {
            Output.enable = false;
            Output.LastValue = false;
            Output.Value = 0;
            // Output should only be updated when the input is valid.
            if (InputValue.enable && InputWeight.enable)
            {
                Output.Value = InputValue.Value * InputWeight.Value;
                Output.enable = true;
            }
            // If Input is last value in slice make plus ctrl know
            Output.LastValue = InputValue.LastValue;
        }
    }
}
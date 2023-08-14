using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Applies the natural exponential to a single, incoming value.
    [ClockedProcess]
    public class Exp : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
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
                // TODO adjust the parameters
                return $@"
component fl_exp
port (
    aclk : in std_logic;
    aresetn : in std_logic;
    s_axis_a_tvalid : in std_logic;
    s_axis_a_tdata : in std_logic_vector(31 downto 0);
    s_axis_a_tlast : in std_logic;
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

    fl_exp_inst : fl_exp
    port map (
        aclk => CLK,
        aresetn => RSTn,
        s_axis_a_tvalid => Input_enable,
        s_axis_a_tdata => Input_Value,
        s_axis_a_tlast => Input_LastValue,
        m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => Output_Value,
        m_axis_result_tlast => Output_LastValue
    );
";

            }
        }
        [Ignore] private Renderer renderer = new Renderer();
        public override object CustomRenderer { get => renderer; }

        [Ignore]
        private float exp(float x)
        {
            return (float) Math.Exp(x);
        }

        protected override void OnTick()
        {
            Output.Value = 0;
            Output.enable = Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                Output.Value = exp(Input.Value);
                Output.enable = true;
            }
        }
    }
}
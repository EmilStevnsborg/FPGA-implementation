using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Simple process that adds a value to another incoming value.
    [ClockedProcess]
    public class Bias : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;
        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        protected float bias;

        public Bias(float bias)
        {
            this.bias = bias;
            renderer = new Renderer(bias);
        }

        public class Renderer : ICustomRenderer
        {
            private float bias;
            public Renderer(float bias)
            {
                this.bias = bias;
            }

            public string IncludeRegion(RenderStateProcess rsp, int indentation)
            {
                return "";
            }

            public string BodyRegion(RenderStateProcess rsp, int indentation)
            {
                return $@"
component fl_add
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

    fl_add_inst : fl_add
    port map (
        aclk => CLK,
        aresetn => RSTn,
        s_axis_a_tvalid => Input_enable,
        s_axis_a_tdata => Input_Value,
        s_axis_a_tlast => Input_LastValue,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => x""{Convert.ToString(BitConverter.ToUInt32(BitConverter.GetBytes(bias), 0), 16).PadLeft(8, '0')}"",
        s_axis_b_tlast => Input_LastValue,
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
            if (Input.enable)
            {
                Output.Value = Input.Value + bias;
                Output.enable = Input.enable;
                Output.LastValue = Input.LastValue;
            }
        }
    }
}
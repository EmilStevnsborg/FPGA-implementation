using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Multiplies the value on the Input Bus with a fixed weight value
    [ClockedProcess]
    public class Multiply : SimpleProcess
    {
        [InputBus]
        public ValueBus Input;

        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        private float val = 0;

        public Multiply(float val)
        {
            this.val = val;
            renderer = new Renderer(val);
        }

        public class Renderer : ICustomRenderer
        {
            private float val;
            public Renderer(float val)
            {
                this.val = val;
            }

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
        s_axis_a_tvalid => Input_enable,
        s_axis_a_tdata => Input_Value,
        s_axis_a_tlast => Input_LastValue,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => x""{Convert.ToString(BitConverter.ToUInt32(BitConverter.GetBytes(val), 0), 16).PadLeft(8, '0')}"",
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
            // The flag can be forwarded.
            Output.enable = Input.enable;
            Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                Output.Value = Input.Value * val;
            }
            // else deafult value is 0
            else
            {
                Output.Value = 0;
            }
        }
    }
}
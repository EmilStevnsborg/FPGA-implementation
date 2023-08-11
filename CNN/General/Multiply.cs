using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Works
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
                // TODO adjust the parameters
                return $@"
-- create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name weightvalue_fl_mul
-- set_property -dict [list \
--   CONFIG.A_Precision_Type {{Single}} \
--   CONFIG.C_A_Exponent_Width {{8}} \
--   CONFIG.C_A_Fraction_Width {{24}} \
--   CONFIG.C_Latency {{6}} \
--   CONFIG.C_Mult_Usage {{Max_Usage}} \
--   CONFIG.C_Rate {{1}} \
--   CONFIG.C_Result_Exponent_Width {{8}} \
--   CONFIG.C_Result_Fraction_Width {{24}} \
--   CONFIG.Component_Name {{weightvalue_fl_mul}} \
--   CONFIG.Flow_Control {{NonBlocking}} \
--   CONFIG.Has_ARESETn {{true}} \
--   CONFIG.Has_A_TLAST {{true}} \
--   CONFIG.Has_B_TLAST {{true}} \
--   CONFIG.Has_RESULT_TREADY {{false}} \
--   CONFIG.Operation_Type {{Multiply}} \
--   CONFIG.RESULT_TLAST_Behv {{Pass_A_TLAST}} \
--   CONFIG.Result_Precision_Type {{Single}} \
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
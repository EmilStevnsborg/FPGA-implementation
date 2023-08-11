using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Works
    [ClockedProcess]
    public class Max : SimpleProcess
    {
        [InputBus]
        public ValueBus InputA;
        [InputBus]
        public ValueBus InputB;

        [OutputBus]
        public ValueBus Output = Scope.CreateBus<ValueBus>();

        private float max = -1000;

        public class Renderer : ICustomRenderer
        {
            public string IncludeRegion(RenderStateProcess rsp, int indentation)
            {
                return "";
            }

            public string BodyRegion(RenderStateProcess rsp, int indentation)
            {
                return $@"
-- create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_gt
-- set_property -dict [list \
--   CONFIG.A_Precision_Type {{Single}} \
--   CONFIG.C_A_Exponent_Width {{8}} \
--   CONFIG.C_A_Fraction_Width {{24}} \
--   CONFIG.C_Compare_Operation {{Greater_Than}} \
--   CONFIG.C_Latency {{2}} \
--   CONFIG.C_Mult_Usage {{No_Usage}} \
--   CONFIG.C_Rate {{1}} \
--   CONFIG.C_Result_Exponent_Width {{1}} \
--   CONFIG.C_Result_Fraction_Width {{0}} \
--   CONFIG.Component_Name {{fl_gt}} \
--   CONFIG.Flow_Control {{NonBlocking}} \
--   CONFIG.Has_ARESETn {{true}} \
--   CONFIG.Has_A_TLAST {{true}} \
--   CONFIG.Has_B_TLAST {{true}} \
--   CONFIG.Has_RESULT_TREADY {{false}} \
--   CONFIG.Operation_Type {{Compare}} \
--   CONFIG.RESULT_TLAST_Behv {{Pass_A_TLAST}} \
--   CONFIG.Result_Precision_Type {{Custom}} \
-- ] [get_ips fl_gt]

component fl_gt
port (
    s_axis_a_tvalid : in std_logic;
    s_axis_a_tdata : in std_logic_vector(31 downto 0);
    s_axis_a_tlast : in std_logic;
    s_axis_b_tvalid : in std_logic;
    s_axis_b_tdata : in std_logic_vector(31 downto 0);
    s_axis_b_tlast : in std_logic;
    m_axis_result_tvalid : out std_logic;
    m_axis_result_tdata : out std_logic_vector(7 downto 0);
    m_axis_result_tlast : out std_logic
);
end component;

signal RSTn : std_logic;
signal max : std_logic_vector(31 downto 0);
signal tmp0 : std_logic_vector(7 downto 0);
signal tmp1 : std_logic_vector(7 downto 0);
signal tmp2 : std_logic_vector(7 downto 0);

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

    fl_gt_inst0 : fl_gt
    port map (
        s_axis_a_tvalid => InputA_enable,
        s_axis_a_tdata => InputA_Value,
        s_axis_a_tlast => InputA_LastValue,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => max,
        s_axis_b_tlast => '1',
        --m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => tmp0
        --m_axis_result_tlast => Output_LastValue
    );

    fl_gt_inst1 : fl_gt
    port map (
        s_axis_a_tvalid => InputB_enable,
        s_axis_a_tdata => InputB_Value,
        s_axis_a_tlast => InputB_LastValue,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => max,
        s_axis_b_tlast => '1',
        --m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => tmp1
        --m_axis_result_tlast => Output_LastValue
    );

    fl_gt_inst2 : fl_gt
    port map (
        s_axis_a_tvalid => InputA_enable,
        s_axis_a_tdata => InputA_Value,
        s_axis_a_tlast => InputA_LastValue,
        s_axis_b_tvalid => InputB_enable,
        s_axis_b_tdata => InputB_Value,
        s_axis_b_tlast => InputB_LastValue,
        --m_axis_result_tvalid => Output_enable,
        m_axis_result_tdata => tmp2
        --m_axis_result_tlast => Output_LastValue
    );

    process (
        CLK,
        RST
    )
    begin
        if RST = '1' then
            FIN <= '0';
        elsif rising_edge(CLK) then
            FIN <= not RDY;

            if InputA_enable = '1' and InputB_enable = '1' then
                if tmp0(0) = '1' or tmp1(0) = '1' then
                    if tmp2(0) = '1' then
                        max <= InputB_Value;
                    else
                        max <= InputA_Value;
                    end if;
                end if;
            end if;

            Output_Value <= max;
            Output_enable <= InputA_LastValue;
            if InputA_LastValue = '1' then
                max <= x""{Convert.ToString(BitConverter.ToUInt32(BitConverter.GetBytes(-1000), 0), 16).PadLeft(8, '0')}"";
            end if;
        end if;
    end process;
";
            }
        }

        [Ignore] private Renderer renderer = new Renderer();
        public override object CustomRenderer { get => renderer; }

        protected override void OnTick()
        {
            // Console.WriteLine(InputA.Value + "," + InputB.Value);
            // Output should only be updated when the input is valid.
            if (InputA.enable && InputB.enable)
            {
                if (InputA.Value > max || InputB.Value > max)
                {
                    if (InputB.Value > InputA.Value)
                    {
                        // Console.WriteLine(InputB.Value);
                        max = InputB.Value;
                    }
                    else
                    {
                        // Console.WriteLine(InputA.Value);
                        max = InputA.Value;
                    }
                }
            }
            Output.Value = max;
            Output.enable = InputA.LastValue;
            if (InputA.LastValue)
            {
                // Console.WriteLine("her: " + InputB.Value);
                max = -1000;
            }
        }
    }
}
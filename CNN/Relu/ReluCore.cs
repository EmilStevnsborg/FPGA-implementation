using System;
using SME;
using SME.VHDL;

namespace CNN
{
    // Applies the ReLU function on the value of the Input Bus.
    [ClockedProcess]
    public class ReluCore : SimpleProcess
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
                //return "use IEEE.float_pkg.all;";
            }

            public string BodyRegion(RenderStateProcess rsp, int indentation)
            {
                return @"
begin
    process(
        CLK,
        RST
    )
    begin
        if (RST = '1') then
            Output_enable <= '0';
            Output_LastValue <= '0';
            Output_Value <= (others => '0');
            FIN <= '0';
        elsif rising_edge(CLK) then
            Output_enable <= Input_enable;
            Output_LastValue <= '0';
            if (Input_enable = '1') then
                if Input_Value(31) = '0' then
                    Output_Value <= Input_Value;
                else
                    Output_Value <= (others => '0');
                end if;
            else
                Output_Value <= (others => '0');
            end if;
            FIN <= not RDY;
        end if;
    end process;
";
            }
        }
        [Ignore] private Renderer renderer = new Renderer();
        public override object CustomRenderer { get => renderer; }

        protected override void OnTick()
        {
            // The flag can be forwarded.
            Output.enable = Input.enable;
            Output.LastValue = false;
            // Output should only be updated when the input is valid.
            if (Input.enable)
            {
                if (Input.Value > 0)
                {
                    Output.Value = Input.Value;
                }
                else
                {
                    Output.Value = 0;
                }
            }
            // else deafult value is 0
            else
            {
                Output.Value = 0;
            }
        }
    }
}
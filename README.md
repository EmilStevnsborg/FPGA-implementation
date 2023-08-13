# FPGA-implementation

This branch is dedicated to vhdl the generation of the CNN_small configuration. Refer to the main branch for a more explicit description of the repository. The CNN library has been slightly altered with regards to the vhdl generation. This is generic and can be used for other configurations as well. Furthermore, certain indexing variables in processes have had their types changed from INT32 to INTS of lower bits size. This is specific to the CNN_small configuration, but the idea can also be used for other configurations as well.

Below are the steps for generating the vhdl and synthesizing in Vivado.

- Go to the test project of the layer to be generated. In program, selct the configuration and version of the layer implementation.
```
dotnet run
```
- See the generated vhdl. We already created vhdl for all configurations and versions of layer implementations, and put them in their seperated folders.
- Verify generated code is correct by going into the vhdl directory and typing.
```
make
```
- Open Vivado
- Create project (RTL with sources (VHDL)).
- Add sources (target language VHDL).
- Select PYNQ board as device (Install from TUL).
- Configure ip cores. We provide outcommented TCL commands inside each process that requires an ip core.
- Open elaborated design
- Clock contraint (sources/create constraints)
- Set CLK in TCL console (create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports CLK])
- Run synthesis
- Open Synthesized Design

- Generate the reports with the following TCL commands
```
report_power -file power.rpt
report_timing -file timing.rpt
report_utilization -file util-summary.rpt
report_utilization -file util-hierarchy.rpt -hierarchical -hierarchical_depth 6
```
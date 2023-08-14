# FPGA-implementation

This branch is dedicated to VHDL the generation of the CNN_small configuration. Refer to the main branch for a more explicit description of the repository. The CNN library has been slightly altered with regard to the VHDL generation. This is generic and can be used for other configurations as well. Furthermore, certain indexing variables in processes have had their types changed from INT32 to INTS of lower bits size. This is specific to the CNN_small configuration, but the idea can also be used for other configurations as well.

Below are the steps for generating the VHDL and synthesizing it in Vivado.

- Go to the test project of the layer to be generated. Inside the associated `Program.cs`, select the configuration and version of the layer implementation.
  ```
  dotnet run
  ```
- See the generated VHDL. We have already created VHDL for all configurations and versions of layer implementations and put them in their separate folders.
- Verify generated VHDL code is syntactically correct by going into the `output/vhdl` directory and instantiating the `ghdl` through either a local installation:
  ```
  make
  ```
  or through docker:
  ```
  docker run -t -v $PWD/output:/mnt/data ghdl/ghdl:ubuntu20-mcode /bin/bash -c "cd /mnt/data/vhdl; make; ret=$?; rm -r work; exit $ret"
  ```
  In its current state, the generated VHDL code cannot be simulated correctly, since the floating point IP cores have not been generated yet.
- Open Vivado (tested with 2023.1).
- Create project (RTL with sources (VHDL)).
- Select the PYNQ board as the device (Install from TUL).
- Add sources (target language VHDL).
- Configure ip cores. We provide out-commented TCL commands inside each process that requires an IP core. We also provide a convenient TCL script that can be used to generate all IP cores at once. It can be run from the TCL console in Vivado (note the path to the script must be changed accordingly):
  ```
  source path_to_script/generate_ip.tcl
  ```
- Open elaborated design
- Clock constraint
  ```
  source path_to_script/generate_constraints.tcl
  ```
- Run synthesis
- Open Synthesized Design

- Generate the reports with the following TCL commands
  ```
  report_power -file power.rpt
  report_timing -file timing.rpt
  report_utilization -file util-summary.rpt
  report_utilization -file util-hierarchy.rpt -hierarchical -hierarchical_depth 6
  ```
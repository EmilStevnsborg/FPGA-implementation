# FPGA-implementation

This branch is dedicated to the VHDL the generation of the CNN_small configuration. Refer to the main branch for a more explicit description of the library for CNN layer implementation versions and correctness tests of the implementations. In this branch, the CNN library has been slightly altered with regards to the VHDL generation. Certain indexing variables in processes have had their types changed from INT32 to INTs of lower bits size using the SME.VHDL.UINTs. For other configurations, one would have to adjust these values to ensure correctness. Refer to the paper for a more elaborated description. Furthermore, a directory named `hlsl` containing a HLS solution for CNN layers has also been added.

Below are the steps for generating the VHDL from the SME implementation of CNN_small and synthesizing it in Vivado. We advice anyone to go read all the steps before performing them, as we already performed the steps and moved around in directories to make the layout more visually pleasing.

- Go to the test project of the layer to be generated. Inside the associated `Program.cs`, select the configuration and version of the layer implementation. In the terminal, type:
  ```
  dotnet run
  ```
- Go to the generated VHDL. When the VHDL has been generated, it will be put in directory `output/vhdl`, however, for each test project we applied multiple configurations on the implementation versions, and decided to put them in a directory named `vhdl/$layer$-$configuration_number$-$implementation-version$/vhdl`.
- Verify that the generated VHDL code is syntactically correct by going into the directory containing the VHDL and instantiating the `ghdl` through either a local installation:
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
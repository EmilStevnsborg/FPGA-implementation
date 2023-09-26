# FPGA-implementation

This is the main branch of the repository, which contains the base code for our paper _"Evaluation of FPGA Acceleration of Neural Networks"_.


In this branch, we verify the correctness of the CNN library by using a test CNN, which we name CNN_small. We have already provided all test inputs and results in json files.

Switch to the branch `CNN_small-configuration` to see an example of the entire procedure of taking a specific CNN and embedding it onto an FPGA.

# Folder structure
Each folder serves a different purpose. Each folder contains a `README` further describing their contents. The following is a description of each folder:

- `benchmark` - Contains the benchmarking scripts to reproduce the results of the paper.
- `CNN` - Contains the CNN library. The library is a dotnet project library that contains SME implementations of common CNN layers.
- `CNNSmall` - Contains the CNN_small test CNN, which is used to verify the CNN library.
- `sme` - Is a git submodule that points to the SME version used in the paper.
- `Test` - Contains the individual tests for each layer in the CNN library. The tests are used to verify the correctness of the layer implementations.

# Quickstart
Pull the submodules:
```sh
git submodule update --init --recursive
```

## Prerequisites
- .NET Core 6 - for SME
- Python 3 - for the benchmarks and pytorch
  - `matplotlib` - for plotting
  - `numpy` - for loading inputs
  - `onnx` - for converting CNN_small CNN to ONNX
  - `onnxruntime` - for running ONNX CNN_small CNN
  - `pytorch` - for loading the CNN_small CNN
- AMD Vitis 2023.1 - for the FPGA implementations
  - `vitis_hls` - for the HLS implementations
  - `vivado` - for synthesis and place & route


## SME
Running verifying the entire network:
```sh
cd CNNSmall
dotnet run
```
To generate VHDL code, switch to the `CNN_small-configuration` branch and follow the instructions there.

## HLS
To simulate and synthesize each of the HLS implementations:
```sh
cd hls
make csynth
```
Each implementation produces a folder containing a Vivado IP core for further use in a hardware design.

## Benchmarking
To run the benchmarks (CPU by default):
```sh
cd benchmark
python3 onnx_exporter.py
python3 benchmark_pytorch.py
```
To switch to GPU (CUDA) benchmarking, change the `cpu` variable in `benchmark.py` to `False`.

To benchmark using ONNX (e.g. the ARM CPU on the Pynq Z2), copy the generated files from the pytorch run, and run:
```sh
python3 benchmark_arm.py
```

To plot the results of the paper:
```sh
python3 benchmark_plotting.py
```

# Testing SME

During development, in order for us to verify the layer implementations, we create multiple instances of them using a variety of configurations. We apply the same configurans equivalent layer implementations in PyTorch. We generate inputs and give to both the SME and the PyTorch implementations. The results from the PyTorch implementation are considered the "true" outputs. These tests are named configtests. The inputs and configuration chosen can be found in the `Test/$layer$Test/TestConfig$configuration_number$` directory. The inputs are generated with the python file within the Test project of the layer. One has to navigate to the `Test` directory, and then into the .NET project of the layer they wish to test. Here the user can choose between configuration tests or CNN_small tests. One can also choose the layer implementation version by switching between the PushConfig methods and Tester subtypes. The CNN_small tests are used for formal verification of the CNN library, and they use the configurations of the layer instances in CNN_small to do so.

In the CNN_small test, one can also choose between the available configurations for that layer in CNN_small. Tests can run within the project with:
```
dotnet run
```
For CNN_small tests, JSON files with the results are generated, and can be located in `CNNSmall/Tests/$layer$/outputs$version$` directory. The inputs used are in the `CNNSmall/Tests/$layer$/inputs` directory.

We also measure accumulated layer losses throughout the entire CNN_small CNN. One has to navigate to the `CNNSmall` directory and type:
```
dotnet run
```
The losses for each layer are found in `CNNSmall/Tests/Network/test$test_number$/$layer_instance$.json`.

We use the `CNNSmall/stats.py` file to derive statistics on the isolated and accumulated losses of the layers in CNN_small.

Keep in mind that we have already ran all relevant tests to the paper, and the recreation of all tests will take a good amount of time to complete.
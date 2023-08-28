# FPGA-implementation

This is the main branch of the repository, which contains the base code for our paper `name`. The main component of the repository is the `CNN` directory, which is a dotnet project library. It contains general SME implementation versions of common layers used in CNNs. SME is a programming model that allows one to write programs in C# that can be translated to VHDL and embedded onto an FPGA. Therefore, one can use the CNN library and embed their own CNNs onto an FPGA by instanitating and connecting layers with specific configurations.

In this branch, we verify the correctness of the CNN library by using a test CNN, which we name CNN_small. We have already provided all test inputs and results in json files.

Switch to the branch `CNN_small-configuration` to see an example of the entire procedure of taking a specific CNN and embedding it onto an FPGA.

# CNN library

The design is described in the paper. 

# Test

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
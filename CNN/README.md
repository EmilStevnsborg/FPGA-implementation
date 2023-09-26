# CNN layer library
This is the main SME component of this repository, which is a dotnet project library. It contains general SME implementation versions of common layers used in CNNs. SME is a programming model that allows one to write programs in C# that can be translated to VHDL and embedded onto an FPGA. Therefore, one can use the CNN library and embed their own CNNs onto an FPGA by instanitating and connecting layers with specific configurations.

## Layer variants
For some of the layers, there are multiple variants. These are used to generate layers with a varying degree of parallelism. This is encoded by the last two integers at the end of the names, which can be either 0 (for parallel) or 1 (for sequential). The first indicates the input, with the latter indicating the output. E.g. a layer variant that takes a parallel input (an array of buses) and produces a sequential output (a single bus) is named `Layer_01`.

This table shows the different variants for each layer:

| Layer     | 00 | 01 | 10 | 11 |
| --------- | -- | -- | -- | -- |
| BatchNorm |  x |    |    |  x |
| Conv      |  x |  x |    |    |
| Linear    |  x |    |  x |    |
| MaxPool   |  x |    |    |  x |
| ReLU      |  x |    |    |  x |
| Softmax   |  x |    |    |    |

## Misc folders
Except for the layers, the library also contains some other folders:

- `Config/` - Contains the interfaces for the configuration of the layers.
- `General/` - Contains general components used by the layers. E.g. `Exp` is an SME process that applies the exponential function to a floating point value.
- `Simulation/` - Contains generic testers for the different combinations of layer variants. E.g. `Tester_00` is used for 00 variants.


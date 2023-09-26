# CNN Small
This folder contains the configuration of the CNN used in the paper. The CNN is named CNN_small, and is a small CNN that is able to tell whether an image is a handwritten 0 or 1. The CNN is used to verify the CNN library.

## Usage
This is a .NET project, and to run the test suite, run:
```sh
dotnet run
```

## Structure
The files and folders in this folder are:
- `Configs/` - Contains the configuration of the CNN.
- `Tests/` - Contains the input and output data of each layer.
- `CNN_small` - Contains the stored trained CNN.
- `CNN_small_architecture.py` - Contains the architecture of the CNN.
- `CNN_small.py` - Shows how to run the model, and is  also used to generate the inputs and outputs of the layers.
- `stats.py` - Is used for computing the statistics of the CNN.
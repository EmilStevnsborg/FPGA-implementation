# HLS implementation
This folder contains the Vitis HLS implementation of the CNN library. To generate each HLS implementation, run:
```sh
make csynth
```

# Structure
The files and folders in this folder are:
- `include/` - Contains the header files for the HLS implementations. In particular, the weights, sizes, and biases of the layers are stored in the header files.
- `pragma_search/` - Contains CSV files outlining the impact of applying the different pragmas.
- `src/` - Contains the HLS implementations of the layers.
  - `host/` - Contains the host code for the HLS implementations. This is only used during simulation to verify that the HLS implementations produces correct results.
  - `kernel/` - Contains the HLS implementations of the layers.
  - `scripts/` - Contains the TCL scripts used to generate the HLS implementations through `vitis_hls`.
- `Makefile` - Contains the targets for generating the HLS implementations. In particular, the `csynth` target generates the HLS implementations. Given that the HLS kernels are C++, they can also be compiled using regular C++ compilers. To do so, run `make sanitize`, which runs regular `g++` or `clang++` sanitazion tools on the HLS kernels. This is useful for debugging the HLS kernels. (Note: the streaming implementations utilize specific HLS types and headers, and thus cannot be compiled using regular C++ compilers. The same goes for some of the commented out `naive_pragma` implementations, which utilize the `hls_vector.h` library).
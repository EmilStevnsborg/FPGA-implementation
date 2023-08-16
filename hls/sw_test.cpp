#include "naive.cpp" // lazy approach, but oh well.
#include <iostream>
#include <cassert>
#include "constant_inputs_outputs.hpp"
#include "cnn_small_constants.hpp"
#include <fstream>

int test_conv1() {
    float output[1*3*26*26];
    conv2d(conv1_input, conv1_w, conv1_bias, output, input_shape, 3, 3);

    int errors = 0;
    for (int i = 0; i < 1*3*26*26; i++) {
        float err = std::abs(output[i] - conv1_output[i]);
        if (err >= 1e-6) {
            std::cout << "conv1 failed at index " << i << ": " << output[i] << " - " << conv1_output[i] << " = " << err << std::endl;
            errors++;
            if (errors > 10) {
                break;
            }
        }
    }

    if (errors > 10) {
        std::ofstream out("conv1_output.csv");
        for (int i = 0; i < 1*3*26*26; i++) {
            out << output[i] << std::endl;
        }
    }

    return errors;
}

int main() {
    assert(test_conv1() == 0);

    return 0;
}
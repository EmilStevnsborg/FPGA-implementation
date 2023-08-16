#include "naive.cpp" // lazy approach, but oh well.
#include <iostream>
#include <cassert>
#include "constant_inputs_outputs.hpp"
#include "cnn_small_constants.hpp"
#include <fstream>
#include <cmath>
#include <string>

int flat_size(image_shape shape) {
    return shape.batch_size * shape.channels * shape.n * shape.m;
}

int matches(const float *actual, const float *expected, int size, std::string name) {
    int errors = 0;
    for (int i = 0; i < size; i++) {
        float err = std::abs(expected[i] - actual[i]);
        if (err >= 1e-6) {
            if (errors == 0)
                std::cout << "format: expected - actual = error" << std::endl;
            std::cout << name << " failed at index " << i << ": " << expected[i] << " - " << actual[i] << " = " << err << std::endl;
            errors++;
            if (errors > 10) {
                break;
            }
        }
    }

    if (errors > 10) {
        std::ofstream out(name + "_output.csv");
        for (int i = 0; i < size; i++) {
            out << actual[i] << (i == size - 1 ? "" : ",");
        }
        out << std::endl;
    }

    return errors;
}

int test_conv1() {
    const int output_size = flat_size(conv1_shape);
    float output[1*3*26*26];
    conv2d(conv1_input, conv1_w, conv1_bias, output, input_shape, 3, 3);
    return matches(output, conv1_output, output_size, "conv1");
}

int test_batchnorm1() {
    int output_size = flat_size(batchnorm1_shape);
    float output[1*3*26*26];
    batchnorm2d(conv1_output, output, conv1_shape, batchnorm1_means, batchnorm1_denoms, batchnorm1_gammas, batchnorm1_betas);
    return matches(output, batchnorm1_output, output_size, "batchnorm1");
}

int test_relu1() {
    int output_size = flat_size(relu1_shape);
    float output[1*3*26*26];
    relu(batchnorm1_output, output, batchnorm1_shape);
    return matches(output, relu1_output, output_size, "relu1");
}

int test_maxpool1() {
    int output_size = flat_size(maxpool1_shape);
    float output[1*3*13*13];
    maxpool2d(relu1_output, output, relu1_shape, 2);
    return matches(output, maxpool1_output, output_size, "maxpool1");
}

int test_conv2() {
    const int output_size = flat_size(conv2_shape);
    float output[1*5*9*9];
    conv2d(maxpool1_output, conv2_w, conv2_bias, output, maxpool1_shape, 5, 5);
    return matches(output, conv2_output, output_size, "conv2");
}

int main() {
    assert(test_conv1() == 0);
    assert(test_batchnorm1() == 0);
    assert(test_relu1() == 0);
    assert(test_maxpool1() == 0);
    assert(test_conv2() == 0);

    return 0;
}
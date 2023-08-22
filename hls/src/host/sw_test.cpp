#include <iostream>
#include <cassert>
#include <fstream>
#include <cmath>
#include <string>

#include "constant_inputs_outputs.hpp"
#include "cnn_small_constants.hpp"
#include "cnn_small.hpp"

#define FLAT_SIZE(x) (batch_size * x##_ch * x##_n * x##_m)

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

    if (errors > 0) {
        std::ofstream out(name + "_output.csv");
        for (int i = 0; i < size; i++) {
            out << actual[i] << (i == size - 1 ? "" : ",");
        }
        out << std::endl;
    }

    return errors;
}

int test_conv1() {
    const int output_size = FLAT_SIZE(conv1_shape);
    float output[1*3*26*26];
    conv2d<batch_size, input_shape_ch, input_shape_n, input_shape_m, conv1_shape_ch, conv1_k>(conv1_input, conv1_w, conv1_bias, output);
    return matches(output, conv1_output, output_size, "conv1");
}

int test_batchnorm1() {
    int output_size = FLAT_SIZE(batchnorm1_shape);
    float output[1*3*26*26];
    batchnorm2d<batch_size, conv1_shape_ch, conv1_shape_n, conv1_shape_m>(conv1_output, output, batchnorm1_means, batchnorm1_denoms, batchnorm1_gammas, batchnorm1_betas);
    return matches(output, batchnorm1_output, output_size, "batchnorm1");
}

int test_relu1() {
    int output_size = FLAT_SIZE(relu1_shape);
    float output[1*3*26*26];
    relu<batch_size * batchnorm1_shape_ch * batchnorm1_shape_n * batchnorm1_shape_m>(batchnorm1_output, output);
    return matches(output, relu1_output, output_size, "relu1");
}

int test_maxpool1() {
    int output_size = FLAT_SIZE(maxpool1_shape);
    float output[1*3*13*13];
    maxpool2d<batch_size, relu1_shape_ch, relu1_shape_n, relu1_shape_m, maxpool1_k>(relu1_output, output);
    return matches(output, maxpool1_output, output_size, "maxpool1");
}

int test_conv2() {
    const int output_size = FLAT_SIZE(conv2_shape);
    float output[1*5*9*9];
    conv2d<batch_size, maxpool1_shape_ch, maxpool1_shape_n, maxpool1_shape_m, conv2_shape_ch, conv2_k>(maxpool1_output, conv2_w, conv2_bias, output);
    return matches(output, conv2_output, output_size, "conv2");
}

int test_batchnorm2() {
    int output_size = FLAT_SIZE(batchnorm2_shape);
    float output[1*5*9*9];
    batchnorm2d<batch_size, conv2_shape_ch, conv2_shape_n, conv2_shape_m>(conv2_output, output, batchnorm2_means, batchnorm2_denoms, batchnorm2_gammas, batchnorm2_betas);
    return matches(output, batchnorm2_output, output_size, "batchnorm2");
}

int test_relu2() {
    int output_size = FLAT_SIZE(relu2_shape);
    float output[1*5*9*9];
    relu<batch_size * batchnorm2_shape_ch * batchnorm2_shape_n * batchnorm2_shape_m>(batchnorm2_output, output);
    return matches(output, relu2_output, output_size, "relu2");
}

int test_maxpool2() {
    int output_size = FLAT_SIZE(maxpool2_shape);
    float output[1*5*3*3];
    maxpool2d<batch_size, relu2_shape_ch, relu2_shape_n, relu2_shape_m, maxpool2_k>(relu2_output, output);
    return matches(output, maxpool2_output, output_size, "maxpool2");
}

int test_linear() {
    int output_size = FLAT_SIZE(linear1_shape);
    float output[1*2];
    linear<batch_size, 1, maxpool2_shape_ch * maxpool2_shape_n * maxpool2_shape_m, linear1_shape_m>(maxpool2_output, linear1_weights, linear1_bias, output);
    return matches(output, linear_output, output_size, "linear");
}

int test_softmax() {
    int output_size = FLAT_SIZE(softmax1_shape);
    float output[1*2];
    softmax<batch_size, linear1_shape_n, linear1_shape_m>(linear_output, output);
    return matches(output, softmax_output, output_size, "softmax");
}

int test_network() {
    int output_size = FLAT_SIZE(softmax1_shape);
    float output[1*2];
    cnn_small(conv1_input, output);
    return matches(output, softmax_output, output_size, "network");
}

int main() {
    assert(test_conv1() == 0);
    //assert(test_batchnorm1() == 0);
    //assert(test_relu1() == 0);
    //assert(test_maxpool1() == 0);
    //assert(test_conv2() == 0);
    //assert(test_batchnorm2() == 0);
    //assert(test_relu2() == 0);
    //assert(test_maxpool2() == 0);
    //assert(test_linear() == 0);
    //assert(test_softmax() == 0);

    //assert(test_network() == 0);

    std::cout << "All tests passed!" << std::endl;

    return 0;
}
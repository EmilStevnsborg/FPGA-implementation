#include <cmath>
#include <iostream>

#include "cnn_small_constants.hpp"

void conv2d(const float *input, const float *w, const float *bias, float *output, const image_shape shape, const int f, const int k) {
    const int
        b = shape.batch_size,
        n = shape.n,
        m = shape.m,
        c = shape.channels,
        out_m = m - k + 1,
        out_n = n - k + 1;
    for (int img = 0; img < b; img++) {
        for (int filt = 0; filt < f; filt++) {
            for (int y = 0; y < out_n; y++) {
                for (int x = 0; x < out_m; x++) {
                    float tmp = 0;
                    for (int ch = 0; ch < c; ch++) {
                        for (int ii = 0; ii < k; ii++) {
                            for (int jj = 0; jj < k; jj++) {
                                int ry = y + ii, rx = x + jj;
                                tmp += input[img*c*n*m + ch*n*m + ry*m + rx] * w[filt*c*k*k + ch*k*k + ii*k + jj];
                            }
                        }
                    }
                    output[img*f*out_n*out_m + filt*out_n*out_m + y*out_m + x] = tmp + bias[filt];
                }
            }
        }
    }
}

void batchnorm2d(const float *input, float *output, const image_shape shape, const float *mean, const float *denom, const float *gamma, const float *beta) {
    for (int img = 0; img < shape.batch_size; img++) {
        for (int ch = 0; ch < shape.channels; ch++) {
            for (int y = 0; y < shape.n; y++) {
                for (int x = 0; x < shape.m; x++) {
                    output[img*shape.channels*shape.n*shape.m + ch*shape.n*shape.m + y*shape.m + x] =
                    (input[img*shape.channels*shape.n*shape.m + ch*shape.n*shape.m + y*shape.m + x] - mean[ch]) * denom[ch] * gamma[ch] + beta[ch];
                }
            }
        }
    }
}

void relu(const float *input, float *output, const image_shape shape) {
    for (int i = 0; i < shape.batch_size * shape.channels * shape.n * shape.m; i++) {
        output[i] = input[i] > 0 ? input[i] : 0;
    }
}

void maxpool2d(const float *input, float *output, const image_shape shape, const int k) {
    const int
        b = shape.batch_size,
        n = shape.n,
        m = shape.m,
        c = shape.channels,
        out_m = m / k,
        out_n = n / k;
    for (int img = 0; img < b; img++) {
        for (int ch = 0; ch < c; ch++) {
            for (int y = 0; y < out_n; y++) {
                for (int x = 0; x < out_m; x++) {
                    float tmp = 0; // Isn't a problem because of ReLU
                    for (int ii = 0; ii < k; ii++) {
                        for (int jj = 0; jj < k; jj++) {
                            int ry = y*k + ii, rx = x*k + jj;
                            tmp = std::fmax(tmp, input[img*c*n*m + ch*n*m + ry*m + rx]);
                        }
                    }
                    output[img*c*out_n*out_m + ch*out_n*out_m + y*out_m + x] = tmp;
                }
            }
        }
    }
}

void linear(const float *input, const float *w, const float *bias, float *output, const image_shape shape, const int m) {
    const int
        b = shape.batch_size,
        n = shape.n,
        k = shape.m;
    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                float tmp = 0;
                for (int kk = 0; kk < k; kk++) {
                    tmp += input[img*n*k + i*k + kk] * w[j*k + kk];
                }
                output[img*n*m + i*m + j] = tmp + bias[j];
            }
        }
    }
}

void softmax(const float *input, float *output, const image_shape shape) {
    const int
        b = shape.batch_size,
        n = shape.n,
        m = shape.m;
    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            float sum = 0;
            for (int j = 0; j < m; j++) {
                sum += std::exp(input[img*n*m + i*m + j]);
            }
            for (int j = 0; j < m; j++) {
                output[img*n*m + i*m + j] = std::exp(input[img*n*m + i*m + j]) / sum;
            }
        }
    }
}

extern "C" {
    // Input is (1, 1, 28, 28)
    // Output is (1, 2)
    void cnn_small(const float *input, float *output) {
        // conv1 3 (3,3) (1, 1, 28, 28) -> (1, 3, 26, 26)
        float conv1_output[1*3*26*26];
        conv2d(input, conv1_w, conv1_bias, conv1_output, input_shape, 3, 3);

        // batchnorm 3 (1, 3, 26, 26) -> (1, 3, 26, 26)
        float batchnorm1_output[1*3*26*26];
        batchnorm2d(conv1_output, batchnorm1_output, conv1_shape, batchnorm1_means, batchnorm1_denoms, batchnorm1_gammas, batchnorm1_betas);

        // relu (1, 3, 26, 26) -> (1, 3, 26, 26)
        float relu1_output[1*3*26*26];
        relu(batchnorm1_output, relu1_output, batchnorm1_shape);

        // maxpool (2,2) (1, 3, 26, 26) -> (1, 3, 13, 13)
        float maxpool1_output[1*3*13*13];
        maxpool2d(relu1_output, maxpool1_output, relu1_shape, 2);

        // conv2 5 (5,5) (1, 5, 13, 13) -> (1, 5, 9, 9)
        float conv2_output[1*5*9*9];
        conv2d(maxpool1_output, conv2_w, conv2_bias, conv2_output, maxpool1_shape, 5, 5);

        // batchnorm (1, 5, 9, 9) -> (1, 5, 9, 9)
        float batchnorm2_output[1*5*9*9];
        batchnorm2d(conv2_output, batchnorm2_output, conv2_shape, batchnorm2_means, batchnorm2_denoms, batchnorm2_gammas, batchnorm2_betas);

        // relu (1, 5, 9, 9) -> (1, 5, 9, 9)
        float relu2_output[1*5*9*9];
        relu(batchnorm2_output, relu2_output, batchnorm2_shape);

        // maxpool (3,3) (1, 5, 9, 9) -> (1, 5, 3, 3)
        float maxpool2_output[1*5*3*3];
        maxpool2d(relu2_output, maxpool2_output, relu2_shape, 3);

        // flatten (1, 5, 3, 3) -> (1, 45)
        // linear (1, 45) -> (1, 2)
        float linear_output[1*2];
        linear(maxpool2_output, linear1_weights, linear1_bias, linear_output, flatten_shape, 2);

        // softmax (1, 2) -> (1, 2)
        softmax(linear_output, output, linear1_shape);
    }
}
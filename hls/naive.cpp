#include <cmath>
#include <iostream>

#include "cnn_small_constants.hpp"

void conv2d(const float *input, const float *w, const float *bias, float *output, const int b, const int c, const int n, const int m, const int f, const int k) {
    const int
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

void batchnorm2d(const float *input, float *output, const int b, const int c, const int n, const int m, const float *mean, const float *denom, const float *gamma, const float *beta) {
    for (int img = 0; img < b; img++) {
        for (int ch = 0; ch < c; ch++) {
            for (int y = 0; y < n; y++) {
                for (int x = 0; x < m; x++) {
                    output[img*c*n*m + ch*n*m + y*m + x] =
                    (input[img*c*n*m + ch*n*m + y*m + x] - mean[ch]) * denom[ch] * gamma[ch] + beta[ch];
                }
            }
        }
    }
}

void relu(const float *input, float *output, const int size) {
    for (int i = 0; i < size; i++) {
        output[i] = input[i] > 0 ? input[i] : 0;
    }
}

void maxpool2d(const float *input, float *output, const int b, const int c, const int n, const int m, const int k) {
    const int
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

void linear(const float *input, const float *w, const float *bias, float *output, const int b, const int n, const int k, const int m) {
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

void softmax(const float *input, float *output, const int b, const int n, const int m) {
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
        conv2d(input, conv1_w, conv1_bias, conv1_output, batch_size, input_shape_ch, input_shape_n, input_shape_m, conv1_shape_ch, conv1_k);

        // batchnorm 3 (1, 3, 26, 26) -> (1, 3, 26, 26)
        float batchnorm1_output[1*3*26*26];
        batchnorm2d(conv1_output, batchnorm1_output, batch_size, conv1_shape_ch, conv1_shape_n, conv1_shape_m, batchnorm1_means, batchnorm1_denoms, batchnorm1_gammas, batchnorm1_betas);

        // relu (1, 3, 26, 26) -> (1, 3, 26, 26)
        float relu1_output[1*3*26*26];
        relu(batchnorm1_output, relu1_output, batch_size * batchnorm1_shape_ch * batchnorm1_shape_n * batchnorm1_shape_m);

        // maxpool (2,2) (1, 3, 26, 26) -> (1, 3, 13, 13)
        float maxpool1_output[1*3*13*13];
        maxpool2d(relu1_output, maxpool1_output, batch_size, relu1_shape_ch, relu1_shape_n, relu1_shape_m, maxpool1_k);

        // conv2 5 (5,5) (1, 3, 13, 13) -> (1, 5, 9, 9)
        float conv2_output[1*5*9*9];
        conv2d(maxpool1_output, conv2_w, conv2_bias, conv2_output, batch_size, maxpool1_shape_ch, maxpool1_shape_n, maxpool1_shape_m, conv2_shape_ch, conv2_k);

        // batchnorm (1, 5, 9, 9) -> (1, 5, 9, 9)
        float batchnorm2_output[1*5*9*9];
        batchnorm2d(conv2_output, batchnorm2_output, batch_size, conv2_shape_ch, conv2_shape_n, conv2_shape_m, batchnorm2_means, batchnorm2_denoms, batchnorm2_gammas, batchnorm2_betas);

        // relu (1, 5, 9, 9) -> (1, 5, 9, 9)
        float relu2_output[1*5*9*9];
        relu(batchnorm2_output, relu2_output, batch_size * batchnorm2_shape_ch * batchnorm2_shape_n * batchnorm2_shape_m);

        // maxpool (3,3) (1, 5, 9, 9) -> (1, 5, 3, 3)
        float maxpool2_output[1*5*3*3];
        maxpool2d(relu2_output, maxpool2_output, batch_size, relu2_shape_ch, relu2_shape_n, relu2_shape_m, maxpool2_k);

        // flatten (1, 5, 3, 3) -> (1, 45)
        // linear (1, 45) -> (1, 2)
        float linear_output[1*2];
        linear(maxpool2_output, linear1_weights, linear1_bias, linear_output, batch_size, 1, maxpool2_shape_ch * maxpool2_shape_n * maxpool2_shape_m, linear1_shape_m);

        // softmax (1, 2) -> (1, 2)
        softmax(linear_output, output, batch_size, linear1_shape_n, linear1_shape_m);
    }
}
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

void softmax(float *input, float *output, const int b, const int n, const int m) {
    for (int bi = 0; bi < b; bi++) {
        for (int i = 0; i < n; i++) {
            float sum = 0;
            for (int j = 0; j < m; j++) {
                sum += std::exp(input[bi*n*m + i*m + j]);
            }
            for (int j = 0; j < m; j++) {
                output[bi*n*m + i*m + j] = std::exp(input[bi*n*m + i*m + j]) / sum;
            }
        }
    }
}

extern "C" {
    // Input is (1, 1, 28, 28)
    // Output is (1, 2)
    void cnn_small(float *input, float *output) {
        // conv1 3 (3,3) (1, 1, 28, 28) -> (1, 3, 26, 26)
        //float conv1_output[1*3*26*26];
        //conv2d(input, conv1_w, conv1_bias, conv1_output, input_shape, 3, 3);
        conv2d(input, conv1_w, conv1_bias, output, input_shape, 3, 3);

        // batchnorm 3 (1, 3, 26, 26) -> (1, 3, 26, 26)
        // relu (1, 3, 26, 26) -> (1, 3, 26, 26)
        // maxpool (2,2) (1, 3, 26, 26) -> (1, 3, 13, 13)
        // conv2 5 (5,5) (1, 5, 13, 13) -> (1, 5, 9, 9)
        // batchnorm (1, 5, 9, 9) -> (1, 5, 9, 9)
        // relu (1, 5, 9, 9) -> (1, 5, 9, 9)
        // maxpool (3,3) (1, 5, 9, 9) -> (1, 5, 3, 3)
        // flatten (1, 5, 3, 3) -> (1, 45)
        // linear (1, 45) -> (1, 2)
        // softmax (1, 2) -> (1, 2)
    }
}
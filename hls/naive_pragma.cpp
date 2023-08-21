#include <cmath>
#include <hls_vector.h>

#include "cnn_small_constants.hpp"

template <int b, int c, int n, int m, int f, int k>
void conv2d(const float *input, const float *w, const float *bias, float *output) {
    constexpr int
        out_m = m - k + 1,
        out_n = n - k + 1;

    /* baseline
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
    */

    /* vectorised
    img_loop: for (int img = 0; img < b; img++) {
        filt_loop: for (int filt = 0; filt < f; filt++) {
            y_loop: for (int y = 0; y < out_n; y++) {
                x_loop: for (int x = 0; x < out_m; x++) {
                    #pragma HLS PIPELINE II=1

                    hls::vector<float, c*k*k> input_vec;
                    hls::vector<float, c*k*k> w_vec;
                    ch_loop: for (int ch = 0; ch < c; ch++) {
                        ii_loop: for (int ii = 0; ii < k; ii++) {
                            jj_loop: for (int jj = 0; jj < k; jj++) {
                                int ry = y + ii, rx = x + jj;
                                input_vec[ch*k*k + ii*k + jj] = input[img*c*n*m + ch*n*m + ry*m + rx];
                                w_vec[ch*k*k + ii*k + jj] = w[filt*c*k*k + ch*k*k + ii*k + jj];
                            }
                        }
                    }
                    output[img*f*out_n*out_m + filt*out_n*out_m + y*out_m + x] = (input_vec * w_vec).reduce_add() + bias[filt];
                }
            }
        }
    }
    */

    /* init loop + perfectly nested loop */
    for (int img = 0; img < b; img++) {
        for (int filt = 0; filt < f; filt++) {
            for (int i = 0; i < out_n * out_m; i++) {
                #pragma HLS PIPELINE II=1
                output[img*f*out_n*out_m + filt*out_n*out_m + i] = bias[filt];
            }
        }
    }

    for (int img = 0; img < b; img++) {
        for (int filt = 0; filt < f; filt++) {
            for (int y = 0; y < out_n; y++) {
                for (int x = 0; x < out_m; x++) {
                    for (int ch = 0; ch < c; ch++) {
                        for (int ii = 0; ii < k; ii++) {
                            for (int jj = 0; jj < k; jj++) {
                                #pragma HLS LOOP_FLATTEN
                                #pragma HLS PIPELINE II=1
                                //int ry = y + ii, rx = x + jj;
                                output[img*f*out_n*out_m + filt*out_n*out_m + y*out_m + x] += input[img*c*n*m + ch*n*m + (y+ii)*m + (x+jj)] * w[filt*c*k*k + ch*k*k + ii*k + jj];
                            }
                        }
                    }
                }
            }
        }
    }

    /*
    for (int img = 0; img < b; img++) {
        for (int filt = 0; filt < f; filt++) {
            for (int y = 0; y < out_n; y++) {
                for (int x = 0; x < out_m; x++) {
                    #pragma HLS LOOP_FLATTEN
                    #pragma HLS PIPELINE II=1

                    float tmp = 0;
                    for (int ch = 0; ch < c; ch++) {
                        for (int ii = 0; ii < k; ii++) {
                            for (int jj = 0; jj < k; jj++) {
                                #pragma HLS LOOP_FLATTEN
                                #pragma HLS PIPELINE II=1
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
    */
}

template <int b, int c, int n, int m>
void batchnorm2d(const float *input, float *output, const float *mean, const float *denom, const float *gamma, const float *beta) {
    /* ultra flat
    const int out_size = b * c * n * m;
    for (int i = 0; i < out_size; i += 8) {
        #pragma HLS PIPELINE II=1
        int ch = i / (n * m) % c;
        int remainder = std::min(out_size - i, 8);
        hls::vector<float, 8> input_vec;
        for (int j = 0; j < remainder; j++) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=8
            #pragma HLS UNROLL
            input_vec[j] = input[i + j];
        }
        hls::vector<float, 8> output_vec = (input_vec - mean[ch]) * denom[ch] * gamma[ch] + beta[ch];
        for (int j = 0; j < remainder; j++) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=8
            #pragma HLS UNROLL
            output[i + j] = output_vec[j];
        }
    }
    */

    /*
    for (int img = 0; img < b; img++) {
        for (int ch = 0; ch < c; ch++) {
            #pragma HLS UNROLL
            float me = mean[ch], de = denom[ch], ga = gamma[ch], be = beta[ch];
            float dega = de * ga;
            for (int y = 0; y < n; y++) {
                for (int x = 0; x < m; x += 8) {
                    #pragma HLS LOOP_FLATTEN
                    #pragma HLS PIPELINE II=1
                    hls::vector<float, 8> input_vec;
                    for (int i = 0; i < 8; i++) {
                        #pragma HLS UNROLL
                        input_vec[i] = input[img*c*n*m + ch*n*m + y*m + x + i];
                    }
                    hls::vector<float, 8> output_vec = (input_vec - me) * dega + be;
                    int remainder = std::min(m - x, 8);
                    for (int i = 0; i < remainder; i++) {
                        #pragma HLS LOOP_TRIPCOUNT min=1 max=8
                        #pragma HLS UNROLL
                        output[img*c*n*m + ch*n*m + y*m + x + i] = output_vec[i];
                    }
                }
            }
        }
    }
    */
    /* flatten + pipeline */
    for (int img = 0; img < b; img++) {
        for (int ch = 0; ch < c; ch++) {
            #pragma HLS UNROLL
            for (int y = 0; y < n; y++) {
                for (int x = 0; x < m; x++) {
                    #pragma HLS LOOP_FLATTEN
                    #pragma HLS PIPELINE II=1
                    output[img*c*n*m + ch*n*m + y*m + x] =
                    (input[img*c*n*m + ch*n*m + y*m + x] - mean[ch]) * denom[ch] * gamma[ch] + beta[ch];
                }
            }
        }
    }

    /*for (int img = 0; img < b; img++) {
        for (int ch = 0; ch < c; ch++) {
            for (int y = 0; y < n; y++) {
                for (int x = 0; x < m; x++) {
                    output[img*c*n*m + ch*n*m + y*m + x] =
                    (input[img*c*n*m + ch*n*m + y*m + x] - mean[ch]) * denom[ch] * gamma[ch] + beta[ch];
                }
            }
        }
    }*/
}

template <int size>
void relu(const float *input, float *output) {
    for (int i = 0; i < size; i++) {
        #pragma HLS PIPELINE II=1
        output[i] = input[i] > 0 ? input[i] : 0;
    }
}

template <int b, int c, int n, int m, int k>
void maxpool2d(const float *input, float *output) {
    const int
        out_m = m / k,
        out_n = n / k;

    /* flatten, pipeline, unroll
    for (int img = 0; img < b; img++) {
        for (int ch = 0; ch < c; ch++) {
            #pragma HLS UNROLL
            for (int y = 0; y < out_n; y++) {
                for (int x = 0; x < out_m; x++) {
                    #pragma HLS LOOP_FLATTEN
                    #pragma HLS PIPELINE II=1
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
    */

    /* baseline */
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

template <int b, int n, int k, int m>
void linear(const float *input, const float *w, const float *bias, float *output) {
    /* init loop + perfect nest */
    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                #pragma HLS LOOP_FLATTEN
                #pragma HLS PIPELINE II=1
                output[img*n*m + i*m + j] = bias[j];
            }
        }
    }

    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                for (int kk = 0; kk < k; kk++) {
                    #pragma HLS LOOP_FLATTEN
                    #pragma HLS PIPELINE II=1
                    output[img*n*m + i*m + j] += input[img*n*k + i*k + kk] * w[j*k + kk];
                }
            }
        }
    }

    /* baseline
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
    */
}

template <int b, int n, int m>
void softmax(const float *input, float *output) {
    /* baseline */
    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            float sum = 0;
            for (int j = 0; j < m; j++) {
                #pragma HLS PIPELINE II=1
                sum += std::exp(input[img*n*m + i*m + j]);
            }
            for (int j = 0; j < m; j++) {
                #pragma HLS PIPELINE II=1
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
        conv2d<batch_size, input_shape_ch, input_shape_n, input_shape_m, conv1_shape_ch, conv1_k>(input, conv1_w, conv1_bias, conv1_output);

        // batchnorm 3 (1, 3, 26, 26) -> (1, 3, 26, 26)
        float batchnorm1_output[1*3*26*26];
        batchnorm2d<batch_size, conv1_shape_ch, conv1_shape_n, conv1_shape_m>(conv1_output, batchnorm1_output, batchnorm1_means, batchnorm1_denoms, batchnorm1_gammas, batchnorm1_betas);

        // relu (1, 3, 26, 26) -> (1, 3, 26, 26)
        float relu1_output[1*3*26*26];
        relu<batch_size * batchnorm1_shape_ch * batchnorm1_shape_n * batchnorm1_shape_m>(batchnorm1_output, relu1_output);

        // maxpool (2,2) (1, 3, 26, 26) -> (1, 3, 13, 13)
        float maxpool1_output[1*3*13*13];
        maxpool2d<batch_size, relu1_shape_ch, relu1_shape_n, relu1_shape_m, maxpool1_k>(relu1_output, maxpool1_output);

        // conv2 5 (5,5) (1, 3, 13, 13) -> (1, 5, 9, 9)
        float conv2_output[1*5*9*9];
        conv2d<batch_size, maxpool1_shape_ch, maxpool1_shape_n, maxpool1_shape_m, conv2_shape_ch, conv2_k>(maxpool1_output, conv2_w, conv2_bias, conv2_output);

        // batchnorm (1, 5, 9, 9) -> (1, 5, 9, 9)
        float batchnorm2_output[1*5*9*9];
        batchnorm2d<batch_size, conv2_shape_ch, conv2_shape_n, conv2_shape_m>(conv2_output, batchnorm2_output, batchnorm2_means, batchnorm2_denoms, batchnorm2_gammas, batchnorm2_betas);

        // relu (1, 5, 9, 9) -> (1, 5, 9, 9)
        float relu2_output[1*5*9*9];
        relu<batch_size * batchnorm2_shape_ch * batchnorm2_shape_n * batchnorm2_shape_m>(batchnorm2_output, relu2_output);

        // maxpool (3,3) (1, 5, 9, 9) -> (1, 5, 3, 3)
        float maxpool2_output[1*5*3*3];
        maxpool2d<batch_size, relu2_shape_ch, relu2_shape_n, relu2_shape_m, maxpool2_k>(relu2_output, maxpool2_output);

        // flatten (1, 5, 3, 3) -> (1, 45)
        // linear (1, 45) -> (1, 2)
        float linear_output[1*2];
        linear<batch_size, 1, maxpool2_shape_ch * maxpool2_shape_n * maxpool2_shape_m, linear1_shape_m>(maxpool2_output, linear1_weights, linear1_bias, linear_output);

        // softmax (1, 2) -> (1, 2)
        softmax<batch_size, linear1_shape_n, linear1_shape_m>(linear_output, output);
    }
}
#include <cmath>
#include <hls_stream.h>
#include <hls_vector.h>

#include "cnn_small.hpp"
#include "cnn_small_constants.hpp"

// Generic memory mapped <> streaming functions
template <int b, int c, int n, int m>
void reader(const float *input, hls::stream<float> &output) { // TODO coalesce rather than transposed read
    for (int img = 0; img < b; img++) {
        for (int y = 0; y < n; y++) {
            for (int x = 0; x < m; x++) {
                for (int ch = 0; ch < c; ch++) {
                    output.write(input[img*c*n*m + ch*n*m + y*m + x]);
                }
            }
        }
    }
}

template <int b, int c, int n, int m>
void writer(hls::stream<float> &input, float *output) { // TODO coalesce rather than transposed write
    for (int img = 0; img < b; img++) {
        for (int y = 0; y < n; y++) {
            for (int x = 0; x < m; x++) {
                for (int ch = 0; ch < c; ch++) {
                    output[img*c*n*m + ch*n*m + y*m + x] = input.read();
                }
            }
        }
    }
}

// Streaming functions used for synthesis
template <int b, int c, int n, int m, int f, int k>
void conv2d_core(hls::stream<float> &input, const float *w, const float *bias, hls::stream<float> &output) {
    const int
        out_n = n - k + 1,
        out_m = m - k + 1,
        buf_size = (k-1)*m*c + k*c;
    float buffer[buf_size]; // Circular buffer with k-1 rows and an additional row that is only k wide

    for (int img = 0; img < b; img++) {
        for (int i = 0; i < ((k-1)*m*c)+k*c; i++) {
            buffer[i] = input.read();
        }
        int beg = 0;
        for (int y = 0; y < out_n; y++) {
            for (int x = 0; x < out_m; x++) {
                for (int filt = 0; filt < f; filt++) {
                    float tmp = 0;
                    for (int ch = 0; ch < c; ch++) {
                        for (int ii = 0; ii < k; ii++) {
                            for (int jj = 0; jj < k; jj++) {
                                int flat = ii*m*c + jj*c + ch;
                                tmp += buffer[(beg + flat) % buf_size] * w[filt*c*k*k + ch*k*k + ii*k + jj];
                            }
                        }
                    }
                    output.write(tmp + bias[filt]);
                }
                if (x != out_m-1) {
                    for (int i = 0; i < c; i++) {
                        buffer[beg] = input.read();
                        beg = (beg + 1) % buf_size;
                    }
                } else if (y != out_n-1) {
                    for (int i = 0; i < k*c; i++) {
                        buffer[beg] = input.read();
                        beg = (beg + 1) % buf_size;
                    }
                }
            }
        }
    }
}

template <int b, int c, int n, int m>
void batchnorm2d_core(hls::stream<float> &input, hls::stream<float> &output, const float *mean, const float *denom, const float *gamma, const float *beta) {
    for (int img = 0; img < b; img++) {
        for (int y = 0; y < n; y++) {
            for (int x = 0; x < m; x++) {
                for (int ch = 0; ch < c; ch++) {
                    output.write((input.read() - mean[ch]) * denom[ch] * gamma[ch] + beta[ch]);
                }
            }
        }
    }
}

template <int size>
void relu_core(hls::stream<float> &input, hls::stream<float> &output) {
    for (int i = 0; i < size; i++) {
        float tmp = input.read();
        output.write(tmp > 0 ? tmp : 0);
    }
}

// Memory mapped functions used for verification
template <int b, int c, int n, int m, int f, int k>
void conv2d(const float *input, const float *w, const float *bias, float *output) {
    hls::stream<float> input_stream, output_stream;

    #pragma HLS DATAFLOW
    reader<b, c, n, m>(input, input_stream);
    conv2d_core<b, c, n, m, f, k>(input_stream, w, bias, output_stream);
    writer<b, f, n - k + 1, m - k + 1>(output_stream, output);
}

template <int b, int c, int n, int m>
void batchnorm2d(const float *input, float *output, const float *mean, const float *denom, const float *gamma, const float *beta) {
    hls::stream<float> input_stream, output_stream;

    #pragma HLS DATAFLOW
    reader<b, c, n, m>(input, input_stream);
    batchnorm2d_core<b, c, n, m>(input_stream, output_stream, mean, denom, gamma, beta);
    writer<b, c, n, m>(output_stream, output);
}

template <int size>
void relu(const float *input, float *output) {
    hls::stream<float> input_stream, output_stream;

    #pragma HLS DATAFLOW
    reader<1, 1, 1, size>(input, input_stream);
    relu_core<size>(input_stream, output_stream);
    writer<1, 1, 1, size>(output_stream, output);
}

template <int b, int c, int n, int m, int k>
void maxpool2d(const float *input, float *output) {
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

template <int b, int n, int k, int m>
void linear(const float *input, const float *w, const float *bias, float *output) {
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
}

template <int b, int n, int m>
void softmax(const float *input, float *output) {
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

// Top-level function
extern "C" {
    void cnn_small(const float *input, float *output) {
        #pragma HLS DATAFLOW
        /**/
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

        /**/
    }
}
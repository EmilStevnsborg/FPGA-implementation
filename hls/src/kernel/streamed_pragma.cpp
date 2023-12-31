#include <cmath>
#include <hls_stream.h>
#include <hls_vector.h>
#include <ap_int.h>

#include "cnn_small.hpp"
#include "cnn_small_constants.hpp"

// Helper functions for constant expressions
constexpr int clog2(int x) {
    return x < 1 ? 0 : 1 + clog2(x >> 1);
}

constexpr int pow2(int y) {
    return 1 << y;
}

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
    constexpr int
        out_n = n - k + 1,
        out_m = m - k + 1,
        buf_min = (k-1)*m*c + k*c,
        buf_bits = clog2(buf_min),
        buf_size = pow2(buf_bits);

    float buffer[buf_size]; // Circular buffer with k-1 rows and an additional row that is only k wide

    #pragma HLS ARRAY_PARTITION variable=w block factor=f
    #pragma HLS BIND_STORAGE variable=w type=rom_np impl=bram
    #pragma HLS BIND_STORAGE variable=buffer type=ram_1wnr impl=bram

    for (int img = 0; img < b; img++) {
        for (int i = 0; i < buf_min; i++) {
            #pragma HLS PIPELINE II=1
            buffer[i] = input.read();
        }
        ap_uint<buf_bits> beg = 0, end = buf_min;
        for (int y = 0; y < out_n; y++) {
            for (int x = 0; x < out_m; x++) {
                float tmps[f];
                for (int filt = 0; filt < f; filt++) {
                    #pragma HLS UNROLL
                    float loc_tmps[4]; // Hide latency of fadd to achieve II=1
                    for (int i = 0; i < 4; i++) {
                        #pragma HLS UNROLL
                        loc_tmps[i] = 0;
                    }
                    for (int ch = 0; ch < c; ch++) {
                        for (int ii = 0; ii < k; ii++) {
                            for (int jj = 0; jj < k; jj++) {
                                #pragma HLS LOOP_FLATTEN
                                #pragma HLS PIPELINE II=1
                                #pragma HLS dependence variable=loc_tmps inter false
                                ap_uint<buf_bits>
                                    offset = ii*m*c + jj*c + ch,
                                    flat = beg + offset;
                                int w_offset = ch*k*k + ii*k + jj;
                                loc_tmps[w_offset & 0x3] += buffer[flat] * w[filt*c*k*k + w_offset];
                            }
                        }
                    }
                    float tmp = 0;
                    for (int i = 0; i < 4; i++) {
                        #pragma HLS UNROLL
                        tmp += loc_tmps[i];
                    }
                    tmps[filt] = tmp + bias[filt];
                }
                for (int filt = 0; filt < f; filt++) {
                    #pragma HLS PIPELINE II=1
                    output.write(tmps[filt]);
                }
                if (x != out_m-1) {
                    for (int i = 0; i < c; i++) {
                        #pragma HLS PIPELINE II=1
                        buffer[end] = input.read();
                        beg++;
                        end++;
                    }
                } else if (y != out_n-1) {
                    for (int i = 0; i < k*c; i++) {
                        #pragma HLS PIPELINE II=1
                        buffer[end] = input.read();
                        beg++;
                        end++;
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
                    #pragma HLS PIPELINE II=1
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

template <int b, int c, int n, int m, int k>
void maxpool2d_core(hls::stream<float> &input, hls::stream<float> &output) {
    constexpr int
        out_m = m / k,
        out_n = n / k,
        buf_min = (k-1)*m*c + k*c,
        buf_bits = clog2(buf_min),
        buf_size = pow2(buf_bits);

    float buffer[buf_size]; // Circular buffer with k-1 rows and an additional row that is only k wide

    for (int img = 0; img < b; img++) {
        for (int i = 0; i < buf_min; i++) {
            #pragma HLS PIPELINE II=1
            buffer[i] = input.read();
        }
        ap_uint<buf_bits> beg = 0, end = buf_min;
        for (int y = 0; y < out_n; y++) {
            for (int x = 0; x < out_m; x++) {
                for (int ch = 0; ch < c; ch++) {
                    float tmp = 0; // Still ok because of relu
                    for (int ii = 0; ii < k; ii++) {
                        for (int jj = 0; jj < k; jj++) {
                            #pragma HLS LOOP_FLATTEN
                            #pragma HLS PIPELINE II=1
                            ap_uint<buf_bits>
                                offset = ii*m*c + jj*c + ch,
                                flat = beg + offset;
                            tmp = std::max(tmp, buffer[flat]);
                        }
                    }
                    output.write(tmp);
                }
                if (x != out_m-1) {
                    for (int i = 0; i < k*c; i++) {
                        #pragma HLS PIPELINE II=1
                        buffer[end] = input.read();
                        beg++;
                        end++;
                    }
                } else if (y != out_n-1) {
                    for (int i = 0; i < buf_min; i++) {
                        #pragma HLS PIPELINE II=1
                        buffer[i] = input.read();
                    }
                    beg = 0;
                    end = buf_min;
                }
            }
        }
    }
}

template <int b, int n, int k, int m>
void linear_core(hls::stream<float> &input, const float *w, const float *bias, hls::stream<float> &output) {
    float buffer[n*k];
    // transposed n, m, c > c, n, m
    for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 3; x++) {
            for (int ch = 0; ch < 5; ch++) {
                #pragma HLS LOOP_FLATTEN
                #pragma HLS PIPELINE II=1
                buffer[ch*3*3 + y*3 + x] = input.read();
            }
        }
    }

    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                float tmps[4];
                for (int ii = 0; ii < 4; ii++) {
                    #pragma HLS UNROLL
                    tmps[ii] = 0;
                }
                for (int kk = 0; kk < k; kk++) {
                    #pragma HLS PIPELINE II=1
                    #pragma HLS dependence variable=tmps inter false
                    tmps[kk & 0x3] += buffer[kk] * w[j*k + kk];
                }
                float tmp = bias[j];
                for (int ii = 0; ii < 4; ii++) {
                    #pragma HLS UNROLL
                    tmp += tmps[ii];
                }
                output.write(tmp);
            }
        }
    }
}

template <int b, int n, int m>
void softmax_core(hls::stream<float> &input, hls::stream<float> &output) {
    for (int img = 0; img < b; img++) {
        for (int i = 0; i < n; i++) {
            float sum = 0;
            float buffer[m];
            for (int j = 0; j < m; j++) {
                #pragma HLS UNROLL
                buffer[j] = input.read();
                sum += std::exp(buffer[j]);
            }
            for (int j = 0; j < m; j++) {
                #pragma HLS UNROLL
                output.write(std::exp(buffer[j]) / sum);
            }
        }
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
    hls::stream<float> input_stream, output_stream;

    #pragma HLS DATAFLOW
    reader<b, c, n, m>(input, input_stream);
    maxpool2d_core<b, c, n, m, k>(input_stream, output_stream);
    writer<b, c, n/k, m/k>(output_stream, output);
}

template <int b, int n, int k, int m>
void linear(const float *input, const float *w, const float *bias, float *output) {
    hls::stream<float> input_stream, output_stream;

    #pragma HLS DATAFLOW
    reader<b, 5, 3, 3>(input, input_stream);
    linear_core<b, n, k, m>(input_stream, w, bias, output_stream);
    writer<b, 1, n, m>(output_stream, output);
}

template <int b, int n, int m>
void softmax(const float *input, float *output) {
    hls::stream<float> input_stream, output_stream;

    #pragma HLS DATAFLOW
    reader<b, 1, n, m>(input, input_stream);
    softmax_core<b, n, m>(input_stream, output_stream);
    writer<b, 1, n, m>(output_stream, output);
}

// Top-level function
extern "C" {
    void cnn_small_mm(const float *input, float *output) {
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

    void cnn_small(const float *input, float *output) {
        #pragma HLS DATAFLOW
        /**/
        // conv1 3 (3,3) (1, 1, 28, 28) -> (1, 3, 26, 26)
        hls::stream<float> input_stream, conv1_output;
        reader<batch_size, input_shape_ch, input_shape_n, input_shape_m>(input, input_stream);
        conv2d_core<batch_size, input_shape_ch, input_shape_n, input_shape_m, conv1_shape_ch, conv1_k>(input_stream, conv1_w, conv1_bias, conv1_output);

        // batchnorm 3 (1, 3, 26, 26) -> (1, 3, 26, 26)
        hls::stream<float> batchnorm1_output;
        batchnorm2d_core<batch_size, conv1_shape_ch, conv1_shape_n, conv1_shape_m>(conv1_output, batchnorm1_output, batchnorm1_means, batchnorm1_denoms, batchnorm1_gammas, batchnorm1_betas);

        // relu (1, 3, 26, 26) -> (1, 3, 26, 26)
        hls::stream<float> relu1_output;
        relu_core<batch_size * batchnorm1_shape_ch * batchnorm1_shape_n * batchnorm1_shape_m>(batchnorm1_output, relu1_output);

        // maxpool (2,2) (1, 3, 26, 26) -> (1, 3, 13, 13)
        hls::stream<float> maxpool1_output;
        maxpool2d_core<batch_size, relu1_shape_ch, relu1_shape_n, relu1_shape_m, maxpool1_k>(relu1_output, maxpool1_output);

        // conv2 5 (5,5) (1, 3, 13, 13) -> (1, 5, 9, 9)
        hls::stream<float> conv2_output;
        conv2d_core<batch_size, maxpool1_shape_ch, maxpool1_shape_n, maxpool1_shape_m, conv2_shape_ch, conv2_k>(maxpool1_output, conv2_w, conv2_bias, conv2_output);

        // batchnorm (1, 5, 9, 9) -> (1, 5, 9, 9)
        hls::stream<float> batchnorm2_output;
        batchnorm2d_core<batch_size, conv2_shape_ch, conv2_shape_n, conv2_shape_m>(conv2_output, batchnorm2_output, batchnorm2_means, batchnorm2_denoms, batchnorm2_gammas, batchnorm2_betas);

        // relu (1, 5, 9, 9) -> (1, 5, 9, 9)
        hls::stream<float> relu2_output;
        relu_core<batch_size * batchnorm2_shape_ch * batchnorm2_shape_n * batchnorm2_shape_m>(batchnorm2_output, relu2_output);

        // maxpool (3,3) (1, 5, 9, 9) -> (1, 5, 3, 3)
        hls::stream<float> maxpool2_output;
        maxpool2d_core<batch_size, relu2_shape_ch, relu2_shape_n, relu2_shape_m, maxpool2_k>(relu2_output, maxpool2_output);

        // flatten (1, 5, 3, 3) -> (1, 45)
        // linear (1, 45) -> (1, 2)
        hls::stream<float> linear_output;
        linear_core<batch_size, 1, maxpool2_shape_ch * maxpool2_shape_n * maxpool2_shape_m, linear1_shape_m>(maxpool2_output, linear1_weights, linear1_bias, linear_output);

        // softmax (1, 2) -> (1, 2)
        hls::stream<float> softmax_output;
        softmax_core<batch_size, linear1_shape_n, linear1_shape_m>(linear_output, softmax_output);

        writer<batch_size, softmax1_shape_ch, softmax1_shape_n, softmax1_shape_m>(softmax_output, output);

        /**/
    }
}
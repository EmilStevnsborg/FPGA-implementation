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

    for (int i = 0; i < ((k-1)*m*c)+c; i++) {
        buffer[i] = input.read();
    }
    int beg = 0, end = ((k-1)*m*c)+c;
    for (int y = 0; y < out_n; y++) {
        for (int x = 0; x < out_m; x++) {
            if (x == 0) {
                for (int i = 0; i < (k*c)-c; i++) {
                    buffer[end] = input.read();
                    beg = (beg + 1) % buf_size;
                    end = (end + 1) % buf_size;
                }
            }
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
            for (int i = 0; i < c; i++) {
                buffer[end] = input.read();
                beg = (beg + 1) % buf_size;
                end = (end + 1) % buf_size;
            }
        }
    }
}


// Memory mapped functions used for verification
template <int b, int c, int n, int m, int f, int k>
void conv2d(const float *input, const float *w, const float *bias, float *output) {
    #pragma HLS INLINE
    hls::stream<float> input_stream, output_stream;
    reader<batch_size, input_shape_ch, input_shape_n, input_shape_m>(input, input_stream);
    conv2d_core<batch_size, input_shape_ch, input_shape_n, input_shape_m, conv1_shape_ch, conv1_k>(input_stream, w, bias, output_stream);
    writer<batch_size, conv1_shape_ch, conv1_shape_n, conv1_shape_m>(output_stream, output);
}

template <int b, int c, int n, int m>
void batchnorm2d(const float *input, float *output, const float *mean, const float *denom, const float *gamma, const float *beta) {
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

template <int size>
void relu(const float *input, float *output) {
    for (int i = 0; i < size; i++) {
        output[i] = input[i] > 0 ? input[i] : 0;
    }
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
                float tmp = 0;
                for (int kk = 0; kk < k; kk++) {
                    tmp += input[img*n*k + i*k + kk] * w[j*k + kk];
                }
                output[img*n*m + i*m + j] = tmp + bias[j];
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
        // conv1 3 (3,3) (1, 1, 28, 28) -> (1, 3, 26, 26)
        //float conv1_output[1*3*26*26];
        conv2d<batch_size, input_shape_ch, input_shape_n, input_shape_m, conv1_shape_ch, conv1_k>(input, conv1_w, conv1_bias, output);
    }
}
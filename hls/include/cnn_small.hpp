#ifndef __CNN_SMALL_HPP__
#define __CNN_SMALL_HPP__

template <int b, int c, int n, int m, int f, int k>
void conv2d(const float *input, const float *w, const float *bias, float *output);

template <int b, int c, int n, int m>
void batchnorm2d(const float *input, float *output, const float *mean, const float *denom, const float *gamma, const float *beta);

template <int size>
void relu(const float *input, float *output);

template <int b, int c, int n, int m, int k>
void maxpool2d(const float *input, float *output);

template <int b, int n, int k, int m>
void linear(const float *input, const float *w, const float *bias, float *output);

template <int b, int n, int m>
void softmax(const float *input, float *output);

extern "C" {
    void cnn_small(const float *input, float *output);
}

#endif
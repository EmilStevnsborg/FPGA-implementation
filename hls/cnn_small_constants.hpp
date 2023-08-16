#ifndef CNN_SMALL_CONSTANTS_HPP
#define CNN_SMALL_CONSTANTS_HPP

#define FLAT_SIZE(shape) (shape.batch_size * shape.channels * shape.n * shape.m)

/*
Same order as pytorch uses: [batch_size, channels, n, m]
*/
typedef struct image_shape {
    int batch_size;
    int channels;
    int n;
    int m;
} image_shape;

// Input image
const int batch_size = 1; // Only one image at a time, since this matches the SME implementation.
const image_shape input_shape = {batch_size, 1, 28, 28};

// Convolutional layer 1
const image_shape conv1_shape = {batch_size, 3, 26, 26};
const int conv1_k = 3;
//const int conv1_w_size = conv1_k * conv1_k * input_shape.channels * conv1_shape.channels;
const float conv1_w[3 * 3 * 1 * 3] = {
    -0.17628630995750427, -0.13457851111888885, 0.2742553949356079,
    -0.33332452178001404, 0.306591272354126, 0.3450981080532074,
    0.14231377840042114, -0.20551826059818268, 0.09386859834194183,
    -0.03430915251374245, -0.3332092761993408, -0.21485580503940582,
    0.061504412442445755, 0.20863422751426697, 0.10805066674947739,
    0.10353164374828339, 0.13175784051418304, 0.17544789612293243,
    0.20004460215568542, 0.2602260708808899, 0.006030739285051823,
    -0.3340633511543274, -0.29001420736312866, -0.1794050931930542,
    0.1354600191116333, -0.07904854416847229, 0.16741487383842468
};

// const int conv1_bias_size = conv1_shape.channels;
const float conv1_bias[3] = {
    0.31626051664352417, -0.26537808775901794, 0.1493488848209381
};

// Batch normalization layer 1
const image_shape batchnorm1_shape = {batch_size, 3, 26, 26};
const float batchnorm1_means[3] = {
    0.36052051186561584, -0.23619629442691803, 0.13358604907989502
};
const float batchnorm1_vars[3] = {
    0.03489356487989426, 0.02087334357202053, 0.010060370899736881
};
const float batchnorm1_gammas[3] = {
    1.0154627561569214, 1.0381227731704712, 0.9544557929039001
};
const float batchnorm1_betas[3] = {
    -0.007384154014289379, -0.005790943279862404, 0.002264766488224268
};
const float batchnorm1_denoms[3] = {
    1 / std::sqrt(batchnorm1_vars[0] + 1e-5f),
    1 / std::sqrt(batchnorm1_vars[1] + 1e-5f),
    1 / std::sqrt(batchnorm1_vars[2] + 1e-5f)
};

// Relu layer 1
const image_shape relu1_shape = {batch_size, 3, 26, 26};

#endif
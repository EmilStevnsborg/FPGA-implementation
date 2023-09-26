import matplotlib.pyplot as plt
import numpy as np
import json

def plot_it(exp_path, act_path, shape):
    with open(exp_path) as f:
        data = json.load(f)

    expected = np.array(data['computed'])
    print (expected.shape)
    expected = expected.reshape(shape)

    with open(act_path, 'r') as f:
        actual = np.loadtxt(f, delimiter=',')

    print (actual.shape)
    actual = actual.reshape(expected.shape)
    print (expected.shape, actual.shape)

    print (np.sum(np.abs(expected - actual)))
    print (np.max(np.abs(expected - actual)))

    plt.imshow(
    np.vstack([
        np.hstack(expected), np.hstack(actual)
    ])
    )
    plt.colorbar()
    plt.show()

    plt.imshow(
        np.hstack(np.abs(expected - actual))
    )
    plt.colorbar()
    plt.show()

plot_it('../CNNSmall/Tests/conv1/inputs/input1.json', 'csynth_streamed_0/solution1/csim/build/conv1_output.csv', (3,26,26))
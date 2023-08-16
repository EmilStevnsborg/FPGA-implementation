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
    plt.show()

    plt.imshow(
        np.hstack(np.abs(expected - actual))
    )
    plt.colorbar()
    plt.show()

plot_it('../CNNSmall/Tests/conv2/inputs/input1.json', 'conv2_output.csv', (5, 9, 9))
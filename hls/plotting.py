import matplotlib.pyplot as plt
import numpy as np
import json

def conv1():
    with open('../CNNSmall/Tests/maxPool1/inputs/input1.json') as f:
        data = json.load(f)

    expected = np.array(data['computed'])
    print (expected.shape)
    expected = expected.reshape((3, 13, 13))

    with open('maxpool1_output.csv', 'r') as f:
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

conv1()
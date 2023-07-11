# FPGA-implementation

The resource bottleneck layers in the CNN are the convolutional and maxpooling layers. Automation is tricky, therefore we propose a less parallel, but still a general implementation.

Second part of the CNN operate on more data, hence it contains more processes. The less parallel implementation of the CNN layers apply to this part.

We want to operate on only one filter at a time in the convolutional layers, and only one channel at a time in the maxpooling layers. This means, the convolutional layers will be constrained by the amount of input channels and the maxpooling layers won't be constrained anymore.

InputCtrls in the ConvLayer will handle both the input and the weights in its ram ctrl. It will read one value and one weight from ram each tick and send onwards to a weightvalue. It is the job of InputCtrl to access the input once more and shift to the weights of the next FilterChannel weights
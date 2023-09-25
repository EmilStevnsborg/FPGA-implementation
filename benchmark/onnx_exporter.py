import sys
sys.path.append('..')
import CNNSmall.CNN_small_architecture as arch
import json
import numpy as np
import onnx
import onnxruntime as ort
import torch
import torch.onnx

# Constants
n_samples = 10000
cnnsmall = '../CNNSmall'
inputs_folder = f'{cnnsmall}/Tests/conv1/inputs'
preds_folder = f'{cnnsmall}/Tests/Network'
output_folder = 'obj'

# Load the model
model = arch.CNNSmall()
model.eval()
model.load_state_dict(torch.load(f'{cnnsmall}/CNN_small'))
model.eval()

# Load the test data
test_data = []
for i in range(1000):
    with open(f'{inputs_folder}/input{i+1}.json') as f:
        test_data.append(json.load(f)['buffer'])
lens = set([len(t) for t in test_data])
assert len(lens) == 1
test_data *= n_samples // len(test_data)
test_data = np.array(test_data, dtype=np.float32).reshape((n_samples, 1, 28, 28))

# Load the predictions
preds = []
for i in range(1000):
    with open(f'{preds_folder}/test{i+1}/softmax.json') as f:
        preds.append(json.load(f)['Pred'])
lens = set([len(p) for p in preds])
assert len(lens) == 1
preds *= n_samples // len(preds)
preds = np.array(preds, dtype=np.float32).reshape((n_samples, 2))

# Export the model
onnx_output = f'{output_folder}/CNN_small.onnx'
x = torch.randn(1, 1, 28, 28, requires_grad=True)
torch.onnx.export(model, x, onnx_output, export_params=True, opset_version=10, do_constant_folding=True, input_names=['input'], output_names=['output'], dynamic_axes={'input': {0: 'batch_size'}, 'output': {0: 'batch_size'}})
onnx_model = onnx.load(onnx_output)
onnx.checker.check_model(onnx_model)
ort_sess = ort.InferenceSession(onnx_output)
outputs = ort_sess.run(None, {'input': test_data[:1]})
assert np.allclose(outputs[0], model(torch.Tensor(test_data[:1])).detach().numpy())

# Dump the test and prediction data
np.save(f'{output_folder}/test_data.npy', test_data)
np.save(f'{output_folder}/preds.npy', preds)
import CNN_small_architecture as arch
import datetime
import json
import numpy as np
import torch

# Benchmarking parameters
cpu = False
dev = 'cpu' if cpu else 'cuda:0'
device = torch.device(dev)
n_samples = 4000
batch_size = 2000
warmup = 5
runs = 10

# Load the model
model = arch.CNNSmall()
model.eval()
model.load_state_dict(torch.load('CNN_small'))
model.eval()

# Load the test data
test_data = []
for i in range(n_samples):
    with open(f'Tests/conv1/inputs/input{(i % 1000)+1}.json') as f:
        test_data.append(json.load(f)['buffer'])
lens = set([len(t) for t in test_data])
assert len(lens) == 1
test_data = np.array(test_data, dtype=np.float32).reshape((n_samples, 1, 28, 28))

# Load the predictions
preds = []
for i in range(n_samples):
    with open(f'Tests/Network/test{(i % 1000)+1}/softmax.json') as f:
        preds.append(json.load(f)['Pred'])
lens = set([len(p) for p in preds])
assert len(lens) == 1
preds = np.array(preds, dtype=np.float32).reshape((n_samples, 2))

# Benchmark
with torch.no_grad():
    model.to(device)
    for i in range(warmup): # Also verify the results
        for j in range(n_samples // batch_size):
            input_tensor = torch.Tensor(test_data[j*batch_size:(j+1)*batch_size]).to(device)
            res = model(input_tensor)
            if not np.allclose(res.cpu().numpy(), preds[j*batch_size:(j+1)*batch_size]):
                print(f'Error in sample {j}')
                print(res)
                print(preds[j*batch_size:(j+1)*batch_size])
                print(np.abs(res.cpu().numpy() - preds[j*batch_size:(j+1)*batch_size]))
                exit(1)
    start = datetime.datetime.now()
    for i in range(runs):
        for j in range(n_samples // batch_size):
            input_tensor = torch.Tensor(test_data[j*batch_size:(j+1)*batch_size]).to(device)
            model(input_tensor).cpu() # Include data transfer time
    end = datetime.datetime.now()

    print(f'Time for {runs} runs of {n_samples} samples: {end - start}')
    print(f'Average time per run: {(end - start) / runs}')
    print(f'Average time per sample: {(end - start) / (runs * (n_samples//batch_size)*batch_size)}')
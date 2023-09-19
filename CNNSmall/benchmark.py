import CNN_small_architecture as arch
import datetime
import json
import numpy as np
import torch

# Benchmarking parameters
cpu = True
dev = 'cpu' if cpu else 'cuda:0'
device = torch.device(dev)
n_samples = 10000
batch_sizes = [i for i in range(1, 10)] + [10 * i for i in range(1, 10)] + [100 * i for i in range(1, 10)] + [1000 * i for i in range(1, 6)]
warmup = 10
runs = 10
verbose = True
progress = True
output_folder = 'Tests/benchmark'

# Load the model
model = arch.CNNSmall()
model.eval()
model.load_state_dict(torch.load('CNN_small'))
model.eval()

# Load the test data
test_data = []
for i in range(1000):
    with open(f'Tests/conv1/inputs/input{i+1}.json') as f:
        test_data.append(json.load(f)['buffer'])
lens = set([len(t) for t in test_data])
assert len(lens) == 1
test_data *= n_samples // len(test_data)
test_data = np.array(test_data, dtype=np.float32).reshape((n_samples, 1, 28, 28))

# Load the predictions
preds = []
for i in range(1000):
    with open(f'Tests/Network/test{i+1}/softmax.json') as f:
        preds.append(json.load(f)['Pred'])
lens = set([len(p) for p in preds])
assert len(lens) == 1
preds *= n_samples // len(preds)
preds = np.array(preds, dtype=np.float32).reshape((n_samples, 2))

# Benchmark
data = dict()
for batch_size in batch_sizes:
    if progress:
        print(f'Benchmarking batch size {batch_size}...')

    # Scale the input, so the small batch sizes doesn't run forever
    n = min(n_samples, int(10**(np.floor(np.log10(batch_size))+2)))

    # Benchmark
    with torch.no_grad():
        model.to(device)
        for i in range(warmup): # Also verify the results
            for j in range(n // batch_size):
                input_tensor = torch.Tensor(test_data[j*batch_size:(j+1)*batch_size]).to(device)
                res = model(input_tensor)
                if not np.allclose(res.cpu().numpy(), preds[j*batch_size:(j+1)*batch_size]):
                    print(f'Error in sample {j}')
                    print(res)
                    print(preds[j*batch_size:(j+1)*batch_size])
                    print(np.abs(res.cpu().numpy() - preds[j*batch_size:(j+1)*batch_size]))
                    exit(1)

        to_device = []
        compute = []
        from_device = []

        for i in range(runs):
            for j in range(n // batch_size):
                input_tensor = torch.Tensor(test_data[j*batch_size:(j+1)*batch_size])
                start = datetime.datetime.now()
                input_tensor = input_tensor.to(device)
                transferred = datetime.datetime.now()
                res = model(input_tensor)
                computed = datetime.datetime.now()
                res = res.cpu() # Include data transfer time
                end = datetime.datetime.now()

                to_device.append((transferred - start).total_seconds() * 1e6)
                compute.append((computed - transferred).total_seconds() * 1e6)
                from_device.append((end - computed).total_seconds() * 1e6)

        # Save the results
        data[batch_size] = {
            'to_device': to_device,
            'compute': compute,
            'from_device': from_device
        }

        if verbose:
            to_device = np.array(to_device)
            compute = np.array(compute)
            from_device = np.array(from_device)

            mean_to_device = np.mean(to_device)
            std_to_device = np.std(to_device)
            mean_compute = np.mean(compute)
            std_compute = np.std(compute)
            mean_from_device = np.mean(from_device)
            std_from_device = np.std(from_device)
            total = (to_device + compute + from_device).sum()
            mean_total = np.mean(to_device + compute + from_device)
            std_total = np.std(to_device + compute + from_device)

            print(f'To device:           {mean_to_device:11.02f} us (+/- {std_to_device:11.02f})')
            print(f'Compute:             {mean_compute:11.02f} us (+/- {std_compute:11.02f})')
            print(f'From device:         {mean_from_device:11.02f} us (+/- {std_from_device:11.02f})')
            print(f'Combined:            {mean_total:11.02f} us (+/- {std_total:11.02f})')
            print(f'Combined per sample: {(mean_total / batch_size):11.02f} us (+/- {(std_total / batch_size):11.02f})')

# Write the results to disk.
with open(f'{output_folder}/{"cpu" if cpu else "gpu"}.json', 'w') as f:
    json.dump(data, f)

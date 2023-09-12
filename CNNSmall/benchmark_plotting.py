import json
import numpy as np
import matplotlib.pyplot as plt

# Platform constants
cpu_tdp = 45 # Watts
gpu_tdp = 23 # Watts

hls_tdp = .141 + (1.473 - 1.256) # static + (dynamic - PS7) Watts
hls_clock_ticks = 82410 # Clock ticks
hls_clock_us = 0.01 # Microseconds per clock tick
hls_us = hls_clock_ticks * hls_clock_us # Microseconds

sme_clock_ticks = 15000 # Clock ticks
sme_clock_us = 0.02 # Microseconds per clock tick
sme_tdp = .145 + (1.592 - 1.257) # static + (dynamic - PS7) Watts
sme_us = sme_clock_ticks * sme_clock_us # Microseconds

us_per_s = 1e6 # Microseconds per second

def load_data(filename):
    with open(filename) as f:
        data = json.load(f)
    batch_sizes = list(data.keys())
    combined = [
        np.mean(
            np.array(times['to_device']) +
            np.array(times['compute']) +
            np.array(times['from_device'])
        ) / int(batch_size)
        for batch_size, times in data.items()]
    return batch_sizes, combined

cpu_batch_sizes, cpu_combined = load_data('Tests/benchmark/cpu.json')
gpu_batch_sizes, gpu_combined = load_data('Tests/benchmark/gpu.json')

# Plot the runtime results
plt.title('Average time per sample')
plt.xlabel('Batch size')
plt.ylabel('Time (us)')
plt.plot(cpu_batch_sizes, cpu_combined, label='CPU')
plt.plot(gpu_batch_sizes, gpu_combined, label='GPU')
plt.hlines(sme_us, 0, len(cpu_batch_sizes)-1, linestyles='dashed', label='SME', color='green')
plt.hlines(hls_us, 0, len(cpu_batch_sizes)-1, linestyles='dotted', label='HLS', color='red')
plt.yscale('log')
plt.legend()
plt.xticks(rotation=50)
plt.show()

# Plot the energy results
cpu_energy = (np.array(cpu_combined) / us_per_s) * cpu_tdp
gpu_energy = (np.array(gpu_combined) / us_per_s) * gpu_tdp
plt.title('Average energy per sample')
plt.xlabel('Batch size')
plt.ylabel('Energy (J)')
plt.plot(cpu_batch_sizes, cpu_energy, label='CPU')
plt.plot(gpu_batch_sizes, gpu_energy, label='GPU')
plt.hlines((sme_us / us_per_s) * sme_tdp, 0, len(cpu_batch_sizes)-1, linestyles='dashed', label='SME', color='green')
plt.hlines((hls_us / us_per_s) * hls_tdp, 0, len(cpu_batch_sizes)-1, linestyles='dotted', label='HLS', color='red')
plt.yscale('log')
plt.legend()
plt.xticks(rotation=50)
plt.show()
import json
import numpy as np
import matplotlib.pyplot as plt

# Platform constants
cpu_tdp = 45 # Watts
gpu_tdp = 23 # Watts
arm_tdp = 1.256 # Watts

hls_tdp = .141 + (1.473 - 1.256) # static + (dynamic - PS7) Watts
hls_clock_ticks = 82410 # Clock ticks
hls_clock_us = 0.01 # Microseconds per clock tick
hls_us = hls_clock_ticks * hls_clock_us # Microseconds

sme_clock_ticks = 14908 # Clock ticks
sme_clock_us = 0.02 # Microseconds per clock tick
sme_tdp = .145 + (1.592 - 1.257) # static + (dynamic - PS7) Watts
sme_us = sme_clock_ticks * sme_clock_us # Microseconds

us_per_s = 1e6 # Microseconds per second

def load_data(filename, include_transfers=True):
    with open(filename) as f:
        data = json.load(f)
    batch_sizes = list(data.keys())
    if include_transfers:
        combined = [
            np.mean(
                np.array(times['to_device']) +
                np.array(times['compute']) +
                np.array(times['from_device'])
            ) / int(batch_size)
            for batch_size, times in data.items()
        ]
    else:
        combined = [
            np.mean(
                np.array(times['compute'])
            ) / int(batch_size)
            for batch_size, times in data.items()
        ]
    return batch_sizes, combined

cpu_batch_sizes, cpu_combined = load_data('Tests/benchmark/cpu.json')
gpu_batch_sizes, gpu_combined = load_data('Tests/benchmark/gpu.json')
arm_batch_sizes, arm_combined = load_data('Tests/benchmark/arm.json', include_transfers=False)

# Plot the runtime results
plt.figure(figsize=(8, 6))
plt.title('Average time per sample')
plt.xlabel('Batch size')
plt.ylabel('Time (us)')
plt.plot(cpu_batch_sizes, cpu_combined, label='CPU')
plt.plot(gpu_batch_sizes, gpu_combined, label='GPU')
plt.plot(arm_batch_sizes, arm_combined, label='ARM')
plt.hlines(sme_us, 0, len(cpu_batch_sizes)-1, linestyles='dashed', label='SME', color='red')
plt.hlines(hls_us, 0, len(cpu_batch_sizes)-1, linestyles='dotted', label='HLS', color='purple')
plt.yscale('log')
plt.legend()
plt.xticks(rotation=50)
plt.tight_layout()
plt.savefig('Tests/benchmark/runtime.pdf')
plt.show()

# Plot the energy results
cpu_energy = ((np.array(cpu_combined) / us_per_s) * cpu_tdp) * 1000
gpu_energy = ((np.array(gpu_combined) / us_per_s) * gpu_tdp) * 1000
arm_energy = ((np.array(arm_combined) / us_per_s) * arm_tdp) * 1000
sme_energy = ((sme_us / us_per_s) * sme_tdp) * 1000
hls_energy = ((hls_us / us_per_s) * hls_tdp) * 1000
plt.figure(figsize=(8, 6))
plt.title('Average energy per sample')
plt.xlabel('Batch size')
plt.ylabel('Energy (mJ)')
plt.plot(cpu_batch_sizes, cpu_energy, label='CPU')
plt.plot(gpu_batch_sizes, gpu_energy, label='GPU')
plt.plot(arm_batch_sizes, arm_energy, label='ARM')
plt.hlines(sme_energy, 0, len(cpu_batch_sizes)-1, linestyles='dashed', label='SME', color='red')
plt.hlines(hls_energy, 0, len(cpu_batch_sizes)-1, linestyles='dotted', label='HLS', color='purple')
plt.yscale('log')
plt.legend()
plt.xticks(rotation=50)
plt.tight_layout()
plt.savefig('Tests/benchmark/energy.pdf')
plt.show()

# Print the min and max's
print('CPU min:', np.min(cpu_combined), 'us')
print('CPU max:', np.max(cpu_combined), 'us')
print('GPU min:', np.min(gpu_combined), 'us')
print('GPU max:', np.max(gpu_combined), 'us')
print('ARM min:', np.min(arm_combined), 'us')
print('ARM max:', np.max(arm_combined), 'us')
print('SME:', sme_us, 'us')
print('HLS:', hls_us, 'us')
print('CPU energy min:', np.min(cpu_energy), 'mJ')
print('CPU energy max:', np.max(cpu_energy), 'mJ')
print('GPU energy min:', np.min(gpu_energy), 'mJ')
print('GPU energy max:', np.max(gpu_energy), 'mJ')
print('ARM energy min:', np.min(arm_energy), 'mJ')
print('ARM energy max:', np.max(arm_energy), 'mJ')
print('SME energy:', sme_energy, 'mJ')
print('HLS energy:', hls_energy, 'mJ')
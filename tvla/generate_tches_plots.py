import matplotlib.pyplot as plt
import numpy as np
import math
import os

def parse_vcd_toggles(filepath):
    if not os.path.exists(filepath):
        return []
    
    with open(filepath, 'r') as f:
        lines = f.readlines()
        
    timestamps = []
    current_toggles = 0
    for line in lines:
        if line.startswith('#'): 
            timestamps.append(current_toggles)
            current_toggles = 0
        elif line.startswith('0') or line.startswith('1') or line.startswith('b'):
            current_toggles += 1
            
    # Combine positive and negative clock edges into single clock cycles
    cycles = []
    for i in range(0, len(timestamps)-1, 2):
        cycles.append(timestamps[i] + timestamps[i+1])
        
    # Skip the 16 cycles of initialization (reset, etc.) and grab exactly 16,384 payload cycles
    if len(cycles) > 16384 + 16:
        return cycles[16:16+16384]
    else:
        return cycles

def calc_tvla(traces):
    if len(traces) < 2: return 0.0
    midpoint = len(traces) // 2
    valid = traces[:midpoint]
    rejected = traces[midpoint:]
    
    mean_v, mean_r = np.mean(valid), np.mean(rejected)
    var_v, var_r = np.var(valid), np.var(rejected)
    var_r = max(var_r, 0.0001) # Prevent division by zero when trace is completely flat
    
    return abs(mean_v - mean_r) / math.sqrt((var_v/len(valid)) + (var_r/len(rejected)))

# Load traces
base_traces = parse_vcd_toggles("reports/baseline_switching_postimpl.vcd")
secure_traces = parse_vcd_toggles("reports/aggregator_switching_postimpl.vcd")

# Calculate TVLA
t_base = calc_tvla(base_traces)
t_secure = calc_tvla(secure_traces)

# Smoothing for SPA Visualization
window = 100
base_smooth = np.convolve(base_traces, np.ones(window)/window, mode='valid')
secure_smooth = np.convolve(secure_traces, np.ones(window)/window, mode='valid')

# Plotting
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

# Plot 1: Vulnerable Baseline
ax1.plot(base_smooth, color='red', alpha=0.8)
ax1.set_title(f"Vulnerable Baseline SPA Trace (TVLA |t| = {t_base:.2f})", fontsize=12, pad=10)
ax1.set_ylabel("Transition Density")
ax1.axvline(x=len(base_smooth)//2, color='black', linestyle='--', label="MAC Failure (auth_flag=0)")
ax1.fill_between(range(len(base_smooth)), base_smooth, color='red', alpha=0.1)
ax1.legend(loc="upper right")
ax1.grid(True, linestyle=':', alpha=0.6)

# Plot 2: Secure Architecture
ax2.plot(secure_smooth, color='green', alpha=0.8)
ax2.set_title(f"Secure Architecture SPA Trace (TVLA |t| = {t_secure:.2f})", fontsize=12, pad=10)
ax2.set_xlabel("Clock Cycles")
ax2.set_ylabel("Transition Density")
ax2.axvline(x=len(secure_smooth)//2, color='black', linestyle='--', label="MAC Failure (auth_flag=0)")
ax2.fill_between(range(len(secure_smooth)), secure_smooth, color='green', alpha=0.1)
ax2.legend(loc="upper right")
ax2.grid(True, linestyle=':', alpha=0.6)

plt.tight_layout()
plt.savefig("reports/tches_spa_tvla_comparison.png", dpi=300)
print(f"[*] Baseline |t|: {t_base:.2f} (> 4.5 = VULNERABLE)")
print(f"[*] Secure |t|  : {t_secure:.2f} (< 4.5 = SECURE)")

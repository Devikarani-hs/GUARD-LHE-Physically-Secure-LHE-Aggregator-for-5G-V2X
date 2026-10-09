import sys
import math

def compute_baseline_tvla(vcd_file):
    try:
        with open(vcd_file, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print("VCD not found.")
        return
        
    toggles = []
    current_toggles = 0
    
    for line in lines:
        if line.startswith('#'): 
            toggles.append(current_toggles)
            current_toggles = 0
        elif line.startswith('0') or line.startswith('1') or line.startswith('b'):
            current_toggles += 1 
            
    # Testbench ran 100 valid cycles, then 100 invalid cycles
    midpoint = len(toggles) // 2
    valid_traces = [x for x in toggles[0:midpoint] if x > 0]
    rejected_traces = [x for x in toggles[midpoint:] if x > 0]
    
    if len(valid_traces) == 0 or len(rejected_traces) == 0:
        print("Not enough data to compute TVLA.")
        return

    mean_v = sum(valid_traces) / len(valid_traces)
    mean_r = sum(rejected_traces) / len(rejected_traces)
    
    var_v = sum((x - mean_v)**2 for x in valid_traces) / len(valid_traces)
    var_r = sum((x - mean_r)**2 for x in rejected_traces) / len(rejected_traces)
    
    # Avoid division by zero if rejected traces have 0 variance (which happens when pipeline stops)
    var_r = max(var_r, 0.0001) 
    
    t_stat = abs(mean_v - mean_r) / math.sqrt((var_v/len(valid_traces)) + (var_r/len(rejected_traces)))
    
    print("\n" + "=" * 60)
    print(" BASELINE ARCHITECTURE TVLA (PROVING VULNERABILITY)")
    print("=" * 60)
    print(f"Valid Processing Toggles (Mean)      : {mean_v:.2f} trans/cycle")
    print(f"Rejected Processing Toggles (Mean)   : {mean_r:.2f} trans/cycle")
    print("-" * 60)
    print(f"Welch's T-Statistic (|t|)            : {t_stat:.4f}")
    
    if t_stat > 4.5:
        print("[VULNERABILITY CONFIRMED] |t| > 4.5.")
        print("The baseline completely fails to mask the substitution decision.")
    print("=" * 60)

if __name__ == "__main__":
    compute_baseline_tvla("reports/baseline_switching_postimpl.vcd")

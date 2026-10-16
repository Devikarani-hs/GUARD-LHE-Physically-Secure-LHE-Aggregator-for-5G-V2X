def calculate_fault_coverage():
    injected = 0
    detected = 0
    
    with open("reports/fault_coverage_metrics.txt", "r") as f:
        for line in f:
            if line.startswith("INJECTED:"):
                injected = int(line.split(":")[1])
            elif line.startswith("DETECTED:"):
                detected = int(line.split(":")[1])
                
    if injected > 0:
        fc_percentage = (detected / injected) * 100
    else:
        fc_percentage = 0.0
        
    print("\n=========================================================")
    print(" DUAL MODULAR REDUNDANCY (DMR) FAULT COVERAGE ANALYSIS")
    print("=========================================================")
    print(f"[*] Total SEU Faults Injected (Control Path) : {injected}")
    print(f"[*] Hardware Anomalies Successfully Detected : {detected}")
    print(f"[*] Empirical Fault Coverage (FC)            : {fc_percentage:.2f}%")
    print("---------------------------------------------------------")
    if fc_percentage == 100.0:
        print("[VERIFIED] The architecture is strictly resilient against")
        print("           single-event upsets and active laser glitches.")
    print("=========================================================")

if __name__ == "__main__":
    calculate_fault_coverage()

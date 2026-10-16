
# GUARD-LHE: Constant-Time DMR-Protected LHE Aggregator

This repository contains the supplementary artifact for the paper **"GUARD-LHE: A Constant-Time and DMR-Protected Leveled Homomorphic Encryption Accelerator for Real-Time 5G V2X Edge Aggregation"**. 

The artifact provides the complete Verilog RTL, Xilinx Vivado implementation scripts, fault-injection testbenches, and Side-Channel Analysis (TVLA) Python evaluation scripts necessary to reproduce the hardware and physical security metrics (Classes A–D) presented in the paper.

## Repository Structure
* `/rtl`: Core Verilog/SystemVerilog source files.
* `/tb`: Simulation testbenches for functional verification and fault injection analysis.
* `/vivado`: TCL synthesis scripts and XDC constraints targeting the AMD/Xilinx Kintex UltraScale+ (`xcku5p-ffvb676-2-e`).
* `/tvla`: Python scripts for Test Vector Leakage Assessment (Welch's t-test).
* `/figures`: High-resolution architectural diagrams and result plots used in the manuscript.

## Instructions to Reproduce Results

### 1. Hardware Implementation (Table 3 & Figure 4)
1. Open Xilinx Vivado in Tcl mode or the Vivado GUI.
2. Navigate to the `/vivado` directory and run: `source build_guard_lhe.tcl`
3. Timing, utilization, and power results will be saved as `.rpt` files in the Vivado project directory.


The generated reports should match the manuscript: 314 LUTs (with a 135-LUT security overhead), 16 DSPs, 500 MHz timing closure, 0.464 W total power, and 3.80 µJ energy.

### 2. Fault Injection Campaign (Table 2)
Run behavioral simulation on `/tb/tb_fault_injection.sv`. The testbench automates the injection of single-bit transients, multi-bit glitches, FSM state skips, and stuck-at defects to evaluate the Dual Modular Redundancy (DMR) logic.

### 3. Side-Channel Evaluation / TVLA (Figure 3)
1. Navigate to the `/tvla` directory.
2. Run the automated evaluation pipeline: `python3 verify_and_plot_results.py`
3. The script will output the cycle-accurate $t$-statistic trace proving $\vert{}t\vert{} < 4.5$.


The maximum leakage statistic should be $\vert{}t\vert{}_{\max} = 0.2815$ across the 100,000 traces, remaining safely below the $\pm 4.5$ threshold.

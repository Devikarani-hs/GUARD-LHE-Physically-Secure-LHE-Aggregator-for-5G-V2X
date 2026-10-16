import matplotlib.pyplot as plt
import matplotlib.patches as patches

# Enable publication-quality fonts and math rendering
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
plt.rcParams['mathtext.fontset'] = 'stix'

fig, ax = plt.subplots(figsize=(15.5, 6.2), dpi=600)
ax.set_xlim(0.0, 16.5)
ax.set_ylim(0.0, 7.0)
ax.axis('off')

def draw_box(ax, x, y, w, h, facecolor, edgecolor, linestyle='-'):
    box = patches.FancyBboxPatch((x, y), w, h, boxstyle="round,pad=0.02,rounding_size=0.15",
                                 linewidth=1.5, edgecolor=edgecolor, facecolor=facecolor, linestyle=linestyle, zorder=2)
    ax.add_patch(box)

def draw_arrow(ax, x1, y1, x2, y2, color='black', style='-', lw=1.5):
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1),
                arrowprops=dict(arrowstyle="->,head_width=0.15,head_length=0.2", color=color, ls=style, lw=lw), zorder=3)

# ==========================================
# 1. 5G NR V2X Channel Zone (Left)
# ==========================================
draw_box(ax, 0.2, 1.6, 4.0, 5.0, "#F1F8E9", "#33691E", linestyle='--')
ax.text(2.2, 6.2, "5G NR V2X / DSRC Channel\nBSM: 10 Hz | $T_{\\mathrm{E2E}} < 10$ ms", ha='center', va='center', fontsize=10.5, fontweight='bold', color="#2E7D32")

# Connected Vehicle 1
draw_box(ax, 0.5, 4.7, 3.4, 1.3, "#E3F2FD", "#1565C0")
ax.text(2.2, 5.65, "Connected Vehicle 1", ha='center', va='center', fontsize=10, fontweight='bold', color="#0D47A1")
ax.text(2.2, 5.1, "OBU Encrypts Telemetry\n$\\mathbf{ct}^{(1)} = (c_0^{(1)}, c_1^{(1)}) \\in \\mathcal{R}_q^2$", ha='center', va='center', fontsize=10, color="#0D47A1")

# Vertical Dots
ax.text(2.2, 4.15, "$\\vdots$", ha='center', va='center', fontsize=22, color="#1565C0", fontweight='bold')

# Connected Vehicle K
draw_box(ax, 0.5, 2.2, 3.4, 1.3, "#E3F2FD", "#1565C0")
ax.text(2.2, 3.15, "Connected Vehicle $K$", ha='center', va='center', fontsize=10, fontweight='bold', color="#0D47A1")
ax.text(2.2, 2.6, "OBU Encrypts Telemetry\n$\\mathbf{ct}^{(K)} = (c_0^{(K)}, c_1^{(K)}) \\in \\mathcal{R}_q^2$", ha='center', va='center', fontsize=10, color="#0D47A1")

# ==========================================
# 2. Main Roadside Unit (RSU) Zone
# ==========================================
draw_box(ax, 4.8, 1.6, 11.0, 5.0, "#FAFAFA", "#424242", linestyle='--')
ax.text(10.3, 6.2, "Roadside Unit (RSU) — 5G MEC Host & Xilinx Kintex UltraScale+ FPGA (5–15 W Envelope)", ha='center', va='center', fontsize=10.5, fontweight='bold', color="#212121")

# 5G UPF / DMA (Orange)
draw_box(ax, 5.1, 1.9, 2.0, 4.0, "#FFF3E0", "#E65100")
ax.text(6.1, 5.3, "5G UPF / DMA", ha='center', va='center', fontsize=10, fontweight='bold', color="#BF360C")
ax.text(6.1, 3.5, "AXI4-Stream\nPacket Parser\n&\nZero-Pool\nDummy Mux", ha='center', va='center', fontsize=9.5, color="#BF360C", multialignment='center')

# Proposed LHE Core (Purple)
draw_box(ax, 7.5, 1.9, 5.6, 4.0, "#F3E5F5", "#6A1B9A")
ax.text(10.3, 5.5, "Proposed Constant-Time DMR LHE Core", ha='center', va='center', fontsize=10.5, fontweight='bold', color="#4A148C")

# Primary Datapath (White inside Purple)
draw_box(ax, 7.8, 4.0, 5.0, 1.2, "#FFFFFF", "#8E24AA")
ax.text(10.3, 4.8, "Primary 54-Bit LHE Datapath", ha='center', va='center', fontsize=10, fontweight='bold')
ax.text(10.3, 4.35, "Schedule-Preserving Mux + Barrett MAC\nDeterministic 4,096 Cycles (8.19 $\\mu$s)", ha='center', va='center', fontsize=9.5)

# DMR Shadow Datapath (White inside Purple)
draw_box(ax, 7.8, 2.2, 5.0, 1.2, "#FFFFFF", "#8E24AA")
ax.text(10.3, 3.0, "DMR Shadow Datapath & Parity", ha='center', va='center', fontsize=10, fontweight='bold')
ax.text(10.3, 2.55, "Cycle-Accurate Redundant Execution\nContinuous FSM & Bounds Verification", ha='center', va='center', fontsize=9.5)

# Hardened Fault Gate (Green)
draw_box(ax, 13.5, 1.9, 2.0, 4.0, "#E8F5E9", "#2E7D32")
ax.text(14.5, 5.3, "Hardened\nFault Gate", ha='center', va='center', fontsize=10, fontweight='bold', color="#1B5E20", multialignment='center')
ax.text(14.5, 3.5, "Evaluates $E_{\\mathrm{err}}$\n(Eq. 6)\n\nIf $E_{\\mathrm{err}} = 0$:\nRelease $\\mathbf{ct}_{\\mathrm{agg}, i}$\nElse: Abort", ha='center', va='center', fontsize=9.5, color="#1B5E20", multialignment='center')

# ==========================================
# 3. Adversary Zone (Red Bottom)
# ==========================================
draw_box(ax, 4.8, 0.2, 11.0, 1.1, "#FFEBEE", "#C62828")
ax.text(7.5, 0.85, "Passive Side-Channel Adversary (SCA)", ha='center', va='center', fontsize=10, fontweight='bold', color="#B71C1C")
ax.text(7.5, 0.45, "Power/EM Probes ($V_{\\mathrm{drop}}$) & Deep-Learning / TVLA ($|t| < 4.5$)", ha='center', va='center', fontsize=9.5, color="#B71C1C")

ax.text(13.0, 0.85, "Active Fault-Injection Adversary (FIA)", ha='center', va='center', fontsize=10, fontweight='bold', color="#B71C1C")
ax.text(13.0, 0.45, "Clock/Voltage Glitches & EM Pulses ($\\zeta(f, t, l)$)", ha='center', va='center', fontsize=9.5, color="#B71C1C")

# ==========================================
# 4. Connection Arrows & Labels
# ==========================================
draw_arrow(ax, 3.9, 5.35, 5.1, 5.35)
ax.text(4.5, 5.5, "V2I ($\\mathbf{ct}^{(1)}$)", ha='center', va='bottom', fontsize=9.5, fontweight='bold')

draw_arrow(ax, 3.9, 2.85, 5.1, 2.85)
ax.text(4.5, 3.0, "V2I ($\\mathbf{ct}^{(K)}$)", ha='center', va='bottom', fontsize=9.5, fontweight='bold')

# DMA to Core
draw_arrow(ax, 7.1, 4.6, 7.8, 4.6)
draw_arrow(ax, 7.1, 2.8, 7.8, 2.8)

# Core to Fault Gate
draw_arrow(ax, 12.8, 4.6, 13.5, 4.6)
ax.text(13.15, 4.75, "$Y[j], S_{\\mathrm{FSM}}$", ha='center', va='bottom', fontsize=9.5)

draw_arrow(ax, 12.8, 2.8, 13.5, 2.8)
ax.text(13.15, 2.95, "$Y'[j], S'_{\\mathrm{FSM}}, P$", ha='center', va='bottom', fontsize=9.5)

# Output Arrow
draw_arrow(ax, 15.5, 3.9, 16.4, 3.9, color="#1B5E20", lw=2.0)
ax.text(15.95, 4.1, "$Y_{\\mathrm{out}}[j]$\n($\\mathbf{ct}_{\\mathrm{agg}}$)", ha='center', va='bottom', fontsize=10, color="#1B5E20", fontweight='bold', multialignment='center')

# Adversary Attack Arrows (Dashed Red)
draw_arrow(ax, 7.5, 1.35, 7.5, 1.85, color="#C62828", style='--', lw=2.0)
ax.text(7.35, 1.6, "Power/EM Leakage", ha='right', va='center', fontsize=9.5, color="#C62828", fontweight='bold')

draw_arrow(ax, 12.8, 1.35, 12.8, 1.85, color="#C62828", style='--', lw=2.0)
ax.text(12.95, 1.6, "Glitch / Fault Injection", ha='left', va='center', fontsize=9.5, color="#C62828", fontweight='bold')

plt.tight_layout(pad=0)
plt.savefig("figures/v2x_threat_model_highres.pdf", format="pdf", bbox_inches="tight")
print("Successfully generated figures/v2x_threat_model_highres.pdf")

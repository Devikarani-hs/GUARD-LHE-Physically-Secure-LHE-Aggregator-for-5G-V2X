import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch

# Set up publication-quality figure aesthetics for IACR TCHES
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
plt.rcParams['mathtext.fontset'] = 'stix'

fig, ax = plt.subplots(figsize=(13.5, 5.6), dpi=300)
ax.set_xlim(0, 13.5)
ax.set_ylim(0, 5.6)
ax.axis('off')

def draw_box(ax, x, y, w, h, title, subtitle="", facecolor="#F8F9FA", edgecolor="#212529", lw=1.5, title_color="#000000", fontsize=9.5, ls="-"):
    box = FancyBboxPatch((x, y), w, h, boxstyle="round,pad=0.05,rounding_size=0.08",
                         facecolor=facecolor, edgecolor=edgecolor, linewidth=lw, linestyle=ls)
    ax.add_patch(box)
    if subtitle:
        ax.text(x + w/2, y + h*0.68, title, ha='center', va='center', fontsize=fontsize, fontweight='bold', color=title_color)
        ax.text(x + w/2, y + h*0.28, subtitle, ha='center', va='center', fontsize=fontsize-1.2, color="#212529")
    else:
        ax.text(x + w/2, y + h/2, title, ha='center', va='center', fontsize=fontsize, fontweight='bold', color=title_color)

def draw_arrow(ax, x1, y1, x2, y2, label="", color="#212529", style="-|>", lw=1.6, ls="-", label_x=None, label_y=None):
    arrow = FancyArrowPatch((x1, y1), (x2, y2), arrowstyle=style, mutation_scale=13,
                            color=color, linewidth=lw, linestyle=ls)
    ax.add_patch(arrow)
    if label:
        lx = (x1 + x2) / 2 if label_x is None else label_x
        ly = (y1 + y2) / 2 if label_y is None else label_y
        ax.text(lx, ly, label, ha='center', va='center', fontsize=8.5, fontweight='bold', color=color)

# --- 1. LEFT: Connected Vehicles & V2X Wireless Channel ---
# Outer Wireless Channel Container (eliminates floating box)
v2x_bg = FancyBboxPatch((0.15, 1.55), 2.55, 3.75, boxstyle="round,pad=0.06,rounding_size=0.1",
                        facecolor="#F1F8E9", edgecolor="#2E7D32", linewidth=1.5, linestyle=":")
ax.add_patch(v2x_bg)
ax.text(1.425, 5.12, "5G NR V2X / DSRC Channel", ha='center', va='center', fontsize=9.5, fontweight='bold', color="#1B5E20")
ax.text(1.425, 4.85, "BSM: 10 Hz | $T_{\\mathrm{E2E}} < 10$ ms", ha='center', va='center', fontsize=8.2, color="#2E7D32")

draw_box(ax, 0.3, 3.55, 2.25, 1.05, "Connected Vehicle 1",
         "OBU Encrypts Telemetry\n$\\mathbf{ct}^{(1)} = (c_0^{(1)}, c_1^{(1)}) \\in \\mathcal{R}_Q^2$",
         facecolor="#E3F2FD", edgecolor="#1565C0", title_color="#0D47A1")

ax.text(1.425, 3.22, "$\\vdots$", ha='center', va='center', fontsize=15, fontweight='bold', color="#1565C0")

draw_box(ax, 0.3, 1.75, 2.25, 1.05, "Connected Vehicle $K$",
         "OBU Encrypts Telemetry\n$\\mathbf{ct}^{(K)} = (c_0^{(K)}, c_1^{(K)}) \\in \\mathcal{R}_Q^2$",
         facecolor="#E3F2FD", edgecolor="#1565C0", title_color="#0D47A1")

# --- 2. CENTER & RIGHT: Roadside Unit (RSU) Edge Boundary ---
rsu_bg = FancyBboxPatch((3.35, 1.55), 9.95, 3.75, boxstyle="round,pad=0.06,rounding_size=0.12",
                        facecolor="#FAFAFA", edgecolor="#343A40", linewidth=1.8, linestyle="--")
ax.add_patch(rsu_bg)
ax.text(8.325, 5.10, "Roadside Unit (RSU) — 5G MEC Host & Xilinx Kintex UltraScale+ FPGA (5–15 W Envelope)",
        ha='center', va='center', fontsize=10, fontweight='bold', color="#212529")

# Block A: 5G UPF / DMA Interface
draw_box(ax, 3.55, 1.85, 1.75, 2.9, "5G UPF / DMA",
         "AXI4-Stream\nPacket Parser\n&\nZero-Pool\nDummy Mux",
         facecolor="#FFF8E1", edgecolor="#F57F17", title_color="#E65100")

# Block B: Proposed Protected LHE Core Container
core_bg = FancyBboxPatch((5.75, 1.85), 4.05, 2.9, boxstyle="round,pad=0.05,rounding_size=0.1",
                         facecolor="#F3E5F5", edgecolor="#6A1B9A", linewidth=2.0)
ax.add_patch(core_bg)
ax.text(7.775, 4.55, "Proposed Constant-Time DMR LHE Core", ha='center', va='center', fontsize=9.5, fontweight='bold', color="#4A148C")

draw_box(ax, 5.95, 3.35, 3.65, 0.95, "Primary 54-bit LHE Datapath",
         "Schedule-Preserving Mux + Barrett MAC\nDeterministic 4,096 Cycles ($8.19\\;\\mu$s)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.8)

draw_box(ax, 5.95, 2.05, 3.65, 0.95, "DMR Shadow Datapath & Parity",
         "Cycle-Accurate Redundant Execution\nContinuous FSM & Bounds Verification",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.8)

# Block C: Fault Gate & Output
draw_box(ax, 10.65, 1.85, 1.55, 2.9, "Fault Gate\n& Output",
         "Evaluates $E_{\\mathrm{err}}$\n(Eq. 6)\n\nIf $E_{\\mathrm{err}}=0$:\nRelease $\\mathbf{ct}_{\\mathrm{agg}}$\nElse: Abort",
         facecolor="#E8F5E9", edgecolor="#2E7D32", title_color="#1B5E20", fontsize=9)

# --- 3. BOTTOM: Physical Adversary Threat Model ---
adv_bg = FancyBboxPatch((3.35, 0.15), 9.95, 0.90, boxstyle="round,pad=0.05,rounding_size=0.1",
                        facecolor="#FFEBEE", edgecolor="#C62828", linewidth=1.8)
ax.add_patch(adv_bg)

ax.text(5.85, 0.60, "Passive Side-Channel Adversary (SCA)\nPower/EM Probes ($V_{\\mathrm{drop}}$) & Deep-Learning / TVLA ($|t|<4.5$)",
        ha='center', va='center', fontsize=8.8, fontweight='bold', color="#B71C1C")

ax.text(10.55, 0.60, "Active Fault-Injection Adversary (FIA)\nClock/Voltage Glitches & EM Pulses ($\\zeta(f,t,l)$)",
        ha='center', va='center', fontsize=8.8, fontweight='bold', color="#B71C1C")

# --- 4. ORTHOGONAL ARROWS & CLEAN LABELS (NO BORDER OVERLAPS) ---
# Vehicles -> 5G UPF (Horizontal parallel arrows)
draw_arrow(ax, 2.55, 4.07, 3.55, 4.07, label="V2I ($\\mathbf{ct}^{(1)}$)", label_x=3.05, label_y=4.28)
draw_arrow(ax, 2.55, 2.27, 3.55, 2.27, label="V2I ($\\mathbf{ct}^{(K)}$)", label_x=3.05, label_y=2.48)

# 5G UPF -> Primary & DMR Datapaths (Clean horizontal arrows)
draw_arrow(ax, 5.30, 3.82, 5.95, 3.82)
draw_arrow(ax, 5.30, 2.52, 5.95, 2.52)

# Primary & DMR Datapaths -> Fault Gate (Clean horizontal arrows with labels in the gap)
draw_arrow(ax, 9.60, 3.82, 10.65, 3.82, label="$Y_j, S_{\\mathrm{FSM}}$", label_x=10.22, label_y=4.05)
draw_arrow(ax, 9.60, 2.52, 10.65, 2.52, label="$Y_j', S_{\\mathrm{FSM}}', P$", label_x=10.22, label_y=2.75)

# Fault Gate -> MEC Output (Outgoing arrow)
draw_arrow(ax, 12.20, 3.30, 13.20, 3.30, label="$\\mathbf{ct}_{\\mathrm{agg}}$\nto MEC", label_x=12.70, label_y=3.65, color="#1B5E20")

# Physical Threat Arrows (Vertical arrows in the clean gap y=1.05 to y=1.85)
draw_arrow(ax, 6.50, 1.85, 6.50, 1.05, label="Power/EM Leakage", color="#C62828", ls="--", lw=1.7, label_x=5.55, label_y=1.32)
draw_arrow(ax, 8.85, 1.05, 8.85, 2.05, label="Glitch / Fault Injection", color="#C62828", ls="--", lw=1.7, label_x=9.95, label_y=1.32)

plt.tight_layout()
plt.savefig("v2x_threat_model.pdf", format="pdf", bbox_inches="tight", pad_inches=0.08)
plt.savefig("v2x_threat_model.png", format="png", dpi=300, bbox_inches="tight", pad_inches=0.08)
print("Successfully generated updated v2x_threat_model.pdf and v2x_threat_model.png")

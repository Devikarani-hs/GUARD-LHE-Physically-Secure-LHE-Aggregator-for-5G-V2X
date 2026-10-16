import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch

plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
plt.rcParams['mathtext.fontset'] = 'stix'

def draw_box(ax, x, y, w, h, title, subtitle="", facecolor="#F8F9FA", edgecolor="#212529", lw=1.5, title_color="#000000", fontsize=9.2, ls="-"):
    box = FancyBboxPatch((x, y), w, h, boxstyle="round,pad=0.04,rounding_size=0.08",
                         facecolor=facecolor, edgecolor=edgecolor, linewidth=lw, linestyle=ls)
    ax.add_patch(box)
    if subtitle:
        ax.text(x + w/2, y + h*0.68, title, ha='center', va='center', fontsize=fontsize, fontweight='bold', color=title_color)
        ax.text(x + w/2, y + h*0.28, subtitle, ha='center', va='center', fontsize=fontsize-1.1, color="#212529")
    else:
        ax.text(x + w/2, y + h/2, title, ha='center', va='center', fontsize=fontsize, fontweight='bold', color=title_color)

def draw_arrow(ax, x1, y1, x2, y2, label="", color="#212529", style="-|>", lw=1.5, ls="-", label_x=None, label_y=None):
    arrow = FancyArrowPatch((x1, y1), (x2, y2), arrowstyle=style, mutation_scale=12,
                            color=color, linewidth=lw, linestyle=ls)
    ax.add_patch(arrow)
    if label:
        lx = (x1 + x2) / 2 if label_x is None else label_x
        ly = (y1 + y2) / 2 if label_y is None else label_y
        ax.text(lx, ly, label, ha='center', va='center', fontsize=8.3, fontweight='bold', color=color)

# ==============================================================================
# FIGURE 1: v2x_threat_model.pdf (Synchronized with Y[j], Y'[j], and Eq. 6)
# ==============================================================================
fig1, ax1 = plt.subplots(figsize=(13.5, 5.6), dpi=300)
ax1.set_xlim(0, 13.5)
ax1.set_ylim(0, 5.6)
ax1.axis('off')

v2x_bg = FancyBboxPatch((0.15, 1.55), 2.55, 3.75, boxstyle="round,pad=0.06,rounding_size=0.1",
                        facecolor="#F1F8E9", edgecolor="#2E7D32", linewidth=1.5, linestyle=":")
ax1.add_patch(v2x_bg)
ax1.text(1.425, 5.12, "5G NR V2X / DSRC Channel", ha='center', va='center', fontsize=9.5, fontweight='bold', color="#1B5E20")
ax1.text(1.425, 4.85, "BSM: 10 Hz | $T_{\\mathrm{E2E}} < 10$ ms", ha='center', va='center', fontsize=8.2, color="#2E7D32")

draw_box(ax1, 0.3, 3.55, 2.25, 1.05, "Connected Vehicle 1",
         "OBU Encrypts Telemetry\n$\\mathbf{ct}^{(1)} = (c_0^{(1)}, c_1^{(1)}) \\in \\mathcal{R}_Q^2$",
         facecolor="#E3F2FD", edgecolor="#1565C0", title_color="#0D47A1", fontsize=9.5)
ax1.text(1.425, 3.22, "$\\vdots$", ha='center', va='center', fontsize=15, fontweight='bold', color="#1565C0")
draw_box(ax1, 0.3, 1.75, 2.25, 1.05, "Connected Vehicle $K$",
         "OBU Encrypts Telemetry\n$\\mathbf{ct}^{(K)} = (c_0^{(K)}, c_1^{(K)}) \\in \\mathcal{R}_Q^2$",
         facecolor="#E3F2FD", edgecolor="#1565C0", title_color="#0D47A1", fontsize=9.5)

rsu_bg = FancyBboxPatch((3.35, 1.55), 9.95, 3.75, boxstyle="round,pad=0.06,rounding_size=0.12",
                        facecolor="#FAFAFA", edgecolor="#343A40", linewidth=1.8, linestyle="--")
ax1.add_patch(rsu_bg)
ax1.text(8.325, 5.10, "Roadside Unit (RSU) — 5G MEC Host & Xilinx Kintex UltraScale+ FPGA (5–15 W Envelope)",
         ha='center', va='center', fontsize=10, fontweight='bold', color="#212529")

draw_box(ax1, 3.55, 1.85, 1.75, 2.9, "5G UPF / DMA",
         "AXI4-Stream\nPacket Parser\n&\nZero-Pool\nDummy Mux",
         facecolor="#FFF8E1", edgecolor="#F57F17", title_color="#E65100", fontsize=9.5)

core_bg = FancyBboxPatch((5.75, 1.85), 4.05, 2.9, boxstyle="round,pad=0.05,rounding_size=0.1",
                         facecolor="#F3E5F5", edgecolor="#6A1B9A", linewidth=2.0)
ax1.add_patch(core_bg)
ax1.text(7.775, 4.55, "Proposed Constant-Time DMR LHE Core", ha='center', va='center', fontsize=9.5, fontweight='bold', color="#4A148C")

draw_box(ax1, 5.95, 3.35, 3.65, 0.95, "Primary 54-Bit LHE Datapath",
         "Schedule-Preserving Mux + Barrett MAC\nDeterministic 4,096 Cycles ($8.19\\;\\mu$s)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.8)

draw_box(ax1, 5.95, 2.05, 3.65, 0.95, "DMR Shadow Datapath & Parity",
         "Cycle-Accurate Redundant Execution\nContinuous FSM & Bounds Verification",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.8)

draw_box(ax1, 10.65, 1.85, 1.55, 2.9, "Hardened\nFault Gate",
         "Evaluates $E_{\\mathrm{err}}$\n(Eq. 6)\n\nIf $E_{\\mathrm{err}}=0$:\nRelease $\\mathbf{ct}_{\\mathrm{agg},i}$\nElse: Abort",
         facecolor="#E8F5E9", edgecolor="#2E7D32", title_color="#1B5E20", fontsize=9)

adv_bg = FancyBboxPatch((3.35, 0.15), 9.95, 0.90, boxstyle="round,pad=0.05,rounding_size=0.1",
                        facecolor="#FFEBEE", edgecolor="#C62828", linewidth=1.8)
ax1.add_patch(adv_bg)
ax1.text(5.85, 0.60, "Passive Side-Channel Adversary (SCA)\nPower/EM Probes ($V_{\\mathrm{drop}}$) & Deep-Learning / TVLA ($|t|<4.5$)",
         ha='center', va='center', fontsize=8.8, fontweight='bold', color="#B71C1C")
ax1.text(10.55, 0.60, "Active Fault-Injection Adversary (FIA)\nClock/Voltage Glitches & EM Pulses ($\\zeta(f,t,l)$)",
         ha='center', va='center', fontsize=8.8, fontweight='bold', color="#B71C1C")

draw_arrow(ax1, 2.55, 4.07, 3.55, 4.07, label="V2I ($\\mathbf{ct}^{(1)}$)", label_x=3.05, label_y=4.28)
draw_arrow(ax1, 2.55, 2.27, 3.55, 2.27, label="V2I ($\\mathbf{ct}^{(K)}$)", label_x=3.05, label_y=2.48)
draw_arrow(ax1, 5.30, 3.82, 5.95, 3.82)
draw_arrow(ax1, 5.30, 2.52, 5.95, 2.52)
draw_arrow(ax1, 9.60, 3.82, 10.65, 3.82, label="$Y[j], S_{\\mathrm{FSM}}$", label_x=10.12, label_y=4.05)
draw_arrow(ax1, 9.60, 2.52, 10.65, 2.52, label="$Y'[j], S_{\\mathrm{FSM}}', P$", label_x=10.12, label_y=2.75)
draw_arrow(ax1, 12.20, 3.30, 13.20, 3.30, label="$Y_{\\mathrm{out}}[j]$\n($\\mathbf{ct}_{\\mathrm{agg},i}$)", label_x=12.70, label_y=3.68, color="#1B5E20")
draw_arrow(ax1, 6.50, 1.85, 6.50, 1.05, label="Power/EM Leakage", color="#C62828", ls="--", lw=1.7, label_x=5.55, label_y=1.32)
draw_arrow(ax1, 8.85, 1.05, 8.85, 2.05, label="Glitch / Fault Injection", color="#C62828", ls="--", lw=1.7, label_x=9.95, label_y=1.32)

plt.tight_layout()
plt.savefig("figures/v2x_threat_model.pdf", format="pdf", bbox_inches="tight", pad_inches=0.03)
plt.savefig("figures/v2x_threat_model.png", format="png", dpi=300, bbox_inches="tight", pad_inches=0.03)
plt.close(fig1)

# ==============================================================================
# FIGURE 2: proposed_microarch.pdf (Synchronized with Eqs. 2, 3, 6, 7, 8, 10)
# ==============================================================================
fig2, ax2 = plt.subplots(figsize=(13.5, 4.6), dpi=300)
ax2.set_xlim(0, 13.5)
ax2.set_ylim(0, 4.6)
ax2.axis('off')

outer_bg = FancyBboxPatch((0.15, 0.15), 13.2, 4.3, boxstyle="round,pad=0.05,rounding_size=0.12",
                          facecolor="#FAFAFA", edgecolor="#343A40", linewidth=1.8, linestyle="--")
ax2.add_patch(outer_bg)
ax2.text(6.75, 4.25, "Proposed Constant-Time DMR-Protected 54-Bit LHE Aggregator Microarchitecture (Kintex UltraScale+ FPGA @ 500 MHz)",
         ha='center', va='center', fontsize=10, fontweight='bold', color="#212529")

draw_box(ax2, 0.35, 2.75, 1.85, 1.1, "AXI4-Stream Ingress",
         "V2I Limb $\\tilde{c}_{b,i}^{(k)}[j]$\nValid Flag $v_{\\mathrm{pkt}} \\in \\{0,1\\}$",
         facecolor="#E3F2FD", edgecolor="#1565C0", title_color="#0D47A1")

draw_box(ax2, 0.35, 1.25, 1.85, 1.1, "Zero-Pool BRAM",
         "Dummy Limb $\\tilde{z}_{b,i}^{(k)}[j]$\n$\\tilde{z}_{b,i}^{(k)} \\equiv 0\\;(\\mathrm{mod}\\;q_i)$",
         facecolor="#FFF8E1", edgecolor="#F57F17", title_color="#E65100")

draw_box(ax2, 2.80, 1.60, 1.80, 1.9, "Schedule-Preserving\nMultiplexer",
         "Evaluates Eq. (7)\n\nUniform Switching\nZero Branch Stalls\n($\\mathrm{II} = 1$)",
         facecolor="#EDE7F6", edgecolor="#5E35B1", title_color="#311B92")

prim_bg = FancyBboxPatch((5.20, 2.35), 5.30, 1.60, boxstyle="round,pad=0.04,rounding_size=0.08",
                         facecolor="#F3E5F5", edgecolor="#6A1B9A", linewidth=1.6)
ax2.add_patch(prim_bg)
ax2.text(7.85, 3.78, "Primary 54-Bit Pipelined RNS-Barrett Datapath (4,096 Cycles = 8.19 $\\mu$s)",
         ha='center', va='center', fontsize=9, fontweight='bold', color="#4A148C")

draw_box(ax2, 5.35, 2.50, 1.50, 1.05, "DSP48E2 Mul",
         "18/27-bit Split\n$z[j] = X_{b,i}[j] \\cdot w_k[j]$\n(Eq. 8)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.3)

draw_box(ax2, 7.10, 2.50, 1.50, 1.05, "Barrett Red.",
         "Precomp. $\\mu_i$\n$r[j] = z[j]\\;\\mathrm{mod}\\;q_i$\n(Eq. 3)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.3)

draw_box(ax2, 8.85, 2.50, 1.50, 1.05, "Mod. Accum.",
         "Dual-Port BRAM\n$\\mathbf{Acc}_{b,i}[j] + r[j]$\n(Eq. 2)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.3)

dmr_bg = FancyBboxPatch((5.20, 0.40), 5.30, 1.60, boxstyle="round,pad=0.04,rounding_size=0.08",
                        facecolor="#FCE4EC", edgecolor="#AD1457", linewidth=1.6)
ax2.add_patch(dmr_bg)
ax2.text(7.85, 1.83, "Cycle-Accurate DMR Shadow Datapath & Continuous FSM Verifier",
         ha='center', va='center', fontsize=9, fontweight='bold', color="#880E4F")

draw_box(ax2, 5.35, 0.55, 1.50, 1.05, "Shadow DSP Mul",
         "Lockstep 54-bit\n$z'[j] = X_{b,i}[j] \\cdot w_k[j]$\n(Eq. 8)",
         facecolor="#FFFFFF", edgecolor="#AD1457", fontsize=8.3)

draw_box(ax2, 7.10, 0.55, 1.50, 1.05, "Shadow Barrett",
         "Redundant Red.\n$r'[j] = z'[j]\\;\\mathrm{mod}\\;q_i$\n(Eq. 3)",
         facecolor="#FFFFFF", edgecolor="#AD1457", fontsize=8.3)

draw_box(ax2, 8.85, 0.55, 1.50, 1.05, "Shadow Accum.",
         "Shadow BRAM\n$\\mathbf{Acc}_{b,i}'[j] + r'[j]$\n(Eq. 2)",
         facecolor="#FFFFFF", edgecolor="#AD1457", fontsize=8.3)

draw_box(ax2, 11.10, 0.85, 1.35, 2.75, "Hardened\nFault Gate",
         "Evaluates $E_{\\mathrm{err}}$\n(Eq. 6)\n\nAND-Mask:\n$\\overline{\\{w\\{E_{\\mathrm{err}}\\_\\}} \\wedge Y[j]$\n(Eq. 10)".replace("\\_", "\\}"),
         facecolor="#E8F5E9", edgecolor="#2E7D32", title_color="#1B5E20", fontsize=8.5)

# Arrows
draw_arrow(ax2, 2.20, 3.10, 2.80, 3.10, label="$\\tilde{c}_{b,i}^{(k)}[j], v_{\\mathrm{pkt}}$", label_x=2.50, label_y=3.34)
draw_arrow(ax2, 2.20, 1.95, 2.80, 1.95, label="$\\tilde{z}_{b,i}^{(k)}[j]$", label_x=2.50, label_y=2.18)

draw_arrow(ax2, 4.60, 3.02, 5.35, 3.02, label="$X_{b,i}[j]$", label_x=4.90, label_y=3.25)
draw_arrow(ax2, 4.60, 2.00, 5.35, 1.08, label="$X_{b,i}[j]$", label_x=4.82, label_y=1.25)

draw_arrow(ax2, 6.85, 3.02, 7.10, 3.02)
draw_arrow(ax2, 8.60, 3.02, 8.85, 3.02)
draw_arrow(ax2, 6.85, 1.08, 7.10, 1.08)
draw_arrow(ax2, 8.60, 1.08, 8.85, 1.08)

draw_arrow(ax2, 10.35, 3.02, 11.10, 3.02, label="$Y[j], S_{\\mathrm{FSM}}$", label_x=10.72, label_y=3.28)
draw_arrow(ax2, 10.35, 1.08, 11.10, 1.08, label="$Y'[j], S_{\\mathrm{FSM}}', P$", label_x=10.72, label_y=1.34)

draw_arrow(ax2, 12.45, 2.65, 13.25, 2.65, label="$Y_{\\mathrm{out}}[j]$\n($\\mathbf{ct}_{\\mathrm{agg},i}$)", label_x=12.85, label_y=3.05, color="#1B5E20")
draw_arrow(ax2, 12.45, 1.65, 13.25, 1.65, label="$E_{\\mathrm{err}}$\n(Abort)", label_x=12.85, label_y=2.02, color="#C62828", ls="--")

plt.tight_layout()
plt.savefig("figures/proposed_microarch.pdf", format="pdf", bbox_inches="tight", pad_inches=0.03)
plt.savefig("figures/proposed_microarch.png", format="png", dpi=300, bbox_inches="tight", pad_inches=0.03)
plt.close(fig2)

print("Successfully synchronized and generated both figures in figures/")

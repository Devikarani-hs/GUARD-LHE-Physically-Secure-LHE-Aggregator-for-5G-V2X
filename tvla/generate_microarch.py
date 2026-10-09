import matplotlib.pyplot as plt
import matplotlib.patches as patches

# Publication-grade typography and vector math rendering
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
plt.rcParams['mathtext.fontset'] = 'stix'

fig, ax = plt.subplots(figsize=(15.8, 6.8), dpi=600)
ax.set_xlim(0.0, 16.2)
ax.set_ylim(0.0, 7.2)
ax.axis('off')

def draw_box(ax, x, y, w, h, facecolor, edgecolor, linestyle='-', lw=1.5, radius=0.14):
    box = patches.FancyBboxPatch((x, y), w, h, boxstyle=f"round,pad=0.02,rounding_size={radius}",
                                 linewidth=lw, edgecolor=edgecolor, facecolor=facecolor,
                                 linestyle=linestyle, zorder=2)
    ax.add_patch(box)

def draw_arrow(ax, x1, y1, x2, y2, color='#212121', style='-', lw=1.6):
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1),
                arrowprops=dict(arrowstyle="->,head_width=0.16,head_length=0.22",
                                color=color, ls=style, lw=lw), zorder=4)

# ==============================================================================
# 0. OUTER SYSTEM BOUNDARY
# ==============================================================================
draw_box(ax, 0.3, 0.3, 15.6, 6.6, "#FAFAFA", "#455A64", linestyle='--', lw=1.4)
ax.text(8.1, 6.62, "Proposed Constant-Time DMR-Protected 54-Bit LHE Aggregator Microarchitecture (Kintex UltraScale+ FPGA @ 500 MHz)",
        ha='center', va='center', fontsize=11.2, fontweight='bold', color="#263238")

# ==============================================================================
# 1. INGRESS & ZERO-POOL STAGE
# ==============================================================================
# AXI4-Stream Ingress (Blue)
draw_box(ax, 0.6, 4.15, 2.3, 2.05, "#E3F2FD", "#1565C0")
ax.text(1.75, 5.82, "AXI4-Stream Ingress", ha='center', va='center', fontsize=10.5, fontweight='bold', color="#0D47A1")
ax.text(1.75, 5.15, r"V2I Limb: $\tilde{c}_{b, i}^{(k)} \; [54\,\mathrm{b}]$" + "\n" + r"Valid Flag: $v_{\mathrm{pkt}} \in \{0, 1\}$",
        ha='center', va='center', fontsize=9.8, color="#0D47A1", linespacing=1.4)

# Zero-Pool BRAM (Orange)
draw_box(ax, 0.6, 1.0, 2.3, 2.05, "#FFF3E0", "#E65100")
ax.text(1.75, 2.65, "Zero-Pool BRAM", ha='center', va='center', fontsize=10.5, fontweight='bold', color="#BF360C")
ax.text(1.75, 1.95, r"Dummy Limb: $\tilde{z}_{b, i}^{(k)} \; [54\,\mathrm{b}]$" + "\n" + r"$\tilde{z}_{b, i}^{(k)} \equiv 0 \; (\mathrm{mod}\; q_i)$",
        ha='center', va='center', fontsize=9.8, color="#BF360C", linespacing=1.4)

# ==============================================================================
# 2. SCHEDULE-PRESERVING MULTIPLEXER (Purple)
# ==============================================================================
draw_box(ax, 3.4, 1.9, 2.2, 3.4, "#EDE7F6", "#512DA8")
ax.text(4.5, 4.88, "Schedule-Preserving\nMultiplexer", ha='center', va='center',
        fontsize=10.5, fontweight='bold', color="#311B92", multialignment='center')
ax.text(4.5, 3.45, "Evaluates (Eq. 7)\n" + r"$M_{\mathrm{sel}} \leftarrow \{w\{v_{\mathrm{pkt}}\}\}$" + "\n\nUniform Switching\n" + r"$\mathrm{II} = 1$ (Zero Stalls)",
        ha='center', va='center', fontsize=9.4, color="#311B92", multialignment='center')

# Arrows into Mux
draw_arrow(ax, 2.9, 5.18, 3.4, 4.35)
ax.text(3.12, 4.95, "/54", fontsize=8.2, fontweight='bold', color="#1565C0")

draw_arrow(ax, 2.9, 2.02, 3.4, 2.85)
ax.text(3.12, 2.25, "/54", fontsize=8.2, fontweight='bold', color="#E65100")

# Mux to Datapaths (Branching Bus)
ax.plot([5.6, 5.95, 5.95], [3.6, 3.6, 5.0], color='#212121', lw=1.6, zorder=3)
ax.plot([5.95, 5.95], [3.6, 2.2], color='#212121', lw=1.6, zorder=3)
draw_arrow(ax, 5.95, 5.0, 6.3, 5.0)
draw_arrow(ax, 5.95, 2.2, 6.3, 2.2)
ax.text(5.95, 3.9, r"$X_{b, i}[j]$" + "\n[54b]", ha='center', va='bottom', fontsize=9.2, fontweight='bold', color="#311B92")

# ==============================================================================
# 3. PRIMARY 54-BIT PIPELINED RNS-BARRETT DATAPATH
# ==============================================================================
draw_box(ax, 6.3, 3.75, 6.5, 2.5, "#F3E5F5", "#7B1FA2")
ax.text(9.55, 6.0, r"Primary 54-Bit Pipelined RNS-Barrett Datapath (4,096 Cycles = 8.19 $\mu$s)",
        ha='center', va='center', fontsize=10.2, fontweight='bold', color="#4A148C")

# Sub-stage 1: DSP48E2 Mul
draw_box(ax, 6.5, 3.95, 1.9, 1.8, "#FFFFFF", "#8E24AA", radius=0.08)
ax.text(7.45, 5.4, "DSP48E2 Mul", ha='center', va='center', fontsize=10.0, fontweight='bold')
ax.text(7.45, 4.6, "18/27-Bit Split\n" + r"$z[j] = X \cdot w_k$" + "\n(Eq. 4)",
        ha='center', va='center', fontsize=9.0, linespacing=1.25)

# Sub-stage 2: Barrett Red
draw_box(ax, 8.6, 3.95, 1.9, 1.8, "#FFFFFF", "#8E24AA", radius=0.08)
ax.text(9.55, 5.4, "Barrett Red.", ha='center', va='center', fontsize=10.0, fontweight='bold')
ax.text(9.55, 4.6, r"Precomp. $\mu_i$" + "\n" + r"$r[j] = z \; (\mathrm{mod}\; q_i)$" + "\n(Eq. 5)",
        ha='center', va='center', fontsize=9.0, linespacing=1.25)

# Sub-stage 3: Mod Accum
draw_box(ax, 10.7, 3.95, 1.9, 1.8, "#FFFFFF", "#8E24AA", radius=0.08)
ax.text(11.65, 5.4, "Mod. Accum.", ha='center', va='center', fontsize=10.0, fontweight='bold')
ax.text(11.65, 4.6, "Dual-Port BRAM\n" + r"$\mathbf{Acc}_{b, i} + r$" + "\n(Eq. 1)",
        ha='center', va='center', fontsize=9.0, linespacing=1.25)

# Internal primary arrows
draw_arrow(ax, 8.4, 4.85, 8.6, 4.85)
draw_arrow(ax, 10.5, 4.85, 10.7, 4.85)

# ==============================================================================
# 4. DMR SHADOW DATAPATH & CONTINUOUS FSM VERIFIER
# ==============================================================================
draw_box(ax, 6.3, 0.95, 6.5, 2.5, "#FCE4EC", "#C2185B")
ax.text(9.55, 3.2, "Cycle-Accurate DMR Shadow Datapath & Continuous FSM Verifier",
        ha='center', va='center', fontsize=10.2, fontweight='bold', color="#880E4F")

# Shadow Stage 1
draw_box(ax, 6.5, 1.15, 1.9, 1.8, "#FFFFFF", "#D81B60", radius=0.08)
ax.text(7.45, 2.6, "Shadow DSP Mul", ha='center', va='center', fontsize=10.0, fontweight='bold')
ax.text(7.45, 1.8, "Lockstep 54-Bit\n" + r"$z'[j] = X \cdot w_k$" + "\n(Eq. 4)",
        ha='center', va='center', fontsize=9.0, linespacing=1.25)

# Shadow Stage 2
draw_box(ax, 8.6, 1.15, 1.9, 1.8, "#FFFFFF", "#D81B60", radius=0.08)
ax.text(9.55, 2.6, "Shadow Barrett", ha='center', va='center', fontsize=10.0, fontweight='bold')
ax.text(9.55, 1.8, "Redundant Red.\n" + r"$r'[j] = \mathrm{BarrettRed}$" + "\n(Eq. 5)",
        ha='center', va='center', fontsize=9.0, linespacing=1.25)

# Shadow Stage 3
draw_box(ax, 10.7, 1.15, 1.9, 1.8, "#FFFFFF", "#D81B60", radius=0.08)
ax.text(11.65, 2.6, "Shadow Accum.", ha='center', va='center', fontsize=10.0, fontweight='bold')
ax.text(11.65, 1.8, "Shadow BRAM\n" + r"$\mathbf{Acc}' + r'$" + "\n(Eq. 1)",
        ha='center', va='center', fontsize=9.0, linespacing=1.25)

# Internal shadow arrows
draw_arrow(ax, 8.4, 2.05, 8.6, 2.05)
draw_arrow(ax, 10.5, 2.05, 10.7, 2.05)

# ==============================================================================
# 5. HARDENED FAULT GATE (Green)
# ==============================================================================
draw_box(ax, 13.3, 1.15, 1.85, 4.9, "#E8F5E9", "#2E7D32")
ax.text(14.22, 5.62, "Hardened\nFault Gate", ha='center', va='center',
        fontsize=10.5, fontweight='bold', color="#1B5E20", multialignment='center')
ax.text(14.22, 3.45, r"Evaluates $E_{\mathrm{err}}$" + "\n(Eq. 6)\n\nSingle-Cycle\nBitwise Comparator\n\nAND-Mask Zeroing\n(Eq. 10)",
        ha='center', va='center', fontsize=9.2, color="#1B5E20", multialignment='center', linespacing=1.25)

# Forwarding lines into Hardened Fault Gate
draw_arrow(ax, 12.8, 5.0, 13.3, 5.0)
ax.text(13.05, 5.18, r"$Y[j], S_{\mathrm{FSM}}$", ha='center', va='bottom', fontsize=8.8, fontweight='bold')

draw_arrow(ax, 12.8, 2.2, 13.3, 2.2)
ax.text(13.05, 2.38, r"$Y'[j], S'_{\mathrm{FSM}}, P$", ha='center', va='bottom', fontsize=8.8, fontweight='bold')

# Outputs from Fault Gate
# Valid Output (Green)
draw_arrow(ax, 15.15, 4.85, 15.85, 4.85, color="#1B5E20", lw=2.0)
ax.text(15.5, 5.1, r"$Y_{\mathrm{out}}[j]$" + "\n" + r"$(\mathbf{ct}_{\mathrm{agg}})$",
        ha='center', va='bottom', fontsize=9.6, fontweight='bold', color="#1B5E20")

# Abort Output (Red dashed)
draw_arrow(ax, 15.15, 2.4, 15.85, 2.4, color="#C62828", style='--', lw=2.0)
ax.text(15.5, 2.65, r"$E_{\mathrm{err}}$" + "\n(Abort)",
        ha='center', va='bottom', fontsize=9.6, fontweight='bold', color="#C62828")

plt.tight_layout(pad=0.2)
plt.savefig("figures/proposed_microarch.pdf", format="pdf", bbox_inches="tight", pad_inches=0.03)
print("Successfully generated high-definition figures/proposed_microarch.pdf!")

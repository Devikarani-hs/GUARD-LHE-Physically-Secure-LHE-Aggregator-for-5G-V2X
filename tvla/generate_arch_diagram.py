import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch

# Set up publication-quality figure aesthetics for IACR TCHES
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
plt.rcParams['mathtext.fontset'] = 'stix'

fig, ax = plt.subplots(figsize=(13.5, 4.6), dpi=300)
ax.set_xlim(0, 13.5)
ax.set_ylim(0, 4.6)
ax.axis('off')

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

# --- OUTER CONTAINER: Proposed Core ---
outer_bg = FancyBboxPatch((0.15, 0.15), 13.2, 4.3, boxstyle="round,pad=0.05,rounding_size=0.12",
                          facecolor="#FAFAFA", edgecolor="#343A40", linewidth=1.8, linestyle="--")
ax.add_patch(outer_bg)
ax.text(6.75, 4.25, "Proposed Constant-Time DMR-Protected 54-Bit LHE Aggregator Microarchitecture (Kintex UltraScale+ FPGA @ 500 MHz)",
        ha='center', va='center', fontsize=10, fontweight='bold', color="#212529")

# --- STAGE 1: Input & Schedule-Preserving Mux ---
draw_box(ax, 0.35, 2.75, 1.85, 1.1, "AXI4-Stream Ingress",
         "V2I Limb $\\tilde{c}_{b,i}^{(k)}[j]$\nValid Flag $v_{\\mathrm{pkt}} \\in \\{0,1\\}$",
         facecolor="#E3F2FD", edgecolor="#1565C0", title_color="#0D47A1")

draw_box(ax, 0.35, 1.25, 1.85, 1.1, "Zero-Pool BRAM",
         "Dummy Limb $\\tilde{z}_{b,i}^{(k)}[j]$\n$\\tilde{z}_{b,i}^{(k)} \\equiv 0\\;(\\mathrm{mod}\\;q_i)$",
         facecolor="#FFF8E1", edgecolor="#F57F17", title_color="#E65100")

draw_box(ax, 2.70, 1.60, 1.85, 1.9, "Schedule-Preserving\nMultiplexer",
         "Evaluates Eq. (7)\n\nUniform Switching\nZero Branch Stalls\n($\\mathrm{II} = 1$)",
         facecolor="#EDE7F6", edgecolor="#5E35B1", title_color="#311B92")

# --- STAGE 2: Primary & DMR Shadow Datapaths ---
# Primary Datapath Container
prim_bg = FancyBboxPatch((5.15, 2.35), 5.35, 1.60, boxstyle="round,pad=0.04,rounding_size=0.08",
                         facecolor="#F3E5F5", edgecolor="#6A1B9A", linewidth=1.6)
ax.add_patch(prim_bg)
ax.text(7.825, 3.78, "Primary 54-Bit Pipelined RNS-Barrett Datapath (4,096 Cycles = 8.19 $\\mu$s)",
        ha='center', va='center', fontsize=9, fontweight='bold', color="#4A148C")

draw_box(ax, 5.30, 2.50, 1.55, 1.05, "DSP48E2 Mul",
         "18/27-bit Split\n$z = X_{b,i} \\cdot w_k$\n(Eq. 8)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.5)

draw_box(ax, 7.10, 2.50, 1.55, 1.05, "Barrett Red.",
         "Precomp. $\\mu_i$\nConst.-Time Mux\n(Eq. 3)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.5)

draw_box(ax, 8.85, 2.50, 1.50, 1.05, "Mod. Accum.",
         "Dual-Port BRAM\n$\\mathbf{Acc}_{b,i} + r\\;\\mathrm{mod}\\;q_i$\n(Eq. 2)",
         facecolor="#FFFFFF", edgecolor="#6A1B9A", fontsize=8.5)

# DMR Shadow Datapath Container
dmr_bg = FancyBboxPatch((5.15, 0.40), 5.35, 1.60, boxstyle="round,pad=0.04,rounding_size=0.08",
                        facecolor="#FCE4EC", edgecolor="#AD1457", linewidth=1.6)
ax.add_patch(dmr_bg)
ax.text(7.825, 1.83, "Cycle-Accurate DMR Shadow Datapath & Continuous FSM Verifier",
        ha='center', va='center', fontsize=9, fontweight='bold', color="#880E4F")

draw_box(ax, 5.30, 0.55, 1.55, 1.05, "Shadow DSP Mul",
         "Lockstep 54-bit\n$z' = X_{b,i} \\cdot w_k$\n(Eq. 8)",
         facecolor="#FFFFFF", edgecolor="#AD1457", fontsize=8.5)

draw_box(ax, 7.10, 0.55, 1.55, 1.05, "Shadow Barrett",
         "Redundant Red.\n$r' = z'\\;\\mathrm{mod}\\;q_i$\n(Eq. 3)",
         facecolor="#FFFFFF", edgecolor="#AD1457", fontsize=8.5)

draw_box(ax, 8.85, 0.55, 1.50, 1.05, "Shadow Accum.",
         "Shadow BRAM\n& FSM Parity $P$\n($S_{\\mathrm{FSM}}'$)",
         facecolor="#FFFFFF", edgecolor="#AD1457", fontsize=8.5)

# --- STAGE 3: Fault Gate & Output ---
draw_box(ax, 11.10, 0.85, 1.35, 2.75, "Hardened\nFault Gate",
         "XOR Check\n(Eq. 6)\n\nAND-Mask\n$\\overline{E_{\\mathrm{err}}} \\wedge Y[j]$\n(Eq. 10)",
         facecolor="#E8F5E9", edgecolor="#2E7D32", title_color="#1B5E20", fontsize=8.8)

# --- ARROWS & SIGNAL CONNECTIONS ---
# Ingress & Zero-Pool -> Mux
draw_arrow(ax, 2.20, 3.10, 2.70, 3.10, label="$\\tilde{c}, v_{\\mathrm{pkt}}$", label_x=2.45, label_y=3.32)
draw_arrow(ax, 2.20, 1.95, 2.70, 1.95, label="$\\tilde{z}$", label_x=2.45, label_y=2.15)

# Mux -> Primary & Shadow Datapaths
draw_arrow(ax, 4.55, 3.02, 5.30, 3.02, label="$X_{b,i}[j]$", label_x=4.85, label_y=3.25)
draw_arrow(ax, 4.55, 2.00, 5.30, 1.08, label="$X_{b,i}[j]$", label_x=4.78, label_y=1.25)

# Internal Primary Pipeline Arrows
draw_arrow(ax, 6.85, 3.02, 7.10, 3.02)
draw_arrow(ax, 8.65, 3.02, 8.85, 3.02)

# Internal Shadow Pipeline Arrows
draw_arrow(ax, 6.85, 1.08, 7.10, 1.08)
draw_arrow(ax, 8.65, 1.08, 8.85, 1.08)

# Primary & Shadow -> Fault Gate
draw_arrow(ax, 10.35, 3.02, 11.10, 3.02, label="$Y[j], S_{\\mathrm{FSM}}$", label_x=10.72, label_y=3.28)
draw_arrow(ax, 10.35, 1.08, 11.10, 1.08, label="$Y'[j], S_{\\mathrm{FSM}}', P$", label_x=10.72, label_y=1.34)

# Fault Gate -> Output Bus & Abort Flag
draw_arrow(ax, 12.45, 2.65, 13.25, 2.65, label="$Y_{\\mathrm{out}}[j]$\n($\\mathbf{ct}_{\\mathrm{agg},i}$)", label_x=12.85, label_y=3.05, color="#1B5E20")
draw_arrow(ax, 12.45, 1.65, 13.25, 1.65, label="$E_{\\mathrm{err}}$\n(Abort)", label_x=12.85, label_y=2.02, color="#C62828", ls="--")

plt.tight_layout()
plt.savefig("figures/proposed_microarch.pdf", format="pdf", bbox_inches="tight", pad_inches=0.03)
plt.savefig("figures/proposed_microarch.png", format="png", dpi=300, bbox_inches="tight", pad_inches=0.03)
print("Successfully generated figures/proposed_microarch.pdf and figures/proposed_microarch.png")

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as patches

plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']
plt.rcParams['mathtext.fontset'] = 'stix'
plt.rcParams['axes.linewidth'] = 1.2

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10.4, 4.4), dpi=600)

# ==============================================================================
# PANEL (a): Power (W) vs. Operation Latency (us) Design-Space Pareto Frontier
# ==============================================================================
# Shaded RSU Edge Envelope (< 15 W)
rsu_zone = patches.Rectangle((1.0, 0.1), 10000.0, 14.9, facecolor="#E8F5E9",
                             edgecolor="none", alpha=0.55, zorder=1)
ax1.add_patch(rsu_zone)
ax1.axhline(15.0, color="#2E7D32", linestyle="--", linewidth=1.5, zorder=2,
            label="RSU Thermal Limit ($15\\;\\mathrm{W}$)")

# Unprotected Cloud / Datacenter Accelerators (Table 4)
cloud_lat = [250.0, 14.3, 390.0, 1710.0, 1240.0, 42.0]
cloud_pwr = [317.0, 281.3, 94.7, 120.0, 115.0, 105.0]
cloud_names = ["CraterLake", "ARK", "SHARP", "FAB", "FAST", "Poseidon"]
ax1.scatter(cloud_lat, cloud_pwr, color="#C62828", marker="s", s=55, zorder=4,
            label="Unprotected Cloud ASIC/FPGA ($>90\\;\\mathrm{W}$)")

# Edge FPGA Accelerators (Table 4)
ax1.scatter([13.1], [8.7], color="#F57F17", marker="^", s=75, zorder=4,
            label="Unprotected Edge FPGA (Sinha Roy)")

# Proposed GUARD-LHE Core
ax1.scatter([8.19], [0.311], color="#0D47A1", marker="*", s=200, zorder=5,
            label="GUARD-LHE (0.311 W, 8.19 $\\mu$s, SCA+FIA)")

# Unobstructed Annotations for Cloud & Edge Points
offsets = {
    "CraterLake": (-24, 8),
    "ARK": (7, -3),
    "SHARP": (-18, -14),
    "FAB": (-12, 8),
    "FAST": (-22, -14),
    "Poseidon": (7, -3)
}
for name, x, y in zip(cloud_names, cloud_lat, cloud_pwr):
    dx, dy = offsets[name]
    ax1.annotate(name, (x, y), xytext=(dx, dy), textcoords="offset points",
                 fontsize=8.5, fontweight='bold', color="#B71C1C")

ax1.annotate("Sinha Roy (8.7 W)", (13.1, 8.7), xytext=(7, -3),
             textcoords="offset points", fontsize=8.5, fontweight='bold', color="#E65100")

# Place GUARD-LHE label directly above the star marker so it never collides
ax1.annotate("GUARD-LHE (Ours)\n0.311 W | 8.19 $\\mu$s", (8.19, 0.311), xytext=(-6, 12),
             textcoords="offset points", fontsize=8.8, fontweight='bold', color="#0D47A1")

# Place RSU Safe Zone text below the 15 W line on the upper-right of the green zone
ax1.text(480.0, 6.2, "5G V2X RSU Safe Zone\n($P \\leq 15\\;\\mathrm{W}$, $T < 10\\;\\mathrm{ms}$)",
         fontsize=8.5, fontweight='bold', color="#1B5E20", ha='center')

ax1.set_xscale("log")
ax1.set_yscale("log")
ax1.set_xlim(3.5, 4500.0)
ax1.set_ylim(0.14, 700.0)
ax1.tick_params(axis='both', which='major', labelsize=9.5, width=1.1, length=4)
ax1.set_xlabel("Homomorphic Operation Latency ($\\mu\\mathrm{s}$, log scale)\n(a)",
               fontsize=11, fontweight='bold', linespacing=1.5)
ax1.set_ylabel("Total Power Consumption ($\\mathrm{W}$, log scale)", fontsize=11, fontweight='bold')
ax1.grid(True, which="both", linestyle=":", linewidth=0.7, alpha=0.6)
# Place legend in lower-right where there are zero data points
ax1.legend(loc="lower right", fontsize=7.6, framealpha=0.95, edgecolor="#B0BEC5")

# ==============================================================================
# PANEL (b): Post-PAR LUT Overhead & Power Breakdown on Kintex UltraScale+
# ==============================================================================
categories = ["CLB LUT Utilization\n(Total = 2,910 LUTs)", "Total On-Chip Power\n(Total = 0.311 W)"]

comp1 = [1387 / 2910 * 100, 0.098 / 0.311 * 100]  # Primary Channel / Static Power
comp2 = [1387 / 2910 * 100, 0.213 / 0.311 * 100]  # DMR Shadow / Dynamic Power
comp3 = [136 / 2910 * 100, 0.0]                   # Security Wrapper (+4.9%)

x_pos = np.arange(len(categories))
bar_w = 0.44

ax2.bar(x_pos[0], comp1[0], width=bar_w, color="#1565C0", edgecolor="#0D47A1",
        label="Primary (1,387 LUTs)")
ax2.bar(x_pos[0], comp2[0], width=bar_w, bottom=comp1[0], color="#42A5F5", edgecolor="#1565C0",
        label="DMR Shadow (1,387 LUTs)")
ax2.bar(x_pos[0], comp3[0], width=bar_w, bottom=comp1[0]+comp2[0], color="#2E7D32", edgecolor="#1B5E20",
        label="Security Wrapper (+136 LUTs)")

ax2.bar(x_pos[1], comp1[1], width=bar_w, color="#FFB300", edgecolor="#E65100",
        label="Static Power (0.098 W)")
ax2.bar(x_pos[1], comp2[1], width=bar_w, bottom=comp1[1], color="#EF5350", edgecolor="#B71C1C",
        label="Dynamic Power (0.213 W)")

# Direct value labels inside bars
ax2.text(x_pos[0], comp1[0]/2, "Primary\n1,387 LUTs\n(47.7%)", ha='center', va='center',
         color="white", fontsize=8.4, fontweight='bold')
ax2.text(x_pos[0], comp1[0] + comp2[0]/2, "DMR Shadow\n1,387 LUTs\n(47.7%)", ha='center', va='center',
         color="white", fontsize=8.4, fontweight='bold')

# Unobstructed callout centered directly above the left bar
ax2.annotate("+136 LUTs (+4.9% Overhead)", xy=(x_pos[0], 100.5), xytext=(x_pos[0], 111.5),
             ha='center', fontsize=8.6, fontweight='bold', color="#1B5E20",
             arrowprops=dict(arrowstyle="->", color="#1B5E20", lw=1.3))

ax2.text(x_pos[1], comp1[1]/2, "Static\n0.098 W (31.5%)", ha='center', va='center',
         color="#212529", fontsize=8.4, fontweight='bold')
ax2.text(x_pos[1], comp1[1] + comp2[1]/2, "Dynamic\n0.213 W\n(68.5%)", ha='center', va='center',
         color="white", fontsize=8.4, fontweight='bold')

ax2.set_xticks(x_pos)
ax2.set_xticklabels(categories, fontsize=9.8, fontweight='bold')
ax2.set_xlim(-0.55, 1.55)
ax2.set_ylim(0, 158)
ax2.set_yticks([0, 25, 50, 75, 100])
ax2.tick_params(axis='y', which='major', labelsize=9.5, width=1.1, length=4)
ax2.set_xlabel("Post-PAR Implementation Metrics (500 MHz)\n(b)",
               fontsize=11, fontweight='bold', linespacing=1.5)
ax2.set_ylabel("Percentage Share (%)", fontsize=11, fontweight='bold')
ax2.grid(True, axis='y', linestyle=":", linewidth=0.7, alpha=0.6)
# 2-column legend at top center stays well above the +136 LUTs callout
ax2.legend(loc="upper center", fontsize=7.4, ncol=2, framealpha=0.95, edgecolor="#B0BEC5")

plt.tight_layout(pad=0.6, w_pad=1.4)
plt.savefig("figures/perf_pareto_breakdown.pdf", format="pdf", bbox_inches="tight", pad_inches=0.04)
plt.savefig("figures/perf_pareto_breakdown.png", format="png", dpi=600, bbox_inches="tight", pad_inches=0.04)
print("Successfully regenerated overlap-free figures/perf_pareto_breakdown.pdf")

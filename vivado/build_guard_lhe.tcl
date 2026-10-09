# Xilinx Vivado Synthesis and Implementation Script for GUARD-LHE
set part_name "xcku5p-ffvb676-2-e"
set top_module "guard_lhe_top"

create_project -force guard_lhe_project ./guard_lhe_project -part $part_name
add_files ../rtl/
add_files -fileset constrs_1 ../vivado/constraints.xdc

synth_design -top $top_module -part$part_name -mode out_of_context
opt_design
place_design
phys_opt_design
route_design

report_timing_summary -file post_route_timing.rpt
report_utilization -file post_route_utilization.rpt
report_power -file post_route_power.rpt

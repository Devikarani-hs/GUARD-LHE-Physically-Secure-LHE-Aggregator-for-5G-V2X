set part_name "xcku5p-ffvb676-2-e"

# PROPOSED GUARD-LHE (Top Level: axi4s_aggregator)
create_project -force guard_lhe_project ./guard_lhe_project -part $part_name
add_files ../rtl/
set ip_files [glob -nocomplain ../rtl/*.xci]
if {$ip_files != ""} { read_ip $ip_files; generate_target all [get_ips] }
add_files -fileset constrs_1 ooc_constraints.xdc
set_property top axi4s_aggregator [current_fileset]

synth_design -top axi4s_aggregator -part $part_name -mode out_of_context -flatten_hierarchy none -no_lc -keep_equivalent_registers -resource_sharing off
opt_design -directive NoBramPowerOpt
place_design
route_design
report_utilization -file proposed_utilization.rpt
report_power -file proposed_power.rpt
close_project

# BASELINE AGGREGATOR (Top Level: aggregator_baseline)
create_project -force baseline_project ./baseline_project -part $part_name
add_files ../rtl/
if {$ip_files != ""} { read_ip $ip_files }
add_files -fileset constrs_1 ooc_constraints.xdc
set_property top aggregator_baseline [current_fileset]

synth_design -top aggregator_baseline -part $part_name -mode out_of_context -flatten_hierarchy none -no_lc -keep_equivalent_registers -resource_sharing off
opt_design -directive NoBramPowerOpt
place_design
route_design
report_utilization -file baseline_utilization.rpt
close_project

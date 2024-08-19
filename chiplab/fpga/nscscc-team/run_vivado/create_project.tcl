create_project -force loongson ./project -part xc7a200tfbg676-1

# Add conventional sources
add_files -scan_for_includes ../../../chip/soc_demo/nscscc-team
add_files -scan_for_includes ../../../IP/AXI_SRAM_BRIDGE

# Add IPs
add_files -quiet [glob -nocomplain ../../../chip/soc_demo/nscscc-team/xilinx_ip/*/*.xci]

# Add simulation files
add_files -fileset sim_1 ./testbench

# Add myCPU
# add_files -scan_for_includes ../../../IP/myCPU
# add_files -quiet [glob -nocomplain ../../../IP/myCPU/IP/*.xcix]

# Add constraints
add_files -fileset constrs_1 -quiet ./constraints

set_property -name "top" -value "tb_top" -objects  [get_filesets sim_1]
set_property strategy Flow_PerfOptimized_high [get_runs synth_1]
set_property strategy Performance_Explore [get_runs impl_1]

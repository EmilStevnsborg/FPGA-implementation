set srcs_dir [get_property DIRECTORY [current_project]]/[current_project].srcs
file mkdir $srcs_dir/constrs_1
file mkdir $srcs_dir/constrs_1/new
set xdc_name $srcs_dir/constrs_1/new/constraints.xdc
set xdc_file [open $xdc_name w]
puts $xdc_file "create_clock -period 10.000 -name clk -waveform \{0.000 5.000\} \[get_ports CLK\]"
close $xdc_file
add_files -fileset constrs_1 $xdc_name
set_property target_constrs_file $xdc_name [current_fileset -constrset]

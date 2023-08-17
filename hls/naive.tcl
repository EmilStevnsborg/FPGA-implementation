open_project csynth_naive_0
set_top cnn_small
add_files -cflags "-std=c++17 -I." naive.cpp
open_solution "solution1" -flow_target vivado
set_part xc7z020clg400-1 ;# PYNQ Z2 / Z1 / ZedBoard
create_clock -period 100MHz -name default
csynth_design
export_design -format ip_catalog
quit
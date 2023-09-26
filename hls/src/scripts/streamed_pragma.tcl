open_project csynth_streamed_pragma_0
set_top cnn_small
add_files -cflags "-std=c++14 -Iinclude" src/kernel/streamed_pragma.cpp
add_files -tb -cflags "-std=c++14 -Iinclude" src/host/sw_test.cpp
open_solution "solution1" -flow_target vivado
set_part xc7z020clg400-1 ;# PYNQ Z2 / Z1 / ZedBoard
create_clock -period 100MHz -name default
csim_design
csynth_design
#cosim_design
#export_design -format ip_catalog
quit
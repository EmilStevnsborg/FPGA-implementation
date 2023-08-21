CFLAGS=-Wall -Wextra -Werror -pedantic -std=c++14 -g
INCLUDES=-I$(XILINX_HLS)/include

all:
	clang++ $(CFLAGS) $(INCLUDES) sw_test.cpp && ./a.out

sanitize:
	clang++ $(CFLAGS) $(INCLUDES) -fsanitize=address sw_test.cpp && ./a.out
	clang++ $(CFLAGS) $(INCLUDES) -fsanitize=thread sw_test.cpp && ./a.out
	clang++ $(CFLAGS) $(INCLUDES) -fsanitize=undefined sw_test.cpp && ./a.out

csynth_%: %.tcl
	vitis_hls -f $<

clean:
	rm -rf a.out csynth_* vitis_hls.log
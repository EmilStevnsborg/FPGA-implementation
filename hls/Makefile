CFLAGS=-Wall -Wextra -Werror -pedantic -std=c++17 -g

all:
	clang++ -g sw_test.cpp && ./a.out

sanitize:
	clang++ $(CFLAGS) -fsanitize=address sw_test.cpp && ./a.out
	clang++ $(CFLAGS) -fsanitize=thread sw_test.cpp && ./a.out
	clang++ $(CFLAGS) -fsanitize=undefined sw_test.cpp && ./a.out

csynth_%: %.tcl
	vitis_hls -f $<

clean:
	rm -rf a.out csynth_* vitis_hls.log
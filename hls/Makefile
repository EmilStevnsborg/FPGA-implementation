CFLAGS=-Wall -Wextra -Werror -pedantic -std=c++17 -O3 -g

all:
	clang++ -g sw_test.cpp && ./a.out

sanitize:
	clang++ $(CFLAGS) -fsanitize=address sw_test.cpp && ./a.out
	clang++ $(CFLAGS) -fsanitize=thread sw_test.cpp && ./a.out
	clang++ $(CFLAGS) -fsanitize=undefined sw_test.cpp && ./a.out
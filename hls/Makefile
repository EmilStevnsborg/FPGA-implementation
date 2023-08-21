CFLAGS=-Wall -Wextra -Werror -Wno-unknown-pragmas -Wno-unused-parameter -pedantic -std=c++14 -g
INCLUDES=-Iinclude/ -Isrc/kernel/
ifdef XILINX_HLS
	INCLUDES+=-I$(XILINX_HLS)/include
endif
KERNELS=$(foreach KERNEL, $(wildcard src/kernel/*.cpp), $(notdir $(basename $(KERNEL))))
SANITIZERS=address thread undefined
SW_TARGETS=$(foreach KERNEL, $(KERNELS),$(addprefix sanitize_,$(addsuffix _$(KERNEL),$(SANITIZERS))))

# General targets
all: sanitize csynth

clean:
	rm -rf bin/ csynth_* vitis_hls.log *_output.csv

# Software verification
.PHONY: sanitize
sanitize: $(SW_TARGETS)

define GEN_SANITIZER_TARGET
.PHONY: sanitize_$(SANITIZER)_$(notdir $(KERNEL))
sanitize_$(SANITIZER)_$(KERNEL): src/kernel/$(KERNEL).cpp
	@mkdir -p bin
	clang++ $(CFLAGS) $(INCLUDES) -c -fsanitize=$(SANITIZER) $$< -o bin/$(KERNEL).o
	clang++ $(CFLAGS) $(INCLUDES) -fsanitize=$(SANITIZER) src/host/sw_test.cpp -o bin/$$@ bin/$(KERNEL).o
	./bin/$$@
endef

$(foreach SANITIZER,$(SANITIZERS), \
	$(foreach KERNEL,$(KERNELS), \
		$(eval $(GEN_SANITIZER_TARGET)) \
	) \
)

# Hardware synthesis
csynth: csynth_naive csynth_naive_pragma

csynth_%: src/scripts/%.tcl
	vitis_hls -f $<

CFLAGS=-Wall -Wextra -Werror -Wno-unknown-pragmas -pedantic -std=c++14 -g
INCLUDES=-I$(XILINX_HLS)/include -Iinclude/ -Isrc/kernel/
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
	clang++ $(CFLAGS) $(INCLUDES) -DKERNEL_IMPL=\"$(KERNEL).cpp\" -fsanitize=$(SANITIZER) src/host/sw_test.cpp -o bin/$$@
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

all: test export
testbench: relu_tb
export: Relu_export
build: export testbench

# Use a temporary folder for compiled stuff
WORKDIR=work

# All code should be VHDL93 compliant,
# but 93c is a bit easier to work with
STD=93c

# Eveything should compile with clean IEEE,
# but the test-bench and CSV util's require
# std_logic_textio from Synopsys
IEEE=synopsys

ifndef SME_TEST_SKIP_VCD
# VCD trace file for GTKWave
VCDFILE=trace.vcd
VCDFLAG=--vcd=$(VCDFILE)
endif

# Disable the 'Warning: redundant others'
FLAGS=--warn-no-others

$(WORKDIR):
	mkdir $(WORKDIR)

$(WORKDIR)/system_types.o: system_types.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) system_types.vhdl

$(WORKDIR)/Types_Relu.o: Types_Relu.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_Relu.vhdl

$(WORKDIR)/CNN_ReluCore.o: CNN_ReluCore.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Relu.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_ReluCore.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Relu.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/Relu.o: Relu.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Relu.o $(WORKDIR)/CNN_ReluCore.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Relu.vhdl

$(WORKDIR)/TestBench_Relu.o: TestBench_Relu.vhdl $(WORKDIR)/Relu.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_Relu.vhdl

relu_tb: $(WORKDIR)/TestBench_Relu.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Relu_tb

Relu_export: $(WORKDIR)/Relu.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_Relu.vhdl

test: relu_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Relu_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o relu_tb

.PHONY: all clean test export build 

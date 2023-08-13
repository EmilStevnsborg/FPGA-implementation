all: test export
testbench: linear_tb
export: Linear_export
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

$(WORKDIR)/Types_Linear.o: Types_Linear.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_Linear.vhdl

$(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o: SME_Components_TrueDualPortMemory_1_Single.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SME_Components_TrueDualPortMemory_1_Single.vhdl

$(WORKDIR)/CNN_NodeCtrl_type10.o: CNN_NodeCtrl_type10.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_NodeCtrl_type10.vhdl

$(WORKDIR)/CNN_WeightValue.o: CNN_WeightValue.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_WeightValue.vhdl

$(WORKDIR)/CNN_PlusCtrl.o: CNN_PlusCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusCtrl.vhdl

$(WORKDIR)/CNN_Bias.o: CNN_Bias.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Bias.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/Linear.o: Linear.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_Linear.o $(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o $(WORKDIR)/CNN_NodeCtrl_type10.o $(WORKDIR)/CNN_WeightValue.o $(WORKDIR)/CNN_PlusCtrl.o $(WORKDIR)/CNN_Bias.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Linear.vhdl

$(WORKDIR)/TestBench_Linear.o: TestBench_Linear.vhdl $(WORKDIR)/Linear.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_Linear.vhdl

linear_tb: $(WORKDIR)/TestBench_Linear.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Linear_tb

Linear_export: $(WORKDIR)/Linear.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_Linear.vhdl

test: linear_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Linear_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o linear_tb

.PHONY: all clean test export build 

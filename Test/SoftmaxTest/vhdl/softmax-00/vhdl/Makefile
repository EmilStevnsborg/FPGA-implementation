all: test export
testbench: softmaxtest_tb
export: SoftmaxTest_export
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

$(WORKDIR)/Types_SoftmaxTest.o: Types_SoftmaxTest.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_SoftmaxTest.vhdl

$(WORKDIR)/CNN_ValueArrayCtrl.o: CNN_ValueArrayCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SoftmaxTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_ValueArrayCtrl.vhdl

$(WORKDIR)/CNN_PlusCtrl.o: CNN_PlusCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SoftmaxTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusCtrl.vhdl

$(WORKDIR)/CNN_Exp.o: CNN_Exp.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SoftmaxTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Exp.vhdl

$(WORKDIR)/CNN_DivideValue.o: CNN_DivideValue.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SoftmaxTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_DivideValue.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SoftmaxTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/SoftmaxTest.o: SoftmaxTest.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_SoftmaxTest.o $(WORKDIR)/CNN_ValueArrayCtrl.o $(WORKDIR)/CNN_PlusCtrl.o $(WORKDIR)/CNN_Exp.o $(WORKDIR)/CNN_DivideValue.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SoftmaxTest.vhdl

$(WORKDIR)/TestBench_SoftmaxTest.o: TestBench_SoftmaxTest.vhdl $(WORKDIR)/SoftmaxTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_SoftmaxTest.vhdl

softmaxtest_tb: $(WORKDIR)/TestBench_SoftmaxTest.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SoftmaxTest_tb

SoftmaxTest_export: $(WORKDIR)/SoftmaxTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_SoftmaxTest.vhdl

test: softmaxtest_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SoftmaxTest_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o softmaxtest_tb

.PHONY: all clean test export build 

all: test export
testbench: batchnormtest_tb
export: BatchNormTest_export
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

$(WORKDIR)/Types_BatchNormTest.o: Types_BatchNormTest.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_BatchNormTest.vhdl

$(WORKDIR)/CNN_Align.o: CNN_Align.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_BatchNormTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Align.vhdl

$(WORKDIR)/CNN_PlusTwo.o: CNN_PlusTwo.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_BatchNormTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusTwo.vhdl

$(WORKDIR)/CNN_MultiplyTwo.o: CNN_MultiplyTwo.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_BatchNormTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_MultiplyTwo.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_BatchNormTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/BatchNormTest.o: BatchNormTest.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_BatchNormTest.o $(WORKDIR)/CNN_Align.o $(WORKDIR)/CNN_PlusTwo.o $(WORKDIR)/CNN_MultiplyTwo.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) BatchNormTest.vhdl

$(WORKDIR)/TestBench_BatchNormTest.o: TestBench_BatchNormTest.vhdl $(WORKDIR)/BatchNormTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_BatchNormTest.vhdl

batchnormtest_tb: $(WORKDIR)/TestBench_BatchNormTest.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) BatchNormTest_tb

BatchNormTest_export: $(WORKDIR)/BatchNormTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_BatchNormTest.vhdl

test: batchnormtest_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) BatchNormTest_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o batchnormtest_tb

.PHONY: all clean test export build 

all: test export
testbench: maxpooltest_tb
export: MaxPoolTest_export
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

$(WORKDIR)/Types_MaxPoolTest.o: Types_MaxPoolTest.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_MaxPoolTest.vhdl

$(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o: SME_Components_TrueDualPortMemory_1_Single.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_MaxPoolTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SME_Components_TrueDualPortMemory_1_Single.vhdl

$(WORKDIR)/CNN_InputCtrl_SeqChannel.o: CNN_InputCtrl_SeqChannel.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_MaxPoolTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_InputCtrl_SeqChannel.vhdl

$(WORKDIR)/CNN_Max.o: CNN_Max.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_MaxPoolTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Max.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_MaxPoolTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/MaxPoolTest.o: MaxPoolTest.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_MaxPoolTest.o $(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o $(WORKDIR)/CNN_InputCtrl_SeqChannel.o $(WORKDIR)/CNN_Max.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) MaxPoolTest.vhdl

$(WORKDIR)/TestBench_MaxPoolTest.o: TestBench_MaxPoolTest.vhdl $(WORKDIR)/MaxPoolTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_MaxPoolTest.vhdl

maxpooltest_tb: $(WORKDIR)/TestBench_MaxPoolTest.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) MaxPoolTest_tb

MaxPoolTest_export: $(WORKDIR)/MaxPoolTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_MaxPoolTest.vhdl

test: maxpooltest_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) MaxPoolTest_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o maxpooltest_tb

.PHONY: all clean test export build 

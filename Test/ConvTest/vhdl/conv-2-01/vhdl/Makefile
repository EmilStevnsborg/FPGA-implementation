all: test export
testbench: convtest_tb
export: ConvTest_export
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

$(WORKDIR)/Types_ConvTest.o: Types_ConvTest.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_ConvTest.vhdl

$(WORKDIR)/CNN_ValueArrayCtrl.o: CNN_ValueArrayCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_ValueArrayCtrl.vhdl

$(WORKDIR)/CNN_PlusCtrl.o: CNN_PlusCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusCtrl.vhdl

$(WORKDIR)/CNN_Align.o: CNN_Align.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Align.vhdl

$(WORKDIR)/CNN_PlusTwo.o: CNN_PlusTwo.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusTwo.vhdl

$(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o: SME_Components_TrueDualPortMemory_1_Single.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SME_Components_TrueDualPortMemory_1_Single.vhdl

$(WORKDIR)/CNN_InputCtrl_SeqFilter.o: CNN_InputCtrl_SeqFilter.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_InputCtrl_SeqFilter.vhdl

$(WORKDIR)/CNN_WeightValue.o: CNN_WeightValue.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_WeightValue.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/ConvTest.o: ConvTest.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_ConvTest.o $(WORKDIR)/CNN_ValueArrayCtrl.o $(WORKDIR)/CNN_PlusCtrl.o $(WORKDIR)/CNN_Align.o $(WORKDIR)/CNN_PlusTwo.o $(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o $(WORKDIR)/CNN_InputCtrl_SeqFilter.o $(WORKDIR)/CNN_WeightValue.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) ConvTest.vhdl

$(WORKDIR)/TestBench_ConvTest.o: TestBench_ConvTest.vhdl $(WORKDIR)/ConvTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_ConvTest.vhdl

convtest_tb: $(WORKDIR)/TestBench_ConvTest.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) ConvTest_tb

ConvTest_export: $(WORKDIR)/ConvTest.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_ConvTest.vhdl

test: convtest_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) ConvTest_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o convtest_tb

.PHONY: all clean test export build 

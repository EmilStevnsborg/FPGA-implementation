all: test export
testbench: cnnsmall_tb
export: CNNSmall_export
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

$(WORKDIR)/Types_CNNSmall.o: Types_CNNSmall.vhdl $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Types_CNNSmall.vhdl

$(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o: SME_Components_TrueDualPortMemory_1_Single.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) SME_Components_TrueDualPortMemory_1_Single.vhdl

$(WORKDIR)/CNN_InputCtrl_ParFilter.o: CNN_InputCtrl_ParFilter.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_InputCtrl_ParFilter.vhdl

$(WORKDIR)/CNN_ValueArrayCtrl_single.o: CNN_ValueArrayCtrl_single.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_ValueArrayCtrl_single.vhdl

$(WORKDIR)/CNN_PlusCtrl.o: CNN_PlusCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusCtrl.vhdl

$(WORKDIR)/CNN_Bias.o: CNN_Bias.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Bias.vhdl

$(WORKDIR)/CNN_KernelCtrl.o: CNN_KernelCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_KernelCtrl.vhdl

$(WORKDIR)/CNN_WeightValue.o: CNN_WeightValue.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_WeightValue.vhdl

$(WORKDIR)/CNN_PlusTwo.o: CNN_PlusTwo.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_PlusTwo.vhdl

$(WORKDIR)/CNN_Multiply.o: CNN_Multiply.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Multiply.vhdl

$(WORKDIR)/CNN_ReluCore.o: CNN_ReluCore.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_ReluCore.vhdl

$(WORKDIR)/CNN_Max.o: CNN_Max.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Max.vhdl

$(WORKDIR)/CNN_ValueArrayCtrl.o: CNN_ValueArrayCtrl.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_ValueArrayCtrl.vhdl

$(WORKDIR)/CNN_NodeCtrl_type00.o: CNN_NodeCtrl_type00.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_NodeCtrl_type00.vhdl

$(WORKDIR)/CNN_Exp.o: CNN_Exp.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_Exp.vhdl

$(WORKDIR)/CNN_DivideValue.o: CNN_DivideValue.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNN_DivideValue.vhdl

$(WORKDIR)/csv_util.o: csv_util.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) csv_util.vhdl

$(WORKDIR)/CNNSmall.o: CNNSmall.vhdl $(WORKDIR)/system_types.o $(WORKDIR)/Types_CNNSmall.o $(WORKDIR)/SME_Components_TrueDualPortMemory_1_Single.o $(WORKDIR)/CNN_InputCtrl_ParFilter.o $(WORKDIR)/CNN_ValueArrayCtrl_single.o $(WORKDIR)/CNN_PlusCtrl.o $(WORKDIR)/CNN_Bias.o $(WORKDIR)/CNN_KernelCtrl.o $(WORKDIR)/CNN_WeightValue.o $(WORKDIR)/CNN_PlusTwo.o $(WORKDIR)/CNN_Multiply.o $(WORKDIR)/CNN_ReluCore.o $(WORKDIR)/CNN_Max.o $(WORKDIR)/CNN_ValueArrayCtrl.o $(WORKDIR)/CNN_NodeCtrl_type00.o $(WORKDIR)/CNN_Exp.o $(WORKDIR)/CNN_DivideValue.o $(WORKDIR)/csv_util.o 
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNNSmall.vhdl

$(WORKDIR)/TestBench_CNNSmall.o: TestBench_CNNSmall.vhdl $(WORKDIR)/CNNSmall.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) TestBench_CNNSmall.vhdl

cnnsmall_tb: $(WORKDIR)/TestBench_CNNSmall.o
	ghdl -e --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNNSmall_tb

CNNSmall_export: $(WORKDIR)/CNNSmall.o
	ghdl -a --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) Export_CNNSmall.vhdl

test: cnnsmall_tb
	ghdl -r --std=$(STD) --ieee=$(IEEE) --workdir=$(WORKDIR) $(FLAGS) CNNSmall_tb $(VCDFLAG)

clean:
	rm -rf $(WORKDIR) *.o cnnsmall_tb

.PHONY: all clean test export build 

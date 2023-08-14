create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_accum
set_property -dict [list \
  CONFIG.A_Precision_Type {Single} \
  CONFIG.Add_Sub_Value {Add} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {24} \
  CONFIG.C_Latency {22} \
  CONFIG.C_Mult_Usage {Medium_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {24} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_ARESETn {true} \
  CONFIG.Has_A_TLAST {true} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Operation_Type {Accumulator} \
  CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
  CONFIG.Result_Precision_Type {Single} \
] [get_ips fl_accum]

create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_add
set_property -dict [list \
  CONFIG.Add_Sub_Value {Add} \
  CONFIG.C_Has_OVERFLOW {true} \
  CONFIG.C_Latency {11} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_ARESETn {true} \
  CONFIG.Has_A_TLAST {true} \
  CONFIG.Has_B_TLAST {true} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
] [get_ips fl_add]

create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_mul
set_property -dict [list \
  CONFIG.A_Precision_Type {Single} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {24} \
  CONFIG.C_Latency {8} \
  CONFIG.C_Mult_Usage {Full_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {24} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_ARESETn {true} \
  CONFIG.Has_A_TLAST {true} \
  CONFIG.Has_B_TLAST {true} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Operation_Type {Multiply} \
  CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
  CONFIG.Result_Precision_Type {Single} \
] [get_ips fl_mul]

create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_div
set_property -dict [list \
  CONFIG.A_Precision_Type {Single} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {24} \
  CONFIG.C_Latency {28} \
  CONFIG.C_Mult_Usage {No_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {24} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_ARESETn {true} \
  CONFIG.Has_A_TLAST {true} \
  CONFIG.Has_B_TLAST {true} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Operation_Type {Divide} \
  CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
  CONFIG.Result_Precision_Type {Single} \
] [get_ips fl_div]

create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_exp
set_property -dict [list \
  CONFIG.A_Precision_Type {Single} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {24} \
  CONFIG.C_Latency {20} \
  CONFIG.C_Mult_Usage {Medium_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {8} \
  CONFIG.C_Result_Fraction_Width {24} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_ARESETn {true} \
  CONFIG.Has_A_TLAST {true} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Operation_Type {Exponential} \
  CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
  CONFIG.Result_Precision_Type {Single} \
] [get_ips fl_exp]

create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name fl_gt
set_property -dict [list \
  CONFIG.A_Precision_Type {Single} \
  CONFIG.C_A_Exponent_Width {8} \
  CONFIG.C_A_Fraction_Width {24} \
  CONFIG.C_Compare_Operation {Greater_Than} \
  CONFIG.C_Latency {0} \
  CONFIG.C_Mult_Usage {No_Usage} \
  CONFIG.C_Rate {1} \
  CONFIG.C_Result_Exponent_Width {1} \
  CONFIG.C_Result_Fraction_Width {0} \
  CONFIG.Flow_Control {NonBlocking} \
  CONFIG.Has_A_TLAST {true} \
  CONFIG.Has_B_TLAST {true} \
  CONFIG.Has_RESULT_TREADY {false} \
  CONFIG.Maximum_Latency {false} \
  CONFIG.Operation_Type {Compare} \
  CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
  CONFIG.Result_Precision_Type {Custom} \
] [get_ips fl_gt]
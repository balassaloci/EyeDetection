// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   lb3314@EEWS104A-019
//  Generated date: Tue Mar 24 17:59:35 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    compare_core
// ------------------------------------------------------------------


module compare_core (
  clk, en, arst_n, input_in_rsc_mgc_in_wire_d, input_treshold_rsc_mgc_in_wire_d,
      output_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [29:0] input_in_rsc_mgc_in_wire_d;
  input [9:0] input_treshold_rsc_mgc_in_wire_d;
  output [29:0] output_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  reg reg_output_rsc_mgc_out_stdreg_d_reg;
  wire and_advn_sva;
  wire and_advp_sva;
  wire [9:0] if_acc_1_psp_sva;
  wire [10:0] nl_if_acc_1_psp_sva;
  wire [11:0] acc_imod_sva;
  wire [12:0] nl_acc_imod_sva;


  // Interconnect Declarations for Component Instantiations 
  assign output_rsc_mgc_out_stdreg_d = {{29{reg_output_rsc_mgc_out_stdreg_d_reg}},
      reg_output_rsc_mgc_out_stdreg_d_reg};
  assign and_advn_sva = (input_in_rsc_mgc_in_wire_d[29]) & (~ (if_acc_1_psp_sva[9]))
      & ((if_acc_1_psp_sva[8]) | (if_acc_1_psp_sva[7]) | (if_acc_1_psp_sva[6]) |
      (if_acc_1_psp_sva[5]) | (if_acc_1_psp_sva[4]) | (if_acc_1_psp_sva[3]) | (if_acc_1_psp_sva[2])
      | (if_acc_1_psp_sva[1]) | (if_acc_1_psp_sva[0]));
  assign and_advp_sva = (if_acc_1_psp_sva[9]) & (~ (input_in_rsc_mgc_in_wire_d[29]));
  assign nl_if_acc_1_psp_sva = (readslicef_11_10_1((({(~ (acc_imod_sva[9])) , 10'b1})
      + conv_s2s_3_11(acc_imod_sva[11:9])))) + ({1'b1 , (acc_imod_sva[8:0])});
  assign if_acc_1_psp_sva = nl_if_acc_1_psp_sva[9:0];
  assign nl_acc_imod_sva = conv_s2s_11_12((readslicef_12_11_1((conv_u2u_11_12({(~
      (input_in_rsc_mgc_in_wire_d[19])) , 10'b1}) + conv_u2u_10_12(input_in_rsc_mgc_in_wire_d[18:9]))))
      + ({2'b10 , (input_in_rsc_mgc_in_wire_d[8:0])})) + (readslicef_13_12_1((conv_s2s_11_13({(input_in_rsc_mgc_in_wire_d[29:20])
      , 1'b1}) + conv_u2s_11_13({(~ (input_in_rsc_mgc_in_wire_d[9])) , 9'b0 , (input_in_rsc_mgc_in_wire_d[19])}))));
  assign acc_imod_sva = nl_acc_imod_sva[11:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_output_rsc_mgc_out_stdreg_d_reg <= 1'b0;
    end
    else begin
      if ( en ) begin
        reg_output_rsc_mgc_out_stdreg_d_reg <= ~ (readslicef_13_1_12((conv_s2s_12_13({((readslicef_12_11_1((({(~
            and_advn_sva) , 9'b111111111 , (~ and_advp_sva) , 1'b1}) + conv_s2u_11_12({if_acc_1_psp_sva
            , 1'b1})))) + ({and_advp_sva , 9'b0 , and_advn_sva})) , 1'b1}) + conv_s2s_11_13({(~
            input_treshold_rsc_mgc_in_wire_d) , 1'b1}))));
      end
    end
  end

  function [9:0] readslicef_11_10_1;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_11_10_1 = tmp[9:0];
  end
  endfunction


  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
  end
  endfunction


  function [11:0] readslicef_13_12_1;
    input [12:0] vector;
    reg [12:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_13_12_1 = tmp[11:0];
  end
  endfunction


  function [0:0] readslicef_13_1_12;
    input [12:0] vector;
    reg [12:0] tmp;
  begin
    tmp = vector >> 12;
    readslicef_13_1_12 = tmp[0:0];
  end
  endfunction


  function signed [10:0] conv_s2s_3_11 ;
    input signed [2:0]  vector ;
  begin
    conv_s2s_3_11 = {{8{vector[2]}}, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_12 = {vector[10], vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_12 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [12:0] conv_s2s_11_13 ;
    input signed [10:0]  vector ;
  begin
    conv_s2s_11_13 = {{2{vector[10]}}, vector};
  end
  endfunction


  function signed [12:0] conv_u2s_11_13 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_13 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [12:0] conv_s2s_12_13 ;
    input signed [11:0]  vector ;
  begin
    conv_s2s_12_13 = {vector[11], vector};
  end
  endfunction


  function  [11:0] conv_s2u_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_12 = {vector[10], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    compare
//  Generated from file(s):
//    2) $PROJECT_HOME/compare.cpp
// ------------------------------------------------------------------


module compare (
  input_in_rsc_z, input_treshold_rsc_z, output_rsc_z, clk, en, arst_n
);
  input [29:0] input_in_rsc_z;
  input [9:0] input_treshold_rsc_z;
  output [29:0] output_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [29:0] input_in_rsc_mgc_in_wire_d;
  wire [9:0] input_treshold_rsc_mgc_in_wire_d;
  wire [29:0] output_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(30)) input_in_rsc_mgc_in_wire (
      .d(input_in_rsc_mgc_in_wire_d),
      .z(input_in_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(10)) input_treshold_rsc_mgc_in_wire (
      .d(input_treshold_rsc_mgc_in_wire_d),
      .z(input_treshold_rsc_z)
    );
  mgc_out_stdreg #(.rscid(3),
  .width(30)) output_rsc_mgc_out_stdreg (
      .d(output_rsc_mgc_out_stdreg_d),
      .z(output_rsc_z)
    );
  compare_core compare_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .input_in_rsc_mgc_in_wire_d(input_in_rsc_mgc_in_wire_d),
      .input_treshold_rsc_mgc_in_wire_d(input_treshold_rsc_mgc_in_wire_d),
      .output_rsc_mgc_out_stdreg_d(output_rsc_mgc_out_stdreg_d)
    );
endmodule




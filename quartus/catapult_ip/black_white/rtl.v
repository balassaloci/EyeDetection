// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   lb3314@EEWS104A-019
//  Generated date: Tue Mar 24 15:14:54 2015
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    black_white_core
// ------------------------------------------------------------------


module black_white_core (
  clk, en, arst_n, input_r_rsc_mgc_in_wire_d, input_g_rsc_mgc_in_wire_d, input_b_rsc_mgc_in_wire_d,
      output_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [9:0] input_r_rsc_mgc_in_wire_d;
  input [9:0] input_g_rsc_mgc_in_wire_d;
  input [9:0] input_b_rsc_mgc_in_wire_d;
  output [29:0] output_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  reg [9:0] reg_output_rsc_mgc_out_stdreg_d_tmp;
  wire [11:0] result_2_sva;
  wire [12:0] nl_result_2_sva;
  wire [3:0] acc_imod_sva;
  wire [4:0] nl_acc_imod_sva;
  wire [2:0] acc_imod_1_sva;
  wire [3:0] nl_acc_imod_1_sva;


  // Interconnect Declarations for Component Instantiations 
  assign output_rsc_mgc_out_stdreg_d = {reg_output_rsc_mgc_out_stdreg_d_tmp , reg_output_rsc_mgc_out_stdreg_d_tmp
      , reg_output_rsc_mgc_out_stdreg_d_tmp};
  assign nl_result_2_sva = conv_u2u_11_12(conv_u2u_10_11(input_g_rsc_mgc_in_wire_d)
      + conv_u2u_10_11(input_b_rsc_mgc_in_wire_d)) + conv_u2u_10_12(input_r_rsc_mgc_in_wire_d);
  assign result_2_sva = nl_result_2_sva[11:0];
  assign nl_acc_imod_sva = (readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
      (result_2_sva[3])) , 1'b1}) + conv_u2u_2_3({(result_2_sva[4]) , (result_2_sva[8])}))))
      , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~ (result_2_sva[5]))
      , 1'b1}) + conv_u2u_2_3({(result_2_sva[6]) , (~ (result_2_sva[7]))})))) , (result_2_sva[10])}))))
      , 1'b1}) + conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(~ (result_2_sva[1]))
      , 1'b1}) + conv_u2u_2_3({(result_2_sva[2]) , (~ (result_2_sva[9]))})))) , (~
      (result_2_sva[11]))})))) + ({3'b101 , (result_2_sva[0])});
  assign acc_imod_sva = nl_acc_imod_sva[3:0];
  assign nl_acc_imod_1_sva = conv_s2s_2_3(conv_s2s_1_2(~ (acc_imod_sva[3])) + conv_u2s_1_2(acc_imod_sva[0]))
      + conv_u2s_2_3(conv_u2u_1_2(~ (acc_imod_sva[1])) + conv_u2u_1_2(acc_imod_sva[2]));
  assign acc_imod_1_sva = nl_acc_imod_1_sva[2:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_output_rsc_mgc_out_stdreg_d_tmp <= 10'b0;
    end
    else begin
      if ( en ) begin
        reg_output_rsc_mgc_out_stdreg_d_tmp <= readslicef_11_10_1((({(result_2_sva[11])
            , (readslicef_10_9_1((conv_u2u_9_10({(result_2_sva[11]) , 1'b0 , (result_2_sva[11])
            , 1'b0 , (result_2_sva[11]) , 1'b0 , (signext_2_1(result_2_sva[11]))
            , 1'b1}) + conv_u2u_9_10({(readslicef_9_8_1((({(result_2_sva[9]) , 1'b0
            , (result_2_sva[9]) , 1'b0 , (result_2_sva[9]) , 1'b0 , (signext_2_1(result_2_sva[9]))
            , 1'b1}) + conv_u2u_8_9({(readslicef_8_7_1((conv_u2u_7_8({(result_2_sva[7])
            , 1'b0 , (result_2_sva[7]) , 1'b0 , (signext_2_1(result_2_sva[7])) ,
            1'b1}) + conv_u2u_6_8({(result_2_sva[6]) , 1'b0 , (result_2_sva[6]) ,
            1'b0 , (result_2_sva[6]) , (result_2_sva[4])})))) , (acc_imod_sva[2])}))))
            , (acc_imod_1_sva[1])})))) , 1'b1}) + ({(readslicef_11_10_1((conv_u2s_10_11({(result_2_sva[10])
            , 1'b0 , (result_2_sva[10]) , 1'b0 , (result_2_sva[10]) , 1'b0 , (result_2_sva[10])
            , 1'b0 , (result_2_sva[10]) , 1'b1}) + conv_s2s_9_11({(readslicef_9_8_1((conv_u2s_8_9({(result_2_sva[8])
            , 1'b0 , (result_2_sva[8]) , 1'b0 , (result_2_sva[8]) , 1'b0 , (result_2_sva[8])
            , 1'b1}) + conv_s2s_7_9({(readslicef_7_6_1((conv_s2s_5_7({(readslicef_5_4_1((({1'b1
            , (result_2_sva[4:3]) , (result_2_sva[1]) , 1'b1}) + conv_u2s_4_5({(~
            (acc_imod_sva[3])) , 1'b1 , (~ (acc_imod_1_sva[2])) , (result_2_sva[2])}))))
            , 1'b1}) + conv_u2s_5_7({(result_2_sva[5]) , 1'b0 , (signext_2_1(result_2_sva[5]))
            , (result_2_sva[3])})))) , (acc_imod_sva[1])})))) , (acc_imod_sva[3])}))))
            , (~ (readslicef_3_1_2((({1'b1 , (acc_imod_1_sva[0]) , 1'b1}) + conv_u2s_2_3({(~
            (acc_imod_1_sva[1])) , (~ (acc_imod_1_sva[2]))})))))})));
      end
    end
  end

  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [2:0] readslicef_4_3_1;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_4_3_1 = tmp[2:0];
  end
  endfunction


  function [1:0] readslicef_3_2_1;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_3_2_1 = tmp[1:0];
  end
  endfunction


  function [9:0] readslicef_11_10_1;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_11_10_1 = tmp[9:0];
  end
  endfunction


  function [8:0] readslicef_10_9_1;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_10_9_1 = tmp[8:0];
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [7:0] readslicef_9_8_1;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_9_8_1 = tmp[7:0];
  end
  endfunction


  function [6:0] readslicef_8_7_1;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_8_7_1 = tmp[6:0];
  end
  endfunction


  function [5:0] readslicef_7_6_1;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_7_6_1 = tmp[5:0];
  end
  endfunction


  function [0:0] readslicef_3_1_2;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 2;
    readslicef_3_1_2 = tmp[0:0];
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_12 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [2:0] conv_s2s_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_3 = {vector[1], vector};
  end
  endfunction


  function signed [1:0] conv_s2s_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_2 = {vector[0], vector};
  end
  endfunction


  function signed [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function  [9:0] conv_u2u_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_10 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_6_8 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_8 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 = {1'b0, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_9_11 ;
    input signed [8:0]  vector ;
  begin
    conv_s2s_9_11 = {{2{vector[8]}}, vector};
  end
  endfunction


  function signed [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 = {1'b0, vector};
  end
  endfunction


  function signed [8:0] conv_s2s_7_9 ;
    input signed [6:0]  vector ;
  begin
    conv_s2s_7_9 = {{2{vector[6]}}, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_5_7 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_7 = {{2{vector[4]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_u2s_5_7 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_7 = {{2{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    black_white
//  Generated from file(s):
//   15) $PROJECT_HOME/black_white.cpp
// ------------------------------------------------------------------


module black_white (
  input_r_rsc_z, input_g_rsc_z, input_b_rsc_z, output_rsc_z, clk, en, arst_n
);
  input [9:0] input_r_rsc_z;
  input [9:0] input_g_rsc_z;
  input [9:0] input_b_rsc_z;
  output [29:0] output_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [9:0] input_r_rsc_mgc_in_wire_d;
  wire [9:0] input_g_rsc_mgc_in_wire_d;
  wire [9:0] input_b_rsc_mgc_in_wire_d;
  wire [29:0] output_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(10)) input_r_rsc_mgc_in_wire (
      .d(input_r_rsc_mgc_in_wire_d),
      .z(input_r_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(10)) input_g_rsc_mgc_in_wire (
      .d(input_g_rsc_mgc_in_wire_d),
      .z(input_g_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(10)) input_b_rsc_mgc_in_wire (
      .d(input_b_rsc_mgc_in_wire_d),
      .z(input_b_rsc_z)
    );
  mgc_out_stdreg #(.rscid(4),
  .width(30)) output_rsc_mgc_out_stdreg (
      .d(output_rsc_mgc_out_stdreg_d),
      .z(output_rsc_z)
    );
  black_white_core black_white_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .input_r_rsc_mgc_in_wire_d(input_r_rsc_mgc_in_wire_d),
      .input_g_rsc_mgc_in_wire_d(input_g_rsc_mgc_in_wire_d),
      .input_b_rsc_mgc_in_wire_d(input_b_rsc_mgc_in_wire_d),
      .output_rsc_mgc_out_stdreg_d(output_rsc_mgc_out_stdreg_d)
    );
endmodule



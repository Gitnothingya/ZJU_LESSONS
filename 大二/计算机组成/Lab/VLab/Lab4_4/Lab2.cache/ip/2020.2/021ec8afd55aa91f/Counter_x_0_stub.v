// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:43:34 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Counter_x_0_stub.v
// Design      : Counter_x_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Counter_x,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, clk0, clk1, clk2, counter0_OUT, counter1_OUT, 
  counter2_OUT, counter_we, rst, counter_ch, counter_out, counter_val)
/* synthesis syn_black_box black_box_pad_pin="clk,clk0,clk1,clk2,counter0_OUT,counter1_OUT,counter2_OUT,counter_we,rst,counter_ch[1:0],counter_out[31:0],counter_val[31:0]" */;
  input clk;
  input clk0;
  input clk1;
  input clk2;
  output counter0_OUT;
  output counter1_OUT;
  output counter2_OUT;
  input counter_we;
  input rst;
  input [1:0]counter_ch;
  output [31:0]counter_out;
  input [31:0]counter_val;
endmodule

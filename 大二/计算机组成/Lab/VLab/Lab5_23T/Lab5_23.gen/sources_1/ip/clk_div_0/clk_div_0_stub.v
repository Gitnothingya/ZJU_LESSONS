// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  1 15:45:00 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/clk_div_0/clk_div_0_stub.v
// Design      : clk_div_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_div,Vivado 2020.2" *)
module clk_div_0(clk, rst, SW2, SW8, STEP, clkdiv, Clk_CPU)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,SW2,SW8,STEP,clkdiv[31:0],Clk_CPU" */;
  input clk;
  input rst;
  input SW2;
  input SW8;
  input STEP;
  output [31:0]clkdiv;
  output Clk_CPU;
endmodule

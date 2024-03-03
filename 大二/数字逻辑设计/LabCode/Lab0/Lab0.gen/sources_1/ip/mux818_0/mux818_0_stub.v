// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 15 11:16:29 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub d:/Vfile/Lab0/Lab0.gen/sources_1/ip/mux818_0/mux818_0_stub.v
// Design      : mux818_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux818,Vivado 2020.2" *)
module mux818_0(I0, I1, I2, I3, I4, I5, I6, I7, s, o)
/* synthesis syn_black_box black_box_pad_pin="I0[7:0],I1[7:0],I2[7:0],I3[7:0],I4[7:0],I5[7:0],I6[7:0],I7[7:0],s[2:0],o[7:0]" */;
  input [7:0]I0;
  input [7:0]I1;
  input [7:0]I2;
  input [7:0]I3;
  input [7:0]I4;
  input [7:0]I5;
  input [7:0]I6;
  input [7:0]I7;
  input [2:0]s;
  output [7:0]o;
endmodule

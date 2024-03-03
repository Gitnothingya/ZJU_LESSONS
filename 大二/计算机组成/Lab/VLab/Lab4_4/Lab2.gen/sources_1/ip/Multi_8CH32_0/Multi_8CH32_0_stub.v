// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:44:12 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/Multi_8CH32_0/Multi_8CH32_0_stub.v
// Design      : Multi_8CH32_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Multi_8CH32,Vivado 2020.2" *)
module Multi_8CH32_0(EN, clk, rst, Data0, Disp_num, LES, LE_out, Test, data1, 
  data2, data3, data4, data5, data6, data7, point_in, point_out)
/* synthesis syn_black_box black_box_pad_pin="EN,clk,rst,Data0[31:0],Disp_num[31:0],LES[63:0],LE_out[7:0],Test[2:0],data1[31:0],data2[31:0],data3[31:0],data4[31:0],data5[31:0],data6[31:0],data7[31:0],point_in[63:0],point_out[7:0]" */;
  input EN;
  input clk;
  input rst;
  input [31:0]Data0;
  output [31:0]Disp_num;
  input [63:0]LES;
  output [7:0]LE_out;
  input [2:0]Test;
  input [31:0]data1;
  input [31:0]data2;
  input [31:0]data3;
  input [31:0]data4;
  input [31:0]data5;
  input [31:0]data6;
  input [31:0]data7;
  input [63:0]point_in;
  output [7:0]point_out;
endmodule

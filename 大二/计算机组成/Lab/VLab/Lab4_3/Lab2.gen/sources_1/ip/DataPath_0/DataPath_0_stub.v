// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 22:27:00 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vteacher/Lab4_12T/Lab2.gen/sources_1/ip/DataPath_0/DataPath_0_stub.v
// Design      : DataPath_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DataPath,Vivado 2020.2" *)
module DataPath_0(Branch, Jump, Data_in, MemtoReg, ALUSrc_B, ImmSel, 
  inst_field, ALU_operation, clk, rst, RegWrite, ALU_out, Data_out, PC_out, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, 
  x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, Imm_out, 
  pc_branch, a_val, b_val)
/* synthesis syn_black_box black_box_pad_pin="Branch,Jump,Data_in[31:0],MemtoReg[1:0],ALUSrc_B,ImmSel[1:0],inst_field[31:0],ALU_operation[2:0],clk,rst,RegWrite,ALU_out[31:0],Data_out[31:0],PC_out[31:0],x0[31:0],x1[31:0],x2[31:0],x3[31:0],x4[31:0],x5[31:0],x6[31:0],x7[31:0],x8[31:0],x9[31:0],x10[31:0],x11[31:0],x12[31:0],x13[31:0],x14[31:0],x15[31:0],x16[31:0],x17[31:0],x18[31:0],x19[31:0],x20[31:0],x21[31:0],x22[31:0],x23[31:0],x24[31:0],x25[31:0],x26[31:0],x27[31:0],x28[31:0],x29[31:0],x30[31:0],x31[31:0],Imm_out[31:0],pc_branch[31:0],a_val[31:0],b_val[31:0]" */;
  input Branch;
  input Jump;
  input [31:0]Data_in;
  input [1:0]MemtoReg;
  input ALUSrc_B;
  input [1:0]ImmSel;
  input [31:0]inst_field;
  input [2:0]ALU_operation;
  input clk;
  input rst;
  input RegWrite;
  output [31:0]ALU_out;
  output [31:0]Data_out;
  output [31:0]PC_out;
  output [31:0]x0;
  output [31:0]x1;
  output [31:0]x2;
  output [31:0]x3;
  output [31:0]x4;
  output [31:0]x5;
  output [31:0]x6;
  output [31:0]x7;
  output [31:0]x8;
  output [31:0]x9;
  output [31:0]x10;
  output [31:0]x11;
  output [31:0]x12;
  output [31:0]x13;
  output [31:0]x14;
  output [31:0]x15;
  output [31:0]x16;
  output [31:0]x17;
  output [31:0]x18;
  output [31:0]x19;
  output [31:0]x20;
  output [31:0]x21;
  output [31:0]x22;
  output [31:0]x23;
  output [31:0]x24;
  output [31:0]x25;
  output [31:0]x26;
  output [31:0]x27;
  output [31:0]x28;
  output [31:0]x29;
  output [31:0]x30;
  output [31:0]x31;
  output [31:0]Imm_out;
  output [31:0]pc_branch;
  output [31:0]a_val;
  output [31:0]b_val;
endmodule

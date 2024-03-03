// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 10 18:07:55 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vteacher/OExp00/OExp00-Element/OExp00-Element.srcs/sources_1/bd/OExp00_Element/ip/OExp00_Element_MUX2T1_32_0_0/OExp00_Element_MUX2T1_32_0_0_stub.v
// Design      : OExp00_Element_MUX2T1_32_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MUX2T1_32,Vivado 2017.4" *)
module OExp00_Element_MUX2T1_32_0_0(s, I0, I1, o)
/* synthesis syn_black_box black_box_pad_pin="s,I0[31:0],I1[31:0],o[31:0]" */;
  input s;
  input [31:0]I0;
  input [31:0]I1;
  output [31:0]o;
endmodule

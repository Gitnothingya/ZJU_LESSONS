// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 09:46:30 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SCPU2_0_stub.v
// Design      : SCPU2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SCPU2,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, inst_in, rst, Data_in, MIO_ready, MemRW, PC_out, 
  Addr_out, CPU_MIO, Data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,inst_in[31:0],rst,Data_in[31:0],MIO_ready,MemRW,PC_out[31:0],Addr_out[31:0],CPU_MIO,Data_out[31:0]" */;
  input clk;
  input [31:0]inst_in;
  input rst;
  input [31:0]Data_in;
  input MIO_ready;
  output MemRW;
  output [31:0]PC_out;
  output [31:0]Addr_out;
  output CPU_MIO;
  output [31:0]Data_out;
endmodule

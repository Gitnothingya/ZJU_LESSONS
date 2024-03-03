// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:44:44 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPIO_0_stub.v
// Design      : SPIO_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPIO,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(EN, LED_PEN, Start, clk, led_clk, led_clrn, led_sout, 
  rst, GPIOf0, LED_out, P_Data, counter_set)
/* synthesis syn_black_box black_box_pad_pin="EN,LED_PEN,Start,clk,led_clk,led_clrn,led_sout,rst,GPIOf0[13:0],LED_out[15:0],P_Data[31:0],counter_set[1:0]" */;
  input EN;
  output LED_PEN;
  input Start;
  input clk;
  output led_clk;
  output led_clrn;
  output led_sout;
  input rst;
  output [13:0]GPIOf0;
  output [15:0]LED_out;
  input [31:0]P_Data;
  output [1:0]counter_set;
endmodule

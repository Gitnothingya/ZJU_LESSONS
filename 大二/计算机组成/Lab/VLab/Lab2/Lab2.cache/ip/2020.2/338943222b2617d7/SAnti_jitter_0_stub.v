// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:39:07 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SAnti_jitter_0_stub.v
// Design      : SAnti_jitter_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SAnti_jitter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CR, Key_ready, RSTN, clk, readn, rst, BTN_OK, Key_out, 
  Key_x, Key_y, SW, SW_OK, pulse_out)
/* synthesis syn_black_box black_box_pad_pin="CR,Key_ready,RSTN,clk,readn,rst,BTN_OK[3:0],Key_out[4:0],Key_x[4:0],Key_y[3:0],SW[15:0],SW_OK[15:0],pulse_out[3:0]" */;
  output CR;
  output Key_ready;
  input RSTN;
  input clk;
  input readn;
  output rst;
  output [3:0]BTN_OK;
  output [4:0]Key_out;
  output [4:0]Key_x;
  input [3:0]Key_y;
  input [15:0]SW;
  output [15:0]SW_OK;
  output [3:0]pulse_out;
endmodule

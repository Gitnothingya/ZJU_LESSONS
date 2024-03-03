// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 22:26:03 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_ctrl_0_stub.v
// Design      : cpu_ctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cpu_ctrl,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(OPcode, Fun3, Fun7, MIO_ready, ImmSel, ALUSrc_B, 
  MemtoReg, Jump, Branch, RegWrite, MemRW, ALU_Control, CPU_MIO)
/* synthesis syn_black_box black_box_pad_pin="OPcode[4:0],Fun3[2:0],Fun7,MIO_ready,ImmSel[1:0],ALUSrc_B,MemtoReg[1:0],Jump,Branch,RegWrite,MemRW,ALU_Control[2:0],CPU_MIO" */;
  input [4:0]OPcode;
  input [2:0]Fun3;
  input Fun7;
  input MIO_ready;
  output [1:0]ImmSel;
  output ALUSrc_B;
  output [1:0]MemtoReg;
  output Jump;
  output Branch;
  output RegWrite;
  output MemRW;
  output [2:0]ALU_Control;
  output CPU_MIO;
endmodule

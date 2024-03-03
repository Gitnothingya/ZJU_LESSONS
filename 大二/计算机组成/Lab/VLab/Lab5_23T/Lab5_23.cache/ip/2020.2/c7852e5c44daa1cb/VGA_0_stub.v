// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jun  1 15:47:30 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_0_stub.v
// Design      : VGA_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "VGA,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_25m, clk_100m, rst, PC_IF, inst_IF, PC_ID, 
  inst_ID, PC_Ex, MemRW_Ex, MemRW_Mem, Data_out, Addr_out, Data_out_WB, IfId_valid, IdEx_inst, 
  IdEx_valid, IdEx_rd, IdEx_rs1, IdEx_rs2, IdEx_rs1_val, IdEx_rs2_val, IdEx_reg_wen, IdEx_is_imm, 
  IdEx_imm, IdEx_mem_ren, IdEx_is_branch, IdEx_is_jal, IdEx_is_jalr, IdEx_is_auipc, 
  IdEx_is_lui, IdEx_alu_ctrl, IdEx_cmp_ctrl, ExMa_pc, ExMa_inst, ExMa_valid, ExMa_rd, 
  ExMa_reg_wen, ExMa_mem_ren, ExMa_is_jal, ExMa_is_jalr, MaWb_pc, MaWb_inst, MaWb_valid, MaWb_rd, 
  MaWb_reg_wen, x0, ra, sp, gp, tp, t0, t1, t2, s0, s1, a0, a1, a2, a3, a4, a5, a6, a7, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, t3, t4, t5, t6, hs, 
  vs, vga_r, vga_g, vga_b)
/* synthesis syn_black_box black_box_pad_pin="clk_25m,clk_100m,rst,PC_IF[31:0],inst_IF[31:0],PC_ID[31:0],inst_ID[31:0],PC_Ex[31:0],MemRW_Ex,MemRW_Mem,Data_out[31:0],Addr_out[31:0],Data_out_WB[31:0],IfId_valid,IdEx_inst[31:0],IdEx_valid,IdEx_rd[4:0],IdEx_rs1[4:0],IdEx_rs2[4:0],IdEx_rs1_val[31:0],IdEx_rs2_val[31:0],IdEx_reg_wen,IdEx_is_imm,IdEx_imm[31:0],IdEx_mem_ren,IdEx_is_branch,IdEx_is_jal,IdEx_is_jalr,IdEx_is_auipc,IdEx_is_lui,IdEx_alu_ctrl[3:0],IdEx_cmp_ctrl[2:0],ExMa_pc[31:0],ExMa_inst[31:0],ExMa_valid,ExMa_rd[4:0],ExMa_reg_wen,ExMa_mem_ren,ExMa_is_jal,ExMa_is_jalr,MaWb_pc[31:0],MaWb_inst[31:0],MaWb_valid,MaWb_rd[4:0],MaWb_reg_wen,x0[31:0],ra[31:0],sp[31:0],gp[31:0],tp[31:0],t0[31:0],t1[31:0],t2[31:0],s0[31:0],s1[31:0],a0[31:0],a1[31:0],a2[31:0],a3[31:0],a4[31:0],a5[31:0],a6[31:0],a7[31:0],s2[31:0],s3[31:0],s4[31:0],s5[31:0],s6[31:0],s7[31:0],s8[31:0],s9[31:0],s10[31:0],s11[31:0],t3[31:0],t4[31:0],t5[31:0],t6[31:0],hs,vs,vga_r[3:0],vga_g[3:0],vga_b[3:0]" */;
  input clk_25m;
  input clk_100m;
  input rst;
  input [31:0]PC_IF;
  input [31:0]inst_IF;
  input [31:0]PC_ID;
  input [31:0]inst_ID;
  input [31:0]PC_Ex;
  input MemRW_Ex;
  input MemRW_Mem;
  input [31:0]Data_out;
  input [31:0]Addr_out;
  input [31:0]Data_out_WB;
  input IfId_valid;
  input [31:0]IdEx_inst;
  input IdEx_valid;
  input [4:0]IdEx_rd;
  input [4:0]IdEx_rs1;
  input [4:0]IdEx_rs2;
  input [31:0]IdEx_rs1_val;
  input [31:0]IdEx_rs2_val;
  input IdEx_reg_wen;
  input IdEx_is_imm;
  input [31:0]IdEx_imm;
  input IdEx_mem_ren;
  input IdEx_is_branch;
  input IdEx_is_jal;
  input IdEx_is_jalr;
  input IdEx_is_auipc;
  input IdEx_is_lui;
  input [3:0]IdEx_alu_ctrl;
  input [2:0]IdEx_cmp_ctrl;
  input [31:0]ExMa_pc;
  input [31:0]ExMa_inst;
  input ExMa_valid;
  input [4:0]ExMa_rd;
  input ExMa_reg_wen;
  input ExMa_mem_ren;
  input ExMa_is_jal;
  input ExMa_is_jalr;
  input [31:0]MaWb_pc;
  input [31:0]MaWb_inst;
  input MaWb_valid;
  input [4:0]MaWb_rd;
  input MaWb_reg_wen;
  input [31:0]x0;
  input [31:0]ra;
  input [31:0]sp;
  input [31:0]gp;
  input [31:0]tp;
  input [31:0]t0;
  input [31:0]t1;
  input [31:0]t2;
  input [31:0]s0;
  input [31:0]s1;
  input [31:0]a0;
  input [31:0]a1;
  input [31:0]a2;
  input [31:0]a3;
  input [31:0]a4;
  input [31:0]a5;
  input [31:0]a6;
  input [31:0]a7;
  input [31:0]s2;
  input [31:0]s3;
  input [31:0]s4;
  input [31:0]s5;
  input [31:0]s6;
  input [31:0]s7;
  input [31:0]s8;
  input [31:0]s9;
  input [31:0]s10;
  input [31:0]s11;
  input [31:0]t3;
  input [31:0]t4;
  input [31:0]t5;
  input [31:0]t6;
  output hs;
  output vs;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
endmodule

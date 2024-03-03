// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 18:09:02 2022
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_25m, clk_100m, rst, pc, inst, alu_res, mem_wen, 
  dmem_o_data, dmem_i_data, dmem_addr, rs1, rs1_val, rs2, rs2_val, rd, reg_i_data, reg_wen, is_imm, 
  is_auipc, is_lui, imm, a_val, b_val, alu_ctrl, cmp_ctrl, cmp_res, is_branch, is_jal, is_jalr, 
  do_branch, pc_branch, mem_ren, csr_wen, csr_ind, csr_ctrl, csr_r_data, x0, ra, sp, gp, tp, t0, t1, t2, s0, s1, a0, 
  a1, a2, a3, a4, a5, a6, a7, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, t3, t4, t5, t6, mstatus_o, mcause_o, mepc_o, mtval_o, 
  mtvec_o, mie_o, mip_o, hs, vs, vga_r, vga_g, vga_b)
/* synthesis syn_black_box black_box_pad_pin="clk_25m,clk_100m,rst,pc[31:0],inst[31:0],alu_res[31:0],mem_wen,dmem_o_data[31:0],dmem_i_data[31:0],dmem_addr[31:0],rs1[4:0],rs1_val[31:0],rs2[4:0],rs2_val[31:0],rd[4:0],reg_i_data[31:0],reg_wen,is_imm,is_auipc,is_lui,imm[31:0],a_val[31:0],b_val[31:0],alu_ctrl[3:0],cmp_ctrl[2:0],cmp_res,is_branch,is_jal,is_jalr,do_branch,pc_branch[31:0],mem_ren,csr_wen,csr_ind[11:0],csr_ctrl[1:0],csr_r_data[31:0],x0[31:0],ra[31:0],sp[31:0],gp[31:0],tp[31:0],t0[31:0],t1[31:0],t2[31:0],s0[31:0],s1[31:0],a0[31:0],a1[31:0],a2[31:0],a3[31:0],a4[31:0],a5[31:0],a6[31:0],a7[31:0],s2[31:0],s3[31:0],s4[31:0],s5[31:0],s6[31:0],s7[31:0],s8[31:0],s9[31:0],s10[31:0],s11[31:0],t3[31:0],t4[31:0],t5[31:0],t6[31:0],mstatus_o[31:0],mcause_o[31:0],mepc_o[31:0],mtval_o[31:0],mtvec_o[31:0],mie_o[31:0],mip_o[31:0],hs,vs,vga_r[3:0],vga_g[3:0],vga_b[3:0]" */;
  input clk_25m;
  input clk_100m;
  input rst;
  input [31:0]pc;
  input [31:0]inst;
  input [31:0]alu_res;
  input mem_wen;
  input [31:0]dmem_o_data;
  input [31:0]dmem_i_data;
  input [31:0]dmem_addr;
  input [4:0]rs1;
  input [31:0]rs1_val;
  input [4:0]rs2;
  input [31:0]rs2_val;
  input [4:0]rd;
  input [31:0]reg_i_data;
  input reg_wen;
  input is_imm;
  input is_auipc;
  input is_lui;
  input [31:0]imm;
  input [31:0]a_val;
  input [31:0]b_val;
  input [3:0]alu_ctrl;
  input [2:0]cmp_ctrl;
  input cmp_res;
  input is_branch;
  input is_jal;
  input is_jalr;
  input do_branch;
  input [31:0]pc_branch;
  input mem_ren;
  input csr_wen;
  input [11:0]csr_ind;
  input [1:0]csr_ctrl;
  input [31:0]csr_r_data;
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
  input [31:0]mstatus_o;
  input [31:0]mcause_o;
  input [31:0]mepc_o;
  input [31:0]mtval_o;
  input [31:0]mtvec_o;
  input [31:0]mie_o;
  input [31:0]mip_o;
  output hs;
  output vs;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
endmodule

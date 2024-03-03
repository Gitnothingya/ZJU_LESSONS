// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:user:VGA:1.0
// IP Revision: 3

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
VGA_0 your_instance_name (
  .clk_25m(clk_25m),                // input wire clk_25m
  .clk_100m(clk_100m),              // input wire clk_100m
  .rst(rst),                        // input wire rst
  .PC_IF(PC_IF),                    // input wire [31 : 0] PC_IF
  .inst_IF(inst_IF),                // input wire [31 : 0] inst_IF
  .PC_ID(PC_ID),                    // input wire [31 : 0] PC_ID
  .inst_ID(inst_ID),                // input wire [31 : 0] inst_ID
  .PC_Ex(PC_Ex),                    // input wire [31 : 0] PC_Ex
  .MemRW_Ex(MemRW_Ex),              // input wire MemRW_Ex
  .MemRW_Mem(MemRW_Mem),            // input wire MemRW_Mem
  .Data_out(Data_out),              // input wire [31 : 0] Data_out
  .Addr_out(Addr_out),              // input wire [31 : 0] Addr_out
  .Data_out_WB(Data_out_WB),        // input wire [31 : 0] Data_out_WB
  .IfId_valid(IfId_valid),          // input wire IfId_valid
  .IdEx_inst(IdEx_inst),            // input wire [31 : 0] IdEx_inst
  .IdEx_valid(IdEx_valid),          // input wire IdEx_valid
  .IdEx_rd(IdEx_rd),                // input wire [4 : 0] IdEx_rd
  .IdEx_rs1(IdEx_rs1),              // input wire [4 : 0] IdEx_rs1
  .IdEx_rs2(IdEx_rs2),              // input wire [4 : 0] IdEx_rs2
  .IdEx_rs1_val(IdEx_rs1_val),      // input wire [31 : 0] IdEx_rs1_val
  .IdEx_rs2_val(IdEx_rs2_val),      // input wire [31 : 0] IdEx_rs2_val
  .IdEx_reg_wen(IdEx_reg_wen),      // input wire IdEx_reg_wen
  .IdEx_is_imm(IdEx_is_imm),        // input wire IdEx_is_imm
  .IdEx_imm(IdEx_imm),              // input wire [31 : 0] IdEx_imm
  .IdEx_mem_ren(IdEx_mem_ren),      // input wire IdEx_mem_ren
  .IdEx_is_branch(IdEx_is_branch),  // input wire IdEx_is_branch
  .IdEx_is_jal(IdEx_is_jal),        // input wire IdEx_is_jal
  .IdEx_is_jalr(IdEx_is_jalr),      // input wire IdEx_is_jalr
  .IdEx_is_auipc(IdEx_is_auipc),    // input wire IdEx_is_auipc
  .IdEx_is_lui(IdEx_is_lui),        // input wire IdEx_is_lui
  .IdEx_alu_ctrl(IdEx_alu_ctrl),    // input wire [3 : 0] IdEx_alu_ctrl
  .IdEx_cmp_ctrl(IdEx_cmp_ctrl),    // input wire [2 : 0] IdEx_cmp_ctrl
  .ExMa_pc(ExMa_pc),                // input wire [31 : 0] ExMa_pc
  .ExMa_inst(ExMa_inst),            // input wire [31 : 0] ExMa_inst
  .ExMa_valid(ExMa_valid),          // input wire ExMa_valid
  .ExMa_rd(ExMa_rd),                // input wire [4 : 0] ExMa_rd
  .ExMa_reg_wen(ExMa_reg_wen),      // input wire ExMa_reg_wen
  .ExMa_mem_ren(ExMa_mem_ren),      // input wire ExMa_mem_ren
  .ExMa_is_jal(ExMa_is_jal),        // input wire ExMa_is_jal
  .ExMa_is_jalr(ExMa_is_jalr),      // input wire ExMa_is_jalr
  .MaWb_pc(MaWb_pc),                // input wire [31 : 0] MaWb_pc
  .MaWb_inst(MaWb_inst),            // input wire [31 : 0] MaWb_inst
  .MaWb_valid(MaWb_valid),          // input wire MaWb_valid
  .MaWb_rd(MaWb_rd),                // input wire [4 : 0] MaWb_rd
  .MaWb_reg_wen(MaWb_reg_wen),      // input wire MaWb_reg_wen
  .x0(x0),                          // input wire [31 : 0] x0
  .ra(ra),                          // input wire [31 : 0] ra
  .sp(sp),                          // input wire [31 : 0] sp
  .gp(gp),                          // input wire [31 : 0] gp
  .tp(tp),                          // input wire [31 : 0] tp
  .t0(t0),                          // input wire [31 : 0] t0
  .t1(t1),                          // input wire [31 : 0] t1
  .t2(t2),                          // input wire [31 : 0] t2
  .s0(s0),                          // input wire [31 : 0] s0
  .s1(s1),                          // input wire [31 : 0] s1
  .a0(a0),                          // input wire [31 : 0] a0
  .a1(a1),                          // input wire [31 : 0] a1
  .a2(a2),                          // input wire [31 : 0] a2
  .a3(a3),                          // input wire [31 : 0] a3
  .a4(a4),                          // input wire [31 : 0] a4
  .a5(a5),                          // input wire [31 : 0] a5
  .a6(a6),                          // input wire [31 : 0] a6
  .a7(a7),                          // input wire [31 : 0] a7
  .s2(s2),                          // input wire [31 : 0] s2
  .s3(s3),                          // input wire [31 : 0] s3
  .s4(s4),                          // input wire [31 : 0] s4
  .s5(s5),                          // input wire [31 : 0] s5
  .s6(s6),                          // input wire [31 : 0] s6
  .s7(s7),                          // input wire [31 : 0] s7
  .s8(s8),                          // input wire [31 : 0] s8
  .s9(s9),                          // input wire [31 : 0] s9
  .s10(s10),                        // input wire [31 : 0] s10
  .s11(s11),                        // input wire [31 : 0] s11
  .t3(t3),                          // input wire [31 : 0] t3
  .t4(t4),                          // input wire [31 : 0] t4
  .t5(t5),                          // input wire [31 : 0] t5
  .t6(t6),                          // input wire [31 : 0] t6
  .hs(hs),                          // output wire hs
  .vs(vs),                          // output wire vs
  .vga_r(vga_r),                    // output wire [3 : 0] vga_r
  .vga_g(vga_g),                    // output wire [3 : 0] vga_g
  .vga_b(vga_b)                    // output wire [3 : 0] vga_b
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file VGA_0.v when simulating
// the core, VGA_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.


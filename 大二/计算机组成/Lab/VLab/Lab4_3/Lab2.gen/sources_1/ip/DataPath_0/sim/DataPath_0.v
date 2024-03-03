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


// IP VLNV: xilinx.com:user:DataPath:1.0
// IP Revision: 3

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module DataPath_0 (
  Branch,
  Jump,
  Data_in,
  MemtoReg,
  ALUSrc_B,
  ImmSel,
  inst_field,
  ALU_operation,
  clk,
  rst,
  RegWrite,
  ALU_out,
  Data_out,
  PC_out,
  x0,
  x1,
  x2,
  x3,
  x4,
  x5,
  x6,
  x7,
  x8,
  x9,
  x10,
  x11,
  x12,
  x13,
  x14,
  x15,
  x16,
  x17,
  x18,
  x19,
  x20,
  x21,
  x22,
  x23,
  x24,
  x25,
  x26,
  x27,
  x28,
  x29,
  x30,
  x31,
  Imm_out,
  pc_branch,
  a_val,
  b_val
);

input wire Branch;
input wire Jump;
input wire [31 : 0] Data_in;
input wire [1 : 0] MemtoReg;
input wire ALUSrc_B;
input wire [1 : 0] ImmSel;
input wire [31 : 0] inst_field;
input wire [2 : 0] ALU_operation;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire RegWrite;
output wire [31 : 0] ALU_out;
output wire [31 : 0] Data_out;
output wire [31 : 0] PC_out;
output wire [31 : 0] x0;
output wire [31 : 0] x1;
output wire [31 : 0] x2;
output wire [31 : 0] x3;
output wire [31 : 0] x4;
output wire [31 : 0] x5;
output wire [31 : 0] x6;
output wire [31 : 0] x7;
output wire [31 : 0] x8;
output wire [31 : 0] x9;
output wire [31 : 0] x10;
output wire [31 : 0] x11;
output wire [31 : 0] x12;
output wire [31 : 0] x13;
output wire [31 : 0] x14;
output wire [31 : 0] x15;
output wire [31 : 0] x16;
output wire [31 : 0] x17;
output wire [31 : 0] x18;
output wire [31 : 0] x19;
output wire [31 : 0] x20;
output wire [31 : 0] x21;
output wire [31 : 0] x22;
output wire [31 : 0] x23;
output wire [31 : 0] x24;
output wire [31 : 0] x25;
output wire [31 : 0] x26;
output wire [31 : 0] x27;
output wire [31 : 0] x28;
output wire [31 : 0] x29;
output wire [31 : 0] x30;
output wire [31 : 0] x31;
output wire [31 : 0] Imm_out;
output wire [31 : 0] pc_branch;
output wire [31 : 0] a_val;
output wire [31 : 0] b_val;

  DataPath inst (
    .Branch(Branch),
    .Jump(Jump),
    .Data_in(Data_in),
    .MemtoReg(MemtoReg),
    .ALUSrc_B(ALUSrc_B),
    .ImmSel(ImmSel),
    .inst_field(inst_field),
    .ALU_operation(ALU_operation),
    .clk(clk),
    .rst(rst),
    .RegWrite(RegWrite),
    .ALU_out(ALU_out),
    .Data_out(Data_out),
    .PC_out(PC_out),
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .x4(x4),
    .x5(x5),
    .x6(x6),
    .x7(x7),
    .x8(x8),
    .x9(x9),
    .x10(x10),
    .x11(x11),
    .x12(x12),
    .x13(x13),
    .x14(x14),
    .x15(x15),
    .x16(x16),
    .x17(x17),
    .x18(x18),
    .x19(x19),
    .x20(x20),
    .x21(x21),
    .x22(x22),
    .x23(x23),
    .x24(x24),
    .x25(x25),
    .x26(x26),
    .x27(x27),
    .x28(x28),
    .x29(x29),
    .x30(x30),
    .x31(x31),
    .Imm_out(Imm_out),
    .pc_branch(pc_branch),
    .a_val(a_val),
    .b_val(b_val)
  );
endmodule

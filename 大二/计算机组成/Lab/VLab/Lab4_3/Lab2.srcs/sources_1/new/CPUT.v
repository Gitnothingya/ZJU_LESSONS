`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/03 11:50:04
// Design Name: 
// Module Name: CPUT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CPUT(
    input clk,
    input [31:0]inst_in,
    input rst,
    input [31:0]Data_in,
    input MIO_ready,
    output MemRW,
    output [31:0]PC_out,
    output [31:0]Addr_out,
    output CPU_MIO,
    output [31:0]Data_out,

    output [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,
    output [31:0] x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
    output [31:0] x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,
    output [4:0] rs1,rs2,rd,
    output reg_wen,is_imm,is_branch,is_jal,
    output [31:0] Imm_out,pc_branch,a_val,b_val
    );
    wire [2:0] ImmSel;
    wire ALUSrc_B;
    wire [1:0]MemtoReg;
    wire [1:0]Jump;
    wire [5:0] Branch;
    wire RegWrite;
    wire [3:0]ALU_Control;

assign reg_wen = RegWrite;
assign is_imm = ALUSrc_B;
assign is_branch = | Branch;
assign is_jal = |Jump;
assign rs1 = inst_in[19:15];
assign rs2 = inst_in[24:20];
assign rd  = inst_in[11:7];

wire [31:0] Data_reg;
Load_Ctrl Lctrl(.Data_in(Data_in),
                .Ltype(inst_in[14:12]),
                .Data_reg(Data_reg));//load数据处理


    cpu_ctrl ctrl(.OPcode(inst_in[6:2]),
                   .Fun3(inst_in[14:12]),
                   .Fun7(inst_in[30]),
                   .MIO_ready(MIO_ready),
                   .ImmSel(ImmSel),
                   .ALUSrc_B(ALUSrc_B),
                   .MemtoReg(MemtoReg),
                   .Jump(Jump),
                   .Branch(Branch),
                   .RegWrite(RegWrite),
                   .MemRW(MemRW),
                   .ALU_Control(ALU_Control),
                   .CPU_MIO(CPU_MIO));
    DataPath  datapath(.clk(clk),
                       .rst(rst),
                       .inst_field(inst_in),
                       .Data_in(Data_reg),
                       .ALU_operation(ALU_Control),
                       .ImmSel(ImmSel),
                       .MemtoReg(MemtoReg),
                       .ALUSrc_B(ALUSrc_B),
                       .Jump(Jump),
                       .Branch(Branch),
                       .RegWrite(RegWrite),
                       .PC_out(PC_out),
                       .Data_out(Data_out),
                       .ALU_out(Addr_out),
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
                   .b_val(b_val));

endmodule

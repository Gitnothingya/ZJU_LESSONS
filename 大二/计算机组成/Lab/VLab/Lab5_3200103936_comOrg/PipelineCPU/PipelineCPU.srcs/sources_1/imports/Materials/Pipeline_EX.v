`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 16:48:06
// Design Name: 
// Module Name: EX
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
`include "Defines.vh"

module Pipeline_EX(
    input [31:0] rs1_val,   //rs1_val
    input [31:0] rs2_val_in,   //rs2_val
    input [31:0] imm,   
    input ALUSrc_B,    
    input [3:0] alu_ctrl, //ALU ????

    //forwarding
    input [4:0] rd_EXMEM,
    input reg_wen_EXMEM,
    input [31:0] forward_data_EXMEM,
    input [4:0] rd_MEMWB,
    input reg_wen_MEMWB,
    input [31:0] forward_data_WB,
    input [4:0] rs1,
    input [4:0] rs2,

    output wire [31:0] rs2_val_out,   //rs2_val
    output wire [31:0] alu_res
    );

    wire [31:0] a_val, b_val;

    wire [1:0] ForwardA;
    wire [1:0] ForwardB;

    assign ForwardA = (reg_wen_EXMEM & (rd_EXMEM != 0) & (rd_EXMEM == rs1)) ? `FORWARD_EXMEM : (reg_wen_MEMWB & (rd_MEMWB != 0) & (rd_MEMWB == rs1)) ? `FORWARD_MEMWB : `NOFORWARD;
    assign ForwardB = (reg_wen_EXMEM & (rd_EXMEM != 0) & (rd_EXMEM == rs2)) ? `FORWARD_EXMEM : (reg_wen_MEMWB & (rd_MEMWB != 0) & (rd_MEMWB == rs2)) ? `FORWARD_MEMWB : `NOFORWARD;

    //rs2_val输出，用于store, forwarding时要判断来源
    assign rs2_val_out = (ForwardB == `FORWARD_EXMEM) ? forward_data_EXMEM : (ForwardB == `FORWARD_MEMWB) ? forward_data_WB : rs2_val_in;

    //ALU的输入
    assign a_val = (ForwardA == `FORWARD_EXMEM) ? forward_data_EXMEM : (ForwardA == `FORWARD_MEMWB) ? forward_data_WB : rs1_val;
    assign b_val = (ALUSrc_B == `IMM_TO_ALU) ? imm : (ForwardB == `FORWARD_EXMEM) ? forward_data_EXMEM : (ForwardB == `FORWARD_MEMWB) ? forward_data_WB : rs2_val_in;

    Alu alu(
        .a_val(a_val),
        .b_val(b_val),
        .ctrl(alu_ctrl),
        .result(alu_res)
    );


endmodule

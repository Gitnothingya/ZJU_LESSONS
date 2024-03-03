`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 16:48:06
// Design Name: 
// Module Name: WB
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

module Pipeline_WB(
    input [31:0] pcp4,          //jal, jalr
    input [31:0] pcpimm,        //auipc
    input [31:0] alu_res,       //ALUop
    input [31:0] dmem_o_data,   //load
    input [31:0] imm,           //lui
    input [2:0] MemtoReg,       

    output wire [31:0] reg_i_data
    );

    //REGFILE的数据输入
    assign reg_i_data = MemtoReg == `ALU_TO_REG ? alu_res : MemtoReg == `DMEM_TO_REG ? dmem_o_data : MemtoReg == `IMM_TO_REG ? imm : MemtoReg == `IMMPPC_TO_REG ? pcpimm : pcp4;


endmodule

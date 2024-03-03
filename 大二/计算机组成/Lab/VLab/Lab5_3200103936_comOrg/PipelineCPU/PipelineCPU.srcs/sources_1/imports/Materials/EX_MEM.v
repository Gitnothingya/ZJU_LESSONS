`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 15:38:57
// Design Name: 
// Module Name: EX_MEM
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

module EX_MEM(
    input clk,
    input rst,
    input en,
    input [31:0] pcp4_in,
    input [31:0] pcpimm_in,
    input [4:0] rd_in,
    input [31:0] alu_res_in,
    input [31:0] rs2_val_in,    //load
    input mem_wen_in,          //ÄÚ´æĞ´Ê¹ÄÜ
    input mem_ren_in,           //ÎªÁËjal,jalr,branchµÄforwarding
    input [2:0] MemtoReg_in, 
    input reg_wen_in,            //¼Ä´æÆ÷¶Ñ¶ÁĞ´
    input [31:0] inst_in,
    input [31:0] imm_in,        //auipc
    input valid_in,

    output reg [31:0] pcp4_out,
    output reg [31:0] pcpimm_out,
    output reg [4:0] rd_out,
    output reg [31:0] alu_res_out,
    output reg [31:0] rs2_val_out,    //load
    output reg mem_wen_out,          //ÄÚ´æĞ´Ê¹ÄÜ
    output reg mem_ren_out,
    output reg [2:0] MemtoReg_out, 
    output reg reg_wen_out,            //¼Ä´æÆ÷¶Ñ¶ÁĞ´
    output reg [31:0] inst_out,
    output reg [31:0] imm_out,
    output wire [31:0] forward_data,
    output reg valid_out
    );

    assign forward_data = MemtoReg_out == `ALU_TO_REG ? alu_res_out : MemtoReg_out == `IMM_TO_REG ? imm_out : MemtoReg_out == `IMMPPC_TO_REG ? pcpimm_out : pcp4_out;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pcp4_out <= 0;
            pcpimm_out <= 0;
            rd_out <= 0;
            alu_res_out <= 0;
            rs2_val_out <= 0;
            imm_out <= 0;
            mem_wen_out <= 0;
            mem_ren_out <= 0;        
            MemtoReg_out <= 0;
            reg_wen_out <= 0;
            inst_out <= 0;
            valid_out <= 0;   
        end
        else if(en) begin
            pcp4_out <= pcp4_in;
            pcpimm_out <= pcpimm_in;
            rd_out <= rd_in;
            alu_res_out <= alu_res_in;
            rs2_val_out <= rs2_val_in;  
            imm_out <= imm_in; 
            mem_wen_out <= mem_wen_in;
            mem_ren_out <= mem_ren_in;         
            MemtoReg_out <= MemtoReg_in;
            reg_wen_out <= reg_wen_in;
            inst_out <= inst_in;
            valid_out <= valid_in;    
        end
    end


endmodule

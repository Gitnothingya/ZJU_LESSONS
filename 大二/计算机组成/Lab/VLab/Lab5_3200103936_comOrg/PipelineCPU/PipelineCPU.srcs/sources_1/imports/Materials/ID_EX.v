`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 15:38:57
// Design Name: 
// Module Name: ID_EX
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

module ID_EX(
    input clk,
    input rst,
    input en,
    input [31:0] pcp4_in,
    input [31:0] pcpimm_in,
    input [4:0] rd_in,
    input [31:0] rs1_val_in,   //rs1_val
    input [31:0] rs2_val_in,   //rs2_val
    input [31:0] imm_in,   //立即数
    input ALUSrc_B_in,    
    input [3:0] alu_ctrl_in, //ALU 选择控制
    input mem_wen_in,          //内存写使能
    input mem_ren_in,
    input [2:0] MemtoReg_in, 
    input reg_wen_in,            //寄存器堆读写
    input [31:0] inst_in,
    //forwarding
    input [4:0] rs1_in,
    input [4:0] rs2_in,
    //
    input NOP_IDEX,
    input valid_in,

    output reg [31:0] pcp4_out,
    output reg [31:0] pcpimm_out,
    output reg [4:0] rd_out,
    output reg [31:0] rs1_val_out,   //rs1_val
    output reg [31:0] rs2_val_out,   //rs2_val
    output reg [31:0] imm_out,   //立即数
    output reg ALUSrc_B_out,    
    output reg [3:0] alu_ctrl_out, //ALU 选择控制
    output reg mem_wen_out,          //内存写使能
    output reg mem_ren_out,
    output reg [2:0] MemtoReg_out, 
    output reg reg_wen_out,            //寄存器堆读写
    output reg [31:0] inst_out,
    //forwarding
    output reg [4:0] rs1_out,
    output reg [4:0] rs2_out,
    output reg valid_out
    );

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pcp4_out <= 0;
            pcpimm_out <= 0;
            rd_out <= 0;
            rs1_val_out <= 0;  
            rs2_val_out <= 0;
            imm_out <= 0;
            ALUSrc_B_out <= 0;   
            alu_ctrl_out <= 0;
            mem_wen_out <= 0;
            mem_ren_out <= 0;        
            MemtoReg_out <= 0;
            reg_wen_out <= 0;
            inst_out <= 0;
            rs1_out <= 0;
            rs2_out <= 0;
            valid_out <= 0;           
        end
        else if(en) begin
            if(NOP_IDEX) begin
                pcp4_out <= 0;
                pcpimm_out <= 0;
                rd_out <= 0;
                rs1_val_out <= 0;  
                rs2_val_out <= 0;
                imm_out <= 0;
                ALUSrc_B_out <= 0;   
                alu_ctrl_out <= 0;
                mem_wen_out <= 0;
                mem_ren_out <= 0;        
                MemtoReg_out <= 0;
                reg_wen_out <= 0;
                inst_out <= `NOP_INST;
                rs1_out <= 0;
                rs2_out <= 0;
                valid_out <= 0;  
            end
            else begin
                pcp4_out <= pcp4_in;
                pcpimm_out <= pcpimm_in;
                rd_out <= rd_in;
                rs1_val_out <= rs1_val_in;
                rs2_val_out <= rs2_val_in;  
                imm_out <= imm_in; 
                ALUSrc_B_out <= ALUSrc_B_in;   
                alu_ctrl_out <= alu_ctrl_in;
                mem_wen_out <= mem_wen_in;
                mem_ren_out <= mem_ren_in;          
                MemtoReg_out <= MemtoReg_in;
                reg_wen_out <= reg_wen_in;
                inst_out <= inst_in;
                rs1_out <= rs1_in;
                rs2_out <= rs2_in;
                valid_out <= valid_in;  
            end         
        end
        //hold，不变
    end

endmodule

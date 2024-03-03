`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 15:38:57
// Design Name: 
// Module Name: MEM_WB
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


module MEM_WB(
    input clk,
    input rst,
    input en,
    input [31:0] pcp4_in,
    input [31:0] pcpimm_in,
    input [4:0] rd_in,
    input [31:0] alu_res_in,
    input [31:0] dmem_o_data_in,
    input [2:0] MemtoReg_in, 
    input reg_wen_in,            //¼Ä´æÆ÷¶Ñ¶ÁÐ´
    input [31:0] inst_in,
    input [31:0] imm_in,
    input valid_in,

    output reg [31:0] pcp4_out,
    output reg [31:0] pcpimm_out,
    output reg [4:0] rd_out,
    output reg [31:0] alu_res_out,
    output reg [31:0] dmem_o_data_out,
    output reg [2:0] MemtoReg_out, 
    output reg reg_wen_out,            //¼Ä´æÆ÷¶Ñ¶ÁÐ´
    output reg [31:0] inst_out,
    output reg [31:0] imm_out,
    output reg valid_out
    );

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pcp4_out <= 0;
            pcpimm_out <= 0;
            rd_out <= 0;
            alu_res_out <= 0;
            dmem_o_data_out <= 0;
            imm_out <= 0;     
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
            dmem_o_data_out <= dmem_o_data_in;  
            imm_out <= imm_in;  
            MemtoReg_out <= MemtoReg_in;
            reg_wen_out <= reg_wen_in;
            inst_out <= inst_in;
            valid_out <= valid_in;  
        end
    end

endmodule

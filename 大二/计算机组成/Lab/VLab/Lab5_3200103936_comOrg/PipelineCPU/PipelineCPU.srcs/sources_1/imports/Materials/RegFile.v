`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 16:00:50
// Design Name: 
// Module Name: RegFile
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

module RegFile(
    `VGA_DBG_RegFile_Outputs //Debug�ź�
    input clk, rst,
    input wen,               //дʹ��
    input[4:0] rs1,          //Դ�Ĵ���1�ı��
    input[4:0] rs2,          //Դ�Ĵ���2�ı��
    input[4:0] rd,           //Ŀ�ļĴ����ı��
    input[31:0] i_data,      //д�������
    output[31:0] rs1_val,    //Դ�Ĵ���1���������
    output[31:0] rs2_val     //Դ�Ĵ���2���������
);

    reg[31:0] regs[1:31];
    integer i;

    `VGA_DBG_RegFile_Assignments

    assign rs1_val = (rs1 == 0) ? 0 : regs[rs1]; //read rs1
    assign rs2_val = (rs2 == 0) ? 0 : regs[rs2]; //read rs2

    always @(posedge clk or posedge rst) begin
        begin
            if(rst == 1) for(i = 1; i < 32; i = i + 1) regs[i] <= 0; //reset to 0
            else if((rd != 0) && (wen == 1)) //valid and allowed
                regs[rd] <= i_data; //write
        end
        
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 16:46:31
// Design Name: 
// Module Name: IF
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


module Pipeline_IF(
    input clk,
    input rst,
    input en,
    input [31:0] PC_in_IF, //�ⲿ������תPC
    input PCSrc,        //ѡ�ⲿ������תPC�����ڲ���PC+4
    output wire [31:0] PC_out
    );

    wire [31:0] PC_in;
    assign PC_in = (PCSrc == 0) ? PC_out + 4 : PC_in_IF;

    //PCģ�飬���Ǹ�D������
    PC pc_0(
        .clk(clk),
        .rst(rst),
        .PC_in(PC_in), //��һ���ڵ�ԤPCֵ
        .CE(en),
        .PC_out(PC_out) //��ǰ��PCֵ
    );


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 16:48:06
// Design Name: 
// Module Name: MEM
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


module Pipeline_MEM(
    input [31:0] alu_res,
    input [31:0] rs2_val,    //load
    input mem_wen,          //�ڴ�дʹ��
    output wire dmem_wen,
    output wire [31:0] dmem_addr,
    output wire [31:0] dmem_i_data
    );


    //DMEM������
    //assign dmem_read = mem_ren; //��ʹ��
    assign dmem_wen = mem_wen;
    assign dmem_addr = alu_res; //��ַ
    assign dmem_i_data = rs2_val; //����

endmodule

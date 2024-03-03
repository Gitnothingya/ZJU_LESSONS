`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/09 13:17:39
// Design Name: 
// Module Name: MACtrl
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


module MACtrl(
    //facing core
    input[31:0] i_iaddr,
    output[31:0] o_idata,
    input i_dwen, //内存写使能信号
    input [31:0] i_daddr,
    input [31:0] i_d_idata,
    output reg[31:0] o_d_odata,
    //facing IMem
    output[31:0] o_iaddr,
    input[31:0] i_idata,
    //facing DMem
    output reg o_dwen, //DMem的写使能信号
    output reg[31:0] o_daddr,
    output reg[31:0] o_d_idata,
    input[31:0] i_d_odata,
    //facing DR1
    output reg o_dr1wen, //DR系列写使能信号
    output reg[31:0] o_dr1_idata,
    input[31:0] i_dr1_odata
    );

    //指令访存
    assign o_iaddr = i_iaddr;
    assign o_idata = i_idata;

    //数据访存
    always @(*) begin
        if(i_daddr == 32'hFE000000) begin
            o_dwen = 0; //DMem的写使能置0
            if( i_dwen ) begin //写
                o_dr1_idata = i_d_idata;
                o_dr1wen = 1;
            end
            else begin
                o_dr1wen = 0;
                o_d_odata = i_dr1_odata;
            end
        end
        else begin
            o_dr1wen = 0;
            if( i_dwen ) begin
                o_daddr = i_daddr;
                o_d_idata = i_d_idata;
                o_dwen = 1;
            end
            else begin
                o_dwen = 0;
                o_daddr = i_daddr;
                o_d_odata = i_d_odata;
            end
        end
    end

endmodule

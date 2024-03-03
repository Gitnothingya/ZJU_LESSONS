`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/15 10:20:28
// Design Name: 
// Module Name: ALU32
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


module ALU32(
    input [31:0] A,
    input [31:0] B,
    input [2:0] operator,
    output [31:0] res, 
    output zero
    );
    wire [31:0] and_res;
    wire [31:0] or_res;
    wire [31:0] adc_res;
    wire [31:0] xor_res;
    wire [31:0] nor_res;
    wire [31:0] srl_res;
    wire [31:0] less_res;
    wire [32:0] addc;
    wire [31:0] B_adc;
    wire [31:0] out;
    assign B_adc = {32{operator[2]}} ^ B;

    and32_0 and_ins(.A(A),.B(B),.res(and_res));
    or32_0 or_ins(.A(A),.B(B),.res(or_res));
    adc_1 adc_ins(.A(A),.B(B),.C0(operator[2]),.S(addc));
    assign adc_res = addc[31:0];
    assign less_res = {{31{1'b0}},addc[32]};
    nor32_0 nor_ins(.A(A),.B(B),.res(nor_res));
    xor32_0 xor_ins(.A(A),.B(B),.res(xor_res));
    srl_0 srl_ins(.A(A),.B(B),.res(srl_res));

    mux8132_0 mux(.I0(and_res),
                  .I1(or_res),
                  .I2(adc_res),
                  .I3(xor_res),
                  .I4(nor_res),
                  .I5(srl_res),
                  .I6(adc_res),
                  .I7(less_res),
                  .s(operator),
                  .o(out));
    assign res = out ;
    orl_0 orl_ins(.A(out),.S(zero));
endmodule

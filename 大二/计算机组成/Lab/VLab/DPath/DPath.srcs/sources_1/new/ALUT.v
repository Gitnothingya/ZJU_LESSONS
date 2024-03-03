`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/03 09:56:24
// Design Name: 
// Module Name: ALUT
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


module ALUT(
    input [31:0] A,
    input [31:0] B,
    input [2:0] operator,
    output reg [31:0] res, 
    output reg zero
    );
    always @* begin 
        case (operator)
            3'h0: res = A & B;//与
            3'h1: res = A | B;//或
            3'h2: res = A + B;//加
            3'h3: res = A ^ B;//异或
            3'h4: res = ~(A | B);//或非
            3'h5: res = A >> B[4:0];//移位
            3'h6: res = A - B;//减
            3'h7: begin
                case({A[31],B[31]})
                    2'b00: begin
                        if(A[30:0] < B[30:0]) res = 1;
                        else res = 0;
                    end
                    2'b01: res = 0;
                    2'b10: res = 1;
                    2'b11: begin
                        if(A[30:0] < B[30:0]) res = 1;
                        else res = 0;
                    end
                    default: res = 32'hx;
                endcase
            end
            default: res = 32'hx;
        endcase
        if(res == 0) zero = 1;
        else zero = 0;
    end


endmodule

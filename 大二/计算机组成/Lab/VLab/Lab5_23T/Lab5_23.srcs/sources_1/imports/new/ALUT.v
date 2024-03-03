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
    input [3:0] operator,
    output reg [31:0] res, 
    output reg zero
    );
    always @* begin 
        case (operator)
            4'h0: res = A & B;//��  and
            4'h1: res = A | B;//��  or
            4'h2: res = A + B;//��  add
            4'd12: res = A ^ B;//���  xor
            //4'h4: res = ~(A | B);//���  nor
            4'd13: res = A >> B[4:0];//������λ  srl  
            4'h6: res = A - B;//�� sub
            4'h7: begin//�з������Ƚϴ�С  slt
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
            4'd14:res = A << B[4:0];//������λ��sll
            4'h9: res = A < B ? 1 : 0 ;//�޷������Ƚϴ�С  sltu
            4'd15: res = ($signed(A)) >>> B[4:0]; //��������  sra
            default: res = 32'hx;
        endcase
        if(res == 0) zero = 1;
        else zero = 0;
    end


endmodule

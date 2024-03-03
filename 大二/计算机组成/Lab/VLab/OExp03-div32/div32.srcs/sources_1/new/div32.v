`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/21 10:08:22
// Design Name: 
// Module Name: div32
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


module div32(
        input    clk,
		input    rst,
		
        input    start,
        input    [31:0] dividend, 
        input    [31:0] divisor,

        output reg   [31:0] quotient,
        output reg   [31:0] remainder,
        output reg   finish,
        output reg   overflow
        ); 
		wire sign;
        reg [31:0] Ddend;
        reg [31:0] Dsor;


        assign sign = dividend[31] ^ divisor[31];

        always @(dividend or divisor) begin 
            if(dividend[31]==1)
                Ddend = (~dividend) + 1;
            else Ddend = dividend;

            if(divisor[31]==1)
                Dsor = (~divisor) + 1;
            else Dsor = divisor;
        end
        integer i;
        always @(posedge clk or posedge rst) begin 
            if(rst == 1'b1) begin
                quotient = 0;
                remainder = 0;
                finish = 0;
                overflow = 0;
                i=0;
            end
            else if(start == 1'b1)begin
                {remainder,quotient} = {31'h0,Ddend,1'b0};
                finish = 0;
                overflow = 0;
                i=0;
            end
            else if(start == 1'b0 && i<32) begin
                i=i+1;
                remainder = remainder - Dsor;
                if(remainder[31] == 1'b1)begin
                    remainder = remainder + Dsor;
                    {remainder,quotient} = {remainder[30:0],quotient,1'b0};
                end
                else begin
                    {remainder,quotient} = {remainder[30:0],quotient,1'b1};
                end
            end
        end
        
        always @(i) begin
            if(i==32)begin
                remainder = {remainder[31],remainder[31:1]};
                finish = 1;
            end
            if(i==32) begin
                if(dividend[31]^divisor[31] == 1'b1 )
                    quotient = (~quotient) + 1;
                if(dividend[31]==1'b1)
                    remainder = (~remainder) + 1;
                if(divisor == 0 || (dividend == quotient && divisor != 1))
                    overflow = 1;
            end
        end
    
    
	endmodule


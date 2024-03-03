`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 14:03:11
// Design Name: 
// Module Name: mul32
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


module mul32(
  input clk,
  input rst,
  input [31:0] multiplicand,
  input [31:0] multiplier,
  input start,
  output reg [63:0] product,
  output reg finish,
  output reg overflow
    );
    wire [31:0] invB;
    reg bit;

    assign invB = (~multiplicand) +1'b1;
    integer i;
    always @(posedge clk or posedge rst)begin
      if(rst==1'b1) product = 0;

      else if(start == 1'b1)begin
        product[31:0] = multiplier;
        product[63:32] = 32'h00;
        finish = 0;
        overflow = 0;
        bit = 0;
        i=0;
      end
      else if(start == 1'b0 && i<32) begin
        i=i+1;
        if({product[0],bit}==2'b01)begin
          product[63:32] = product[63:32] + multiplicand;
        end
        else if({product[0],bit}==2'b10)begin
          product[63:32] = product[63:32] + invB ;
        end
        {product[63:0],bit} = {product[63],product[63:0]};
      end
      if(i==32)begin
          finish=1;
          if((&product[63:31]==0)&&(|product[63:31]==1)) 
            overflow=1;
        end
    end
    
endmodule
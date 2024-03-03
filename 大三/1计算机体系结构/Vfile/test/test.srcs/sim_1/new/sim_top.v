`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/06 16:22:52
// Design Name: 
// Module Name: sim_top
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


module sim_top;
    reg clk;
    reg [3:0] pc;
    reg  value;
    wire [3:0] value_out;
    wire [7:0] all;
    wire [15:0] res;
    
    reg [11:0] multi[6:0];
  
  assign res = (5'b10001 !=5'b10101);  

    top top_u(.clk(clk),.pc(pc),.value(value),.value_out(value_out),.all(all));
    integer i;
    initial begin
    for(i=0;i<16;i=i+1)begin
        multi[i] = 12'h0;
    end
    
    multi[7][10:6] = 5'b10001;
    multi[6][10:6] = 5'b11111;
    
    clk = 0;
    pc = 4'h4;
    value = 0;
    
    #3
    pc = 4'h1;
    #3
    pc = 4'h2;
    #3
    pc = 4'h3;
    #3
    pc = 4'h4;
    #3
    pc = 4'h5;
    #3
    pc = 4'h6;
    #3
    pc = 4'h7;
    
    end
    
    always #1 clk = ~clk;



endmodule

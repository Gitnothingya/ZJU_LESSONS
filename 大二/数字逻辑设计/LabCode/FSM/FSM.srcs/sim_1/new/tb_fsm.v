`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/16 16:24:47
// Design Name: 
// Module Name: tb_fsm
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


module tb_fsm();
     reg clk;
	 reg reset;
	 reg in;	 
	 wire out;
	 
 always #20 clk = ~clk;
 
 initial
     begin
	     clk = 0;
		 reset = 0;
		 #20 reset = 1;
	end
	
 //01110010 1110010
 initial
     begin
	     in = 0;
		 #40
		 in = 1;
		 #40
		 in = 1;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 1;//
		 #40
         in = 1;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 in = 0;
		 #40
		 in = 1;
		 #40
		 $finish;
		 end
 fsm seq_u1(
     .clk(clk),
	 .reset(reset),
	 .in(in),
	 .out(out)
);
endmodule 
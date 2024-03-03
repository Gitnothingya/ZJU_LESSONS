`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:58 09/30/2019
// Design Name:   lamp_control_tv
// Module Name:   D:/Logic2019/EXP04_2019B/lamp_control_tv_wave.v
// Project Name:  EXP04_2019B
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lamp_control_tv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lamp_control_tv_wave;

	// Inputs
	reg clk;
	reg S1;
	reg S2;
	reg S3;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	lamp_control_tv uut (
		.clk(clk), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.F(F)
	);

// clk
 	always begin
		#10 clk = 0;
		#10 clk = 1;
	end
      
	initial begin
		// Initialize Inputs
		clk = 0;
		S1 = 0;
		S2 = 0;
		S3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		S1 = 1;	
		#20 S1 = 0;
		#6000 S2 = 1;   //#2^8=256*20=5120
		#20 S2 = 0;
		#6000 S3 = 1;
		#20 S3 = 0;
		#6000;
	end
      
endmodule


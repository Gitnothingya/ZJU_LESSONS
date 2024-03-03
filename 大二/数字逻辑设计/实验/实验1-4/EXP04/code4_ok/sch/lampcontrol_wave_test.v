// Verilog test fixture created from schematic D:\RedFlag\logic2018\exp04_1011_sch\Lampcontrol.sch - Thu Oct 11 11:28:05 2018

`timescale 1ns / 1ps

module Lampcontrol_Lampcontrol_sch_tb();

// Inputs
   reg S3;
   reg S2;
   reg S1;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   Lampcontrol UUT (
		.F(F), 
		.S3(S3), 
		.S2(S2), 
		.S1(S1)
   );
// Initialize Inputs
 	integer i;
	initial begin
		for(i=0;i<=8;i=i+1)begin
			{S3,S2,S1} <= i;
			#50;
		end
    end
	 
endmodule

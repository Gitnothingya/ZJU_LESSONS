module sim_top;

	// Inputs
	reg clk;
	reg rstn;

	top uut (
		.CLK100MHZ(clk),
		.SW(16'b0),
		.RSTN(rstn)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rstn = 0;

		// Wait 100 ns for global reset to finish
		#95 rstn = 1;
        
		// Add stimulus here
	end
	
	initial forever #10 clk = ~clk;
      
endmodule

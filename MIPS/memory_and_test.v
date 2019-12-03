`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:40 12/03/2019
// Design Name:   memory_and
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/memory_and_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_and
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_and_test;

	// Inputs
	reg branch;
	reg zero;

	// Outputs
	wire PCSrc;

	// Instantiate the Unit Under Test (UUT)
	memory_and uut (
		.branch(branch), 
		.zero(zero), 
		.PCSrc(PCSrc)
	);

	initial begin
		// Initialize Inputs
		branch = 0;
		zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
		branch = 1;
		
		#100;
		zero = 1;
		
		#100;
		branch = 0;
        
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:07:50 12/06/2019
// Design Name:   fetch_add
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/fetch_add_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fetch_add_test;

	// Inputs
	reg [31:0] add_in;
	reg hit;

	// Outputs
	wire [31:0] add_out;

	// Instantiate the Unit Under Test (UUT)
	fetch_add uut (
		.add_in(add_in), 
		.add_out(add_out), 
		.hit(hit)
	);

	initial begin
		// Initialize Inputs
		add_in = 1;
		hit = 0;

		// Wait 100 ns for global reset to finish
		#100;
		hit = 1;
		
		#100;
		add_in = 2;
		
		#100;
		hit = 0;
		
        
		// Add stimulus here

	end
      
endmodule


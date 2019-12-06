`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:21:36 12/06/2019
// Design Name:   fetch_address_generator
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/fetch_address_generator_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch_address_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fetch_address_generator_test;

	// Inputs
	reg hit;
	reg PCSrc;
	reg [31:0] address_branch;
	reg [31:0] address_in;

	// Outputs
	wire [31:0] instruction_address;
	wire [31:0] address_out;

	// Instantiate the Unit Under Test (UUT)
	fetch_address_generator uut (
		.hit(hit), 
		.PCSrc(PCSrc), 
		.address_branch(address_branch), 
		.address_in(address_in), 
		.instruction_address(instruction_address), 
		.address_out(address_out)
	);

	initial begin
		// Initialize Inputs
		hit = 0;
		PCSrc = 0;
		address_branch = 10;
		address_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		hit = 1;
		
		#100;
		PCSrc = 1;
		address_in = 4;
		
		#100;
		PCSrc = 0;
        
		// Add stimulus here

	end
      
endmodule


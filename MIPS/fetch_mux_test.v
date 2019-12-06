`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:18:11 12/06/2019
// Design Name:   fetch_mux
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/fetch_mux_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fetch_mux_test;

	// Inputs
	reg [31:0] add_result;
	reg [31:0] branch_result;
	reg PCSrc;

	// Outputs
	wire [31:0] instruction_address;

	// Instantiate the Unit Under Test (UUT)
	fetch_mux uut (
		.add_result(add_result), 
		.branch_result(branch_result), 
		.PCSrc(PCSrc), 
		.instruction_address(instruction_address)
	);

	initial begin
		// Initialize Inputs
		add_result = 0;
		branch_result = 0;
		PCSrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		branch_result = 1;
		
		#100;
		PCSrc = 1;
		add_result = 2;
		
		#100;
		PCSrc = 0;
        
		// Add stimulus here

	end
      
endmodule


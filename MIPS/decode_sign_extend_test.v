`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:07:41 12/06/2019
// Design Name:   decode_sign_extend
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/decode_sign_extend_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode_sign_extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode_sign_extend_test;

	// Inputs
	reg [15:0] instruction;

	// Outputs
	wire [31:0] extended_instruction;

	// Instantiate the Unit Under Test (UUT)
	decode_sign_extend uut (
		.instruction(instruction), 
		.extended_instruction(extended_instruction)
	);

	initial begin
		// Initialize Inputs
		instruction = 15'b000000000001111;

		// Wait 100 ns for global reset to finish
		#100;
		instruction = 15'b011110000001111;
        
		// Add stimulus here

	end
      
endmodule


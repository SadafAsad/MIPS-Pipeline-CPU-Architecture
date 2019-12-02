`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:57:50 12/02/2019
// Design Name:   execution_shift_left
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_shift_left_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_shift_left
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_shift_left_test;

	// Inputs
	reg [31:0] shift_in;

	// Outputs
	wire [31:0] shift_out;

	// Instantiate the Unit Under Test (UUT)
	execution_shift_left uut (
		.shift_in(shift_in), 
		.shift_out(shift_out)
	);

	initial begin
		// Initialize Inputs
		shift_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		shift_in = 1;
		
		#100;
		shift_in = 8;
		
		#100;
		shift_in = 100;
        
		// Add stimulus here

	end
      
endmodule


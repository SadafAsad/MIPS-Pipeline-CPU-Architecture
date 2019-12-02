`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:38:43 12/03/2019
// Design Name:   execution_alu
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_alu_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_alu_test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] control;

	// Outputs
	wire [31:0] result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	execution_alu uut (
		.A(A), 
		.B(B), 
		.control(control), 
		.result(result), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 1;
		control = 010;

		// Wait 100 ns for global reset to finish
		#100;
		A = 4;
		B = 1;
		control = 110;
		
		#100;
		A = 0;
		B = 0;
		control = 000;
		
        
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:55 12/02/2019
// Design Name:   execution_adder
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_adder_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_adder_test;

	// Inputs
	reg [31:0] add_in1;
	reg [31:0] add_in2;

	// Outputs
	wire [31:0] add_out;

	// Instantiate the Unit Under Test (UUT)
	execution_adder uut (
		.add_in1(add_in1), 
		.add_in2(add_in2), 
		.add_out(add_out)
	);

	initial begin
		// Initialize Inputs
		add_in1 = 0;
		add_in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		add_in1 = 1;
		
		#100;
		add_in2 = 1;
		
		#100;
		add_in1 = 2;
        
		// Add stimulus here

	end
      
endmodule


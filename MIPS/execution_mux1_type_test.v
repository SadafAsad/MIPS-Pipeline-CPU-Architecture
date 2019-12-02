`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:06:17 12/03/2019
// Design Name:   execution_mux1_type
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_mux1_type_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_mux1_type
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_mux1_type_test;

	// Inputs
	reg [31:0] read_data;
	reg [31:0] sign_extend;
	reg ALUSrc;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	execution_mux1_type uut (
		.read_data(read_data), 
		.sign_extend(sign_extend), 
		.ALUSrc(ALUSrc), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		read_data = 10;
		sign_extend = 0;
		ALUSrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		ALUSrc = 1;
		
		#100;
		sign_extend = 20;
        
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:37 12/03/2019
// Design Name:   execution_mux2
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_mux2_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_mux2_test;

	// Inputs
	reg [4:0] ins_20_16;
	reg [4:0] ins_15_11;
	reg RegDst;

	// Outputs
	wire [4:0] result;

	// Instantiate the Unit Under Test (UUT)
	execution_mux2 uut (
		.ins_20_16(ins_20_16), 
		.ins_15_11(ins_15_11), 
		.RegDst(RegDst), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		ins_20_16 = 0;
		ins_15_11 = 0;
		RegDst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		ins_20_16 = 1;
		
		#100;
		ins_15_11 = 2;
		
		#100;
		RegDst = 1;
        
		// Add stimulus here

	end
      
endmodule


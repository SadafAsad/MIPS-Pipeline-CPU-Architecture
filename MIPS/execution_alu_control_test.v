`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:25 12/03/2019
// Design Name:   execution_alu_control
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_alu_control_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_alu_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_alu_control_test;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] funct;

	// Outputs
	wire [2:0] select;

	// Instantiate the Unit Under Test (UUT)
	execution_alu_control uut (
		.ALUOp(ALUOp), 
		.funct(funct), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
		ALUOp = 2'b01;
		
		#100;
		funct = 6'b100000;
		ALUOp = 2'b10;
		
		#100;
		funct = 6'b100010;
        
		// Add stimulus here

	end
      
endmodule


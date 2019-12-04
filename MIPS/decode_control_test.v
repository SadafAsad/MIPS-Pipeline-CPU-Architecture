`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:43:47 12/04/2019
// Design Name:   decode_control
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/decode_control_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode_control_test;

	// Inputs
	reg [5:0] OpCode;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire ALUOp1;
	wire ALUOp0;

	// Instantiate the Unit Under Test (UUT)
	decode_control uut (
		.OpCode(OpCode), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp1(ALUOp1), 
		.ALUOp0(ALUOp0)
	);

	initial begin
		// Initialize Inputs
		OpCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
		OpCode = 6'b000100;
		
		#100;
		OpCode = 6'b101011;
        
		// Add stimulus here

	end
      
endmodule


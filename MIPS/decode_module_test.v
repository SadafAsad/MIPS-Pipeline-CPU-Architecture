`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:12:59 12/06/2019
// Design Name:   decode_module
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/decode_module_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode_module_test;

	// Inputs
	reg clk;
	reg [31:0] instruction;
	reg [4:0] writeRegister;
	reg [31:0] writeData;
	reg RegWrite_in;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire ALUOp1;
	wire ALUOp0;
	wire RegWrite;
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;
	wire [31:0] signExtended;
	wire [4:0] instruction_20_16;
	wire [4:0] instruction_15_11;

	// Instantiate the Unit Under Test (UUT)
	decode_module uut (
		.clk(clk), 
		.instruction(instruction), 
		.writeRegister(writeRegister), 
		.writeData(writeData), 
		.RegWrite_in(RegWrite_in), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp1(ALUOp1), 
		.ALUOp0(ALUOp0), 
		.RegWrite(RegWrite), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2), 
		.signExtended(signExtended), 
		.instruction_20_16(instruction_20_16), 
		.instruction_15_11(instruction_15_11)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		instruction = 32'b10101100000000010000011000000000;
		writeRegister = 0;
		writeData = 0;
		RegWrite_in = 0;

		// Wait 100 ns for global reset to finish
		
		#100;
		instruction = 32'b00000000000000010000011000000000;
		writeData = 1;
		RegWrite_in = 1;
		
		#100;
		writeRegister = 1;
		writeData = 2;
		
		#100;
		RegWrite_in = 0;
		
        
		// Add stimulus here

	end
	
	always
	#50 clk = ~clk;
      
endmodule


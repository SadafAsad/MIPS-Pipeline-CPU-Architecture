`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:12 12/03/2019
// Design Name:   memory_module
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/memory_module_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_module_test;

	// Inputs
	reg [31:0] AddResult;
	reg [31:0] ALUResult;
	reg [31:0] read_data2;
	reg [4:0] exeMuxRes;
	reg aluZero;
	reg MemtoReg;
	reg RegWrite;
	reg MemRead;
	reg MemWrite;
	reg Branch;
	reg [31:0] AddResult_out;

	// Outputs
	wire [4:0] exeMuxRes_out;
	wire [31:0] ReadData;
	wire RegWrite_out;
	wire MemtoReg_out;
	wire PCSrc_out;

	// Instantiate the Unit Under Test (UUT)
	memory_module uut (
		.AddResult(AddResult), 
		.ALUResult(ALUResult), 
		.read_data2(read_data2), 
		.exeMuxRes(exeMuxRes), 
		.aluZero(aluZero), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.exeMuxRes_out(exeMuxRes_out), 
		.ReadData(ReadData), 
		.AddResult_out(AddResult_out), 
		.RegWrite_out(RegWrite_out), 
		.MemtoReg_out(MemtoReg_out), 
		.PCSrc_out(PCSrc_out)
	);

	initial begin
		// Initialize Inputs
		AddResult = 0;
		ALUResult = 0;
		read_data2 = 100;
		exeMuxRes = 0;
		aluZero = 1;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 0;
		MemWrite = 1;
		Branch = 1;
		AddResult_out = 0;

		// Wait 100 ns for global reset to finish
		#100;
		AddResult = 0;
		ALUResult = 1;
		read_data2 = 1111;
		exeMuxRes = 0;
		aluZero = 0;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 0;
		MemWrite = 1;
		Branch = 1;
		AddResult_out = 0;
		
		#100;
		AddResult = 0;
		ALUResult = 0;
		read_data2 = 100;
		exeMuxRes = 0;
		aluZero = 0;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 1;
		MemWrite = 0;
		Branch = 0;
		AddResult_out = 0;
		
		#100;
		AddResult = 0;
		ALUResult = 1;
		read_data2 = 100;
		exeMuxRes = 0;
		aluZero = 1;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 1;
		MemWrite = 0;
		Branch = 1;
		AddResult_out = 0;
        
		// Add stimulus here

	end
      
endmodule


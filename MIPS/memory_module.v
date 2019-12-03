`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:00 12/03/2019 
// Design Name: 
// Module Name:    memory_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module memory_module(AddResult, ALUResult, read_data2, exeMuxRes, aluZero,
							MemtoReg, RegWrite, MemRead, MemWrite, Branch,
							exeMuxRes_out, ReadData, AddResult_out,
							RegWrite_out, MemtoReg_out, PCSrc_out);
	
	input MemtoReg, RegWrite, MemRead, MemWrite, Branch;
	input aluZero;
	input [31:0] AddResult, ALUResult, read_data2, AddResult_out;
	input [4:0] exeMuxRes;
	
	output [4:0] exeMuxRes_out;
	output [31:0] ReadData;
	output RegWrite_out, MemtoReg_out, PCSrc_out;
	
	assign exeMuxRes_out = exeMuxRes;
	assign ALUResult_out = ALUResult;
	assign RegWrite_out = RegWrite;
	assign MemtoReg_out = MemtoReg;

	memory_and And (
    .branch(Branch), 
    .zero(aluZero), 
    .PCSrc(PCSrc_out)
    );
	 
	memory_data_memory Data_memory (
    .memWrite(MemWrite), 
    .memRead(MemRead), 
    .address(ALUResult), 
    .writedata(read_data2), 
    .readdata(ReadData)
    );

endmodule

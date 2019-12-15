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
module memory_module(ALUResult, read_data2, aluZero,
							MemRead, MemWrite, Branch,
							ReadData,PCSrc_out, ALUResult_out);
	
	input MemRead, MemWrite, Branch;
	input aluZero;
	input [31:0] read_data2, ALUResult;
	
	output [31:0] ReadData, ALUResult_out;
	output PCSrc_out;
	
	assign ALUResult_out = ALUResult;

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

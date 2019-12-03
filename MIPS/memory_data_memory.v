`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:02 12/03/2019 
// Design Name: 
// Module Name:    memory_data_memory 
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
module memory_data_memory(memWrite, memRead, address, writedata, readdata);

	input memWrite, memRead;
	input [31:0] address, writedata;
	
	output reg [31:0] readdata;

	reg [29:0] DataMemory [31:0];

	always @(*)
	begin
	
		if (memWrite)
		begin
			DataMemory[address] <= writedata;
		end
			
		else if (memRead)
		begin
			readdata <= DataMemory[address];
		end
		
	end

endmodule

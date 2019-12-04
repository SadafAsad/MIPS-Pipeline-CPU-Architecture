`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:07 12/04/2019 
// Design Name: 
// Module Name:    write_back_mux 
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
module write_back_mux(data, address, MemtoReg, writeData);

	input MemtoReg;
	input [31:0] data, address;
	
	output reg [31:0] writeData;
	
	always @(*)
	begin
	
		if (MemtoReg)
			begin
				writeData <= data;
			end
			
			else
			begin
				writeData <= address;
			end
			
	end

endmodule

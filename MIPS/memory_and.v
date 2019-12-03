`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:09 12/03/2019 
// Design Name: 
// Module Name:    memory_and 
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
module memory_and(branch, zero, PCSrc);

	input branch, zero;
	
	output reg PCSrc;
	
	always @(*)
	begin
	
		PCSrc <= branch & zero;
		
	end

endmodule

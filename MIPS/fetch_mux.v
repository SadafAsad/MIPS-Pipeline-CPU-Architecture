`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:14 12/04/2019 
// Design Name: 
// Module Name:    fetch_mux 
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
module fetch_mux(add_result, branch_result, PCSrc, instruction_address);

	input [31:0] add_result, branch_result;
	input PCSrc;
	
	output reg [31:0] instruction_address;
	
	always @(*)
	begin
	
		if (PCSrc)
		begin
			instruction_address <= branch_result;
		end
		
		else
		begin
			instruction_address <= add_result;
		end
	
	end


endmodule

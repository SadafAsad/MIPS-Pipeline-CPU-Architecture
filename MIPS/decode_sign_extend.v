`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:13 12/04/2019 
// Design Name: 
// Module Name:    decode_sign_extend 
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
module decode_sign_extend(instruction, extended_instruction);

	input [15:0] instruction;
	output reg [31:0] extended_instruction;
	
	always @(*)
	begin
			extended_instruction <= { {16{instruction[15]}}, instruction[15:0] };
	end

endmodule

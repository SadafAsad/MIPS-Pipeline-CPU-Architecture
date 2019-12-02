`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:55:31 12/02/2019 
// Design Name: 
// Module Name:    execution_shift_left 
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
module execution_shift_left(shift_in, shift_out);

	input [31:0] shift_in;
	
	output reg [31:0] shift_out;
	
	always @(*)
	begin
	
		shift_out <= shift_in << 2;
		
	end

endmodule
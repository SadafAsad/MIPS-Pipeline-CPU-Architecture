`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:20 12/04/2019 
// Design Name: 
// Module Name:    fetch_add 
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
module fetch_add(add_in, add_out, hit);

	input hit;
	input [31:0] add_in;
	
	output reg [31:0] add_out;
	
	always @(*)
	begin
	
		if (hit)
		begin
			add_out <= add_in + 1;
		end
		
		else
		begin
			add_out <= add_in;
		end
		
	end

endmodule

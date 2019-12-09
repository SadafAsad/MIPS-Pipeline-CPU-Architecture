`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:57 12/09/2019 
// Design Name: 
// Module Name:    fetch_pipe 
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
module fetch_pipe(clk, rst, hit, adder_in, instruction_in, adder_out, instruction_out);

	input clk, rst, hit;
	input [31:0] adder_in, instruction_in;
	
	output reg [31:0] adder_out, instruction_out;
	
	always @(posedge clk)
	begin
	
		if (rst)
		begin
			adder_out <= 0;
			instruction_out <= 0;
		end
		
		else if (hit)
		begin
			adder_out <= adder_in;
			instruction_out <= instruction_in;
		end
		
	end

endmodule

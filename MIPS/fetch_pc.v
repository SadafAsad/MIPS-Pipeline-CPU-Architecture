`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:37 12/04/2019 
// Design Name: 
// Module Name:    fetch_pc 
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
module fetch_pc(npc, clk, rst, pc);

	input [31:0] npc;
	input clk, rst;
	
	output reg [31:0] pc;
	
	always @(posedge clk)
	begin
	
		if (rst)
		begin
			pc <= 0;
		end
		
		else
		begin
			pc <= npc;
		end
		
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:11 12/03/2019 
// Design Name: 
// Module Name:    execution_mux2 
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
module execution_mux2(ins_20_16, ins_15_11, RegDst, result);

	input [4:0] ins_20_16, ins_15_11;
	input RegDst;
	
	output reg [4:0] result;
	
	always @(*)
	begin
	
		if(RegDst)
		begin
			result <= ins_20_16;
		end
			
		else
		begin
			result <= ins_15_11;
		end
			
	end

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:03:12 12/03/2019 
// Design Name: 
// Module Name:    execution_mux1_type 
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
module execution_mux1_type(read_data, sign_extend, ALUSrc, result);

	input [31:0] read_data, sign_extend;
	input ALUSrc;
	
	output reg [31:0] result;
	
	always @(*)
	begin
	
		if (ALUSrc)
			begin
				result <= sign_extend;
			end
			
			else
			begin
				result <= read_data;
			end
			
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:43 12/02/2019 
// Design Name: 
// Module Name:    execute_adder 
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
module execution_adder(add_in1, add_in2, add_out);

	input [31:0] add_in1, add_in2;
	
	output reg [31:0] add_out;
	
	always @(*)
	begin
	
		add_out <= add_in1 + add_in2;
	
	end

endmodule

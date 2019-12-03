`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:09 12/03/2019 
// Design Name: 
// Module Name:    execution_alu_control 
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
module execution_alu_control(ALUOp, funct, select);

	input [1:0] ALUOp;
	input [5:0] funct;
	
	output reg [2:0] select;
	
	always @(*)
	begin
		
		case (ALUOp)
				2'b00: select <= 3'b010;
				2'b01: select <= 3'b110;
				2'b10:
				begin
					case (funct)
						6'b100000: select <= 3'b010;
						6'b100010: select <= 3'b110;
						6'b100100: select <= 3'b000;
						6'b100101: select <= 3'b001;
					endcase
				end
		endcase
		
	end

endmodule

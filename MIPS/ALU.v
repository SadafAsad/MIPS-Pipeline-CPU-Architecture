`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:14:30 12/03/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A, B, control, result, zero);

	input [2:0] control;
	input [31:0] A, B;
	
	output reg [31:0] result;
	output reg zero;
	
	always @(*)
	begin
	
		case(control)
				3'b010:
				begin
					result = A+B;
					if(result!=0)
					begin
						zero <= 0;
					end
					else
					begin
						zero = 1;
					end
				end
				3'b110:
				begin
					result = A-B;
					if(result!=0)
					begin
						zero <= 0;
					end
					else
					begin
						zero <= 1;
					end
				end
				3'b000:
				begin
					result = A&&B;
					if(result!=0)
					begin
						zero <= 0;
					end
					else
					begin
						zero <= 1;
					end
				end
				3'b001:
				begin
					result = A||B;
					if(result!=0)
					begin
						zero <= 0;
					end
					else
					begin
						zero <= 1;
					end
				end
			endcase
	
	end

endmodule

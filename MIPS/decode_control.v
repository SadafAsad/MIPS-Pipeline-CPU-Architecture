`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:40 12/04/2019 
// Design Name: 
// Module Name:    decode_control 
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
module decode_control(OpCode, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp0);

	input [5:0] OpCode;
	
	output reg RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp0;
	
	always @(*)
	begin
		case(OpCode)
		6'b000000:
		begin
			RegDst <= 1;
			ALUSrc <= 0;
			MemtoReg <= 0;
			RegWrite <= 1;
			MemRead <= 0;
			MemWrite <= 0;
			Branch <= 0;
			ALUOp1 <= 1;
			ALUOp0 <= 0;
		end
		6'b100011:
		begin
			RegDst <= 0;
			ALUSrc <= 1;
			MemtoReg <= 1;
			RegWrite <= 1;
			MemRead <= 1;
			MemWrite <= 0;
			Branch <= 0;
			ALUOp1 <= 0;
			ALUOp0 <= 0;
		end
		6'b101011:
		begin
			RegDst <= 0;
			ALUSrc <= 1;
			MemtoReg <= 1;
			RegWrite <= 0;
			MemRead <= 0;
			MemWrite <= 1;
			Branch <= 0;
			ALUOp1 <= 0;
			ALUOp0 <= 0;
		end
		6'b000100:
		begin
			RegDst <= 0;
			ALUSrc <= 0;
			MemtoReg <= 1;
			RegWrite <= 0;
			MemRead <= 0;
			MemWrite <= 0;
			Branch <= 1;
			ALUOp1 <= 0;
			ALUOp0 <= 1;
		end
		endcase
	end

endmodule

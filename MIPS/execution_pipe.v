`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:37 12/09/2019 
// Design Name: 
// Module Name:    execution_pipe 
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
module execution_pipe(clk, rst, Branch, MemRead, MemWrite, RegWrite, MemtoReg, adder_out, aluzero, aluout, readdat2, muxout,
							Branch_out, MemRead_out, MemWrite_out, RegWrite_out, MemtoReg_out, zero, add_result, alu_result, rdata2out, five_bit_muxout);

	input clk, rst;
	input aluzero;
	input Branch, MemRead, MemWrite, RegWrite, MemtoReg;
	input [31:0] adder_out, aluout, readdat2;
	input [4:0] muxout;
	
	output reg zero;
	output reg Branch_out, MemRead_out, MemWrite_out, RegWrite_out, MemtoReg_out;
	output reg [31:0] add_result, alu_result, rdata2out;
	output reg [4:0] five_bit_muxout;
	
	always @(posedge clk)
	begin
		if (rst)
		begin
			Branch_out <= 0;
			MemRead_out <= 0;
			MemWrite_out <= 0;
			RegWrite_out <= 0;
			MemtoReg_out <= 0;
			zero <= 0;
			add_result <= 0;
			alu_result <= 0;
			rdata2out <= 0;
			five_bit_muxout <= 0;
		end
		
		else
		begin
			zero <= aluzero;
			Branch_out <= Branch;
			MemRead_out <= MemRead;
			MemWrite_out <= MemWrite;
			RegWrite_out <= RegWrite;
			MemtoReg_out <= MemtoReg;
			add_result <= adder_out;
			alu_result <= aluout;
			rdata2out <= readdat2;
			five_bit_muxout <= muxout;
		end
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:33 12/09/2019 
// Design Name: 
// Module Name:    decode_pipe 
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
module decode_pipe(clk, rst, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp0, npc, readdat1, readdat2, signext_out, instr_2016, instr_1511,
						RegDst_out, ALUSrc_out, MemtoReg_out, RegWrite_out, MemRead_out, MemWrite_out, Branch_out, ALUOp1_out, ALUOp0_out, npcout, rdata1out, rdata2out, s_extendout, instrout_2016, instrout_1511);
	
	input clk, rst;
	
	input RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp1, ALUOp0;
	input [31:0] npc, readdat1, readdat2, signext_out;
	input [4:0] instr_2016;
	input [4:0] instr_1511;
	
	output reg RegDst_out, ALUSrc_out, MemtoReg_out, RegWrite_out, MemRead_out, MemWrite_out, Branch_out, ALUOp1_out, ALUOp0_out;
	output reg [31:0] npcout, rdata1out, rdata2out, s_extendout;
	output reg [4:0] instrout_2016;
	output reg [4:0] instrout_1511;
	
	always @(posedge clk)
	begin
		if(rst)
		begin
			RegDst_out <= 0;
			ALUSrc_out <= 0;
			MemtoReg_out <= 0;
			RegWrite_out <= 0;
			MemRead_out <= 0;
			MemWrite_out <= 0;
			Branch_out <= 0;
			ALUOp1_out <= 0;
			ALUOp0_out <= 0;
			
			npcout <= 0;
			rdata1out <= 0;
			rdata2out <= 0;
			s_extendout <= 0;
			instrout_2016 <= 0;
			instrout_1511 <= 0;
		end
		else
		begin
			RegDst_out <= RegDst;
			ALUSrc_out <= ALUSrc;
			MemtoReg_out <= MemtoReg;
			RegWrite_out <= RegWrite;
			MemRead_out <= MemRead;
			MemWrite_out <= MemWrite;
			Branch_out <= Branch;
			ALUOp1_out <= ALUOp1;
			ALUOp0_out <= ALUOp0;
			
			npcout <= npc;
			rdata1out <= readdat1;
			rdata2out <= readdat2;
			s_extendout <= signext_out;
			instrout_2016 <= instr_2016;
			instrout_1511 <= instr_1511;
		end
	end

endmodule

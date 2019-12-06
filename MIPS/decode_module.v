`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:50 12/06/2019 
// Design Name: 
// Module Name:    decode_module 
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
module decode_module(clk, instruction, writeRegister, writeData, RegWrite_in,
							RegDst, ALUSrc, MemtoReg, MemRead, MemWrite, Branch, ALUOp1, ALUOp0, RegWrite,
							ReadData1, ReadData2, signExtended, instruction_20_16, instruction_15_11);

	input clk;
	input [31:0] instruction;
	input [4:0] writeRegister;
	input [31:0] writeData;
	input RegWrite_in;
	
	output RegDst, ALUSrc, MemtoReg, MemRead, MemWrite, Branch, ALUOp1, ALUOp0, RegWrite;
	output [31:0] ReadData1, ReadData2, signExtended;
	output [4:0] instruction_20_16, instruction_15_11;
	
	wire [5:0] inst_OpCode;
	wire [4:0] inst_readreg1, inst_readreg2;
	wire [15:0] inst_to_sign_extend;
	
	assign inst_OpCode = instruction[31:26];
	assign inst_readreg1 = instruction[25:21];
	assign inst_readreg2 = instruction[20:16];
	assign inst_to_sign_extend = instruction[15:0];
	
	assign instruction_20_16 = instruction[20:16];
	assign instruction_15_11 = instruction[15:11];

	decode_control Control (
    .OpCode(inst_OpCode), 
    .RegDst(RegDst), 
    .ALUSrc(ALUSrc), 
    .MemtoReg(MemtoReg), 
    .RegWrite(RegWrite), 
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .Branch(Branch), 
    .ALUOp1(ALUOp1), 
    .ALUOp0(ALUOp0)
    );
	 
	 decode_registers Registers (
    .clk(clk), 
    .rs_1(inst_readreg1), 
    .rt_2(inst_readreg2), 
    .rd_w(writeRegister), 
    .writeData(writeData), 
    .regWrite(RegWrite_in), 
    .read_data1(ReadData1), 
    .read_data2(ReadData2)
    );
	 
	 decode_sign_extend Sign_extend (
    .instruction(inst_to_sign_extend), 
    .extended_instruction(signExtended)
    );

endmodule

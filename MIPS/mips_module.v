`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:34 12/15/2019 
// Design Name: 
// Module Name:    mips_module 
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
module mips_module(clk, rst, instruction_mem_in);

	input clk, rst;
	input [127:0] instruction_mem_in;
	
	wire [31:0] mem_add_result_branch_to_fetch;
	wire mem_and_pcsrc_to_fetch;
	
	wire [31:0] add_to_if_id;
	wire [31:0] instruction_to_if_id;
	wire hit_to_if_id;
	
	wire [31:0] if_id_add_to_id_ex;
	wire [31:0] if_id_instruction;
	
	wire RegDst_to_id_ex, ALUSrc_to_id_ex, MemtoReg_to_id_ex, RegWrite_to_id_ex, MemRead_to_id_ex,
		  MemWrite_to_id_ex, Branch_to_id_ex, ALUOp1_to_id_ex, ALUOp0_to_id_ex;
	wire [31:0] read_data1_to_id_ex, read_data2_to_id_ex;
	wire [31:0] sign_extend_to_id_ex;
	wire [4:0] instr_2016_to_id_ex, instr_1511_to_id_ex;
	
	wire wb_RegWrite_to_decode;
	wire [4:0] wb_WriteRegister_to_decode;
	wire [31:0] wb_WriteData_to_decode;
	
	wire id_ex_MemtoReg_to_ex_mem, id_ex_RegWrite_to_ex_mem, id_ex_MemRead_to_ex_mem,
		  id_ex_MemWrite_to_ex_mem, id_ex_Branch_to_ex_mem;
		  
	wire id_ex_RegDst_to_ex_mux2;
	wire id_ex_ALUSrc_to_ex_mux1;
	wire id_ex_ALUOp0_to_ex_alu_control;
	wire id_ex_ALUOp1_to_ex_alu_control;
	wire [31:0] id_ex_add_from_if_id_to_ex_add;
	wire [31:0] id_ex_read_data1_to_ex_alu;
	wire [31:0] id_ex_read_data2_to_ex_alu_and_to_ex_mem;
	wire [31:0] id_ex_sign_extend_to_ex_shift_lef_and_alu_control;
	wire [4:0] id_ex_instr_2016_to_ex_mux2, id_ex_instr_1511_to_ex_mux2;
	wire [31:0] ex_add_result_to_ex_mem;
	wire [31:0] ex_alu_result_to_ex_mem;
	wire ex_alu_zero_to_ex_mem;

	fetch_module Fetch (
    .clk(clk), 
    .rst(rst), 
    .pc_branch(mem_add_result_branch_to_fetch), 
    .mem_in(instruction_mem_in), 
    .PCSrc(mem_and_pcsrc_to_fetch), 
    .instruction(add_to_if_id), 
    .hit(hit_to_if_id), 
    .add_out(add_to_if_id)
    );
	 
	fetch_pipe IF_ID (
    .clk(clk), 
    .rst(rst), 
    .hit(hit_to_if_id), 
    .adder_in(add_to_if_id), 
    .instruction_in(add_to_if_id), 
    .adder_out(if_id_add_to_id_ex), 
    .instruction_out(if_id_instruction)
    );
	 
	 decode_module Decode (
    .clk(clk), 
    .instruction(if_id_instruction), 
    .writeRegister(wb_WriteRegister_to_decode), 
    .writeData(wb_WriteData_to_decode), 
    .RegWrite_in(wb_RegWrite_to_decode), 
    .RegDst(RegDst_to_id_ex), 
    .ALUSrc(ALUSrc_to_id_ex), 
    .MemtoReg(MemtoReg_to_id_ex), 
    .MemRead(MemRead_to_id_ex), 
    .MemWrite(MemWrite_to_id_ex), 
    .Branch(Branch_to_id_ex), 
    .ALUOp1(ALUOp1_to_id_ex), 
    .ALUOp0(ALUOp0_to_id_ex), 
    .RegWrite(RegWrite_to_id_ex), 
    .ReadData1(read_data1_to_id_ex), 
    .ReadData2(read_data2_to_id_ex), 
    .signExtended(sign_extend_to_id_ex), 
    .instruction_20_16(instr_2016_to_id_ex), 
    .instruction_15_11(instr_1511_to_id_ex)
    );
	 
	 decode_pipe ID_EX (
    .clk(clk), 
    .rst(rst), 
    .RegDst(RegDst_to_id_ex), 
    .ALUSrc(ALUSrc_to_id_ex), 
    .MemtoReg(MemtoReg_to_id_ex), 
    .RegWrite(RegWrite_to_id_ex), 
    .MemRead(MemRead_to_id_ex), 
    .MemWrite(MemWrite_to_id_ex), 
    .Branch(Branch_to_id_ex), 
    .ALUOp1(ALUOp1_to_id_ex), 
    .ALUOp0(ALUOp0_to_id_ex), 
    .npc(if_id_add_to_id_ex), 
    .readdat1(read_data1_to_id_ex), 
    .readdat2(read_data2_to_id_ex), 
    .signext_out(sign_extend_to_id_ex), 
    .instr_2016(instr_2016_to_id_ex), 
    .instr_1511(instr_1511_to_id_ex), 
    .RegDst_out(id_ex_RegDst_to_ex_mux2), 
    .ALUSrc_out(id_ex_ALUSrc_to_ex_mux1), 
    .MemtoReg_out(id_ex_MemtoReg_to_ex_mem), 
    .RegWrite_out(id_ex_RegWrite_to_ex_mem), 
    .MemRead_out(id_ex_MemRead_to_ex_mem), 
    .MemWrite_out(id_ex_MemWrite_to_ex_mem), 
    .Branch_out(id_ex_Branch_to_ex_mem), 
    .ALUOp1_out(id_ex_ALUOp1_to_ex_alu_control), 
    .ALUOp0_out(id_ex_ALUOp0_to_ex_alu_control), 
    .npcout(id_ex_add_from_if_id_to_ex_add), 
    .rdata1out(id_ex_read_data1_to_ex_alu), 
    .rdata2out(id_ex_read_data2_to_ex_alu_and_to_ex_mem), 
    .s_extendout(id_ex_sign_extend_to_ex_shift_lef_and_alu_control), 
    .instrout_2016(id_ex_instr_2016_to_ex_mux2), 
    .instrout_1511(id_ex_instr_1511_to_ex_mux2)
    );
	 
	 execution_module Execution (
    .RegDst(id_ex_RegDst_to_ex_mux2), 
    .ALUOp1(id_ex_ALUOp0_to_ex_alu_control), 
    .ALUOp2(id_ex_ALUOp1_to_ex_alu_control), 
    .ALUSrc(id_ex_ALUSrc_to_ex_mux1), 
    .fromIFstage(id_ex_add_from_if_id_to_ex_add), 
    .sign_extended(id_ex_sign_extend_to_ex_shift_lef_and_alu_control), 
    .read_data1(id_ex_read_data1_to_ex_alu), 
    .read_data2(id_ex_read_data2_to_ex_alu_and_to_ex_mem), 
    .inst_20_16(id_ex_instr_2016_to_ex_mux2), 
    .inst_15_11(id_ex_instr_1511_to_ex_mux2), 
    .add_result(ex_add_result_to_ex_mem), 
    .alu_result(ex_alu_result_to_ex_mem), 
    .read_data2_out(id_ex_read_data2_to_ex_alu_and_to_ex_mem), 
    .mux_out(mux_out), 
    .zero_out(ex_alu_zero_to_ex_mem)
    );

	execution_pipe EX_MEM (
    .clk(clk), 
    .rst(rst), 
    .Branch(id_ex_Branch_to_ex_mem), 
    .MemRead(id_ex_MemRead_to_ex_mem), 
    .MemWrite(id_ex_MemWrite_to_ex_mem), 
    .RegWrite(id_ex_RegWrite_to_ex_mem), 
    .MemtoReg(id_ex_MemtoReg_to_ex_mem), 
    .adder_out(ex_add_result_to_ex_mem), 
    .aluzero(ex_alu_zero_to_ex_mem), 
    .aluout(ex_alu_result_to_ex_mem), 
    .readdat2(id_ex_read_data2_to_ex_alu_and_to_ex_mem), 
    .muxout(muxout), 
    .Branch_out(Branch_out), 
    .MemRead_out(MemRead_out), 
    .MemWrite_out(MemWrite_out), 
    .RegWrite_out(RegWrite_out), 
    .MemtoReg_out(MemtoReg_out), 
    .zero(zero), 
    .add_result(mem_add_result_branch_to_fetch), 
    .alu_result(alu_result), 
    .rdata2out(rdata2out), 
    .five_bit_muxout(five_bit_muxout)
    );
	 
	 memory_module Memory (
    .AddResult(AddResult), 
    .ALUResult(ALUResult), 
    .read_data2(read_data2), 
    .exeMuxRes(exeMuxRes), 
    .aluZero(aluZero), 
    .MemtoReg(MemtoReg), 
    .RegWrite(RegWrite), 
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .Branch(Branch), 
    .exeMuxRes_out(exeMuxRes_out), 
    .ReadData(ReadData), 
    .AddResult_out(AddResult_out), 
    .RegWrite_out(RegWrite_out), 
    .MemtoReg_out(MemtoReg_out), 
    .PCSrc_out(mem_and_pcsrc_to_fetch)
    );

	memory_pipe MEM_WB (
    .clk(clk), 
    .rst(rst), 
    .RegWrite(RegWrite), 
    .MemtoReg(MemtoReg), 
    .read_data_in(read_data_in), 
    .alu_result_in(alu_result_in), 
    .write_reg_in(write_reg_in), 
    .RegWrite_out(wb_WriteRegister_to_decode), 
    .MemtoReg_out(MemtoReg_out), 
    .read_data(read_data), 
    .mem_alu_result(mem_alu_result), 
    .mem_write_reg(wb_WriteRegister_to_decode)
    );
	 
	 write_back_mux Write_back (
    .data(data), 
    .address(address), 
    .MemtoReg(MemtoReg), 
    .writeData(wb_WriteData_to_decode)
    );

endmodule

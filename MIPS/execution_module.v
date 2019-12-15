`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:05 12/03/2019 
// Design Name: 
// Module Name:    execution_module 
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
module execution_module(RegDst, ALUOp1, ALUOp2, ALUSrc, fromIFstage, sign_extended, read_data1, read_data2, inst_20_16, inst_15_11,
								add_result, alu_result, read_data2_out, mux_out, zero_out,
								MemtoReg_out, RegWrite_out, MemRead_out, MemWrite_out, Branch_out);

	input RegDst, ALUSrc;
	input ALUOp1, ALUOp2;
	input [31:0] fromIFstage, read_data1, read_data2, sign_extended;
	input [4:0] inst_20_16, inst_15_11;
	
	output zero_out;
	output [31:0] add_result, alu_result, read_data2_out;
	output [4:0] mux_out;
	
	wire [31:0] shift_to_add;
	wire [31:0] mux_1_to_alu;
	wire [2:0] alu_control_result;
	wire [5:0] alu_control_funct;
	wire [1:0] ALUOp;
	
	assign ALUOp[0] = ALUOp1;
	assign ALUOp[1] = ALUOp2;
	assign alu_control_funct = sign_extended[5:0];

	execution_adder Add (
    .add_in1(fromIFstage), 
    .add_in2(shift_to_add), 
    .add_out(add_result)
    );
	
	execution_shift_left Shift_left_2 (
    .shift_in(sign_extended), 
    .shift_out(shift_to_add)
    );
	 
	 execution_alu ALU (
    .A(read_data1), 
    .B(mux_1_to_alu), 
    .control(alu_control_result), 
    .result(alu_result), 
    .zero(zero_out)
    );
	 
	 execution_mux1_type Mux1 (
    .read_data(read_data2), 
    .sign_extend(sign_extended), 
    .ALUSrc(ALUSrc), 
    .result(mux_1_to_alu)
    );
	 
	 execution_alu_control ALU_control (
    .ALUOp(ALUOp), 
    .funct(alu_control_funct), 
    .select(alu_control_result)
    );

	execution_mux2 Mux2 (
    .ins_20_16(inst_20_16), 
    .ins_15_11(inst_15_11), 
    .RegDst(RegDst), 
    .result(mux_out)
    );

endmodule

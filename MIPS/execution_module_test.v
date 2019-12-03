`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:17 12/03/2019
// Design Name:   execution_module
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/execution_module_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execution_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execution_module_test;

	// Inputs
	reg RegDst;
	reg ALUOp1;
	reg ALUOp2;
	reg ALUSrc;
	reg [31:0] fromIFstage;
	reg [31:0] sign_extended;
	reg [31:0] read_data1;
	reg [31:0] read_data2;
	reg [4:0] inst_20_16;
	reg [4:0] inst_15_11;
	reg MemtoReg;
	reg RegWrite;
	reg MemRead;
	reg MemWrite;
	reg Branch;

	// Outputs
	wire [31:0] add_result;
	wire [31:0] alu_result;
	wire [31:0] read_data2_out;
	wire [4:0] mux_out;
	wire zero_out;
	wire MemtoReg_out;
	wire RegWrite_out;
	wire MemRead_out;
	wire MemWrite_out;
	wire Branch_out;

	// Instantiate the Unit Under Test (UUT)
	execution_module uut (
		.RegDst(RegDst), 
		.ALUOp1(ALUOp1), 
		.ALUOp2(ALUOp2), 
		.ALUSrc(ALUSrc), 
		.fromIFstage(fromIFstage), 
		.sign_extended(sign_extended), 
		.read_data1(read_data1), 
		.read_data2(read_data2), 
		.inst_20_16(inst_20_16), 
		.inst_15_11(inst_15_11), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.add_result(add_result), 
		.alu_result(alu_result), 
		.read_data2_out(read_data2_out), 
		.mux_out(mux_out), 
		.zero_out(zero_out), 
		.MemtoReg_out(MemtoReg_out), 
		.RegWrite_out(RegWrite_out), 
		.MemRead_out(MemRead_out), 
		.MemWrite_out(MemWrite_out), 
		.Branch_out(Branch_out)
	);

	initial begin
		// Initialize Inputs
		RegDst = 0;
		ALUOp1 = 0;
		ALUOp2 = 1;
		ALUSrc = 0;
		fromIFstage = 0;
		sign_extended = 32'b00000000000000000000000000100000;
		read_data1 = 32'b00000000000000000000000000000001;
		read_data2 = 32'b00000000000000000000000000000001;
		inst_20_16 = 5'b00011;
		inst_15_11 = 0;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 0;
		MemWrite = 0;
		Branch = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RegDst = 1;
		ALUOp1 = 0;
		ALUOp2 = 1;
		ALUSrc = 0;
		fromIFstage = 0;
		sign_extended = 32'b00000000000000000000000000100010;
		read_data1 = 32'b00000000000000000000000000000111;
		read_data2 = 32'b00000000000000000000000000000010;
		inst_20_16 = 5'b00011;
		inst_15_11 = 5'b10000;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 0;
		MemWrite = 0;
		Branch = 0;
        
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:38:50 12/12/2019
// Design Name:   memory_pipe
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/memory_pipe_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_pipe
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_pipe_test;

	// Inputs
	reg clk;
	reg rst;
	reg RegWrite;
	reg MemtoReg;
	reg [31:0] read_data_in;
	reg [31:0] alu_result_in;
	reg [4:0] write_reg_in;

	// Outputs
	wire RegWrite_out;
	wire MemtoReg_out;
	wire [31:0] read_data;
	wire [31:0] mem_alu_result;
	wire [4:0] mem_write_reg;

	// Instantiate the Unit Under Test (UUT)
	memory_pipe uut (
		.clk(clk), 
		.rst(rst), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.read_data_in(read_data_in), 
		.alu_result_in(alu_result_in), 
		.write_reg_in(write_reg_in), 
		.RegWrite_out(RegWrite_out), 
		.MemtoReg_out(MemtoReg_out), 
		.read_data(read_data), 
		.mem_alu_result(mem_alu_result), 
		.mem_write_reg(mem_write_reg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		RegWrite = 0;
		MemtoReg = 0;
		read_data_in = 0;
		alu_result_in = 0;
		write_reg_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		
		#100;
		RegWrite = 1;
		read_data_in = 111;
		write_reg_in = 32;
		
        
		// Add stimulus here

	end
	
	always
	#50 clk = ~clk;
      
endmodule


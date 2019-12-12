`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:07 12/12/2019 
// Design Name: 
// Module Name:    memory_pipe 
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
module memory_pipe(clk, rst, RegWrite, MemtoReg, read_data_in, alu_result_in, write_reg_in,
							RegWrite_out, MemtoReg_out, read_data, mem_alu_result, mem_write_reg);

	input clk, rst;
	input RegWrite, MemtoReg;
	input [31:0] read_data_in, alu_result_in;
	input [4:0] write_reg_in;
	
	output reg RegWrite_out, MemtoReg_out;
	output reg [31:0] read_data, mem_alu_result;
	output reg [4:0] mem_write_reg;
	
	always @(posedge clk)
	begin
		if (rst)
		begin
			RegWrite_out <= 0;
			MemtoReg_out <= 0;
			read_data <= 0;
			mem_alu_result <= 0;
			mem_write_reg <= 0;
		end
		
		else
		begin
			RegWrite_out <= RegWrite;
			MemtoReg_out <= MemtoReg;
			read_data <= read_data_in;
			mem_alu_result <= alu_result_in;
			mem_write_reg <= write_reg_in;
		end
	end

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:52 12/04/2019 
// Design Name: 
// Module Name:    decode_registers 
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
module decode_registers(clk, rs_1, rt_2, rd_w, writeData, regWrite, read_data1, read_data2);

	input clk, regWrite;
	input [4:0] rs_1, rt_2, rd_w;
	input [31:0] writeData;
	
	output reg [31:0] read_data1, read_data2;
	
	reg [31:0] registers [2:0];
		
	always @(posedge clk)
	begin
		registers[0] <= 32'b00000000000000000000000000000000;
		registers[1] <= 32'b00000000000000000000000000001111;
		if (regWrite)
		begin
			registers[rd_w] <= writeData;
		end
	end
	
	always @(*)
	begin
		read_data1 <= registers[rs_1];
		read_data2 <= registers[rt_2];
	end
	
endmodule

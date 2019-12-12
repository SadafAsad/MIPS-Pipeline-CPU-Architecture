`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:58 12/12/2019 
// Design Name: 
// Module Name:    fetch_module 
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
module fetch_module(clk, rst, pc_branch, mem_in, PCSrc, instruction, hit, add_out);

	input clk, rst, PCSrc;
	input [31:0] pc_branch;
	input [127:0] mem_in;
	
	output hit;
	output [31:0] instruction, add_out;
	
	wire [31:0] pc_address;
	wire [31:0] pc_wire;
	wire hit_wire;
	
	assign hit = hit_wire;

	fetch_address_generator address_generator (
    .hit(hit_wire), 
    .PCSrc(PCSrc), 
    .address_branch(pc_branch), 
    .address_in(pc_wire), 
    .instruction_address(pc_address), 
    .address_out(add_out)
    );
	 
	 fetch_pc pc (
    .npc(pc_address), 
    .clk(clk), 
    .rst(rst), 
    .pc(pc_wire)
    );

	fetch_instruction_memory instruction_memory (
    .address(pc_wire), 
    .mem_in(mem_in), 
    .instruction(instruction), 
    .hit(hit_wire), 
    .clk(clk), 
    .rst(rst)
    );

endmodule

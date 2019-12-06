`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:56 12/06/2019 
// Design Name: 
// Module Name:    fetch_address_generator 
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
module fetch_address_generator(hit, PCSrc, address_branch, address_in, instruction_address, address_out);

	input [31:0] address_branch, address_in;
	input hit, PCSrc;
	output [31:0] instruction_address, address_out;

	wire [31:0] adder_to_mux;
	
	assign address_out = adder_to_mux;

	fetch_add Add (
    .add_in(address_in), 
    .add_out(adder_to_mux), 
    .hit(hit)
    );
	 
	 fetch_mux Mux (
    .add_result(adder_to_mux), 
    .branch_result(address_branch), 
    .PCSrc(PCSrc), 
    .instruction_address(instruction_address)
    );


endmodule

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:29:37 12/12/2019
// Design Name:   fetch_module
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/fetch_module_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fetch_module_test;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] pc_branch;
	reg [127:0] mem_in;
	reg PCSrc;

	// Outputs
	wire [31:0] instruction;
	wire hit;
	wire [31:0] add_out;

	// Instantiate the Unit Under Test (UUT)
	fetch_module uut (
		.clk(clk), 
		.rst(rst), 
		.pc_branch(pc_branch), 
		.mem_in(mem_in), 
		.PCSrc(PCSrc), 
		.instruction(instruction), 
		.hit(hit), 
		.add_out(add_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		PCSrc = 0;
		pc_branch = 0;
		mem_in = 128'b11111111111111111111111111111111000000000000000000000000000000001111111111111111111111111111111100000000000000000111110000000000;
        
		// Add stimulus here

	end
	
	always
	#50 clk = ~clk;
      
endmodule


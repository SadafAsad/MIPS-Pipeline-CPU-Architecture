`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:09 12/09/2019
// Design Name:   fetch_instruction_memory
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/fetch_instruction_memory_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch_instruction_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fetch_instruction_memory_test;

	// Inputs
	reg [31:0] address;
	reg [127:0] mem_in;
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] instruction;
	wire hit;

	// Instantiate the Unit Under Test (UUT)
	fetch_instruction_memory uut (
		.address(address), 
		.mem_in(mem_in), 
		.instruction(instruction), 
		.hit(hit), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		mem_in = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		address = 32'b00000000000000000000000000001000;
		mem_in = 128'b11111111111111111111111111111111000000000000000000000000000000001111111111111111111111111111111100000000000000000111110000000000;
        
		// Add stimulus here
		#100;
		address = 32'b00000000000000000000000000000001;

	end
	
	always
	#50 clk = ~clk;
      
endmodule


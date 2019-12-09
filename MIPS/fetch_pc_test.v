`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:17:39 12/09/2019
// Design Name:   fetch_pc
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/fetch_pc_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch_pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fetch_pc_test;

	// Inputs
	reg [31:0] npc;
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] pc;

	// Instantiate the Unit Under Test (UUT)
	fetch_pc uut (
		.npc(npc), 
		.clk(clk), 
		.rst(rst), 
		.pc(pc)
	);

	initial begin
		// Initialize Inputs
		npc = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		npc = 32'b00000000000000001111110000000000;
		
		#100;
		npc = 32'b01111000000000001111110000000000;
        
		// Add stimulus here

	end
	
	always
	#50 clk = ~clk;
      
endmodule


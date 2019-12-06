`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:48 12/06/2019
// Design Name:   decode_registers
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/decode_registers_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode_registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode_registers_test;

	// Inputs
	reg clk;
	reg [4:0] rs_1;
	reg [4:0] rt_2;
	reg [4:0] rd_w;
	reg [31:0] writeData;
	reg regWrite;

	// Outputs
	wire [31:0] read_data1;
	wire [31:0] read_data2;

	// Instantiate the Unit Under Test (UUT)
	decode_registers uut (
		.clk(clk), 
		.rs_1(rs_1), 
		.rt_2(rt_2), 
		.rd_w(rd_w), 
		.writeData(writeData), 
		.regWrite(regWrite), 
		.read_data1(read_data1), 
		.read_data2(read_data2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rs_1 = 0;
		rt_2 = 1;
		rd_w = 0;
		writeData = 32'b00000000000000000000000000001111;
		regWrite = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rd_w = 1;
		writeData = 32'b00000000000000111100000000001111;
		regWrite = 1;
		
		#100;
		regWrite = 0;
		
        
		// Add stimulus here

	end
	
	always
	#50 clk = ~clk;
      
endmodule


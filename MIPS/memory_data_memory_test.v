`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:40:20 12/03/2019
// Design Name:   memory_data_memory
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/memory_data_memory_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_data_memory_test;

	// Inputs
	reg memWrite;
	reg memRead;
	reg [31:0] address;
	reg [31:0] writedata;

	// Outputs
	wire [31:0] readdata;

	// Instantiate the Unit Under Test (UUT)
	memory_data_memory uut (
		.memWrite(memWrite), 
		.memRead(memRead), 
		.address(address), 
		.writedata(writedata), 
		.readdata(readdata)
	);

	initial begin
		// Initialize Inputs
		memWrite = 0;
		memRead = 0;
		address = 0;
		writedata = 100;

		// Wait 100 ns for global reset to finish
		#100;
		memWrite = 1;
		
		#100;
		address = 1;
		writedata = 20;
		
		#100;
		memWrite = 0;
		memRead = 1;
		address = 0;
		
		#100;
		address = 1;
        
		// Add stimulus here

	end
      
endmodule


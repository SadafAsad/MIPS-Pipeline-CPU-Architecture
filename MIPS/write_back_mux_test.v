`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:34:18 12/04/2019
// Design Name:   write_back_mux
// Module Name:   D:/GitHub Repositories/MIPS-Pipeline-CPU-Architecture/MIPS/write_back_mux_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: write_back_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module write_back_mux_test;

	// Inputs
	reg [31:0] data;
	reg [31:0] address;
	reg MemtoReg;

	// Outputs
	wire [31:0] writeData;

	// Instantiate the Unit Under Test (UUT)
	write_back_mux uut (
		.data(data), 
		.address(address), 
		.MemtoReg(MemtoReg), 
		.writeData(writeData)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		address = 0;
		MemtoReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
		data = 1;
		
		#100;
		MemtoReg = 1;
		
		#100;
		address = 1111;
        
		// Add stimulus here

	end
      
endmodule


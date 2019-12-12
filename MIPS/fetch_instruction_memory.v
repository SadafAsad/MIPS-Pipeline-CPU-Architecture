`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:39 12/04/2019 
// Design Name: 
// Module Name:    fetch_instruction_memory 
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
module fetch_instruction_memory(address, mem_in, instruction, hit, clk, rst);

	input [31:0] address;
	input [127:0] mem_in;
	input clk, rst;
	
	output reg hit;
	output reg [31:0] instruction;
	
	reg [152:0] cache [2:0];
	
	reg [3:0] counter;
	
	wire [5:0] set;
	wire [23:0] tag;
	wire [1:0] offset;
	
	assign set = address[7:2];
	assign tag = address[31:8];
	assign offset = address[1:0];
	
	always @(posedge clk)
	begin
	
		if (rst)
		begin
			instruction <= 32'b00000000000000000000000000000000;
			counter <= 4'b0000;
			hit <= 0;
		end
		
		else if (cache[set][152] != 1 || counter != 0)
		begin
			hit <= 0;
			if (counter != 8)
			begin
				counter <= counter + 1;
			end
		end
		
	end
	
	always @(*)
	begin
		
		//cache[0] <= 153'b1 ...
		cache[0] <= 153'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111;
		cache[1] <=	153'b100000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000;
		cache[2] <= 153'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000;
	
		if (rst)
		begin
			instruction <= 32'b00000000000000000000000000000000;
			counter <= 4'b0000;
			hit <= 0;
		end
		
		else if (counter == 0 || counter == 8)
		begin
			
			if (cache[set][151:128] == tag)
			begin
			
				if (cache[set][152] == 1)
				begin
					hit <= 1;
					case(offset)
						2'b00: instruction <= cache[set][31:0];
						2'b01: instruction <= cache[set][63:32]; 
						2'b10: instruction <= cache[set][95:64];
						2'b11: instruction <= cache[set][127:96];
					endcase
				end
				
				else
				begin
					
					if (counter == 8)
					begin
						counter <= 4'b0000;
						cache[set][152] <= 1;
						hit <= 1;
						cache [set][31:0] <= mem_in[31:0];
						cache [set][63:32] <= mem_in[63:32];
						cache [set][95:64] <= mem_in[95:64];
						cache [set][127:96] <= mem_in[127:96];
					
						case(offset)
							2'b00: instruction <= cache[set][31:0];
							2'b01: instruction <= cache[set][63:32]; 
							2'b10: instruction <= cache[set][95:64];
							2'b11: instruction <= cache[set][127:96];
						endcase
					end
					
					else
					begin
						hit <= 0;
					end
					
				end
		
			end
		
			else
			begin
			
				if (counter == 8)
				begin
					counter <= 4'b0000;
					cache[set][152] <= 1;
					hit <= 1;
					cache [set][31:0] <= mem_in[31:0];
					cache [set][63:32] <= mem_in[63:32];
					cache [set][95:64] <= mem_in[95:64];
					cache [set][127:96] <= mem_in[127:96];
				
					case(offset)
						2'b00: instruction <= cache[set][31:0];
						2'b01: instruction <= cache[set][63:32]; 
						2'b10: instruction <= cache[set][95:64];
						2'b11: instruction <= cache[set][127:96];
					endcase
				end
				
				else
				begin
					hit <= 0;
				end
				
			end
			
		end
		
		
		
	end
	
endmodule

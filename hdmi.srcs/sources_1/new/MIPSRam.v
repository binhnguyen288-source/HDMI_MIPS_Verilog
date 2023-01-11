`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 07:26:43 PM
// Design Name: 
// Module Name: MIPSRam
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module MIPSRam(
    input clk,
    input mem_write,
    input[31:0] write_address,
    input[31:0] write_data,
    input[31:0] read_address,
    output[31:0] read_data,
    input[29:0] pc,
    output[31:0] out
);
    parameter mem_size = 1024;
    parameter mem_base = 30'h4004000;
    parameter base_text = 30'h00100000;
    parameter total_instructions = 1024;
    logic[31:0] ram[total_instructions + mem_size];
    initial begin
        for (int i = 0; i < mem_size + total_instructions; ++i)
            ram[i] = 32'h0;
        $readmemh("memory.txt", ram, total_instructions);
        $readmemh("instructions.txt", ram, 0);
    end
    always_ff @(posedge clk) begin
        if (mem_write)
            ram[write_address[31:2] - (mem_base - total_instructions)] <= write_data;
    end
    assign read_data = ram[read_address[31:2] - (mem_base - total_instructions)];
    
    
            
    assign out = pc ? ram[pc[19:0]] : 32'h08000000;
    
    
endmodule

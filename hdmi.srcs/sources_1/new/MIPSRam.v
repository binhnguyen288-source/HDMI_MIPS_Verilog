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

`define mem_base 30'h4004000
`define mem_size 1024

module MIPSRam(
    input clk,
    input mem_write,
    input[31:0] write_address,
    input[31:0] write_data,
    input[31:0] read_address,
    output[31:0] read_data
);
    reg[31:0] ram[`mem_size - 1:0];
    initial begin
        $readmemh("memory.txt", ram);
    end
    always @(posedge clk) begin
        if (mem_write)
            ram[write_address[31:2] - `mem_base] <= write_data;
    end
    assign read_data = ram[read_address[31:2] - `mem_base];
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 11:45:15 PM
// Design Name: 
// Module Name: InstructionMem
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

`define total_instructions 256


module InstructionMem #(
    parameter base_text = 30'h00100000
) (
    input[29:0] pc,
    output[31:0] out
);
    reg[31:0] instructions_mem[`total_instructions - 1:0];
    initial $readmemh("instructions.txt", instructions_mem);
    assign out = instructions_mem[pc - base_text];
endmodule

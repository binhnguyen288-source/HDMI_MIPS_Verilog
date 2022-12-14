`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 11:42:24 PM
// Design Name: 
// Module Name: Registers
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


module Registers(
    input clk,
    input[4:0] read_reg_1,
    input[4:0] read_reg_2,
    input en_write,
    input[4:0] write_reg,
    input[31:0] write_data,
    output[31:0] read_data_1,
    output[31:0] read_data_2
);
    reg[31:0] regs[31:0];
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] = 0;
    end
    
    always @(posedge clk) begin
        if (en_write)
            regs[write_reg] <= write_data;
    end
    
    assign read_data_1 = regs[read_reg_1];
    assign read_data_2 = regs[read_reg_2];
endmodule

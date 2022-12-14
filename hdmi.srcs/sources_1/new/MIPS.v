`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 11:43:21 PM
// Design Name: 
// Module Name: MIPS
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


module MIPS(
    input clk,
    output[15:0] write_char_addr,
    output[7:0] write_char,
    output en_write_char
);
    wire[31:0] instruction;
    
    
    wire en_jump;
    wire en_write_reg;
    wire en_syscall;
    wire alu_src;
    wire mem_read;
    wire mem_write;
    wire bne;
    wire beq;
    wire zero_extend;
    wire[1:0] reg_dst;
    ControlUnit control(
        .opcode(instruction[31:26]), 
        .funct(instruction[5:0]), 
        .en_jump(en_jump), 
        .en_write_reg(en_write_reg),
        .en_syscall(en_syscall),
        .alu_src(alu_src),
        .reg_dst(reg_dst),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .bne(bne),
        .beq(beq),
        .zero_extend(zero_extend)
    );
    
    DatapathUnit datapath(
        .clk(clk),
        .en_jump(en_jump),
        .en_write_reg(en_write_reg),
        .en_syscall(en_syscall),
        .alu_src(alu_src),
        .reg_dst(reg_dst),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .bne(bne),
        .beq(beq),
        .zero_extend(zero_extend),
        .instruction(instruction),
        .write_char_addr(write_char_addr),
        .write_char(write_char),
        .en_write_char(en_write_char)
    );
    
endmodule

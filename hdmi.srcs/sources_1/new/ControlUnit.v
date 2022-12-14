`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 11:52:18 PM
// Design Name: 
// Module Name: ControlUnit
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

`define syscall_funct 6'h0c

module ControlUnit(
    input[5:0] opcode,
    input[5:0] funct,
    output reg en_jump = 0,
    output reg en_write_reg = 0,
    output reg en_syscall = 0,
    output reg alu_src = 0,
    output reg[1:0] reg_dst = 0,
    output reg mem_read = 0,
    output reg mem_write = 0,
    output reg bne = 0,
    output reg beq = 0,
    output reg zero_extend = 0
);
    always @(*) begin
        en_jump = 0;
        en_write_reg = 0;
        en_syscall = 0;
        alu_src = 0;
        reg_dst = 0;
        mem_read = 0;
        mem_write = 0;
        bne = 0;
        beq = 0;
        zero_extend = 0;     
        casez (opcode)
            6'h0: begin // reg arithmetic or syscall
            
                en_syscall = funct == `syscall_funct;
                en_jump = funct == 6'h08; // jump reg
                en_write_reg = !en_syscall && !en_jump;
            end
            6'h2: en_jump = 1;
            6'h3: begin
                en_write_reg = 1;
                en_jump = 1;
                reg_dst = 2; // save to register 31
            end
            6'b001???: begin // i arithmetic instructions
                en_write_reg = 1;
                alu_src = 1;
                reg_dst = 1;
                zero_extend = (opcode == 6'hc || opcode == 6'hd);
            end
            6'b100???: begin // load instructions
                en_write_reg = 1;
                alu_src = 1;
                reg_dst = 1;
                mem_read = 1;
            end
            6'b101???: begin // store instructions
                alu_src = 1;
                mem_write = 1;
            end
            6'h4: beq = 1;
            6'h5: bne = 1;
        endcase
    end
endmodule

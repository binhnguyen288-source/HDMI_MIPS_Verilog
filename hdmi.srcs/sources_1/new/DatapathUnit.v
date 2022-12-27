`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 04:29:38 PM
// Design Name: 
// Module Name: DatapathUnit
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

`define base_text 30'h00100000

module DatapathUnit(
    input clk,
    input en_jump,
    input en_write_reg,
    input en_syscall,
    input alu_src,
    input[1:0] reg_dst,
    input mem_read,
    input mem_write,
    input beq,
    input bne,
    input zero_extend,
    output[31:0] instruction,
    output[15:0] write_char_addr,
    output[7:0] write_char,
    output en_write_char
);
    
    reg[29:0] pc = `base_text;
    InstructionMem #(
        .base_text(`base_text)
    ) instr(.pc(pc), .out(instruction));
    
    wire[29:0] inc_pc = pc + 1;
    wire[29:0] pc_jump = {inc_pc[29:26], instruction[25:0]};
    wire[29:0] jump_or_inc = en_jump ? pc_jump : inc_pc;
    wire[3:0] cycles_countdown;
    
    
    wire[4:0] read_reg_1 = en_syscall ? 5'd2 : instruction[25:21]; // read $v0 if syscall
    wire[4:0] read_reg_2 = en_syscall ? 5'd4 : instruction[20:16]; // read $a0 if syscall
    //wire[4:0] read_reg_3 = 5'd5; //  read $a1 for optional argument
    wire[4:0] write_reg = reg_dst == 2'd2 ? 5'd31 :
                          reg_dst == 2'd1 ? instruction[20:16] : 
                                            instruction[15:11];
    wire[31:0] write_reg_data;
    wire[31:0] reg_data_1;
    wire[31:0] reg_data_2;
    Registers regs(
        .clk(clk),
        .read_reg_1(read_reg_1),
        .read_reg_2(read_reg_2),
        .en_write(en_write_reg),
        .write_reg(write_reg),
        .write_data(write_reg_data),
        .read_data_1(reg_data_1),
        .read_data_2(reg_data_2)
    );
    
    wire[5:0] alu_control;
    ALUControl aluctl(
        .opcode(instruction[31:26]),
        .funct(instruction[5:0]),
        .alu_control(alu_control)
    );
    
    wire[31:0] alu_in_1 = reg_data_1;
    wire[31:0] alu_in_2 = alu_src ? {{16{zero_extend ? 1'b0 : instruction[15]}}, instruction[15:0]} : reg_data_2;
    wire[31:0] alu_out;
    wire zero_flag;
    wire en_next;
    ALU alu(
        .clk(clk),
        .alu_control(alu_control),
        .a(alu_in_1),
        .b(alu_in_2),
        .shamt(instruction[10:6]),
        .c(alu_out),
        .zero_flag(zero_flag),
        .en_next(en_next)
    );
    
    
    wire[29:0] bne_pc = (bne & ~zero_flag) ? inc_pc + {{14{instruction[15]}}, instruction[15:0]} : jump_or_inc;
    wire[29:0] beq_pc = (beq & zero_flag)  ? inc_pc + {{14{instruction[15]}}, instruction[15:0]} : bne_pc;
    wire[29:0] pc_next = {instruction[31:26], instruction[5:0]} == 12'h008 ? reg_data_1 : beq_pc;
    
    wire[31:0] mem_read_data;
    
    
    MIPSRam ram(
        .clk(clk),
        .mem_write(mem_write),
        .write_address(alu_out),
        .write_data(reg_data_2),
        .read_address(alu_out),
        .read_data(mem_read_data)
    );
    
    assign write_reg_data = reg_dst == 2'd2 ? inc_pc :
                            mem_read ? mem_read_data : alu_out;
    always @(posedge clk) begin 
        if (en_next)
            pc <= pc_next;
    end
    assign en_write_char = en_syscall;
    assign write_char_addr = reg_data_1[15:0];
    assign write_char = reg_data_2[7:0];
endmodule

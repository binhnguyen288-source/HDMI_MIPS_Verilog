`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 04:27:26 PM
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(
    input[5:0] opcode,
    input[5:0] funct,
    output reg[5:0] alu_control
);
    always @(*) begin
        if (opcode == 6'd0) begin
            case (funct)
                6'h20: alu_control = 6'd1; // add
                6'h21: alu_control = 6'd1; // addu
                6'h22: alu_control = 6'd2; // sub
                6'h23: alu_control = 6'd2; // subu
                6'h24: alu_control = 6'd3; // and
                6'h25: alu_control = 6'd4; // or
                6'h27: alu_control = 6'd5; // nor
                6'h2a: alu_control = 6'd6; // slt
                6'h2b: alu_control = 6'd7; // sltu
                6'h18: alu_control = 6'd8; // mult
                6'h19: alu_control = 6'd9; // multu
                6'h1a: alu_control = 6'd10; // div
                6'h1b: alu_control = 6'd11; // divu
                6'h10: alu_control = 6'd12; // mfhi
                6'h12: alu_control = 6'd13; // mflo
                6'h00: alu_control = 6'd15; // sll
                6'h02: alu_control = 6'd16; // srl
                default: alu_control = 6'd0;
            endcase
        end
        else begin
            casez (opcode)
                6'h4: alu_control = 6'd2; // subtract to get zero flag on beq
                6'h5: alu_control = 6'd2; // subtract to get zero flag on bne
                6'h8: alu_control = 6'd1; // add
                6'h9: alu_control = 6'd1; // addu
                6'ha: alu_control = 6'd6; // slt
                6'hb: alu_control = 6'd7; // sltu
                6'hc: alu_control = 6'd3; // and
                6'hd: alu_control = 6'd4; // or
                6'hf: alu_control = 6'd14; // lui
                6'b10????: alu_control = 6'd1; // load or store so add the immediate
                default: alu_control = 6'd0;
            endcase
        end
    end
endmodule

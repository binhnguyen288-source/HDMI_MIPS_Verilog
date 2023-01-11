`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 11:40:39 PM
// Design Name: 
// Module Name: ALU
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


//module mul32x32(
//    input[31:0] a,
//    input[31:0] b,
//    output[63:0] c
//);
//    wire[31:0] z2 = a[31:16] * b[31:16];
//    wire[31:0] z0 = a[15:0] * b[15:0];
//    wire sign = (a[15:0] < a[31:16]) ^ (b[31:16] < b[15:0]);
//    wire[15:0] a0_a1 = (a[15:0] < a[31:16]) ? a[31:16] - a[15:0] : a[15:0] - a[31:16];
//    wire[15:0] b1_b0 = (b[31:16] < b[15:0]) ? b[15:0] - b[31:16] : b[31:16] - b[15:0];
//    wire[32:0] z1 = sign ? z2 + z0 - a0_a1 * b1_b0 : z2 + z0 + a0_a1 * b1_b0;
//    assign c = {z2, z0} + {z1, {16{1'b0}}};
//endmodule

module ALU(
    input clk,
    input[5:0] alu_control,
    input[31:0] a,
    input[31:0] b,
    input[4:0] shamt,
    output reg[31:0] c,
    output zero_flag
);
    wire signed [31:0] signed_a = a;
    wire signed [31:0] signed_b = b;
    
    reg[31:0] a0b0;
    reg[31:0] a0b1;
    reg[31:0] a1b0;
    reg[31:0] a1b1;
    //wire[63:0] hi_lo = {a1b1, a0b0} + {a1b0 + a0b1, {16{1'b0}}};
    reg[63:0] hi_lo;
    
    always @(posedge clk) begin
        if (alu_control == 6'd8 || alu_control == 6'd9) begin
//            a0b0 <= a[15:0] * b[15:0];
//            a0b1 <= a[15:0] * b[31:16];
//            a1b0 <= a[31:16] * b[15:0];
//            a1b1 <= a[31:16] * b[31:16];
            hi_lo <= a * b;
        end
    end
    
    
    
    always @(*) begin
        case (alu_control)
            6'd1:  c = a + b;
            6'd2:  c = a - b;
            6'd3:  c = a & b;
            6'd4:  c = a | b;
            6'd5:  c = ~(a | b);
            6'd6:  c = signed_a < signed_b;
            6'd7:  c = a < b;
//            6'd8:  c = 0;//cap_count_down = 32;
//            6'd9:  {hi, lo} = a * b;
//            6'd10: cap_count_down = 32;
//            6'd11: {hi, lo} = {a % b, a / b};
            6'd12: c = hi_lo[63:32];
            6'd13: c = hi_lo[31:0];
            6'd14: c = {b[15:0], {16{1'b0}}}; // lui
            6'd15: c = b << shamt;
            6'd16: c = b >> shamt;
            default: c = 0;
        endcase
    end
    assign zero_flag = c == 32'd0;
endmodule
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



module ALU(
    input clk,
    input[5:0] alu_control,
    input[31:0] a,
    input[31:0] b,
    input[4:0] shamt,
    output reg[31:0] c = 0,
    output zero_flag,
    output en_next
);
    wire signed [31:0] signed_a = a;
    wire signed [31:0] signed_b = b;
    reg[63:0] hi_lo = 0;
    reg[63:0] hi_lo_temp = 0;
    
    reg[5:0] count_down = 0;
    reg[5:0] cap_count_down = 0;
    assign en_next = count_down == cap_count_down;
    
    wire[63:0] div_cmp = b << (31-count_down);
    
    always @(posedge clk) begin
        if (!en_next) begin
            if (alu_control == 6'd8) begin
                hi_lo[count_down+:40] <= hi_lo[count_down+:40] + hi_lo_temp;
                count_down            <= count_down + 8;
            end
            else begin
                hi_lo[31-count_down] <= hi_lo_temp[31];
                hi_lo[63:32]         <= hi_lo_temp[63:32];
                count_down           <= count_down + 1;
            end
        end
        else count_down <= 0;
    end
    
    wire[31:0] div_temp_mux = count_down == 0 ? a : hi_lo[63:32];
    
    always @(*) begin
        hi_lo_temp = 0;
        if (alu_control == 6'd8) begin
            hi_lo_temp = a[count_down+:8] * b;
        end else if (alu_control == 6'd10) begin
            hi_lo_temp[31] = div_temp_mux >= div_cmp;
            hi_lo_temp[63:32] = hi_lo_temp[31] ? div_temp_mux - div_cmp : div_temp_mux;
        end
    end
    
    
    always @(*) begin
        c = 0;
        cap_count_down = 0;
        case (alu_control)
            6'd1:  c = a + b;
            6'd2:  c = a - b;
            6'd3:  c = a & b;
            6'd4:  c = a | b;
            6'd5:  c = ~(a | b);
            6'd6:  c = signed_a < signed_b;
            6'd7:  c = a < b;
            6'd8:  cap_count_down = 32;
//            6'd9:  {hi, lo} = a * b;
            6'd10: cap_count_down = 32;
//            6'd11: {hi, lo} = {a % b, a / b};
            6'd12: c = hi_lo[63:32];
            6'd13: c = hi_lo[31:0];
            6'd14: c = {b[15:0], {16{1'b0}}}; // lui
            6'd15: c = b << shamt;
            6'd16: c = b >> shamt;
        endcase
    end
    assign zero_flag = c == 32'd0;
endmodule
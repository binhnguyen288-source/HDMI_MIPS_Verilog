`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2022 04:31:01 AM
// Design Name: 
// Module Name: getPixelText
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


module getPixelText #(
    parameter WIDTH = 800,
    parameter HEIGHT = 600,
    parameter font_width = 7,
    parameter font_height = 10,
    parameter Fontfile = "font.txt"
) (
    input clk,
    input[15:0] wr_addr,
    input[7:0] wr_data,
    input wr_enable,
    input[10:0] x,
    input[10:0] y,
    output[23:0] out_pix
);
  
    localparam num_chars = 95;
    localparam chars_per_line = WIDTH / font_width;
    localparam chars_vert = HEIGHT / font_height;
    
    reg[7:0] str[chars_per_line*chars_vert-1:0];
    reg[15:0] write_pos = 0;
    always @(posedge clk) begin
        if (wr_enable) begin
            str[wr_addr] <= wr_data;
        end
    end
    reg[font_width-1:0] FontMask[num_chars-1:0][font_height-1:0];
    integer i;
    initial begin
        for (i = 0; i < chars_per_line * chars_vert; i = i+1) begin
            str[i] = 8'd32;
        end
        $readmemb(Fontfile, FontMask);
    end
    
    wire[7:0] char_line = x / font_width;
    wire[7:0] char_vert = y / font_height;
    wire[7:0] col = x % font_width;
    wire[7:0] row = y % font_height;
    wire[7:0] rd_char = str[char_vert * chars_per_line + char_line];
    assign out_pix = char_line >= chars_per_line || char_vert >= chars_vert || rd_char <= 8'd32 || rd_char >= 8'd127 ?
                                24'h00_00_00 : 
                                {24{FontMask[rd_char - 8'd32][row][col]}};
    
    
endmodule

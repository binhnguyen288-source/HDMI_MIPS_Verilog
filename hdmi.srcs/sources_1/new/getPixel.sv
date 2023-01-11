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
`define font_width 7
`define font_height 10
`define num_chars 95
module getPixel #(
    parameter WIDTH = 800,
    parameter HEIGHT = 600
) (
    input clk,
    input[15:0] wr_addr,
    input[7:0] wr_data,
    input wr_enable,
    input[10:0] x,
    input[10:0] y,
    output[23:0] out_pix
);
  
    localparam chars_per_line = WIDTH / `font_width;
    localparam chars_vert = HEIGHT / `font_height;
    
    logic[7:0] str[chars_per_line*chars_vert-1:0];
    logic[`font_width-1:0] FontMaskData[`num_chars * `font_height];
    logic[`font_width-1:0] FontMask[`num_chars][`font_height];
    
    initial begin
        for (int i = 0; i < chars_per_line * chars_vert; i = i+1) begin
            str[i] = 8'd32;
        end
        $readmemb("font.txt", FontMaskData);
    end
    
    for (genvar i = 0; i < `num_chars; ++i)
        assign FontMask[i] = FontMaskData[i*`font_height+:`font_height];
    
    
    always_ff @(posedge clk) begin
        if (wr_enable) begin
            str[wr_addr] <= wr_data;
        end
    end
    
    
    logic[7:0] char_line = x / `font_width;
    logic[7:0] char_vert = y / `font_height;
    logic[7:0] col = x % `font_width;
    logic[7:0] row = y % `font_height;
    logic[7:0] rd_char = str[char_vert * chars_per_line + char_line];
    assign out_pix = char_line >= chars_per_line || char_vert >= chars_vert || rd_char < 8'd32 || rd_char >= 8'd127 ?
                                24'h00_00_00 : 
                                {24{FontMask[rd_char - 8'd32][row][col]}};
    
    
endmodule

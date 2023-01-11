`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 03:32:35 AM
// Design Name: 
// Module Name: tmds_encoder
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


module tmds_encoder (
    input clk_pixel,
    input [7:0] VD,
    input [1:0] CD,
    input VDE,
    output[9:0] TMDS
);



    logic[3:0] count1sData = VD[0] + VD[1] + VD[2] + VD[3] + VD[4] + VD[5] + VD[6] + VD[7];
    logic use_XNOR = (count1sData > 4'd4) || (count1sData == 4'd4 && VD[0] == 1'b0);
    logic[8:0] q_m;
    always_comb begin
        q_m[0] = VD[0];
        q_m[1] = VD[0] ^ VD[1];
        q_m[2] = VD[0] ^ VD[1] ^ VD[2];
        q_m[3] = VD[0] ^ VD[1] ^ VD[2] ^ VD[3];
        q_m[4] = VD[0] ^ VD[1] ^ VD[2] ^ VD[3] ^ VD[4];
        q_m[5] = VD[0] ^ VD[1] ^ VD[2] ^ VD[3] ^ VD[4] ^ VD[5];
        q_m[6] = VD[0] ^ VD[1] ^ VD[2] ^ VD[3] ^ VD[4] ^ VD[5] ^ VD[6];
        q_m[7] = VD[0] ^ VD[1] ^ VD[2] ^ VD[3] ^ VD[4] ^ VD[5] ^ VD[6] ^ VD[7];
        q_m[8] = ~use_XNOR;
        if (use_XNOR) begin
            q_m[1] = ~q_m[1];
            q_m[3] = ~q_m[3];
            q_m[5] = ~q_m[5];
            q_m[7] = ~q_m[7];
        end
    end

    logic[9:0] ctrl_data;
    always_comb begin
        case (CD)
            2'b00: ctrl_data = 10'b1101010100;
            2'b01: ctrl_data = 10'b0010101011;
            2'b10: ctrl_data = 10'b0101010100;
            2'b11: ctrl_data = 10'b1010101011;
        endcase
    end

    logic[3:0] disparity;
    logic[9:0] TMDS_reg;
    initial begin
        disparity = 0;
        TMDS_reg = 0;
    end
    
    logic[3:0] diff1s = q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7] - 4'd4;
    logic balanced = (disparity[3] == diff1s[3]);
    logic either_zero = disparity == 0 || diff1s == 0;
    logic invert_q_m = either_zero ? ~q_m[8] : balanced;
    
    logic[3:0] disparity_inc = diff1s - (either_zero || q_m[8] != balanced ? 4'h0 : 4'h1);
    logic[3:0] new_disparity = invert_q_m ? disparity - disparity_inc:
                                            disparity + disparity_inc;
    
    logic[9:0] q_out = {invert_q_m, q_m[8], invert_q_m ? ~q_m[7:0] : q_m[7:0]};
    

    always_ff @(posedge clk_pixel) begin 
        TMDS_reg <= VDE ? q_out : ctrl_data;
        disparity <= VDE ? new_disparity : 4'h0;
    end
    assign TMDS = TMDS_reg;

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 03:31:44 AM
// Design Name: 
// Module Name: tmds_serializer
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



module tmds_serializer(
    input clk_pixel,
    input clk_pixel_x5,
    input internal_reset,
    input[9:0] tmds_internal,
    output tmds_output
);
    wire shift1, shift2;
    
    OSERDESE2 #(
            .DATA_RATE_OQ ("DDR") , // DDR, SDR
            .DATA_RATE_TQ ("SDR") , // DDR, BUF, SDR
            .DATA_WIDTH (10) , // Parallel data width (2-8,10,14)
            .INIT_OQ (1'b0) , // Initial value of OQ output (1'b0,1'b1)
            .INIT_TQ (1'b0) , // Initial value of TQ output (1'b0,1'b1)
            .SERDES_MODE ("MASTER") , // MASTER, SLAVE
            .SRVAL_OQ (1'b0) , // OQ output value when SR is used (1'b0,1'b1)
            .SRVAL_TQ (1'b0) , // TQ output value when SR is used (1'b0,1'b1)
            .TBYTE_CTL ("FALSE") , // Enable tristate byte operation (FALSE, TRUE)
            .TBYTE_SRC ("FALSE") , // Tristate byte source (FALSE, TRUE)
            .TRISTATE_WIDTH (1) // 3-state converter width (1,4)
            )
            OSERDESE2_inst1 (
            .OFB () , // 1-bit output: Feedback path for data
            .OQ (tmds_output) , // 1-bit output: Data path output
            .SHIFTOUT1 () ,
            .SHIFTOUT2 () ,
            .TBYTEOUT () , // 1-bit output: Byte group tristate
            .TFB () , // 1-bit output: 3-state control
            .TQ () , // 1-bit output: 3-state control
            .CLK (clk_pixel_x5) , // 1-bit input: High speed clock
            .CLKDIV (clk_pixel) , // 1-bit input: Divided clock
            .D1 (tmds_internal[0]) ,
            .D2 (tmds_internal[1]) ,
            .D3 (tmds_internal[2]) ,
            .D4 (tmds_internal[3]) ,
            .D5 (tmds_internal[4]) ,
            .D6 (tmds_internal[5]) ,
            .D7 (tmds_internal[6]) ,
            .D8 (tmds_internal[7]) ,
            .OCE (1'b1) , // 1-bit input: Output data clock enable
            .RST (internal_reset) , // 1-bit input: Reset
            .SHIFTIN1 (shift1) ,
            .SHIFTIN2 (shift2) ,
            .T1 (1'b0) ,
            .T2 (1'b0) ,
            .T3 (1'b0) ,
            .T4 (1'b0) ,
            .TBYTEIN (1'b0) , // 1-bit input: Byte group tristate
            .TCE (1'b0) // 1-bit input: 3-state clock enable
            );
    
    
    OSERDESE2 #(
        .DATA_RATE_OQ ("DDR") , // DDR, SDR
        .DATA_RATE_TQ ("SDR") , // DDR, BUF, SDR
        .DATA_WIDTH (10) , // Parallel data width (2-8,10,14)
        .INIT_OQ (1'b0) , // Initial value of OQ output (1'b0,1'b1)
        .INIT_TQ (1'b0) , // Initial value of TQ output (1'b0,1'b1)
        .SERDES_MODE ("SLAVE") , // MASTER, SLAVE
        .SRVAL_OQ (1'b0) , // OQ output value when SR is used (1'b0,1'b1)
        .SRVAL_TQ (1'b0) , // TQ output value when SR is used (1'b0,1'b1)
        .TBYTE_CTL ("FALSE") , // Enable tristate byte operation (FALSE, TRUE)
        .TBYTE_SRC ("FALSE") , // Tristate byte source (FALSE, TRUE)
        .TRISTATE_WIDTH (1) // 3-state converter width (1,4)
    ) OSERDESE2_inst2 (
            .OFB () , // 1-bit output: Feedback path for data
            .OQ () , // 1-bit output: Data path output
            .SHIFTOUT1 (shift1) ,
            .SHIFTOUT2 (shift2) ,
            .TBYTEOUT () , // 1-bit output: Byte group tristate
            .TFB () , // 1-bit output: 3-state control
            .TQ () , // 1-bit output: 3-state control
            .CLK (clk_pixel_x5) , // 1-bit input: High speed clock
            .CLKDIV (clk_pixel) , // 1-bit input: Divided clock
            .D1 () ,
            .D2 () ,
            .D3 (tmds_internal[8]) ,
            .D4 (tmds_internal[9]) ,
            .D5 () ,
            .D6 () ,
            .D7 () ,
            .D8 () ,
            .OCE (1'b1) , // 1-bit input: Output data clock enable
            .RST (internal_reset) , // 1-bit input: Reset
            .SHIFTIN1 () ,
            .SHIFTIN2 () ,
            .T1 (1'b0) ,
            .T2 (1'b0) ,
            .T3 (1'b0) ,
            .T4 (1'b0) ,
            .TBYTEIN (1'b0) , // 1-bit input: Byte group tristate
            .TCE (1'b0) // 1-bit input: 3-state clock enable
      );
endmodule
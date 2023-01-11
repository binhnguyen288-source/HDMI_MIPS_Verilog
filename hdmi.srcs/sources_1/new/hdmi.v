`define WIDTH 800
`define HEIGHT 600
`define H_FP 40
`define H_SYNC 128
`define H_BP 88
`define V_FP 1
`define V_SYNC 4
`define V_BP 23


module hdmi(
    input clk,  // 100MHz
	output TMDSpred, TMDSnred,
	output TMDSpgreen, TMDSngreen,
	output TMDSpblue, TMDSnblue,
	output TMDSp_clock, TMDSn_clock
);

    wire pll_locked;
    wire clk_pixel, clk_pixel_x5, clk_feedback;
    wire clk_mips;
    PLLE2_BASE #(
      .CLKFBOUT_MULT(8),        // Multiply value for all CLKOUT, (2-64)
      .CLKIN1_PERIOD(10.0),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      // CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
      .CLKOUT0_DIVIDE(4),
      .CLKOUT1_DIVIDE(20),
      .CLKOUT2_DIVIDE(40)
   )
   PLLE2_BASE_inst (
      // Clock Outputs: 1-bit (each) output: User configurable clock outputs
      .CLKOUT0(clk_pixel_x5),   // 1-bit output: CLKOUT0
      .CLKOUT1(clk_pixel),   // 1-bit output: CLKOUT1
      .CLKOUT2(clk_mips),   // 1-bit output: CLKOUT2
      .CLKOUT3(),   // 1-bit output: CLKOUT3
      .CLKOUT4(),   // 1-bit output: CLKOUT4
      .CLKOUT5(),   // 1-bit output: CLKOUT5
      // Feedback Clocks: 1-bit (each) output: Clock feedback ports
      .CLKFBOUT(clk_feedback), // 1-bit output: Feedback clock
      .LOCKED(pll_locked),     // 1-bit output: LOCK
      .CLKIN1(clk),     // 1-bit input: Input clock
      // Control Ports: 1-bit (each) input: PLL control ports
      .PWRDWN(1'b0),     // 1-bit input: Power-down
      .RST(1'b0),           // 1-bit input: Reset
      // Feedback Clocks: 1-bit (each) input: Clock feedback ports
      .CLKFBIN(clk_feedback)    // 1-bit input: Feedback clock
   );
    
           
    wire[15:0] wr_addr;
    wire wr_enable;
    wire[7:0] wr_data;
    wire mips_rst;
    MIPS mips(
        .rst(mips_rst),
        .clk(clk_mips), 
        .write_char_addr(wr_addr), 
        .write_char(wr_data), 
        .en_write_char(wr_enable)
    );
    wire fifo_empty;
    wire fifo_rden = ~fifo_empty;
    wire[23:0] fifo_out;
    reg fifo_reset = 1'b1;
    always @(posedge clk_mips) begin
        fifo_reset <= pll_locked ? 1'b0 : fifo_reset;
    end
    assign mips_rst = fifo_reset;
    
    FIFO_DUALCLOCK_MACRO  #(
      .ALMOST_EMPTY_OFFSET(9'h080), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(9'h080),  // Sets almost full threshold
      .DATA_WIDTH(24),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .DEVICE("7SERIES"),  // Target device: "7SERIES" 
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_DUALCLOCK_MACRO_inst (
      .ALMOSTEMPTY(), // 1-bit output almost empty
      .ALMOSTFULL(),   // 1-bit output almost full
      .DO(fifo_out),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fifo_empty),             // 1-bit output empty
      .FULL(),               // 1-bit output full
      .RDCOUNT(),         // Output read count, width determined by FIFO depth
      .RDERR(),             // 1-bit output read error
      .WRCOUNT(),         // Output write count, width determined by FIFO depth
      .WRERR(),             // 1-bit output write error
      .DI({wr_addr, wr_data}),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(clk_pixel),             // 1-bit input read clock
      .RDEN(fifo_rden),               // 1-bit input read enable
      .RST(fifo_reset),                 // 1-bit input reset
      .WRCLK(clk_mips),             // 1-bit input write clock
      .WREN(wr_enable)                // 1-bit input write enable
   );
    
    
    reg [10:0] CounterX = 0, CounterY = 0;
    reg hSync = 0, vSync = 0, DrawArea = 0;
    reg [7:0] red = 0, green = 0, blue = 0;
    wire[23:0] next_pix;
    
    getPixel #(
        .WIDTH(`WIDTH), 
        .HEIGHT(`HEIGHT)
    ) getPix(
        .clk(clk_pixel),
        .wr_addr(fifo_out[23:8]),
        .wr_data(fifo_out[7:0]),
        .wr_enable(fifo_rden),
        .x(CounterX), 
        .y(CounterY), 
        .out_pix(next_pix)
     );
     
     
    
    always @(posedge clk_pixel)
    begin  
        hSync    <= (CounterX >= (`WIDTH + `H_FP)) && (CounterX < (`WIDTH + `H_FP + `H_SYNC));                                              
        vSync    <= (CounterY >= (`HEIGHT + `V_FP)) && (CounterY < (`HEIGHT + `V_FP + `V_SYNC));
        DrawArea <= (CounterX < `WIDTH) && (CounterY < `HEIGHT);
        if (CounterX == `WIDTH + `H_FP + `H_SYNC + `H_BP - 1) begin
            CounterX <= 0;
            CounterY <= (CounterY == `HEIGHT + `V_FP + `V_SYNC + `V_BP - 1) ? 0 : CounterY + 1;
        end
        else CounterX <= CounterX + 1;
        
        { blue, green, red } <= next_pix;
    end
    
    wire [9:0] TMDS_red, TMDS_green, TMDS_blue;
    tmds_encoder encode_R(.clk_pixel(clk_pixel), .VD(red  ), .CD(2'b00)        , .VDE(DrawArea), .TMDS(TMDS_red));
    tmds_encoder encode_G(.clk_pixel(clk_pixel), .VD(green), .CD(2'b00)        , .VDE(DrawArea), .TMDS(TMDS_green));
    tmds_encoder encode_B(.clk_pixel(clk_pixel), .VD(blue ), .CD({vSync,hSync}), .VDE(DrawArea), .TMDS(TMDS_blue));
    
    wire tmds_red_output, tmds_green_output, tmds_blue_output, tmds_clock_output;
    reg serializer_rst = 1'b1;
    always @(posedge clk_pixel)
        serializer_rst <= pll_locked ? 1'b0 : serializer_rst;
    
    tmds_serializer ser_red(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(serializer_rst), .tmds_internal(TMDS_red), .tmds_output(tmds_red_output));
    tmds_serializer ser_green(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(serializer_rst), .tmds_internal(TMDS_green), .tmds_output(tmds_green_output));
    tmds_serializer ser_blue(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(serializer_rst), .tmds_internal(TMDS_blue), .tmds_output(tmds_blue_output));
    tmds_serializer ser_clock(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(serializer_rst), .tmds_internal(10'b00000_11111), .tmds_output(tmds_clock_output));
    OBUFDS OBUFDS_red (.O(TMDSpred), .OB(TMDSnred), .I(tmds_red_output));
    OBUFDS OBUFDS_green (.O(TMDSpgreen), .OB(TMDSngreen), .I(tmds_green_output));
    OBUFDS OBUFDS_blue (.O(TMDSpblue), .OB(TMDSnblue), .I(tmds_blue_output));
    OBUFDS OBUFDS_clock (.O(TMDSp_clock), .OB(TMDSn_clock), .I(tmds_clock_output));
endmodule



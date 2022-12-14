`define WIDTH 800
`define HEIGHT 600
`define H_FP 40
`define H_SYNC 128
`define H_BP 88
`define V_FP 1
`define V_SYNC 4
`define V_BP 23
`define font_width 7
`define font_height 10

module hdmi(
    input clk,  // 100MHz
	output TMDSpred, TMDSnred,
	output TMDSpgreen, TMDSngreen,
	output TMDSpblue, TMDSnblue,
	output TMDSp_clock, TMDSn_clock
);
//    reg clk = 0;
//    always #5 clk = ~clk;
    wire clk_pixel, clk_pixel_x5, clk_feedback;
    PLLE2_BASE #(
      .BANDWIDTH("OPTIMIZED"),  // OPTIMIZED, HIGH, LOW
      .CLKFBOUT_MULT(8),        // Multiply value for all CLKOUT, (2-64)
      .CLKFBOUT_PHASE(0.0),     // Phase offset in degrees of CLKFB, (-360.000-360.000).
      .CLKIN1_PERIOD(10.0),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      // CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
      .CLKOUT0_DIVIDE(4),
      .CLKOUT1_DIVIDE(20),
      .CLKOUT2_DIVIDE(1),
      .CLKOUT3_DIVIDE(1),
      .CLKOUT4_DIVIDE(1),
      .CLKOUT5_DIVIDE(1),
      // CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for each CLKOUT (0.001-0.999).
      .CLKOUT0_DUTY_CYCLE(0.5),
      .CLKOUT1_DUTY_CYCLE(0.5),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .CLKOUT3_DUTY_CYCLE(0.5),
      .CLKOUT4_DUTY_CYCLE(0.5),
      .CLKOUT5_DUTY_CYCLE(0.5),
      // CLKOUT0_PHASE - CLKOUT5_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      .CLKOUT0_PHASE(0.0),
      .CLKOUT1_PHASE(0.0),
      .CLKOUT2_PHASE(0.0),
      .CLKOUT3_PHASE(0.0),
      .CLKOUT4_PHASE(0.0),
      .CLKOUT5_PHASE(0.0),
      .DIVCLK_DIVIDE(1),        // Master division value, (1-56)
      .REF_JITTER1(0.0),        // Reference input jitter in UI, (0.000-0.999).
      .STARTUP_WAIT("FALSE")    // Delay DONE until PLL Locks, ("TRUE"/"FALSE")
   )
   PLLE2_BASE_inst (
      // Clock Outputs: 1-bit (each) output: User configurable clock outputs
      .CLKOUT0(clk_pixel_x5),   // 1-bit output: CLKOUT0
      .CLKOUT1(clk_pixel),   // 1-bit output: CLKOUT1
      .CLKOUT2(),   // 1-bit output: CLKOUT2
      .CLKOUT3(),   // 1-bit output: CLKOUT3
      .CLKOUT4(),   // 1-bit output: CLKOUT4
      .CLKOUT5(),   // 1-bit output: CLKOUT5
      // Feedback Clocks: 1-bit (each) output: Clock feedback ports
      .CLKFBOUT(clk_feedback), // 1-bit output: Feedback clock
      .LOCKED(),     // 1-bit output: LOCK
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
    
    MIPS mips(
        .clk(clk_pixel), 
        .write_char_addr(wr_addr), 
        .write_char(wr_data), 
        .en_write_char(wr_enable)
    );
    
    reg [10:0] CounterX = 0, CounterY = 0;
    reg hSync = 0, vSync = 0, DrawArea = 0;
    reg [7:0] red = 0, green = 0, blue = 0;
    wire[23:0] next_pix;
    
    getPixelText #(
        .WIDTH(`WIDTH), 
        .HEIGHT(`HEIGHT), 
        .font_width(`font_width), 
        .font_height(`font_height), 
        .Fontfile("font.txt")
    ) getPix(
        .clk(clk_pixel),
        .wr_addr(wr_addr),
        .wr_data(wr_data),
        .wr_enable(wr_enable),
        .x(CounterX), 
        .y(CounterY), 
        .out_pix(next_pix)
     );
     
    
    always @(posedge clk_pixel)
    begin  
        hSync    <= (CounterX >= (`WIDTH + `H_FP)) && (CounterX < (`WIDTH + `H_FP + `H_SYNC));                                              
        vSync    <= (CounterY >= (`HEIGHT + `V_FP)) && (CounterY < (`HEIGHT + `V_FP + `V_SYNC));
        DrawArea <= (CounterX < `WIDTH) && (CounterY < `HEIGHT);  
        CounterX <= (CounterX == (`WIDTH + `H_FP + `H_SYNC + `H_BP)) ? 0 : CounterX + 1;
        CounterY <= (CounterX == (`WIDTH + `H_FP + `H_SYNC + `H_BP)) ? (CounterY == (`HEIGHT + `V_FP + `V_SYNC + `V_BP)) ? 0 : CounterY + 1 : CounterY;
        { blue, green, red } <= next_pix;
    end
    
    wire [9:0] TMDS_red, TMDS_green, TMDS_blue;
    tmds_encoder encode_R(.clk_pixel(clk_pixel), .VD(red  ), .CD(2'b00)        , .VDE(DrawArea), .TMDS(TMDS_red));
    tmds_encoder encode_G(.clk_pixel(clk_pixel), .VD(green), .CD(2'b00)        , .VDE(DrawArea), .TMDS(TMDS_green));
    tmds_encoder encode_B(.clk_pixel(clk_pixel), .VD(blue ), .CD({vSync,hSync}), .VDE(DrawArea), .TMDS(TMDS_blue));
    
    wire tmds_red_output, tmds_green_output, tmds_blue_output, tmds_clock_output;
    reg internal_reset = 1'b1;
    always @(posedge clk_pixel) internal_reset <= 1'b0;
    tmds_serializer ser_red(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(internal_reset), .tmds_internal(TMDS_red), .tmds_output(tmds_red_output));
    tmds_serializer ser_green(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(internal_reset), .tmds_internal(TMDS_green), .tmds_output(tmds_green_output));
    tmds_serializer ser_blue(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(internal_reset), .tmds_internal(TMDS_blue), .tmds_output(tmds_blue_output));
    tmds_serializer ser_clock(.clk_pixel(clk_pixel), .clk_pixel_x5(clk_pixel_x5), .internal_reset(internal_reset), .tmds_internal(10'b00000_11111), .tmds_output(tmds_clock_output));
    OBUFDS OBUFDS_red (.O(TMDSpred), .OB(TMDSnred), .I(tmds_red_output));
    OBUFDS OBUFDS_green (.O(TMDSpgreen), .OB(TMDSngreen), .I(tmds_green_output));
    OBUFDS OBUFDS_blue (.O(TMDSpblue), .OB(TMDSnblue), .I(tmds_blue_output));
    OBUFDS OBUFDS_clock (.O(TMDSp_clock), .OB(TMDSn_clock), .I(tmds_clock_output));
endmodule



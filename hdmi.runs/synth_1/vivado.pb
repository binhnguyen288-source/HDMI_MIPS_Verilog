
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/utils_1/imports/synth_1/hdmi.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2o
[C:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/utils_1/imports/synth_1/hdmi.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
s
Command: %s
53*	vivadotcl2B
.synth_design -top hdmi -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
68042default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1190.359 ; gain = 409.387
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
hdmi2default:default2
 2default:default2e
OC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/hdmi.v2default:default2
112default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

PLLE2_BASE2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
1089952default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter CLKFBOUT_MULT bound to: 8 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT0_DIVIDE bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter CLKOUT1_DIVIDE bound to: 20 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter CLKOUT2_DIVIDE bound to: 40 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PLLE2_BASE2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
1089952default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MIPS2default:default2
 2default:default2e
OC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/MIPS.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ControlUnit2default:default2
 2default:default2l
VC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ControlUnit.v2default:default2
242default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2l
VC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ControlUnit.v2default:default2
502default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ControlUnit2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ControlUnit.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
DatapathUnit2default:default2
 2default:default2m
WC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/DatapathUnit.v2default:default2
262default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	Registers2default:default2
 2default:default2j
TC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/Registers.v2default:default2
232default:default8@Z8-6157h px? 
o
%s
*synth2W
C	Parameter init_fp bound to: 32'b00010000000000010100000000000000 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Registers2default:default2
 2default:default2
02default:default2
12default:default2j
TC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/Registers.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

ALUControl2default:default2
 2default:default2k
UC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ALUControl.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ALUControl2default:default2
 2default:default2
02default:default2
12default:default2k
UC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ALUControl.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2d
NC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ALU.v2default:default2
372default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
02default:default2
12default:default2d
NC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/ALU.v2default:default2
372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MIPSRam2default:default2
 2default:default2h
RC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/MIPSRam.v2default:default2
242default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter mem_size bound to: 4096 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter mem_base bound to: 30'b000100000000000100000000000000 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter base_text bound to: 30'b000000000100000000000000000000 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter total_instructions bound to: 1024 - type: integer 
2default:defaulth p
x
? 
?
,$readmem data file '%s' is read successfully3426*oasys2

memory.txt2default:default2h
RC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/MIPSRam.v2default:default2
422default:default8@Z8-3876h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2$
instructions.txt2default:default2h
RC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/MIPSRam.v2default:default2
432default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MIPSRam2default:default2
 2default:default2
02default:default2
12default:default2h
RC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/MIPSRam.v2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
DatapathUnit2default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/DatapathUnit.v2default:default2
262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MIPS2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/MIPS.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2;
'xil_internal_svlib_FIFO_DUALCLOCK_MACRO2default:default2
 2default:default2^
HC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/FIFO_DUALCLOCK_MACRO.v2default:default2
252default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter ALMOST_EMPTY_OFFSET bound to: 9'b010000000 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter ALMOST_FULL_OFFSET bound to: 9'b010000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter FIFO_SIZE bound to: 18Kb - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter FIRST_WORD_FALL_THROUGH bound to: TRUE - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
FIFO18E12default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
391112default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter ALMOST_EMPTY_OFFSET bound to: 9'b010000000 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter ALMOST_FULL_OFFSET bound to: 9'b010000000 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DO_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter EN_SYN bound to: FALSE - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_MODE bound to: FIFO18_36 - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter FIRST_WORD_FALL_THROUGH bound to: TRUE - type: string 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter INIT bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:defaulth p
x
? 
q
%s
*synth2Y
E	Parameter SRVAL bound to: 36'b000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FIFO18E12default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
391112default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'xil_internal_svlib_FIFO_DUALCLOCK_MACRO2default:default2
 2default:default2
02default:default2
12default:default2^
HC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/FIFO_DUALCLOCK_MACRO.v2default:default2
252default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
getPixel2default:default2
 2default:default2j
TC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/getPixel.sv2default:default2
242default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter WIDTH bound to: 800 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter HEIGHT bound to: 600 - type: integer 
2default:defaulth p
x
? 
?
,$readmem data file '%s' is read successfully3426*oasys2
font.txt2default:default2j
TC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/getPixel.sv2default:default2
482default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
getPixel2default:default2
 2default:default2
02default:default2
12default:default2j
TC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/getPixel.sv2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
tmds_encoder2default:default2
 2default:default2n
XC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/tmds_encoder.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
tmds_encoder2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/tmds_encoder.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
tmds_serializer2default:default2
 2default:default2p
ZC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/tmds_serializer.v2default:default2
242default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	OSERDESE22default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
948752default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter INIT_OQ bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter INIT_TQ bound to: 1'b0 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter SERDES_MODE bound to: MASTER - type: string 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SRVAL_OQ bound to: 1'b0 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SRVAL_TQ bound to: 1'b0 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	OSERDESE22default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
948752default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2-
OSERDESE2__parameterized02default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
948752default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter INIT_OQ bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter INIT_TQ bound to: 1'b0 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SERDES_MODE bound to: SLAVE - type: string 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SRVAL_OQ bound to: 1'b0 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter SRVAL_TQ bound to: 1'b0 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
OSERDESE2__parameterized02default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
948752default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
tmds_serializer2default:default2
 2default:default2
02default:default2
12default:default2p
ZC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/tmds_serializer.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OBUFDS2default:default2
 2default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
906762default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUFDS2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Xilinx/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
906762default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hdmi2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/sources_1/new/hdmi.v2default:default2
112default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
wr_addr[15]2default:default2
getPixel2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
wr_addr[14]2default:default2
getPixel2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
wr_addr[13]2default:default2
getPixel2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
write_address[1]2default:default2
MIPSRam2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2$
write_address[0]2default:default2
MIPSRam2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
read_address[1]2default:default2
MIPSRam2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
read_address[0]2default:default2
MIPSRam2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[25]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[24]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[23]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[22]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[21]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[20]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[19]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[18]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[17]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[16]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[15]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[14]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[13]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[12]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[11]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
instruction[10]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[9]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[8]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[7]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
instruction[6]2default:default2
ControlUnit2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1297.984 ; gain = 517.012
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1297.984 ; gain = 517.012
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1297.984 ; gain = 517.012
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
1297.9842default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
62default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2m
WC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/constrs_1/new/constraint.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2m
WC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/constrs_1/new/constraint.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2k
WC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.srcs/constrs_1/new/constraint.xdc2default:default2*
.Xil/hdmi_propImpl.xdc2default:defaultZ1-236h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1341.2582default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 5 instances were transformed.
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 4 instances
  PLLE2_BASE => PLLE2_ADV: 1 instance 
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1341.2582default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1341.258 ; gain = 560.285
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7a35ticsg324-1L
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1341.258 ; gain = 560.285
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1341.258 ; gain = 560.285
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1341.258 ; gain = 560.285
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   30 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    4 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    4 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    4 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit       Adders := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 21    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               30 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	              32x32  Multipliers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	  13 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   10 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  95 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  95 Input    6 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  18 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	2048 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 38    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
t
%s
*synth2\
HDSP Report: Generating DSP datapath/alu/hi_lo0, operation Mode is: A*B.
2default:defaulth p
x
? 

%s
*synth2g
SDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo0.
2default:defaulth p
x
? 

%s
*synth2g
SDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo0.
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: Generating DSP datapath/alu/hi_lo_reg, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
?
%s
*synth2m
YDSP Report: register datapath/alu/hi_lo_reg is absorbed into DSP datapath/alu/hi_lo_reg.
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo_reg.
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP datapath/alu/hi_lo0, operation Mode is: A*B.
2default:defaulth p
x
? 

%s
*synth2g
SDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo0.
2default:defaulth p
x
? 

%s
*synth2g
SDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo0.
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: Generating DSP datapath/alu/hi_lo_reg, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
?
%s
*synth2m
YDSP Report: register datapath/alu/hi_lo_reg is absorbed into DSP datapath/alu/hi_lo_reg.
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo_reg.
2default:defaulth p
x
? 
?
%s
*synth2j
VDSP Report: operator datapath/alu/hi_lo0 is absorbed into DSP datapath/alu/hi_lo_reg.
2default:defaulth p
x
? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
wr_addr[15]2default:default2
getPixel2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
wr_addr[14]2default:default2
getPixel2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
wr_addr[13]2default:default2
getPixel2default:defaultZ8-7129h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[47]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[46]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[45]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[44]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[43]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[42]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[41]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[40]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[39]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[38]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[37]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[36]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[35]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[34]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[33]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[32]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[31]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[30]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[29]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[28]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[27]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[26]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[25]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[24]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[23]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[22]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[21]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[20]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[19]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[18]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
datapath/alu/hi_lo_reg[17]2default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[47]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[46]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[45]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[44]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[43]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[42]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[41]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[40]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[39]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[38]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[37]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[36]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[35]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[34]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[33]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[32]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[31]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[30]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[29]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[28]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[27]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[26]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[25]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[24]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[23]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[22]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[21]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[20]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[19]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[18]__02default:default2
MIPS2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
datapath/alu/hi_lo_reg[17]__02default:default2
MIPS2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:54 ; elapsed = 00:00:56 . Memory (MB): peak = 1407.340 ; gain = 626.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|getPixel    | FontMask   | 128x6         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2q
]+------------+----------------------+-----------+----------------------+-------------------+
2default:defaulth px? 
?
%s*synth2r
^|Module Name | RTL Object           | Inference | Size (Depth x Width) | Primitives        | 
2default:defaulth px? 
?
%s*synth2q
]+------------+----------------------+-----------+----------------------+-------------------+
2default:defaulth px? 
?
%s*synth2r
^|mips        | datapath/ram/ram_reg | Implied   | 8 K x 32             | RAM128X1D x 1280  | 
2default:defaulth px? 
?
%s*synth2r
^|getPix      | str_reg              | Implied   | 8 K x 8              | RAM64M x 321      | 
2default:defaulth px? 
?
%s*synth2r
^+------------+----------------------+-----------+----------------------+-------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|MIPS        | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|MIPS        | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|MIPS        | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|MIPS        | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:01 ; elapsed = 00:01:02 . Memory (MB): peak = 1407.340 ; gain = 626.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:01:06 ; elapsed = 00:01:08 . Memory (MB): peak = 1417.242 ; gain = 636.270
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
? 
?
%s
*synth2q
]+------------+----------------------+-----------+----------------------+-------------------+
2default:defaulth p
x
? 
?
%s
*synth2r
^|Module Name | RTL Object           | Inference | Size (Depth x Width) | Primitives        | 
2default:defaulth p
x
? 
?
%s
*synth2q
]+------------+----------------------+-----------+----------------------+-------------------+
2default:defaulth p
x
? 
?
%s
*synth2r
^|mips        | datapath/ram/ram_reg | Implied   | 8 K x 32             | RAM128X1D x 1280  | 
2default:defaulth p
x
? 
?
%s
*synth2r
^|getPix      | str_reg              | Implied   | 8 K x 8              | RAM64M x 321      | 
2default:defaulth p
x
? 
?
%s
*synth2r
^+------------+----------------------+-----------+----------------------+-------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:01:09 ; elapsed = 00:01:10 . Memory (MB): peak = 1444.250 ; gain = 663.277
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:01:13 ; elapsed = 00:01:14 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:13 ; elapsed = 00:01:14 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:13 ; elapsed = 00:01:15 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | DSP Mapping     | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|MIPS        | A*B             | 17     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|MIPS        | (PCIN>>17+A*B)' | 15     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|MIPS        | A*B             | 17     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|MIPS        | (PCIN>>17+A*B)' | 17     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|1     |BUFG       |     2|
2default:defaulth px? 
H
%s*synth20
|2     |CARRY4     |    63|
2default:defaulth px? 
H
%s*synth20
|3     |DSP48E1    |     4|
2default:defaulth px? 
H
%s*synth20
|5     |FIFO18E1   |     1|
2default:defaulth px? 
H
%s*synth20
|6     |LUT1       |    14|
2default:defaulth px? 
H
%s*synth20
|7     |LUT2       |   178|
2default:defaulth px? 
H
%s*synth20
|8     |LUT3       |   145|
2default:defaulth px? 
H
%s*synth20
|9     |LUT4       |   215|
2default:defaulth px? 
H
%s*synth20
|10    |LUT5       |   245|
2default:defaulth px? 
H
%s*synth20
|11    |LUT6       |  2463|
2default:defaulth px? 
H
%s*synth20
|12    |MUXF7      |   746|
2default:defaulth px? 
H
%s*synth20
|13    |MUXF8      |   197|
2default:defaulth px? 
H
%s*synth20
|14    |OSERDESE2  |     8|
2default:defaulth px? 
H
%s*synth20
|16    |PLLE2_BASE |     1|
2default:defaulth px? 
H
%s*synth20
|17    |RAM128X1D  |  1280|
2default:defaulth px? 
H
%s*synth20
|18    |RAM64M     |   321|
2default:defaulth px? 
H
%s*synth20
|19    |FDRE       |  1345|
2default:defaulth px? 
H
%s*synth20
|20    |FDSE       |     4|
2default:defaulth px? 
H
%s*synth20
|21    |IBUF       |     1|
2default:defaulth px? 
H
%s*synth20
|22    |OBUFDS     |     4|
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:14 ; elapsed = 00:01:15 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 66 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:01:07 ; elapsed = 00:01:14 . Memory (MB): peak = 1458.141 ; gain = 633.895
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:14 ; elapsed = 00:01:15 . Memory (MB): peak = 1458.141 ; gain = 677.168
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0652default:default2
1466.4922default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
26172default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1482.9302default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 1606 instances were transformed.
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 4 instances
  PLLE2_BASE => PLLE2_ADV: 1 instance 
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 1280 instances
  RAM64M => RAM64M (RAMD64E(x4)): 321 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
9a9881142default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
642default:default2
932default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:202default:default2
00:01:212default:default2
1482.9302default:default2
1079.4412default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KC:/Users/nguye/Documents/rever/HDMI_MIPS_Verilog/hdmi.runs/synth_1/hdmi.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2r
^Executing : report_utilization -file hdmi_utilization_synth.rpt -pb hdmi_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jan  9 12:47:36 20232default:defaultZ17-206h px? 


End Record
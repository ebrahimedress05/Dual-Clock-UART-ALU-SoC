module Final_System_dft (
	scan_CLK, 
	scan_RST, 
	test_mode, 
	SE, 
	SI, 
	RX_IN, 
	REF_CLK, 
	UART_CLK, 
	RST, 
	SO, 
	TX_OUT, 
	parity_error, 
	stop_error);
   input scan_CLK;
   input scan_RST;
   input test_mode;
   input SE;
   input [3:0] SI;
   input RX_IN;
   input REF_CLK;
   input UART_CLK;
   input RST;
   output [3:0] SO;
   output TX_OUT;
   output parity_error;
   output stop_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L3_N0;
   wire UART_CLK__L2_N1;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_CLK__L16_N1;
   wire scan_CLK__L16_N0;
   wire scan_CLK__L15_N1;
   wire scan_CLK__L15_N0;
   wire scan_CLK__L14_N1;
   wire scan_CLK__L14_N0;
   wire scan_CLK__L13_N0;
   wire scan_CLK__L12_N0;
   wire scan_CLK__L11_N0;
   wire scan_CLK__L10_N0;
   wire scan_CLK__L9_N0;
   wire scan_CLK__L8_N0;
   wire scan_CLK__L7_N0;
   wire scan_CLK__L6_N0;
   wire scan_CLK__L5_N1;
   wire scan_CLK__L5_N0;
   wire scan_CLK__L4_N1;
   wire scan_CLK__L4_N0;
   wire scan_CLK__L3_N1;
   wire scan_CLK__L3_N0;
   wire scan_CLK__L2_N2;
   wire scan_CLK__L2_N1;
   wire scan_CLK__L2_N0;
   wire scan_CLK__L1_N0;
   wire scan_UART_CLK_neg__L20_N1;
   wire scan_UART_CLK_neg__L20_N0;
   wire scan_UART_CLK_neg__L19_N0;
   wire scan_UART_CLK_neg__L18_N0;
   wire scan_UART_CLK_neg__L17_N0;
   wire scan_UART_CLK_neg__L16_N0;
   wire scan_UART_CLK_neg__L15_N0;
   wire scan_UART_CLK_neg__L14_N0;
   wire scan_UART_CLK_neg__L13_N0;
   wire scan_UART_CLK_neg__L12_N0;
   wire scan_UART_CLK_neg__L11_N0;
   wire scan_UART_CLK_neg__L10_N0;
   wire scan_UART_CLK_neg__L9_N0;
   wire scan_UART_CLK_neg__L8_N0;
   wire scan_UART_CLK_neg__L7_N0;
   wire scan_UART_CLK_neg__L6_N0;
   wire scan_UART_CLK_neg__L5_N0;
   wire scan_UART_CLK_neg__L4_N0;
   wire scan_UART_CLK_neg__L3_N1;
   wire scan_UART_CLK_neg__L3_N0;
   wire scan_UART_CLK_neg__L2_N1;
   wire scan_UART_CLK_neg__L2_N0;
   wire scan_UART_CLK_neg__L1_N0;
   wire scan_REF_CLK__L8_N7;
   wire scan_REF_CLK__L8_N6;
   wire scan_REF_CLK__L8_N5;
   wire scan_REF_CLK__L8_N4;
   wire scan_REF_CLK__L8_N3;
   wire scan_REF_CLK__L8_N2;
   wire scan_REF_CLK__L8_N1;
   wire scan_REF_CLK__L8_N0;
   wire scan_REF_CLK__L7_N3;
   wire scan_REF_CLK__L7_N2;
   wire scan_REF_CLK__L7_N1;
   wire scan_REF_CLK__L7_N0;
   wire scan_REF_CLK__L6_N1;
   wire scan_REF_CLK__L6_N0;
   wire scan_REF_CLK__L5_N0;
   wire scan_REF_CLK__L4_N0;
   wire scan_REF_CLK__L3_N0;
   wire scan_REF_CLK__L2_N0;
   wire scan_REF_CLK__L1_N0;
   wire CLK_ALU__L3_N0;
   wire CLK_ALU__L2_N0;
   wire CLK_ALU__L1_N0;
   wire scan_UART_CLK_pos__L16_N0;
   wire scan_UART_CLK_pos__L15_N0;
   wire scan_UART_CLK_pos__L14_N0;
   wire scan_UART_CLK_pos__L13_N0;
   wire scan_UART_CLK_pos__L12_N0;
   wire scan_UART_CLK_pos__L11_N0;
   wire scan_UART_CLK_pos__L10_N0;
   wire scan_UART_CLK_pos__L9_N0;
   wire scan_UART_CLK_pos__L8_N1;
   wire scan_UART_CLK_pos__L8_N0;
   wire scan_UART_CLK_pos__L7_N1;
   wire scan_UART_CLK_pos__L7_N0;
   wire scan_UART_CLK_pos__L6_N0;
   wire scan_UART_CLK_pos__L5_N0;
   wire scan_UART_CLK_pos__L4_N0;
   wire scan_UART_CLK_pos__L3_N0;
   wire scan_UART_CLK_pos__L2_N1;
   wire scan_UART_CLK_pos__L2_N0;
   wire scan_UART_CLK_pos__L1_N1;
   wire scan_UART_CLK_pos__L1_N0;
   wire scan_CLK_TX__L3_N0;
   wire scan_CLK_TX__L2_N0;
   wire scan_CLK_TX__L1_N0;
   wire scan_CLK_RX__L3_N0;
   wire scan_CLK_RX__L2_N0;
   wire scan_CLK_RX__L1_N0;
   wire FE_OFN6_scan_SYNC_RST_2;
   wire FE_OFN5_scan_SYNC_RST_1;
   wire FE_OFN3_scan_SYNC_RST_1;
   wire FE_OFN2_scan_SYNC_RST_1;
   wire FE_OFN0_scan_SYNC_RST_1;
   wire RST_M;
   wire SYNC_RST_1;
   wire scan_SYNC_RST_1;
   wire SYNC_RST_2;
   wire scan_SYNC_RST_2;
   wire scan_REF_CLK;
   wire scan_UART_CLK_pos;
   wire _0_net_;
   wire scan_UART_CLK_neg;
   wire CLK_TX;
   wire scan_CLK_TX;
   wire CLK_RX;
   wire scan_CLK_RX;
   wire data_valid_RX;
   wire SYNC_Valid;
   wire ALU_OUT_Valid;
   wire RdData_Valid;
   wire W_full;
   wire ALU_EN;
   wire CLK_EN;
   wire WrEn;
   wire RdEN;
   wire W_inc;
   wire CLK_ALU;
   wire R_inc;
   wire R_empty;
   wire Data_Valid_TX;
   wire Busy;
   wire n2;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n33;
   wire [7:0] REG2;
   wire [7:0] P_DATA_RX;
   wire [7:0] SYNC_P_DATA;
   wire [15:0] ALU_OUT;
   wire [7:0] RdData;
   wire [3:0] ALU_FUN;
   wire [3:0] Address;
   wire [7:0] WrData;
   wire [7:0] W_data;
   wire [7:0] REG0;
   wire [7:0] REG1;
   wire [7:0] REG3;
   wire [7:0] R_data;
   wire [7:0] Div_Ratio_RX;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L3_I0 (.Y(UART_CLK__L3_N0), 
	.A(UART_CLK__L2_N1));
   CLKBUFX20M UART_CLK__L2_I1 (.Y(UART_CLK__L2_N1), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKBUFX24M scan_CLK__L16_I1 (.Y(scan_CLK__L16_N1), 
	.A(scan_CLK__L15_N1));
   CLKBUFX24M scan_CLK__L16_I0 (.Y(scan_CLK__L16_N0), 
	.A(scan_CLK__L15_N0));
   CLKBUFX24M scan_CLK__L15_I1 (.Y(scan_CLK__L15_N1), 
	.A(scan_CLK__L14_N1));
   CLKBUFX24M scan_CLK__L15_I0 (.Y(scan_CLK__L15_N0), 
	.A(scan_CLK__L14_N0));
   CLKBUFX24M scan_CLK__L14_I1 (.Y(scan_CLK__L14_N1), 
	.A(scan_CLK__L13_N0));
   BUFX14M scan_CLK__L14_I0 (.Y(scan_CLK__L14_N0), 
	.A(scan_CLK__L13_N0));
   CLKINVX40M scan_CLK__L13_I0 (.Y(scan_CLK__L13_N0), 
	.A(scan_CLK__L12_N0));
   CLKBUFX20M scan_CLK__L12_I0 (.Y(scan_CLK__L12_N0), 
	.A(scan_CLK__L11_N0));
   CLKBUFX20M scan_CLK__L11_I0 (.Y(scan_CLK__L11_N0), 
	.A(scan_CLK__L10_N0));
   CLKBUFX20M scan_CLK__L10_I0 (.Y(scan_CLK__L10_N0), 
	.A(scan_CLK__L9_N0));
   CLKBUFX20M scan_CLK__L9_I0 (.Y(scan_CLK__L9_N0), 
	.A(scan_CLK__L8_N0));
   CLKBUFX20M scan_CLK__L8_I0 (.Y(scan_CLK__L8_N0), 
	.A(scan_CLK__L7_N0));
   CLKBUFX20M scan_CLK__L7_I0 (.Y(scan_CLK__L7_N0), 
	.A(scan_CLK__L6_N0));
   CLKBUFX20M scan_CLK__L6_I0 (.Y(scan_CLK__L6_N0), 
	.A(scan_CLK__L5_N1));
   CLKBUFX20M scan_CLK__L5_I1 (.Y(scan_CLK__L5_N1), 
	.A(scan_CLK__L4_N1));
   CLKINVX40M scan_CLK__L5_I0 (.Y(scan_CLK__L5_N0), 
	.A(scan_CLK__L4_N0));
   CLKBUFX20M scan_CLK__L4_I1 (.Y(scan_CLK__L4_N1), 
	.A(scan_CLK__L3_N1));
   CLKBUFX20M scan_CLK__L4_I0 (.Y(scan_CLK__L4_N0), 
	.A(scan_CLK__L3_N0));
   CLKBUFX20M scan_CLK__L3_I1 (.Y(scan_CLK__L3_N1), 
	.A(scan_CLK__L2_N2));
   CLKINVX6M scan_CLK__L3_I0 (.Y(scan_CLK__L3_N0), 
	.A(scan_CLK__L2_N0));
   CLKBUFX20M scan_CLK__L2_I2 (.Y(scan_CLK__L2_N2), 
	.A(scan_CLK__L1_N0));
   CLKINVX40M scan_CLK__L2_I1 (.Y(scan_CLK__L2_N1), 
	.A(scan_CLK__L1_N0));
   CLKINVX6M scan_CLK__L2_I0 (.Y(scan_CLK__L2_N0), 
	.A(scan_CLK__L1_N0));
   CLKINVX40M scan_CLK__L1_I0 (.Y(scan_CLK__L1_N0), 
	.A(scan_CLK));
   CLKINVX24M scan_UART_CLK_neg__L20_I1 (.Y(scan_UART_CLK_neg__L20_N1), 
	.A(scan_UART_CLK_neg__L19_N0));
   CLKINVX24M scan_UART_CLK_neg__L20_I0 (.Y(scan_UART_CLK_neg__L20_N0), 
	.A(scan_UART_CLK_neg__L19_N0));
   CLKINVX40M scan_UART_CLK_neg__L19_I0 (.Y(scan_UART_CLK_neg__L19_N0), 
	.A(scan_UART_CLK_neg__L18_N0));
   CLKINVX32M scan_UART_CLK_neg__L18_I0 (.Y(scan_UART_CLK_neg__L18_N0), 
	.A(scan_UART_CLK_neg__L17_N0));
   CLKBUFX24M scan_UART_CLK_neg__L17_I0 (.Y(scan_UART_CLK_neg__L17_N0), 
	.A(scan_UART_CLK_neg__L16_N0));
   CLKBUFX24M scan_UART_CLK_neg__L16_I0 (.Y(scan_UART_CLK_neg__L16_N0), 
	.A(scan_UART_CLK_neg__L15_N0));
   CLKBUFX24M scan_UART_CLK_neg__L15_I0 (.Y(scan_UART_CLK_neg__L15_N0), 
	.A(scan_UART_CLK_neg__L14_N0));
   CLKBUFX24M scan_UART_CLK_neg__L14_I0 (.Y(scan_UART_CLK_neg__L14_N0), 
	.A(scan_UART_CLK_neg__L13_N0));
   CLKBUFX24M scan_UART_CLK_neg__L13_I0 (.Y(scan_UART_CLK_neg__L13_N0), 
	.A(scan_UART_CLK_neg__L12_N0));
   CLKBUFX24M scan_UART_CLK_neg__L12_I0 (.Y(scan_UART_CLK_neg__L12_N0), 
	.A(scan_UART_CLK_neg__L11_N0));
   CLKBUFX24M scan_UART_CLK_neg__L11_I0 (.Y(scan_UART_CLK_neg__L11_N0), 
	.A(scan_UART_CLK_neg__L10_N0));
   CLKBUFX24M scan_UART_CLK_neg__L10_I0 (.Y(scan_UART_CLK_neg__L10_N0), 
	.A(scan_UART_CLK_neg__L9_N0));
   CLKBUFX24M scan_UART_CLK_neg__L9_I0 (.Y(scan_UART_CLK_neg__L9_N0), 
	.A(scan_UART_CLK_neg__L8_N0));
   CLKBUFX24M scan_UART_CLK_neg__L8_I0 (.Y(scan_UART_CLK_neg__L8_N0), 
	.A(scan_UART_CLK_neg__L7_N0));
   CLKBUFX24M scan_UART_CLK_neg__L7_I0 (.Y(scan_UART_CLK_neg__L7_N0), 
	.A(scan_UART_CLK_neg__L6_N0));
   CLKBUFX24M scan_UART_CLK_neg__L6_I0 (.Y(scan_UART_CLK_neg__L6_N0), 
	.A(scan_UART_CLK_neg__L5_N0));
   CLKBUFX24M scan_UART_CLK_neg__L5_I0 (.Y(scan_UART_CLK_neg__L5_N0), 
	.A(scan_UART_CLK_neg__L4_N0));
   CLKINVX40M scan_UART_CLK_neg__L4_I0 (.Y(scan_UART_CLK_neg__L4_N0), 
	.A(scan_UART_CLK_neg__L3_N1));
   CLKINVX40M scan_UART_CLK_neg__L3_I1 (.Y(scan_UART_CLK_neg__L3_N1), 
	.A(scan_UART_CLK_neg__L2_N0));
   CLKINVX24M scan_UART_CLK_neg__L3_I0 (.Y(scan_UART_CLK_neg__L3_N0), 
	.A(scan_UART_CLK_neg__L2_N0));
   CLKINVX6M scan_UART_CLK_neg__L2_I1 (.Y(scan_UART_CLK_neg__L2_N1), 
	.A(scan_UART_CLK_neg__L1_N0));
   CLKBUFX40M scan_UART_CLK_neg__L2_I0 (.Y(scan_UART_CLK_neg__L2_N0), 
	.A(scan_UART_CLK_neg__L1_N0));
   CLKINVX8M scan_UART_CLK_neg__L1_I0 (.Y(scan_UART_CLK_neg__L1_N0), 
	.A(scan_UART_CLK_neg));
   CLKINVX40M scan_REF_CLK__L8_I7 (.Y(scan_REF_CLK__L8_N7), 
	.A(scan_REF_CLK__L7_N3));
   CLKINVX40M scan_REF_CLK__L8_I6 (.Y(scan_REF_CLK__L8_N6), 
	.A(scan_REF_CLK__L7_N3));
   CLKINVX40M scan_REF_CLK__L8_I5 (.Y(scan_REF_CLK__L8_N5), 
	.A(scan_REF_CLK__L7_N2));
   CLKINVX40M scan_REF_CLK__L8_I4 (.Y(scan_REF_CLK__L8_N4), 
	.A(scan_REF_CLK__L7_N2));
   CLKINVX40M scan_REF_CLK__L8_I3 (.Y(scan_REF_CLK__L8_N3), 
	.A(scan_REF_CLK__L7_N1));
   CLKINVX32M scan_REF_CLK__L8_I2 (.Y(scan_REF_CLK__L8_N2), 
	.A(scan_REF_CLK__L7_N1));
   CLKINVX40M scan_REF_CLK__L8_I1 (.Y(scan_REF_CLK__L8_N1), 
	.A(scan_REF_CLK__L7_N0));
   CLKINVX40M scan_REF_CLK__L8_I0 (.Y(scan_REF_CLK__L8_N0), 
	.A(scan_REF_CLK__L7_N0));
   CLKINVX32M scan_REF_CLK__L7_I3 (.Y(scan_REF_CLK__L7_N3), 
	.A(scan_REF_CLK__L6_N1));
   CLKINVX32M scan_REF_CLK__L7_I2 (.Y(scan_REF_CLK__L7_N2), 
	.A(scan_REF_CLK__L6_N1));
   CLKINVX40M scan_REF_CLK__L7_I1 (.Y(scan_REF_CLK__L7_N1), 
	.A(scan_REF_CLK__L6_N0));
   CLKINVX40M scan_REF_CLK__L7_I0 (.Y(scan_REF_CLK__L7_N0), 
	.A(scan_REF_CLK__L6_N0));
   CLKINVX40M scan_REF_CLK__L6_I1 (.Y(scan_REF_CLK__L6_N1), 
	.A(scan_REF_CLK__L5_N0));
   CLKINVX40M scan_REF_CLK__L6_I0 (.Y(scan_REF_CLK__L6_N0), 
	.A(scan_REF_CLK__L5_N0));
   CLKINVX32M scan_REF_CLK__L5_I0 (.Y(scan_REF_CLK__L5_N0), 
	.A(scan_REF_CLK__L4_N0));
   CLKINVX40M scan_REF_CLK__L4_I0 (.Y(scan_REF_CLK__L4_N0), 
	.A(scan_REF_CLK__L3_N0));
   CLKINVX32M scan_REF_CLK__L3_I0 (.Y(scan_REF_CLK__L3_N0), 
	.A(scan_REF_CLK__L2_N0));
   CLKINVX32M scan_REF_CLK__L2_I0 (.Y(scan_REF_CLK__L2_N0), 
	.A(scan_REF_CLK__L1_N0));
   CLKINVX16M scan_REF_CLK__L1_I0 (.Y(scan_REF_CLK__L1_N0), 
	.A(scan_REF_CLK));
   CLKINVX32M CLK_ALU__L3_I0 (.Y(CLK_ALU__L3_N0), 
	.A(CLK_ALU__L2_N0));
   BUFX14M CLK_ALU__L2_I0 (.Y(CLK_ALU__L2_N0), 
	.A(CLK_ALU__L1_N0));
   CLKINVX6M CLK_ALU__L1_I0 (.Y(CLK_ALU__L1_N0), 
	.A(CLK_ALU));
   CLKINVX40M scan_UART_CLK_pos__L16_I0 (.Y(scan_UART_CLK_pos__L16_N0), 
	.A(scan_UART_CLK_pos__L15_N0));
   CLKINVX32M scan_UART_CLK_pos__L15_I0 (.Y(scan_UART_CLK_pos__L15_N0), 
	.A(scan_UART_CLK_pos__L14_N0));
   CLKBUFX24M scan_UART_CLK_pos__L14_I0 (.Y(scan_UART_CLK_pos__L14_N0), 
	.A(scan_UART_CLK_pos__L13_N0));
   CLKBUFX24M scan_UART_CLK_pos__L13_I0 (.Y(scan_UART_CLK_pos__L13_N0), 
	.A(scan_UART_CLK_pos__L12_N0));
   CLKBUFX24M scan_UART_CLK_pos__L12_I0 (.Y(scan_UART_CLK_pos__L12_N0), 
	.A(scan_UART_CLK_pos__L11_N0));
   CLKBUFX24M scan_UART_CLK_pos__L11_I0 (.Y(scan_UART_CLK_pos__L11_N0), 
	.A(scan_UART_CLK_pos__L10_N0));
   CLKINVX40M scan_UART_CLK_pos__L10_I0 (.Y(scan_UART_CLK_pos__L10_N0), 
	.A(scan_UART_CLK_pos__L9_N0));
   CLKINVX40M scan_UART_CLK_pos__L9_I0 (.Y(scan_UART_CLK_pos__L9_N0), 
	.A(scan_UART_CLK_pos__L8_N1));
   CLKINVX40M scan_UART_CLK_pos__L8_I1 (.Y(scan_UART_CLK_pos__L8_N1), 
	.A(scan_UART_CLK_pos__L7_N1));
   CLKINVX40M scan_UART_CLK_pos__L8_I0 (.Y(scan_UART_CLK_pos__L8_N0), 
	.A(scan_UART_CLK_pos__L7_N0));
   CLKBUFX20M scan_UART_CLK_pos__L7_I1 (.Y(scan_UART_CLK_pos__L7_N1), 
	.A(scan_UART_CLK_pos__L6_N0));
   CLKBUFX20M scan_UART_CLK_pos__L7_I0 (.Y(scan_UART_CLK_pos__L7_N0), 
	.A(scan_UART_CLK_pos__L6_N0));
   CLKBUFX20M scan_UART_CLK_pos__L6_I0 (.Y(scan_UART_CLK_pos__L6_N0), 
	.A(scan_UART_CLK_pos__L5_N0));
   CLKBUFX20M scan_UART_CLK_pos__L5_I0 (.Y(scan_UART_CLK_pos__L5_N0), 
	.A(scan_UART_CLK_pos__L4_N0));
   CLKBUFX20M scan_UART_CLK_pos__L4_I0 (.Y(scan_UART_CLK_pos__L4_N0), 
	.A(scan_UART_CLK_pos__L3_N0));
   CLKBUFX20M scan_UART_CLK_pos__L3_I0 (.Y(scan_UART_CLK_pos__L3_N0), 
	.A(scan_UART_CLK_pos__L2_N1));
   BUFX16M scan_UART_CLK_pos__L2_I1 (.Y(scan_UART_CLK_pos__L2_N1), 
	.A(scan_UART_CLK_pos__L1_N0));
   CLKINVX40M scan_UART_CLK_pos__L2_I0 (.Y(scan_UART_CLK_pos__L2_N0), 
	.A(scan_UART_CLK_pos__L1_N0));
   CLKBUFX12M scan_UART_CLK_pos__L1_I1 (.Y(scan_UART_CLK_pos__L1_N1), 
	.A(scan_UART_CLK_pos));
   CLKINVX40M scan_UART_CLK_pos__L1_I0 (.Y(scan_UART_CLK_pos__L1_N0), 
	.A(scan_UART_CLK_pos));
   CLKINVX40M scan_CLK_TX__L3_I0 (.Y(scan_CLK_TX__L3_N0), 
	.A(scan_CLK_TX__L2_N0));
   BUFX18M scan_CLK_TX__L2_I0 (.Y(scan_CLK_TX__L2_N0), 
	.A(scan_CLK_TX__L1_N0));
   CLKINVX6M scan_CLK_TX__L1_I0 (.Y(scan_CLK_TX__L1_N0), 
	.A(scan_CLK_TX));
   CLKINVX40M scan_CLK_RX__L3_I0 (.Y(scan_CLK_RX__L3_N0), 
	.A(scan_CLK_RX__L2_N0));
   BUFX14M scan_CLK_RX__L2_I0 (.Y(scan_CLK_RX__L2_N0), 
	.A(scan_CLK_RX__L1_N0));
   CLKINVX6M scan_CLK_RX__L1_I0 (.Y(scan_CLK_RX__L1_N0), 
	.A(scan_CLK_RX));
   BUFX4M FE_OFC6_scan_SYNC_RST_2 (.Y(FE_OFN6_scan_SYNC_RST_2), 
	.A(scan_SYNC_RST_2));
   BUFX4M FE_OFC5_scan_SYNC_RST_1 (.Y(FE_OFN5_scan_SYNC_RST_1), 
	.A(FE_OFN3_scan_SYNC_RST_1));
   CLKINVX6M FE_OFC3_scan_SYNC_RST_1 (.Y(FE_OFN3_scan_SYNC_RST_1), 
	.A(FE_OFN0_scan_SYNC_RST_1));
   CLKINVX6M FE_OFC2_scan_SYNC_RST_1 (.Y(FE_OFN2_scan_SYNC_RST_1), 
	.A(FE_OFN0_scan_SYNC_RST_1));
   CLKINVX1M FE_OFC0_scan_SYNC_RST_1 (.Y(FE_OFN0_scan_SYNC_RST_1), 
	.A(scan_SYNC_RST_1));
   BUFX2M U4 (.Y(n2), 
	.A(test_mode));
   INVX2M U7 (.Y(_0_net_), 
	.A(scan_CLK__L2_N1));
   DLY1X1M U13 (.Y(n24), 
	.A(SE));
   DLY1X1M U14 (.Y(n25), 
	.A(SE));
   DLY1X1M U15 (.Y(n26), 
	.A(SE));
   DLY1X1M U16 (.Y(n27), 
	.A(SE));
   DLY1X1M U17 (.Y(n28), 
	.A(n33));
   DLY1X1M U18 (.Y(n29), 
	.A(n33));
   DLY1X1M U19 (.Y(n30), 
	.A(n33));
   DLY1X1M U20 (.Y(n31), 
	.A(n33));
   DLY1X1M U22 (.Y(n33), 
	.A(n25));
   MUX2x1_2 U0_MUX (.IN_0(RST), 
	.IN_1(scan_RST), 
	.sel(n2), 
	.OUT(RST_M));
   MUX2x1_1 U1_MUX (.IN_0(SYNC_RST_1), 
	.IN_1(scan_RST), 
	.sel(n2), 
	.OUT(scan_SYNC_RST_1));
   MUX2x1_7 U2_MUX (.IN_0(SYNC_RST_2), 
	.IN_1(scan_RST), 
	.sel(n2), 
	.OUT(scan_SYNC_RST_2));
   MUX2x1_0 U3_MUX (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_CLK__L13_N0), 
	.sel(n2), 
	.OUT(scan_REF_CLK));
   MUX2x1_6 U4_MUX (.IN_0(UART_CLK__L3_N0), 
	.IN_1(scan_CLK__L5_N0), 
	.sel(n2), 
	.OUT(scan_UART_CLK_pos));
   MUX2x1_5 U5_MUX (.IN_0(UART_CLK__L2_N0), 
	.IN_1(_0_net_), 
	.sel(n2), 
	.OUT(scan_UART_CLK_neg));
   MUX2x1_4 U6_MUX (.IN_0(CLK_TX), 
	.IN_1(scan_CLK__L16_N0), 
	.sel(n2), 
	.OUT(scan_CLK_TX));
   MUX2x1_3 U7_MUX (.IN_0(CLK_RX), 
	.IN_1(scan_CLK__L16_N1), 
	.sel(n2), 
	.OUT(scan_CLK_RX));
   RST_SYNC_NUM_STAGES2_test_0 RST_SYNC_1 (.RST(RST_M), 
	.CLK(scan_REF_CLK__L8_N1), 
	.SYNC_RST(SYNC_RST_1), 
	.test_si(R_inc), 
	.test_so(n17), 
	.test_se(n30));
   RST_SYNC_NUM_STAGES2_test_1 RST_SYNC_2 (.RST(RST_M), 
	.CLK(scan_UART_CLK_pos__L16_N0), 
	.SYNC_RST(SYNC_RST_2), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(n29));
   UART_RX_test_1 UART_RX (.RX_IN(RX_IN), 
	.prescale({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2] }), 
	.PAR_EN(REG2[0]), 
	.PAR_TYP(REG2[1]), 
	.CLK(scan_CLK_RX__L3_N0), 
	.RST(scan_SYNC_RST_2), 
	.P_DATA({ P_DATA_RX[7],
		P_DATA_RX[6],
		P_DATA_RX[5],
		P_DATA_RX[4],
		P_DATA_RX[3],
		P_DATA_RX[2],
		P_DATA_RX[1],
		P_DATA_RX[0] }), 
	.parity_error(parity_error), 
	.stop_error(stop_error), 
	.data_valid(data_valid_RX), 
	.test_si2(n10), 
	.test_si1(n13), 
	.test_so1(n12), 
	.test_se(n27));
   DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 DATA_SYNC (.unsync_bus({ P_DATA_RX[7],
		P_DATA_RX[6],
		P_DATA_RX[5],
		P_DATA_RX[4],
		P_DATA_RX[3],
		P_DATA_RX[2],
		P_DATA_RX[1],
		P_DATA_RX[0] }), 
	.bus_enable(data_valid_RX), 
	.CLK(scan_REF_CLK__L8_N0), 
	.RST(scan_SYNC_RST_1), 
	.sync_bus({ SYNC_P_DATA[7],
		SYNC_P_DATA[6],
		SYNC_P_DATA[5],
		SYNC_P_DATA[4],
		SYNC_P_DATA[3],
		SYNC_P_DATA[2],
		SYNC_P_DATA[1],
		SYNC_P_DATA[0] }), 
	.enable_pulse(SYNC_Valid), 
	.test_si(n18), 
	.test_se(n24), 
	.scan_REF_CLK__L8_N1(scan_REF_CLK__L8_N1));
   SYS_CTRL_OPER_WIDTH8_ALU_OUT_WIDTH16_Address_width4_test_1 SYS_CTRL (.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_Valid(ALU_OUT_Valid), 
	.RX_P_Data({ SYNC_P_DATA[7],
		SYNC_P_DATA[6],
		SYNC_P_DATA[5],
		SYNC_P_DATA[4],
		SYNC_P_DATA[3],
		SYNC_P_DATA[2],
		SYNC_P_DATA[1],
		SYNC_P_DATA[0] }), 
	.RX_D_VLD(SYNC_Valid), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.FIFO_FULL(W_full), 
	.CLK(scan_REF_CLK__L8_N0), 
	.RST(scan_SYNC_RST_1), 
	.ALU_EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK_EN(CLK_EN), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrEN(WrEn), 
	.RdEN(RdEN), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.TX_P_DATA({ W_data[7],
		W_data[6],
		W_data[5],
		W_data[4],
		W_data[3],
		W_data[2],
		W_data[1],
		W_data[0] }), 
	.TX_D_VLD(W_inc), 
	.test_si2(SI[1]), 
	.test_si1(n16), 
	.test_so2(n13), 
	.test_so1(SO[2]), 
	.test_se(n26), 
	.FE_OFN2_scan_SYNC_RST_1(FE_OFN2_scan_SYNC_RST_1), 
	.FE_OFN3_scan_SYNC_RST_1(FE_OFN3_scan_SYNC_RST_1), 
	.FE_OFN5_scan_SYNC_RST_1(FE_OFN5_scan_SYNC_RST_1), 
	.scan_REF_CLK__L8_N4(scan_REF_CLK__L8_N4));
   regfile_Address_width4_Data_width8_depth16_test_1 regfile (.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrEn(WrEn), 
	.RdEN(RdEN), 
	.CLK(scan_REF_CLK__L8_N0), 
	.RST(scan_SYNC_RST_1), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.REG0({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.REG1({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.REG2({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2],
		REG2[1],
		REG2[0] }), 
	.REG3({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.test_si2(SI[0]), 
	.test_si1(n11), 
	.test_so2(SO[0]), 
	.test_so1(n10), 
	.test_se(n24), 
	.FE_OFN0_scan_SYNC_RST_1(FE_OFN0_scan_SYNC_RST_1), 
	.FE_OFN3_scan_SYNC_RST_1(FE_OFN3_scan_SYNC_RST_1), 
	.FE_OFN5_scan_SYNC_RST_1(FE_OFN5_scan_SYNC_RST_1), 
	.scan_REF_CLK__L8_N1(scan_REF_CLK__L8_N1), 
	.scan_REF_CLK__L8_N2(scan_REF_CLK__L8_N2), 
	.scan_REF_CLK__L8_N3(scan_REF_CLK__L8_N3), 
	.scan_REF_CLK__L8_N4(scan_REF_CLK__L8_N4), 
	.scan_REF_CLK__L8_N6(scan_REF_CLK__L8_N6));
   ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ALU (.A({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.B({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK(CLK_ALU__L3_N0), 
	.RST(FE_OFN2_scan_SYNC_RST_1), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_Valid), 
	.test_si(SI[3]), 
	.test_se(n28), 
	.FE_OFN3_scan_SYNC_RST_1(FE_OFN3_scan_SYNC_RST_1));
   CLK_GATE_dft CLK_GATE (.CLK_EN(CLK_EN), 
	.TE(n2), 
	.CLK(scan_REF_CLK__L2_N0), 
	.GATED_CLK(CLK_ALU));
   ASYNC_FIFO_data_width8_depth8_addr_width4_NUM_STAGES2_test_1 ASYNC_FIFO (.W_data({ W_data[7],
		W_data[6],
		W_data[5],
		W_data[4],
		W_data[3],
		W_data[2],
		W_data[1],
		W_data[0] }), 
	.W_inc(W_inc), 
	.R_inc(R_inc), 
	.W_CLK(scan_REF_CLK__L8_N4), 
	.W_RST(FE_OFN2_scan_SYNC_RST_1), 
	.R_CLK(scan_CLK_TX__L3_N0), 
	.R_RST(FE_OFN6_scan_SYNC_RST_2), 
	.R_data({ R_data[7],
		R_data[6],
		R_data[5],
		R_data[4],
		R_data[3],
		R_data[2],
		R_data[1],
		R_data[0] }), 
	.W_full(W_full), 
	.R_empty(R_empty), 
	.test_si2(SI[2]), 
	.test_si1(ALU_OUT_Valid), 
	.test_so2(n20), 
	.test_so1(SO[3]), 
	.test_se(n25), 
	.FE_OFN5_scan_SYNC_RST_1(FE_OFN5_scan_SYNC_RST_1), 
	.scan_REF_CLK__L8_N5(scan_REF_CLK__L8_N5), 
	.scan_REF_CLK__L8_N6(scan_REF_CLK__L8_N6), 
	.scan_REF_CLK__L8_N7(scan_REF_CLK__L8_N7));
   UART_TX_test_1 UART_TX (.P_DATA({ R_data[7],
		R_data[6],
		R_data[5],
		R_data[4],
		R_data[3],
		R_data[2],
		R_data[1],
		R_data[0] }), 
	.Data_Valid(Data_Valid_TX), 
	.PAR_EN(REG2[0]), 
	.PAR_TYP(REG2[1]), 
	.CLK(scan_CLK_TX__L3_N0), 
	.RST(FE_OFN6_scan_SYNC_RST_2), 
	.TX_OUT(TX_OUT), 
	.Busy(Busy), 
	.test_si(n12), 
	.test_so(n11), 
	.test_se(n26));
   NOT NOT (.X(R_empty), 
	.Y(Data_Valid_TX));
   PULSE_GEN_test_1 PULSE_GEN (.LVL_SIG(Busy), 
	.RST(scan_SYNC_RST_2), 
	.CLK(scan_CLK_TX__L3_N0), 
	.PULSE_SIG(R_inc), 
	.test_si(SYNC_P_DATA[7]), 
	.test_se(n31), 
	.FE_OFN6_scan_SYNC_RST_2(FE_OFN6_scan_SYNC_RST_2));
   ClkDiv_dft_test_0 ClkDiv_RX (.i_ref_clk_pos(scan_UART_CLK_pos__L16_N0), 
	.i_ref_clk_neg(scan_UART_CLK_neg__L20_N0), 
	.i_rst_n(scan_SYNC_RST_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		Div_Ratio_RX[3],
		Div_Ratio_RX[2],
		Div_Ratio_RX[1],
		Div_Ratio_RX[0] }), 
	.o_div_clk(CLK_RX), 
	.test_si(n20), 
	.test_so(n19), 
	.test_se(n24), 
	.scan_UART_CLK_pos__L1_N1(scan_UART_CLK_pos__L1_N1), 
	.scan_UART_CLK_pos__L8_N1(scan_UART_CLK_pos__L8_N1), 
	.scan_UART_CLK_neg__L3_N0(scan_UART_CLK_neg__L3_N0));
   ClkDiv_dft_test_1 ClkDiv_TX (.i_ref_clk_pos(scan_UART_CLK_pos__L16_N0), 
	.i_ref_clk_neg(scan_UART_CLK_neg__L20_N1), 
	.i_rst_n(scan_SYNC_RST_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.o_div_clk(CLK_TX), 
	.test_si(n19), 
	.test_so(n18), 
	.test_se(n27), 
	.scan_UART_CLK_pos__L2_N0(scan_UART_CLK_pos__L2_N0), 
	.scan_UART_CLK_pos__L8_N0(scan_UART_CLK_pos__L8_N0), 
	.scan_UART_CLK_neg__L2_N1(scan_UART_CLK_neg__L2_N1));
   Clk_Div_Mux Clk_Div_Mux (.prescale({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2] }), 
	.Div_Ratio({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		Div_Ratio_RX[3],
		Div_Ratio_RX[2],
		Div_Ratio_RX[1],
		Div_Ratio_RX[0] }));
   BUFX2M U21 (.Y(SO[1]), 
	.A(stop_error));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon Oct  5 01:29:46 2026
/////////////////////////////////////////////////////////////
module MUX2x1_2 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire FE_PHN7_scan_RST;
   wire FE_PHN6_scan_RST;
   wire FE_PHN3_scan_RST;
   wire FE_PHN2_RST;
   wire FE_PHN1_RST;
   wire FE_PHN0_RST;
   wire N0;

   assign N0 = sel ;

   DLY4X1M FE_PHC7_scan_RST (.Y(FE_PHN7_scan_RST), 
	.A(FE_PHN6_scan_RST));
   DLY4X1M FE_PHC6_scan_RST (.Y(FE_PHN6_scan_RST), 
	.A(FE_PHN3_scan_RST));
   DLY4X1M FE_PHC3_scan_RST (.Y(FE_PHN3_scan_RST), 
	.A(IN_1));
   DLY4X1M FE_PHC2_RST (.Y(FE_PHN2_RST), 
	.A(FE_PHN1_RST));
   DLY4X1M FE_PHC1_RST (.Y(FE_PHN1_RST), 
	.A(FE_PHN0_RST));
   DLY4X1M FE_PHC0_RST (.Y(FE_PHN0_RST), 
	.A(IN_0));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN7_scan_RST), 
	.A(FE_PHN2_RST));
endmodule

module MUX2x1_1 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire FE_PHN11_scan_RST;
   wire FE_PHN10_scan_RST;
   wire FE_PHN5_scan_RST;
   wire N0;

   assign N0 = sel ;

   DLY4X1M FE_PHC11_scan_RST (.Y(FE_PHN11_scan_RST), 
	.A(FE_PHN10_scan_RST));
   DLY4X1M FE_PHC10_scan_RST (.Y(FE_PHN10_scan_RST), 
	.A(FE_PHN5_scan_RST));
   DLY4X1M FE_PHC5_scan_RST (.Y(FE_PHN5_scan_RST), 
	.A(IN_1));
   CLKMX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN11_scan_RST), 
	.A(IN_0));
endmodule

module MUX2x1_7 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire FE_PHN9_scan_RST;
   wire FE_PHN8_scan_RST;
   wire FE_PHN4_scan_RST;
   wire N0;

   assign N0 = sel ;

   DLY4X1M FE_PHC9_scan_RST (.Y(FE_PHN9_scan_RST), 
	.A(FE_PHN8_scan_RST));
   DLY4X1M FE_PHC8_scan_RST (.Y(FE_PHN8_scan_RST), 
	.A(FE_PHN4_scan_RST));
   DLY4X1M FE_PHC4_scan_RST (.Y(FE_PHN4_scan_RST), 
	.A(IN_1));
   MX2X8M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN9_scan_RST), 
	.A(IN_0));
endmodule

module MUX2x1_0 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2x1_6 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2x1_5 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2x1_4 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX2x1_3 (
	IN_0, 
	IN_1, 
	sel, 
	OUT);
   input IN_0;
   input IN_1;
   input sel;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = sel ;

   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_so, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \synchronizer[1] ;

   assign test_so = \synchronizer[1]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \synchronizer_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\synchronizer[1] ), 
	.CK(CLK));
   SDFFRQX2M \synchronizer_reg[1]  (.SI(SYNC_RST), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\synchronizer[1] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_so, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \synchronizer[1] ;

   assign test_so = \synchronizer[1]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \synchronizer_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\synchronizer[1] ), 
	.CK(CLK));
   SDFFRQX2M \synchronizer_reg[1]  (.SI(SYNC_RST), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\synchronizer[1] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module FSM_RX_test_1 (
	RX_IN, 
	PAR_EN, 
	edge_cnt, 
	bit_cnt, 
	par_err, 
	strt_glitch, 
	stp_err, 
	prescale, 
	CLK, 
	RST, 
	dat_samp_en, 
	enable, 
	deser_en, 
	par_chk_en, 
	strt_chk_en, 
	stp_chk_en, 
	data_valid, 
	test_si, 
	test_se);
   input RX_IN;
   input PAR_EN;
   input [5:0] edge_cnt;
   input [3:0] bit_cnt;
   input par_err;
   input strt_glitch;
   input stp_err;
   input [5:0] prescale;
   input CLK;
   input RST;
   output dat_samp_en;
   output enable;
   output deser_en;
   output par_chk_en;
   output strt_chk_en;
   output stp_chk_en;
   output data_valid;
   input test_si;
   input test_se;

   // Internal wires
   wire data_valid_comb;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N100;
   wire N101;
   wire N105;
   wire \r94/carry[4] ;
   wire \r94/carry[3] ;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n69;
   wire [3:0] current_state;
   wire [3:0] next_state;

   assign N57 = prescale[1] ;
   assign N101 = PAR_EN ;

   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(n69), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(n69), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(n69), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(n69), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   SDFFRQX2M data_valid_reg (.SI(current_state[3]), 
	.SE(n69), 
	.RN(RST), 
	.Q(data_valid), 
	.D(data_valid_comb), 
	.CK(CLK));
   NOR3BX2M U4 (.Y(n8), 
	.C(current_state[2]), 
	.B(strt_glitch), 
	.AN(n43));
   NOR3X2M U5 (.Y(n43), 
	.C(n47), 
	.B(current_state[3]), 
	.A(current_state[0]));
   NOR4X1M U6 (.Y(n21), 
	.D(current_state[3]), 
	.C(current_state[2]), 
	.B(current_state[1]), 
	.A(n42));
   NOR3XLM U7 (.Y(n40), 
	.C(n21), 
	.B(n8), 
	.A(n41));
   NOR3X2M U8 (.Y(N105), 
	.C(n5), 
	.B(n6), 
	.A(n4));
   NOR3X2M U13 (.Y(n34), 
	.C(bit_cnt[0]), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[1]));
   AOI22XLM U14 (.Y(n16), 
	.B1(n29), 
	.B0(n28), 
	.A1(n27), 
	.A0(n21));
   NOR4BXLM U15 (.Y(n17), 
	.D(n20), 
	.C(n19), 
	.B(n8), 
	.AN(n18));
   INVX2M U18 (.Y(n7), 
	.A(bit_cnt[2]));
   INVX2M U19 (.Y(N58), 
	.A(prescale[2]));
   NAND3X2M U21 (.Y(enable), 
	.C(n40), 
	.B(n33), 
	.A(n15));
   AND2X1M U22 (.Y(N62), 
	.B(prescale[5]), 
	.A(\r94/carry[4] ));
   CLKXOR2X2M U23 (.Y(N61), 
	.B(\r94/carry[4] ), 
	.A(prescale[5]));
   AND2X1M U24 (.Y(\r94/carry[4] ), 
	.B(prescale[4]), 
	.A(\r94/carry[3] ));
   CLKXOR2X2M U25 (.Y(N60), 
	.B(\r94/carry[3] ), 
	.A(prescale[4]));
   AND2X1M U26 (.Y(\r94/carry[3] ), 
	.B(prescale[3]), 
	.A(prescale[2]));
   CLKXOR2X2M U27 (.Y(N59), 
	.B(prescale[2]), 
	.A(prescale[3]));
   CLKINVX1M U28 (.Y(N100), 
	.A(N101));
   CLKNAND2X2M U29 (.Y(n6), 
	.B(bit_cnt[3]), 
	.A(n7));
   CLKXOR2X2M U30 (.Y(n5), 
	.B(bit_cnt[1]), 
	.A(N101));
   CLKXOR2X2M U31 (.Y(n4), 
	.B(bit_cnt[0]), 
	.A(N100));
   NOR2BX1M U32 (.Y(strt_chk_en), 
	.B(n9), 
	.AN(n8));
   NOR3BX1M U34 (.Y(next_state[3]), 
	.C(n12), 
	.B(n11), 
	.AN(N105));
   OAI21X1M U35 (.Y(next_state[2]), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   OAI211X1M U36 (.Y(next_state[1]), 
	.C0(n17), 
	.B0(n16), 
	.A1(n13), 
	.A0(N101));
   NAND4BX1M U37 (.Y(next_state[0]), 
	.D(n30), 
	.C(n18), 
	.B(stp_chk_en), 
	.AN(par_chk_en));
   AOI221XLM U38 (.Y(n30), 
	.C0(n32), 
	.B1(n8), 
	.B0(n9), 
	.A1(n31), 
	.A0(n21));
   CLKINVX1M U39 (.Y(n32), 
	.A(n33));
   NOR3BX1M U40 (.Y(n9), 
	.C(n12), 
	.B(bit_cnt[3]), 
	.AN(n34));
   CLKINVX1M U41 (.Y(n31), 
	.A(n27));
   NOR3BX1M U42 (.Y(n27), 
	.C(n35), 
	.B(bit_cnt[3]), 
	.AN(n34));
   AOI31X1M U43 (.Y(stp_chk_en), 
	.B0(n20), 
	.A2(n36), 
	.A1(n19), 
	.A0(N105));
   CLKINVX1M U44 (.Y(n36), 
	.A(n35));
   OAI32X1M U45 (.Y(par_chk_en), 
	.B1(n39), 
	.B0(n28), 
	.A2(n38), 
	.A1(n35), 
	.A0(n37));
   NOR2X1M U46 (.Y(n28), 
	.B(n12), 
	.A(n37));
   NAND4BBX1M U47 (.Y(n37), 
	.D(bit_cnt[3]), 
	.C(bit_cnt[0]), 
	.BN(bit_cnt[2]), 
	.AN(bit_cnt[1]));
   NAND3BX1M U48 (.Y(n33), 
	.C(n45), 
	.B(n44), 
	.AN(RX_IN));
   NOR3X1M U49 (.Y(n45), 
	.C(current_state[1]), 
	.B(current_state[2]), 
	.A(current_state[0]));
   OAI2B1X1M U50 (.Y(n44), 
	.B0(current_state[3]), 
	.A1N(n46), 
	.A0(stp_err));
   NOR4BX1M U51 (.Y(n15), 
	.D(n19), 
	.C(n20), 
	.B(n29), 
	.AN(n38));
   AND2X1M U52 (.Y(n19), 
	.B(current_state[2]), 
	.A(n43));
   AOI21X1M U53 (.Y(n20), 
	.B0(n11), 
	.A1(N105), 
	.A0(n48));
   CLKNAND2X2M U54 (.Y(n11), 
	.B(current_state[2]), 
	.A(n49));
   CLKINVX1M U55 (.Y(n29), 
	.A(n39));
   CLKNAND2X2M U56 (.Y(n39), 
	.B(current_state[0]), 
	.A(n50));
   CLKNAND2X2M U57 (.Y(n38), 
	.B(n42), 
	.A(n50));
   NOR3X1M U58 (.Y(n50), 
	.C(n51), 
	.B(current_state[3]), 
	.A(current_state[1]));
   NOR2X1M U59 (.Y(deser_en), 
	.B(n18), 
	.A(n35));
   CLKNAND2X2M U60 (.Y(n18), 
	.B(n14), 
	.A(n41));
   NAND3X1M U61 (.Y(n14), 
	.C(bit_cnt[3]), 
	.B(n34), 
	.A(n48));
   CLKINVX1M U62 (.Y(n48), 
	.A(n12));
   NAND4X1M U63 (.Y(n12), 
	.D(n55), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   NOR3X1M U64 (.Y(n55), 
	.C(n58), 
	.B(n57), 
	.A(n56));
   CLKXOR2X2M U65 (.Y(n58), 
	.B(edge_cnt[4]), 
	.A(prescale[4]));
   CLKXOR2X2M U66 (.Y(n57), 
	.B(edge_cnt[1]), 
	.A(N57));
   CLKXOR2X2M U67 (.Y(n56), 
	.B(edge_cnt[0]), 
	.A(prescale[0]));
   XNOR2X1M U68 (.Y(n54), 
	.B(prescale[2]), 
	.A(edge_cnt[2]));
   XNOR2X1M U69 (.Y(n53), 
	.B(prescale[3]), 
	.A(edge_cnt[3]));
   XNOR2X1M U70 (.Y(n52), 
	.B(prescale[5]), 
	.A(edge_cnt[5]));
   CLKINVX1M U71 (.Y(n41), 
	.A(n13));
   CLKNAND2X2M U72 (.Y(n13), 
	.B(n51), 
	.A(n49));
   CLKINVX1M U73 (.Y(n51), 
	.A(current_state[2]));
   NOR3X1M U74 (.Y(n49), 
	.C(n42), 
	.B(current_state[3]), 
	.A(n47));
   CLKINVX1M U75 (.Y(n47), 
	.A(current_state[1]));
   NAND4X1M U76 (.Y(n35), 
	.D(n62), 
	.C(n61), 
	.B(n60), 
	.A(n59));
   NOR3X1M U77 (.Y(n62), 
	.C(n65), 
	.B(n64), 
	.A(n63));
   CLKXOR2X2M U78 (.Y(n65), 
	.B(N61), 
	.A(edge_cnt[4]));
   CLKXOR2X2M U79 (.Y(n64), 
	.B(N58), 
	.A(edge_cnt[1]));
   CLKXOR2X2M U80 (.Y(n63), 
	.B(N57), 
	.A(edge_cnt[0]));
   XNOR2X1M U81 (.Y(n61), 
	.B(N59), 
	.A(edge_cnt[2]));
   XNOR2X1M U82 (.Y(n60), 
	.B(N60), 
	.A(edge_cnt[3]));
   XNOR2X1M U83 (.Y(n59), 
	.B(N62), 
	.A(edge_cnt[5]));
   NOR4X1M U84 (.Y(data_valid_comb), 
	.D(current_state[2]), 
	.C(stp_err), 
	.B(current_state[1]), 
	.A(n66));
   NAND3X1M U85 (.Y(n66), 
	.C(current_state[3]), 
	.B(n42), 
	.A(n46));
   CLKINVX1M U86 (.Y(n42), 
	.A(current_state[0]));
   CLKNAND2X2M U87 (.Y(n46), 
	.B(N101), 
	.A(par_err));
   DLY1X1M U88 (.Y(n69), 
	.A(test_se));
endmodule

module data_sampling_test_1 (
	RX_IN, 
	prescale, 
	edge_cnt, 
	CLK, 
	RST, 
	dat_samp_en, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se);
   input RX_IN;
   input [5:0] prescale;
   input [5:0] edge_cnt;
   input CLK;
   input RST;
   input dat_samp_en;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire bit_1;
   wire bit_2;
   wire bit_3;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire n26;
   wire n27;
   wire \add_28/carry[4] ;
   wire \add_28/carry[3] ;
   wire \add_28/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   assign test_so = bit_3 ;

   SDFFRQX2M bit_3_reg (.SI(bit_2), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_3), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M bit_2_reg (.SI(bit_1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_2), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX2M bit_1_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_1), 
	.D(n27), 
	.CK(CLK));
   NOR4X1M U4 (.Y(N12), 
	.D(n8), 
	.C(n9), 
	.B(n10), 
	.A(n14));
   MXI2XLM U5 (.Y(n27), 
	.S0(N12), 
	.B(n16), 
	.A(n33));
   NOR4XLM U6 (.Y(n17), 
	.D(n20), 
	.C(N12), 
	.B(n19), 
	.A(n18));
   OR2X2M U7 (.Y(n1), 
	.B(prescale[1]), 
	.A(prescale[2]));
   ADDHX1M U8 (.S(N17), 
	.CO(\add_28/carry[4] ), 
	.B(\add_28/carry[3] ), 
	.A(prescale[4]));
   ADDHX1M U11 (.S(N16), 
	.CO(\add_28/carry[3] ), 
	.B(\add_28/carry[2] ), 
	.A(prescale[3]));
   ADDHX1M U12 (.S(N15), 
	.CO(\add_28/carry[2] ), 
	.B(prescale[1]), 
	.A(prescale[2]));
   ADDHX1M U13 (.S(N18), 
	.CO(N19), 
	.B(\add_28/carry[4] ), 
	.A(prescale[5]));
   CLKINVX1M U14 (.Y(N6), 
	.A(prescale[1]));
   OAI2BB1X1M U15 (.Y(N7), 
	.B0(n1), 
	.A1N(prescale[2]), 
	.A0N(prescale[1]));
   OR2X1M U16 (.Y(n2), 
	.B(prescale[3]), 
	.A(n1));
   OAI2BB1X1M U17 (.Y(N8), 
	.B0(n2), 
	.A1N(prescale[3]), 
	.A0N(n1));
   XNOR2X1M U18 (.Y(N9), 
	.B(n2), 
	.A(prescale[4]));
   NOR3X1M U19 (.Y(N11), 
	.C(n2), 
	.B(prescale[5]), 
	.A(prescale[4]));
   OAI21X1M U20 (.Y(n3), 
	.B0(prescale[5]), 
	.A1(n2), 
	.A0(prescale[4]));
   NAND2BX1M U21 (.Y(N10), 
	.B(n3), 
	.AN(N11));
   NOR2BX1M U22 (.Y(n4), 
	.B(N6), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U23 (.Y(n7), 
	.B1(n4), 
	.B0(edge_cnt[1]), 
	.A1N(N7), 
	.A0(n4));
   NOR2BX1M U24 (.Y(n5), 
	.B(edge_cnt[0]), 
	.AN(N6));
   OAI2B2X1M U25 (.Y(n6), 
	.B1(n5), 
	.B0(N7), 
	.A1N(edge_cnt[1]), 
	.A0(n5));
   NAND4BBX1M U26 (.Y(n14), 
	.D(n6), 
	.C(n7), 
	.BN(edge_cnt[5]), 
	.AN(N11));
   CLKXOR2X2M U27 (.Y(n10), 
	.B(edge_cnt[4]), 
	.A(N10));
   CLKXOR2X2M U28 (.Y(n9), 
	.B(edge_cnt[2]), 
	.A(N8));
   CLKXOR2X2M U29 (.Y(n8), 
	.B(edge_cnt[3]), 
	.A(N9));
   ADDFX1M U30 (.CO(sampled_bit), 
	.CI(bit_1), 
	.B(bit_3), 
	.A(bit_2));
   MXI2X1M U31 (.Y(n39), 
	.S0(n17), 
	.B(n16), 
	.A(n15));
   NOR4X1M U32 (.Y(n20), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   CLKNAND2X2M U33 (.Y(n19), 
	.B(n28), 
	.A(n25));
   XNOR2X1M U34 (.Y(n28), 
	.B(N6), 
	.A(edge_cnt[0]));
   XNOR2X1M U35 (.Y(n25), 
	.B(N15), 
	.A(edge_cnt[1]));
   NAND4X1M U36 (.Y(n18), 
	.D(n32), 
	.C(n31), 
	.B(n30), 
	.A(n29));
   XNOR2X1M U37 (.Y(n32), 
	.B(N16), 
	.A(edge_cnt[2]));
   XNOR2X1M U38 (.Y(n31), 
	.B(N17), 
	.A(edge_cnt[3]));
   XNOR2X1M U39 (.Y(n30), 
	.B(N18), 
	.A(edge_cnt[4]));
   XNOR2X1M U40 (.Y(n29), 
	.B(N19), 
	.A(edge_cnt[5]));
   CLKNAND2X2M U41 (.Y(n15), 
	.B(bit_3), 
	.A(dat_samp_en));
   CLKNAND2X2M U42 (.Y(n33), 
	.B(bit_1), 
	.A(dat_samp_en));
   MXI2X1M U43 (.Y(n26), 
	.S0(n35), 
	.B(n16), 
	.A(n34));
   NOR3X1M U44 (.Y(n35), 
	.C(n24), 
	.B(n23), 
	.A(n36));
   CLKXOR2X2M U45 (.Y(n24), 
	.B(prescale[3]), 
	.A(edge_cnt[2]));
   NAND3BX1M U46 (.Y(n23), 
	.C(n38), 
	.B(n37), 
	.AN(edge_cnt[5]));
   XNOR2X1M U47 (.Y(n38), 
	.B(prescale[1]), 
	.A(edge_cnt[0]));
   XNOR2X1M U48 (.Y(n37), 
	.B(prescale[2]), 
	.A(edge_cnt[1]));
   OR3X1M U49 (.Y(n36), 
	.C(n22), 
	.B(N12), 
	.A(n21));
   CLKXOR2X2M U50 (.Y(n22), 
	.B(prescale[4]), 
	.A(edge_cnt[3]));
   CLKXOR2X2M U51 (.Y(n21), 
	.B(prescale[5]), 
	.A(edge_cnt[4]));
   CLKNAND2X2M U52 (.Y(n16), 
	.B(RX_IN), 
	.A(dat_samp_en));
   CLKNAND2X2M U53 (.Y(n34), 
	.B(bit_2), 
	.A(dat_samp_en));
endmodule

module deserializer_test_1 (
	deser_en, 
	sampled_bit, 
	bit_cnt, 
	CLK, 
	RST, 
	P_DATA, 
	test_si, 
	test_se);
   input deser_en;
   input sampled_bit;
   input [3:0] bit_cnt;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   input test_si;
   input test_se;

   // Internal wires
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n11;
   wire n12;
   wire n33;
   wire n34;
   wire n37;
   wire n38;

   SDFFRQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(n38), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(n38), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(n37), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(n38), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(n38), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(n38), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(n37), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(n38), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n28), 
	.CK(CLK));
   INVX2M U13 (.Y(n34), 
	.A(sampled_bit));
   OAI2BB2X1M U14 (.Y(n25), 
	.B1(n34), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[0]));
   NAND4X2M U15 (.Y(n13), 
	.D(n33), 
	.C(n14), 
	.B(bit_cnt[0]), 
	.A(deser_en));
   NOR2X2M U16 (.Y(n14), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[3]));
   NOR4BX1M U17 (.Y(n16), 
	.D(bit_cnt[3]), 
	.C(bit_cnt[2]), 
	.B(n33), 
	.AN(deser_en));
   OAI2BB2X1M U18 (.Y(n26), 
	.B1(n15), 
	.B0(n34), 
	.A1N(n15), 
	.A0N(P_DATA[1]));
   NAND2X2M U19 (.Y(n15), 
	.B(n12), 
	.A(n16));
   OAI2BB2X1M U20 (.Y(n27), 
	.B1(n17), 
	.B0(n34), 
	.A1N(n17), 
	.A0N(P_DATA[2]));
   NAND2X2M U21 (.Y(n17), 
	.B(bit_cnt[0]), 
	.A(n16));
   OAI2BB2X1M U22 (.Y(n28), 
	.B1(n18), 
	.B0(n34), 
	.A1N(n18), 
	.A0N(P_DATA[3]));
   NAND3X2M U23 (.Y(n18), 
	.C(n11), 
	.B(n33), 
	.A(n12));
   OAI2BB2X1M U24 (.Y(n29), 
	.B1(n19), 
	.B0(n34), 
	.A1N(n19), 
	.A0N(P_DATA[4]));
   NAND3X2M U25 (.Y(n19), 
	.C(n11), 
	.B(n33), 
	.A(bit_cnt[0]));
   OAI2BB2X1M U26 (.Y(n30), 
	.B1(n20), 
	.B0(n34), 
	.A1N(n20), 
	.A0N(P_DATA[5]));
   NAND3X2M U27 (.Y(n20), 
	.C(n11), 
	.B(n12), 
	.A(bit_cnt[1]));
   OAI2BB2X1M U28 (.Y(n31), 
	.B1(n21), 
	.B0(n34), 
	.A1N(n21), 
	.A0N(P_DATA[6]));
   NAND3X2M U29 (.Y(n21), 
	.C(n11), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   OAI2BB2X1M U30 (.Y(n32), 
	.B1(n23), 
	.B0(n34), 
	.A1N(n23), 
	.A0N(P_DATA[7]));
   NAND4XLM U31 (.Y(n23), 
	.D(n12), 
	.C(n24), 
	.B(deser_en), 
	.A(bit_cnt[3]));
   NOR2X2M U32 (.Y(n24), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   INVX2M U33 (.Y(n11), 
	.A(n22));
   NAND3BXLM U34 (.Y(n22), 
	.C(bit_cnt[2]), 
	.B(deser_en), 
	.AN(bit_cnt[3]));
   INVX2M U35 (.Y(n33), 
	.A(bit_cnt[1]));
   INVX2M U36 (.Y(n12), 
	.A(bit_cnt[0]));
   DLY1X1M U37 (.Y(n37), 
	.A(n38));
   DLY1X1M U38 (.Y(n38), 
	.A(test_se));
endmodule

module edge_bit_counter_test_1 (
	enable, 
	CLK, 
	RST, 
	prescale, 
	edge_cnt, 
	bit_cnt, 
	test_si, 
	test_se);
   input enable;
   input CLK;
   input RST;
   input [5:0] prescale;
   output [5:0] edge_cnt;
   output [3:0] bit_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;
   wire N5;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire n17;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire \add_19_aco/carry[5] ;
   wire \add_19_aco/carry[4] ;
   wire \add_19_aco/carry[3] ;
   wire \add_19_aco/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n15;
   wire n16;
   wire n18;
   wire n21;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;

   SDFFRQX2M \edge_cnt_reg[5]  (.SI(edge_cnt[4]), 
	.SE(n50), 
	.RN(RST), 
	.Q(edge_cnt[5]), 
	.D(N18), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(n52), 
	.RN(RST), 
	.Q(edge_cnt[3]), 
	.D(N16), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(n49), 
	.RN(RST), 
	.Q(edge_cnt[2]), 
	.D(N15), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(n51), 
	.RN(RST), 
	.Q(edge_cnt[4]), 
	.D(N17), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(n17), 
	.SE(n51), 
	.RN(RST), 
	.Q(edge_cnt[0]), 
	.D(N13), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(edge_cnt[0]), 
	.SE(n50), 
	.RN(RST), 
	.Q(edge_cnt[1]), 
	.D(N14), 
	.CK(CLK));
   SDFFRX2M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(n49), 
	.RN(RST), 
	.QN(n17), 
	.Q(bit_cnt[3]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(n52), 
	.RN(RST), 
	.Q(bit_cnt[2]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(n50), 
	.RN(RST), 
	.Q(bit_cnt[0]), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(n49), 
	.RN(RST), 
	.Q(bit_cnt[1]), 
	.D(n30), 
	.CK(CLK));
   AND2X2M U7 (.Y(n1), 
	.B(N5), 
	.A(edge_cnt[0]));
   AND2X2M U14 (.Y(n2), 
	.B(N5), 
	.A(edge_cnt[1]));
   AND2X2M U15 (.Y(n3), 
	.B(edge_cnt[5]), 
	.A(N5));
   AND2X2M U16 (.Y(n4), 
	.B(N5), 
	.A(edge_cnt[2]));
   AND2X2M U17 (.Y(n15), 
	.B(N5), 
	.A(edge_cnt[3]));
   AND2X2M U18 (.Y(n16), 
	.B(N5), 
	.A(edge_cnt[4]));
   INVX2M U19 (.Y(n42), 
	.A(enable));
   NOR3X2M U22 (.Y(n24), 
	.C(n43), 
	.B(n28), 
	.A(n42));
   NOR2X2M U23 (.Y(n28), 
	.B(N4), 
	.A(n42));
   AOI21X2M U24 (.Y(n27), 
	.B0(n28), 
	.A1(enable), 
	.A0(n43));
   NOR2X2M U25 (.Y(N13), 
	.B(n42), 
	.A(n1));
   NOR2BX2M U26 (.Y(N14), 
	.B(n42), 
	.AN(N8));
   NOR2BX2M U27 (.Y(N15), 
	.B(n42), 
	.AN(N9));
   NOR2BX2M U28 (.Y(N16), 
	.B(n42), 
	.AN(N10));
   NOR2BX2M U29 (.Y(N17), 
	.B(n42), 
	.AN(N11));
   CLKINVX1M U30 (.Y(N5), 
	.A(N4));
   INVX2M U31 (.Y(n40), 
	.A(n26));
   AOI32X1M U32 (.Y(n26), 
	.B1(bit_cnt[2]), 
	.B0(n25), 
	.A2(n24), 
	.A1(n45), 
	.A0(bit_cnt[1]));
   OAI21X2M U33 (.Y(n25), 
	.B0(n27), 
	.A1(n42), 
	.A0(bit_cnt[1]));
   OAI2BB2X1M U34 (.Y(n30), 
	.B1(n44), 
	.B0(n27), 
	.A1N(n24), 
	.A0N(n44));
   INVX2M U35 (.Y(n44), 
	.A(bit_cnt[1]));
   OAI21X2M U36 (.Y(n29), 
	.B0(n23), 
	.A1(n17), 
	.A0(n22));
   NAND4X2M U37 (.Y(n23), 
	.D(n17), 
	.C(n24), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   AOI21X2M U38 (.Y(n22), 
	.B0(n25), 
	.A1(n45), 
	.A0(enable));
   NOR2X2M U39 (.Y(N18), 
	.B(n42), 
	.A(n18));
   XNOR2X2M U40 (.Y(n18), 
	.B(n3), 
	.A(\add_19_aco/carry[5] ));
   OAI32X1M U41 (.Y(n31), 
	.B1(n41), 
	.B0(n43), 
	.A2(n28), 
	.A1(bit_cnt[0]), 
	.A0(n42));
   INVX2M U42 (.Y(n41), 
	.A(n28));
   ADDHX1M U43 (.S(N8), 
	.CO(\add_19_aco/carry[2] ), 
	.B(n1), 
	.A(n2));
   ADDHX1M U44 (.S(N9), 
	.CO(\add_19_aco/carry[3] ), 
	.B(\add_19_aco/carry[2] ), 
	.A(n4));
   ADDHX1M U45 (.S(N10), 
	.CO(\add_19_aco/carry[4] ), 
	.B(\add_19_aco/carry[3] ), 
	.A(n15));
   ADDHX1M U46 (.S(N11), 
	.CO(\add_19_aco/carry[5] ), 
	.B(\add_19_aco/carry[4] ), 
	.A(n16));
   INVX2M U47 (.Y(n43), 
	.A(bit_cnt[0]));
   INVX2M U48 (.Y(n45), 
	.A(bit_cnt[2]));
   NOR2BX1M U49 (.Y(n21), 
	.B(prescale[0]), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U50 (.Y(n35), 
	.B1(n21), 
	.B0(edge_cnt[1]), 
	.A1N(prescale[1]), 
	.A0(n21));
   NOR2BX1M U51 (.Y(n32), 
	.B(edge_cnt[0]), 
	.AN(prescale[0]));
   OAI2B2X1M U52 (.Y(n34), 
	.B1(n32), 
	.B0(prescale[1]), 
	.A1N(edge_cnt[1]), 
	.A0(n32));
   XNOR2X1M U53 (.Y(n33), 
	.B(edge_cnt[5]), 
	.A(prescale[5]));
   NAND3X1M U54 (.Y(n39), 
	.C(n33), 
	.B(n34), 
	.A(n35));
   CLKXOR2X2M U55 (.Y(n38), 
	.B(edge_cnt[4]), 
	.A(prescale[4]));
   CLKXOR2X2M U56 (.Y(n37), 
	.B(edge_cnt[2]), 
	.A(prescale[2]));
   CLKXOR2X2M U57 (.Y(n36), 
	.B(edge_cnt[3]), 
	.A(prescale[3]));
   NOR4X1M U58 (.Y(N4), 
	.D(n36), 
	.C(n37), 
	.B(n38), 
	.A(n39));
   INVXLM U59 (.Y(n48), 
	.A(test_se));
   INVXLM U60 (.Y(n49), 
	.A(n48));
   INVXLM U61 (.Y(n50), 
	.A(n48));
   INVXLM U62 (.Y(n51), 
	.A(n48));
   INVXLM U63 (.Y(n52), 
	.A(n48));
endmodule

module parity_check_test_1 (
	par_chk_en, 
	sampled_bit, 
	PAR_TYP, 
	P_DATA, 
	CLK, 
	RST, 
	par_err, 
	test_si, 
	test_se);
   input par_chk_en;
   input sampled_bit;
   input PAR_TYP;
   input [7:0] P_DATA;
   input CLK;
   input RST;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n2;

   SDFFRQX4M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_err), 
	.D(n9), 
	.CK(CLK));
   OAI2BB2X1M U3 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_err));
   XOR3XLM U4 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   INVX2M U5 (.Y(n2), 
	.A(par_chk_en));
   XNOR2X2M U6 (.Y(n5), 
	.B(PAR_TYP), 
	.A(P_DATA[2]));
   XOR3XLM U7 (.Y(n4), 
	.C(n6), 
	.B(P_DATA[5]), 
	.A(P_DATA[6]));
   XNOR2X2M U8 (.Y(n6), 
	.B(P_DATA[7]), 
	.A(sampled_bit));
   XOR3XLM U9 (.Y(n3), 
	.C(n7), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U10 (.Y(n7), 
	.B(P_DATA[3]), 
	.A(P_DATA[4]));
endmodule

module stop_check_test_1 (
	stp_chk_en, 
	sampled_bit, 
	CLK, 
	RST, 
	stp_err, 
	test_si, 
	test_se);
   input stp_chk_en;
   input sampled_bit;
   input CLK;
   input RST;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;

   SDFFRQX4M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stp_err), 
	.D(n3), 
	.CK(CLK));
   OAI2BB2X1M U2 (.Y(n3), 
	.B1(stp_chk_en), 
	.B0(sampled_bit), 
	.A1N(stp_chk_en), 
	.A0N(stp_err));
endmodule

module strt_check_test_1 (
	strt_chk_en, 
	sampled_bit, 
	CLK, 
	RST, 
	strt_glitch, 
	test_si, 
	test_se);
   input strt_chk_en;
   input sampled_bit;
   input CLK;
   input RST;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(strt_glitch), 
	.D(N4), 
	.CK(CLK));
   AND2X2M U4 (.Y(N4), 
	.B(sampled_bit), 
	.A(strt_chk_en));
endmodule

module UART_RX_test_1 (
	RX_IN, 
	prescale, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	P_DATA, 
	parity_error, 
	stop_error, 
	data_valid, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se);
   input RX_IN;
   input [5:0] prescale;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   output parity_error;
   output stop_error;
   output data_valid;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;

   // Internal wires
   wire FE_PT0_;
   wire FE_UNCONNECTED_0;
   wire strt_glitch;
   wire enable;
   wire deser_en;
   wire par_chk_en;
   wire strt_chk_en;
   wire stp_chk_en;
   wire sampled_bit;
   wire n4;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire [5:0] edge_cnt;
   wire [3:0] bit_cnt;

   assign test_so1 = strt_glitch ;

   DLY1X1M U3 (.Y(n7), 
	.A(test_se));
   DLY1X1M U4 (.Y(n8), 
	.A(test_se));
   DLY1X1M U5 (.Y(n9), 
	.A(test_se));
   DLY1X1M U6 (.Y(n10), 
	.A(test_se));
   FSM_RX_test_1 FSM_RX (.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.par_err(parity_error), 
	.strt_glitch(strt_glitch), 
	.stp_err(stop_error), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.dat_samp_en(FE_PT0_), 
	.enable(enable), 
	.deser_en(deser_en), 
	.par_chk_en(par_chk_en), 
	.strt_chk_en(strt_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.data_valid(data_valid), 
	.test_si(test_si1), 
	.test_se(n10));
   data_sampling_test_1 data_sampling (.RX_IN(RX_IN), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.dat_samp_en(enable), 
	.sampled_bit(sampled_bit), 
	.test_si(data_valid), 
	.test_so(n4), 
	.test_se(n8));
   deserializer_test_1 deserializer (.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n4), 
	.test_se(n10));
   edge_bit_counter_test_1 edge_bit_counter (.enable(enable), 
	.CLK(CLK), 
	.RST(RST), 
	.prescale({ prescale[5],
		prescale[4],
		prescale[3],
		prescale[2],
		prescale[1],
		prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.test_si(P_DATA[7]), 
	.test_se(n7));
   parity_check_test_1 parity_check (.par_chk_en(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.CLK(CLK), 
	.RST(RST), 
	.par_err(parity_error), 
	.test_si(edge_cnt[5]), 
	.test_se(n9));
   stop_check_test_1 stop_check (.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.CLK(CLK), 
	.RST(RST), 
	.stp_err(stop_error), 
	.test_si(test_si2), 
	.test_se(n9));
   strt_check_test_1 strt_check (.strt_chk_en(strt_chk_en), 
	.sampled_bit(sampled_bit), 
	.CLK(CLK), 
	.RST(RST), 
	.strt_glitch(strt_glitch), 
	.test_si(parity_error), 
	.test_se(n10));
endmodule

module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 (
	unsync_bus, 
	bus_enable, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_se, 
	scan_REF_CLK__L8_N1);
   input [7:0] unsync_bus;
   input bus_enable;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   input test_se;
   input scan_REF_CLK__L8_N1;

   // Internal wires
   wire pulse;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n24;
   wire n27;
   wire n28;
   wire [1:0] MULTI_FLIP_FLOP;

   SDFFRQX2M pulse_reg (.SI(enable_pulse), 
	.SE(n28), 
	.RN(RST), 
	.Q(pulse), 
	.D(MULTI_FLIP_FLOP[0]), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[0]  (.SI(test_si), 
	.SE(n27), 
	.RN(RST), 
	.Q(MULTI_FLIP_FLOP[0]), 
	.D(MULTI_FLIP_FLOP[1]), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(n28), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(n28), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(pulse), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(n28), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(n28), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(MULTI_FLIP_FLOP[1]), 
	.SE(n27), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n24), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[1]  (.SI(MULTI_FLIP_FLOP[0]), 
	.SE(n28), 
	.RN(RST), 
	.Q(MULTI_FLIP_FLOP[1]), 
	.D(bus_enable), 
	.CK(scan_REF_CLK__L8_N1));
   NAND2BX2M U3 (.Y(n1), 
	.B(MULTI_FLIP_FLOP[0]), 
	.AN(pulse));
   INVX2M U4 (.Y(n24), 
	.A(n1));
   AO22X1M U7 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n24), 
	.A0(unsync_bus[4]));
   AO22X1M U8 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n24), 
	.A0(unsync_bus[2]));
   AO22X1M U9 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n24), 
	.A0(unsync_bus[6]));
   AO22X1M U10 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n24), 
	.A0(unsync_bus[1]));
   AO22X1M U11 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n24), 
	.A0(unsync_bus[5]));
   AO22X1M U12 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n24), 
	.A0(unsync_bus[0]));
   AO22X1M U25 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n24), 
	.A0(unsync_bus[3]));
   AO22X1M U26 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n24), 
	.A0(unsync_bus[7]));
   DLY1X1M U27 (.Y(n27), 
	.A(test_se));
   DLY1X1M U28 (.Y(n28), 
	.A(test_se));
endmodule

module SYS_CTRL_OPER_WIDTH8_ALU_OUT_WIDTH16_Address_width4_test_1 (
	ALU_OUT, 
	OUT_Valid, 
	RX_P_Data, 
	RX_D_VLD, 
	RdData, 
	RdData_Valid, 
	FIFO_FULL, 
	CLK, 
	RST, 
	ALU_EN, 
	ALU_FUN, 
	CLK_EN, 
	Address, 
	WrEN, 
	RdEN, 
	WrData, 
	TX_P_DATA, 
	TX_D_VLD, 
	clk_div_en, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_scan_SYNC_RST_1, 
	FE_OFN3_scan_SYNC_RST_1, 
	FE_OFN5_scan_SYNC_RST_1, 
	scan_REF_CLK__L8_N4);
   input [15:0] ALU_OUT;
   input OUT_Valid;
   input [7:0] RX_P_Data;
   input RX_D_VLD;
   input [7:0] RdData;
   input RdData_Valid;
   input FIFO_FULL;
   input CLK;
   input RST;
   output ALU_EN;
   output [3:0] ALU_FUN;
   output CLK_EN;
   output [3:0] Address;
   output WrEN;
   output RdEN;
   output [7:0] WrData;
   output [7:0] TX_P_DATA;
   output TX_D_VLD;
   output clk_div_en;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_scan_SYNC_RST_1;
   input FE_OFN3_scan_SYNC_RST_1;
   input FE_OFN5_scan_SYNC_RST_1;
   input scan_REF_CLK__L8_N4;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire n1;
   wire n2;
   wire n3;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n26;
   wire n27;
   wire n29;
   wire n30;
   wire n32;
   wire n34;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n55;
   wire n62;
   wire n68;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n82;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n106;
   wire n108;
   wire n110;
   wire n112;
   wire n114;
   wire n116;
   wire n118;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n69;
   wire n81;
   wire n83;
   wire n84;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n24;
   wire [3:0] current_state;
   wire [15:8] ALU_OUT_registerd;
   wire [3:0] next_state;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M \ALU_OUT_registerd_reg[15]  (.SI(ALU_OUT_registerd[14]), 
	.SE(n149), 
	.RN(FE_OFN2_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[15]), 
	.D(n120), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[14]  (.SI(ALU_OUT_registerd[13]), 
	.SE(n150), 
	.RN(FE_OFN2_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[14]), 
	.D(n118), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[13]  (.SI(ALU_OUT_registerd[12]), 
	.SE(n149), 
	.RN(FE_OFN2_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[13]), 
	.D(n116), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[12]  (.SI(ALU_OUT_registerd[11]), 
	.SE(n150), 
	.RN(FE_OFN2_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[12]), 
	.D(n114), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[11]  (.SI(ALU_OUT_registerd[10]), 
	.SE(n149), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[11]), 
	.D(n112), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[10]  (.SI(ALU_OUT_registerd[9]), 
	.SE(n150), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[10]), 
	.D(n110), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[9]  (.SI(ALU_OUT_registerd[8]), 
	.SE(n149), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[9]), 
	.D(n108), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \ALU_OUT_registerd_reg[8]  (.SI(test_si1), 
	.SE(n150), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT_registerd[8]), 
	.D(n106), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRX1M \internal_address_reg[2]  (.SI(n141), 
	.SE(n148), 
	.RN(RST), 
	.QN(n140), 
	.Q(n91), 
	.D(n122), 
	.CK(CLK));
   SDFFRX1M \internal_address_reg[3]  (.SI(n140), 
	.SE(n148), 
	.RN(RST), 
	.QN(test_so2), 
	.Q(n90), 
	.D(n123), 
	.CK(CLK));
   SDFFRX1M \internal_ALU_FUN_reg[1]  (.SI(n145), 
	.SE(n150), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.QN(n144), 
	.Q(n88), 
	.D(n125), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRX1M \internal_ALU_FUN_reg[2]  (.SI(n144), 
	.SE(n149), 
	.RN(RST), 
	.QN(n151), 
	.Q(n87), 
	.D(n126), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRX1M \internal_ALU_FUN_reg[3]  (.SI(test_si2), 
	.SE(n148), 
	.RN(RST), 
	.QN(n143), 
	.Q(n86), 
	.D(n127), 
	.CK(CLK));
   SDFFRX1M \internal_address_reg[1]  (.SI(n142), 
	.SE(n148), 
	.RN(RST), 
	.QN(n141), 
	.Q(n92), 
	.D(n121), 
	.CK(CLK));
   SDFFRX1M \internal_address_reg[0]  (.SI(n143), 
	.SE(n148), 
	.RN(RST), 
	.QN(n142), 
	.Q(n89), 
	.D(n124), 
	.CK(CLK));
   SDFFRX1M \internal_ALU_FUN_reg[0]  (.SI(current_state[3]), 
	.SE(n148), 
	.RN(RST), 
	.QN(n145), 
	.Q(n85), 
	.D(n128), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(n150), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(n149), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(ALU_OUT_registerd[15]), 
	.SE(n150), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(n149), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   OAI21X2M U5 (.Y(Address[0]), 
	.B0(n7), 
	.A1(n83), 
	.A0(n82));
   NOR2X2M U6 (.Y(Address[1]), 
	.B(n67), 
	.A(n82));
   NOR2X2M U7 (.Y(Address[2]), 
	.B(n69), 
	.A(n82));
   OAI21X2M U8 (.Y(ALU_EN), 
	.B0(n59), 
	.A1(n3), 
	.A0(FIFO_FULL));
   NOR2X2M U9 (.Y(ALU_FUN[0]), 
	.B(n131), 
	.A(n52));
   NOR2X2M U10 (.Y(ALU_FUN[2]), 
	.B(n151), 
	.A(n52));
   NOR2X2M U11 (.Y(Address[3]), 
	.B(n81), 
	.A(n82));
   AOI2B1X1M U12 (.Y(n82), 
	.B0(RdEN), 
	.A1N(n37), 
	.A0(RX_D_VLD));
   NOR2X2M U13 (.Y(n15), 
	.B(current_state[3]), 
	.A(n64));
   NOR2X2M U14 (.Y(n16), 
	.B(current_state[1]), 
	.A(current_state[0]));
   NOR2X2M U15 (.Y(n13), 
	.B(current_state[0]), 
	.A(n66));
   AOI32X1M U16 (.Y(n6), 
	.B1(n63), 
	.B0(n16), 
	.A2(current_state[3]), 
	.A1(current_state[2]), 
	.A0(n13));
   INVX2M U17 (.Y(n52), 
	.A(ALU_EN));
   INVX2M U18 (.Y(n59), 
	.A(n41));
   NOR2X2M U20 (.Y(n72), 
	.B(n59), 
	.A(n53));
   INVX2M U21 (.Y(n54), 
	.A(WrEN));
   INVX2M U22 (.Y(n56), 
	.A(n50));
   INVX2M U23 (.Y(n58), 
	.A(n55));
   CLKINVX1M U26 (.Y(n51), 
	.A(FIFO_FULL));
   NAND3X2M U27 (.Y(n38), 
	.C(n13), 
	.B(n51), 
	.A(n15));
   NOR2X2M U28 (.Y(ALU_FUN[1]), 
	.B(n84), 
	.A(n52));
   NOR2X2M U29 (.Y(ALU_FUN[3]), 
	.B(n130), 
	.A(n52));
   OR3X2M U30 (.Y(TX_D_VLD), 
	.C(n72), 
	.B(n70), 
	.A(n73));
   NOR2X2M U32 (.Y(n73), 
	.B(FIFO_FULL), 
	.A(n6));
   NOR2X2M U33 (.Y(n3), 
	.B(n32), 
	.A(n60));
   INVX2M U34 (.Y(n61), 
	.A(n47));
   NAND4BX1M U35 (.Y(next_state[2]), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.AN(n9));
   AOI221XLM U36 (.Y(n12), 
	.C0(n17), 
	.B1(n16), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   NAND4BX1M U37 (.Y(next_state[3]), 
	.D(n59), 
	.C(n3), 
	.B(n2), 
	.AN(n1));
   OAI211X2M U38 (.Y(n1), 
	.C0(n8), 
	.B0(n7), 
	.A1(n6), 
	.A0(n51));
   INVX2M U39 (.Y(n60), 
	.A(n45));
   OAI22X1M U40 (.Y(n41), 
	.B1(n47), 
	.B0(n68), 
	.A1(n23), 
	.A0(n64));
   OAI21X2M U41 (.Y(WrEN), 
	.B0(n7), 
	.A1(n137), 
	.A0(n48));
   NAND2X2M U42 (.Y(n10), 
	.B(n15), 
	.A(n61));
   INVX2M U43 (.Y(n53), 
	.A(OUT_Valid));
   AND2X2M U44 (.Y(n48), 
	.B(n10), 
	.A(n37));
   NOR2X2M U45 (.Y(n50), 
	.B(n2), 
	.A(n137));
   NOR2X2M U46 (.Y(WrData[0]), 
	.B(n136), 
	.A(n54));
   NOR2X2M U47 (.Y(WrData[1]), 
	.B(n135), 
	.A(n54));
   NOR2X2M U48 (.Y(WrData[2]), 
	.B(n134), 
	.A(n54));
   NOR2X2M U49 (.Y(WrData[3]), 
	.B(n133), 
	.A(n54));
   NOR2X2M U50 (.Y(WrData[5]), 
	.B(n132), 
	.A(n54));
   NOR2X2M U51 (.Y(n21), 
	.B(n68), 
	.A(n57));
   NOR2BX2M U52 (.Y(n2), 
	.B(n21), 
	.AN(n11));
   OAI22X1M U53 (.Y(n128), 
	.B1(n131), 
	.B0(n50), 
	.A1(n56), 
	.A0(n136));
   OAI22X1M U54 (.Y(n127), 
	.B1(n130), 
	.B0(n50), 
	.A1(n56), 
	.A0(n133));
   OAI22X1M U55 (.Y(n126), 
	.B1(n151), 
	.B0(n50), 
	.A1(n56), 
	.A0(n134));
   OAI22X1M U56 (.Y(n125), 
	.B1(n84), 
	.B0(n50), 
	.A1(n56), 
	.A0(n135));
   INVX2M U57 (.Y(n57), 
	.A(n13));
   OAI21X2M U58 (.Y(n55), 
	.B0(n14), 
	.A1(n13), 
	.A0(n61));
   NOR2X2M U59 (.Y(n14), 
	.B(n137), 
	.A(n65));
   NOR3X2M U60 (.Y(n30), 
	.C(n132), 
	.B(n27), 
	.A(n135));
   OAI22X1M U61 (.Y(n124), 
	.B1(n55), 
	.B0(n136), 
	.A1(n83), 
	.A0(n58));
   OAI22X1M U62 (.Y(n121), 
	.B1(n55), 
	.B0(n135), 
	.A1(n67), 
	.A0(n58));
   OAI22X1M U63 (.Y(n123), 
	.B1(n55), 
	.B0(n133), 
	.A1(n81), 
	.A0(n58));
   OAI22X1M U64 (.Y(n122), 
	.B1(n55), 
	.B0(n134), 
	.A1(n69), 
	.A0(n58));
   INVX2M U65 (.Y(n65), 
	.A(n62));
   INVX2M U67 (.Y(RdEN), 
	.A(n38));
   OAI2BB1X2M U68 (.Y(TX_P_DATA[0]), 
	.B0(n80), 
	.A1N(n70), 
	.A0N(RdData[0]));
   AOI22X1M U69 (.Y(n80), 
	.B1(ALU_OUT_registerd[8]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[0]));
   OAI2BB1X2M U70 (.Y(TX_P_DATA[1]), 
	.B0(n79), 
	.A1N(n70), 
	.A0N(RdData[1]));
   AOI22X1M U71 (.Y(n79), 
	.B1(ALU_OUT_registerd[9]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[1]));
   OAI2BB1X2M U72 (.Y(TX_P_DATA[2]), 
	.B0(n78), 
	.A1N(n70), 
	.A0N(RdData[2]));
   AOI22X1M U73 (.Y(n78), 
	.B1(ALU_OUT_registerd[10]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[2]));
   OAI2BB1X2M U74 (.Y(TX_P_DATA[3]), 
	.B0(n77), 
	.A1N(n70), 
	.A0N(RdData[3]));
   AOI22X1M U75 (.Y(n77), 
	.B1(ALU_OUT_registerd[11]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[3]));
   OAI2BB1X2M U76 (.Y(TX_P_DATA[4]), 
	.B0(n76), 
	.A1N(n70), 
	.A0N(RdData[4]));
   AOI22X1M U77 (.Y(n76), 
	.B1(ALU_OUT_registerd[12]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[4]));
   OAI2BB1X2M U78 (.Y(TX_P_DATA[5]), 
	.B0(n75), 
	.A1N(n70), 
	.A0N(RdData[5]));
   AOI22X1M U79 (.Y(n75), 
	.B1(ALU_OUT_registerd[13]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[5]));
   OAI2BB1X2M U80 (.Y(TX_P_DATA[6]), 
	.B0(n74), 
	.A1N(n70), 
	.A0N(RdData[6]));
   AOI22X1M U81 (.Y(n74), 
	.B1(ALU_OUT_registerd[14]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[6]));
   OAI2BB1X2M U82 (.Y(TX_P_DATA[7]), 
	.B0(n71), 
	.A1N(n70), 
	.A0N(RdData[7]));
   AOI22X1M U83 (.Y(n71), 
	.B1(ALU_OUT_registerd[15]), 
	.B0(n73), 
	.A1(n72), 
	.A0(ALU_OUT[7]));
   NAND3X2M U84 (.Y(n23), 
	.C(current_state[1]), 
	.B(current_state[0]), 
	.A(current_state[3]));
   NAND2X2M U85 (.Y(n47), 
	.B(n66), 
	.A(current_state[0]));
   NAND3X2M U86 (.Y(n45), 
	.C(n61), 
	.B(current_state[2]), 
	.A(current_state[3]));
   NOR2X2M U87 (.Y(n32), 
	.B(current_state[2]), 
	.A(n23));
   AOI2B1X1M U88 (.Y(n9), 
	.B0(n64), 
	.A1N(n22), 
	.A0(n23));
   AOI21X2M U89 (.Y(n22), 
	.B0(n57), 
	.A1(n51), 
	.A0(current_state[3]));
   NAND2X2M U90 (.Y(next_state[1]), 
	.B(n19), 
	.A(n18));
   AOI221XLM U91 (.Y(n18), 
	.C0(n34), 
	.B1(n51), 
	.B0(n60), 
	.A1(FIFO_FULL), 
	.A0(n32));
   NOR4BBX1M U92 (.Y(n19), 
	.D(n21), 
	.C(n9), 
	.BN(n8), 
	.AN(n20));
   OAI222X1M U93 (.Y(n34), 
	.C1(n37), 
	.C0(RX_D_VLD), 
	.B1(n36), 
	.B0(RdData_Valid), 
	.A1(n57), 
	.A0(n65));
   NAND4BX1M U94 (.Y(next_state[0]), 
	.D(n40), 
	.C(n39), 
	.B(n38), 
	.AN(n32));
   AOI211X2M U95 (.Y(n40), 
	.C0(n17), 
	.B0(n43), 
	.A1(n53), 
	.A0(n41));
   AOI31X2M U96 (.Y(n39), 
	.B0(n50), 
	.A2(n49), 
	.A1(n136), 
	.A0(n30));
   OAI22X1M U97 (.Y(n43), 
	.B1(n48), 
	.B0(RX_D_VLD), 
	.A1(n65), 
	.A0(n47));
   INVX2M U98 (.Y(n66), 
	.A(current_state[1]));
   INVX2M U99 (.Y(n63), 
	.A(n68));
   NOR2BX2M U100 (.Y(n70), 
	.B(n36), 
	.AN(RdData_Valid));
   NAND3X2M U101 (.Y(n36), 
	.C(current_state[1]), 
	.B(n15), 
	.A(current_state[0]));
   NAND3X2M U102 (.Y(n7), 
	.C(RX_D_VLD), 
	.B(n16), 
	.A(n15));
   NAND2X2M U103 (.Y(n68), 
	.B(n64), 
	.A(current_state[3]));
   INVX2M U104 (.Y(n64), 
	.A(current_state[2]));
   NAND3X2M U105 (.Y(n37), 
	.C(n62), 
	.B(current_state[0]), 
	.A(current_state[1]));
   NOR2X2M U106 (.Y(n62), 
	.B(current_state[3]), 
	.A(current_state[2]));
   INVX2M U107 (.Y(n131), 
	.A(n85));
   INVX2M U108 (.Y(n67), 
	.A(n92));
   INVX2M U109 (.Y(n83), 
	.A(n89));
   NOR2BX2M U110 (.Y(WrData[4]), 
	.B(n54), 
	.AN(RX_P_Data[4]));
   NOR2BX2M U111 (.Y(WrData[7]), 
	.B(n54), 
	.AN(RX_P_Data[7]));
   INVX2M U112 (.Y(n137), 
	.A(RX_D_VLD));
   AND2X2M U113 (.Y(WrData[6]), 
	.B(WrEN), 
	.A(RX_P_Data[6]));
   INVX2M U114 (.Y(n130), 
	.A(n86));
   INVX2M U115 (.Y(n84), 
	.A(n88));
   INVX2M U117 (.Y(n81), 
	.A(n90));
   INVX2M U118 (.Y(n69), 
	.A(n91));
   NAND4X2M U119 (.Y(n27), 
	.D(n16), 
	.C(n14), 
	.B(RX_P_Data[3]), 
	.A(RX_P_Data[7]));
   INVX2M U120 (.Y(n136), 
	.A(RX_P_Data[0]));
   AOI32X1M U121 (.Y(n20), 
	.B1(n14), 
	.B0(n61), 
	.A2(n30), 
	.A1(RX_P_Data[4]), 
	.A0(n29));
   NOR3X2M U122 (.Y(n29), 
	.C(n136), 
	.B(RX_P_Data[6]), 
	.A(RX_P_Data[2]));
   OAI211X2M U123 (.Y(n17), 
	.C0(n45), 
	.B0(n44), 
	.A1(n36), 
	.A0(RdData_Valid));
   NAND4BX1M U124 (.Y(n44), 
	.D(n46), 
	.C(RX_P_Data[6]), 
	.B(RX_P_Data[2]), 
	.AN(n27));
   NOR4X1M U125 (.Y(n46), 
	.D(RX_P_Data[0]), 
	.C(RX_P_Data[1]), 
	.B(RX_P_Data[4]), 
	.A(RX_P_Data[5]));
   NAND4X2M U126 (.Y(n8), 
	.D(n26), 
	.C(RX_P_Data[6]), 
	.B(RX_P_Data[2]), 
	.A(RX_P_Data[4]));
   NOR4X1M U127 (.Y(n26), 
	.D(n136), 
	.C(n27), 
	.B(RX_P_Data[1]), 
	.A(RX_P_Data[5]));
   INVX2M U128 (.Y(n135), 
	.A(RX_P_Data[1]));
   NAND3X2M U129 (.Y(n11), 
	.C(current_state[3]), 
	.B(current_state[2]), 
	.A(n16));
   INVX2M U130 (.Y(n132), 
	.A(RX_P_Data[5]));
   NOR3X2M U131 (.Y(n49), 
	.C(RX_P_Data[4]), 
	.B(RX_P_Data[6]), 
	.A(RX_P_Data[2]));
   INVX2M U132 (.Y(n134), 
	.A(RX_P_Data[2]));
   INVX2M U133 (.Y(n133), 
	.A(RX_P_Data[3]));
   AO22X1M U134 (.Y(n106), 
	.B1(ALU_OUT[8]), 
	.B0(OUT_Valid), 
	.A1(ALU_OUT_registerd[8]), 
	.A0(n53));
   AO22X1M U155 (.Y(n108), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[9]), 
	.A1(ALU_OUT_registerd[9]), 
	.A0(n53));
   AO22X1M U156 (.Y(n110), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[10]), 
	.A1(ALU_OUT_registerd[10]), 
	.A0(n53));
   AO22X1M U157 (.Y(n112), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[11]), 
	.A1(ALU_OUT_registerd[11]), 
	.A0(n53));
   AO22X1M U158 (.Y(n114), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[12]), 
	.A1(ALU_OUT_registerd[12]), 
	.A0(n53));
   AO22X1M U159 (.Y(n116), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[13]), 
	.A1(ALU_OUT_registerd[13]), 
	.A0(n53));
   AO22X1M U160 (.Y(n118), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[14]), 
	.A1(ALU_OUT_registerd[14]), 
	.A0(n53));
   AO22X1M U161 (.Y(n120), 
	.B1(OUT_Valid), 
	.B0(ALU_OUT[15]), 
	.A1(ALU_OUT_registerd[15]), 
	.A0(n53));
   BUFX2M U162 (.Y(CLK_EN), 
	.A(ALU_EN));
   DLY1X1M U163 (.Y(n148), 
	.A(test_se));
   DLY1X1M U164 (.Y(n149), 
	.A(test_se));
   DLY1X1M U165 (.Y(n150), 
	.A(test_se));
   INVX2M U3 (.Y(clk_div_en), 
	.A(LTIE_LTIELO_NET));
   INVXLM U135 (.Y(n24), 
	.A(n87));
   INVX2M U136 (.Y(test_so1), 
	.A(n24));
endmodule

module regfile_Address_width4_Data_width8_depth16_test_1 (
	WrData, 
	Address, 
	WrEn, 
	RdEN, 
	CLK, 
	RST, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_scan_SYNC_RST_1, 
	FE_OFN3_scan_SYNC_RST_1, 
	FE_OFN5_scan_SYNC_RST_1, 
	scan_REF_CLK__L8_N1, 
	scan_REF_CLK__L8_N2, 
	scan_REF_CLK__L8_N3, 
	scan_REF_CLK__L8_N4, 
	scan_REF_CLK__L8_N6);
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEN;
   input CLK;
   input RST;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_scan_SYNC_RST_1;
   input FE_OFN3_scan_SYNC_RST_1;
   input FE_OFN5_scan_SYNC_RST_1;
   input scan_REF_CLK__L8_N1;
   input scan_REF_CLK__L8_N2;
   input scan_REF_CLK__L8_N3;
   input scan_REF_CLK__L8_N4;
   input scan_REF_CLK__L8_N6;

   // Internal wires
   wire FE_OFN1_scan_SYNC_RST_1;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire \Reg_file[4][7] ;
   wire \Reg_file[4][6] ;
   wire \Reg_file[4][5] ;
   wire \Reg_file[4][4] ;
   wire \Reg_file[4][3] ;
   wire \Reg_file[4][2] ;
   wire \Reg_file[4][1] ;
   wire \Reg_file[4][0] ;
   wire \Reg_file[5][7] ;
   wire \Reg_file[5][6] ;
   wire \Reg_file[5][5] ;
   wire \Reg_file[5][4] ;
   wire \Reg_file[5][3] ;
   wire \Reg_file[5][2] ;
   wire \Reg_file[5][1] ;
   wire \Reg_file[5][0] ;
   wire \Reg_file[6][7] ;
   wire \Reg_file[6][6] ;
   wire \Reg_file[6][5] ;
   wire \Reg_file[6][4] ;
   wire \Reg_file[6][3] ;
   wire \Reg_file[6][2] ;
   wire \Reg_file[6][1] ;
   wire \Reg_file[6][0] ;
   wire \Reg_file[7][7] ;
   wire \Reg_file[7][6] ;
   wire \Reg_file[7][5] ;
   wire \Reg_file[7][4] ;
   wire \Reg_file[7][3] ;
   wire \Reg_file[7][2] ;
   wire \Reg_file[7][1] ;
   wire \Reg_file[7][0] ;
   wire \Reg_file[8][7] ;
   wire \Reg_file[8][6] ;
   wire \Reg_file[8][5] ;
   wire \Reg_file[8][4] ;
   wire \Reg_file[8][3] ;
   wire \Reg_file[8][2] ;
   wire \Reg_file[8][1] ;
   wire \Reg_file[8][0] ;
   wire \Reg_file[9][7] ;
   wire \Reg_file[9][6] ;
   wire \Reg_file[9][5] ;
   wire \Reg_file[9][4] ;
   wire \Reg_file[9][3] ;
   wire \Reg_file[9][2] ;
   wire \Reg_file[9][1] ;
   wire \Reg_file[9][0] ;
   wire \Reg_file[10][7] ;
   wire \Reg_file[10][6] ;
   wire \Reg_file[10][5] ;
   wire \Reg_file[10][4] ;
   wire \Reg_file[10][3] ;
   wire \Reg_file[10][2] ;
   wire \Reg_file[10][1] ;
   wire \Reg_file[10][0] ;
   wire \Reg_file[11][7] ;
   wire \Reg_file[11][6] ;
   wire \Reg_file[11][5] ;
   wire \Reg_file[11][4] ;
   wire \Reg_file[11][3] ;
   wire \Reg_file[11][2] ;
   wire \Reg_file[11][1] ;
   wire \Reg_file[11][0] ;
   wire \Reg_file[12][7] ;
   wire \Reg_file[12][6] ;
   wire \Reg_file[12][5] ;
   wire \Reg_file[12][4] ;
   wire \Reg_file[12][3] ;
   wire \Reg_file[12][2] ;
   wire \Reg_file[12][1] ;
   wire \Reg_file[12][0] ;
   wire \Reg_file[13][7] ;
   wire \Reg_file[13][6] ;
   wire \Reg_file[13][5] ;
   wire \Reg_file[13][4] ;
   wire \Reg_file[13][3] ;
   wire \Reg_file[13][2] ;
   wire \Reg_file[13][1] ;
   wire \Reg_file[13][0] ;
   wire \Reg_file[14][7] ;
   wire \Reg_file[14][6] ;
   wire \Reg_file[14][5] ;
   wire \Reg_file[14][4] ;
   wire \Reg_file[14][3] ;
   wire \Reg_file[14][2] ;
   wire \Reg_file[14][1] ;
   wire \Reg_file[14][0] ;
   wire \Reg_file[15][7] ;
   wire \Reg_file[15][6] ;
   wire \Reg_file[15][5] ;
   wire \Reg_file[15][4] ;
   wire \Reg_file[15][3] ;
   wire \Reg_file[15][2] ;
   wire \Reg_file[15][1] ;
   wire \Reg_file[15][0] ;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n451;
   wire n452;
   wire n453;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n464;
   wire n465;
   wire n466;
   wire n467;
   wire n468;
   wire n469;
   wire n470;
   wire n471;
   wire n472;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n493;

   assign N10 = Address[0] ;
   assign N11 = Address[1] ;
   assign N12 = Address[2] ;
   assign N13 = Address[3] ;
   assign test_so1 = \Reg_file[4][1]  ;
   assign test_so2 = \Reg_file[15][7]  ;

   CLKINVX6M FE_OFC1_scan_SYNC_RST_1 (.Y(FE_OFN1_scan_SYNC_RST_1), 
	.A(FE_OFN0_scan_SYNC_RST_1));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n481), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[7]), 
	.D(n185), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(test_se), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[6]), 
	.D(n184), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n466), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[5]), 
	.D(n183), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n487), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[4]), 
	.D(n182), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n484), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[3]), 
	.D(n181), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n479), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[2]), 
	.D(n180), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n488), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[1]), 
	.D(n179), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(n474), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(RdData[0]), 
	.D(n178), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[5][7]  (.SI(\Reg_file[5][6] ), 
	.SE(n477), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][7] ), 
	.D(n273), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][6]  (.SI(\Reg_file[5][5] ), 
	.SE(n476), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][6] ), 
	.D(n272), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][5]  (.SI(\Reg_file[5][4] ), 
	.SE(n467), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][5] ), 
	.D(n271), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][4]  (.SI(\Reg_file[5][3] ), 
	.SE(n486), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][4] ), 
	.D(n270), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][3]  (.SI(\Reg_file[5][2] ), 
	.SE(n479), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][3] ), 
	.D(n269), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][2]  (.SI(\Reg_file[5][1] ), 
	.SE(n478), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][2] ), 
	.D(n268), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][1]  (.SI(\Reg_file[5][0] ), 
	.SE(n476), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][1] ), 
	.D(n267), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[5][0]  (.SI(\Reg_file[4][7] ), 
	.SE(n478), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[5][0] ), 
	.D(n266), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[7][7]  (.SI(\Reg_file[7][6] ), 
	.SE(n484), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][7] ), 
	.D(n257), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[7][6]  (.SI(\Reg_file[7][5] ), 
	.SE(n482), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][6] ), 
	.D(n256), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[7][5]  (.SI(\Reg_file[7][4] ), 
	.SE(n488), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][5] ), 
	.D(n255), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[7][4]  (.SI(\Reg_file[7][3] ), 
	.SE(n483), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][4] ), 
	.D(n254), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[7][3]  (.SI(\Reg_file[7][2] ), 
	.SE(n489), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][3] ), 
	.D(n253), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[7][2]  (.SI(\Reg_file[7][1] ), 
	.SE(n478), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][2] ), 
	.D(n252), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[7][1]  (.SI(\Reg_file[7][0] ), 
	.SE(n488), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][1] ), 
	.D(n251), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[7][0]  (.SI(\Reg_file[6][7] ), 
	.SE(n473), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[7][0] ), 
	.D(n250), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[9][7]  (.SI(\Reg_file[9][6] ), 
	.SE(n476), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][7] ), 
	.D(n241), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][6]  (.SI(\Reg_file[9][5] ), 
	.SE(n483), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][6] ), 
	.D(n240), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][5]  (.SI(\Reg_file[9][4] ), 
	.SE(n477), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][5] ), 
	.D(n239), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][4]  (.SI(\Reg_file[9][3] ), 
	.SE(n476), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][4] ), 
	.D(n238), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][3]  (.SI(\Reg_file[9][2] ), 
	.SE(n489), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][3] ), 
	.D(n237), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][2]  (.SI(\Reg_file[9][1] ), 
	.SE(n467), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][2] ), 
	.D(n236), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][1]  (.SI(\Reg_file[9][0] ), 
	.SE(n485), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][1] ), 
	.D(n235), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[9][0]  (.SI(\Reg_file[8][7] ), 
	.SE(n484), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[9][0] ), 
	.D(n234), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[11][7]  (.SI(\Reg_file[11][6] ), 
	.SE(n481), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][7] ), 
	.D(n225), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[11][6]  (.SI(\Reg_file[11][5] ), 
	.SE(n475), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][6] ), 
	.D(n224), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[11][5]  (.SI(\Reg_file[11][4] ), 
	.SE(n484), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][5] ), 
	.D(n223), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[11][4]  (.SI(\Reg_file[11][3] ), 
	.SE(n477), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][4] ), 
	.D(n222), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[11][3]  (.SI(\Reg_file[11][2] ), 
	.SE(n485), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][3] ), 
	.D(n221), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[11][2]  (.SI(\Reg_file[11][1] ), 
	.SE(n467), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][2] ), 
	.D(n220), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[11][1]  (.SI(\Reg_file[11][0] ), 
	.SE(n484), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][1] ), 
	.D(n219), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[11][0]  (.SI(\Reg_file[10][7] ), 
	.SE(n478), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[11][0] ), 
	.D(n218), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[13][7]  (.SI(\Reg_file[13][6] ), 
	.SE(n465), 
	.RN(RST), 
	.Q(\Reg_file[13][7] ), 
	.D(n209), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[13][6]  (.SI(\Reg_file[13][5] ), 
	.SE(n481), 
	.RN(RST), 
	.Q(\Reg_file[13][6] ), 
	.D(n208), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[13][5]  (.SI(\Reg_file[13][4] ), 
	.SE(n487), 
	.RN(RST), 
	.Q(\Reg_file[13][5] ), 
	.D(n207), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[13][4]  (.SI(\Reg_file[13][3] ), 
	.SE(n474), 
	.RN(RST), 
	.Q(\Reg_file[13][4] ), 
	.D(n206), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[13][3]  (.SI(\Reg_file[13][2] ), 
	.SE(n479), 
	.RN(RST), 
	.Q(\Reg_file[13][3] ), 
	.D(n205), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[13][2]  (.SI(\Reg_file[13][1] ), 
	.SE(n476), 
	.RN(RST), 
	.Q(\Reg_file[13][2] ), 
	.D(n204), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[13][1]  (.SI(\Reg_file[13][0] ), 
	.SE(n486), 
	.RN(RST), 
	.Q(\Reg_file[13][1] ), 
	.D(n203), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[13][0]  (.SI(\Reg_file[12][7] ), 
	.SE(n489), 
	.RN(RST), 
	.Q(\Reg_file[13][0] ), 
	.D(n202), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX4M \Reg_file_reg[15][7]  (.SI(\Reg_file[15][6] ), 
	.SE(n475), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][7] ), 
	.D(n193), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[15][6]  (.SI(\Reg_file[15][5] ), 
	.SE(n466), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][6] ), 
	.D(n192), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[15][5]  (.SI(\Reg_file[15][4] ), 
	.SE(n474), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][5] ), 
	.D(n191), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[15][4]  (.SI(\Reg_file[15][3] ), 
	.SE(n466), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][4] ), 
	.D(n190), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[15][3]  (.SI(\Reg_file[15][2] ), 
	.SE(test_se), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][3] ), 
	.D(n189), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[15][2]  (.SI(\Reg_file[15][1] ), 
	.SE(n480), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][2] ), 
	.D(n188), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[15][1]  (.SI(\Reg_file[15][0] ), 
	.SE(n487), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][1] ), 
	.D(n187), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[15][0]  (.SI(\Reg_file[14][7] ), 
	.SE(n483), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[15][0] ), 
	.D(n186), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[4][7]  (.SI(\Reg_file[4][6] ), 
	.SE(n474), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][7] ), 
	.D(n281), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][6]  (.SI(\Reg_file[4][5] ), 
	.SE(n481), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][6] ), 
	.D(n280), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][5]  (.SI(\Reg_file[4][4] ), 
	.SE(n482), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][5] ), 
	.D(n279), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][4]  (.SI(\Reg_file[4][3] ), 
	.SE(n475), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][4] ), 
	.D(n278), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][3]  (.SI(\Reg_file[4][2] ), 
	.SE(n473), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][3] ), 
	.D(n277), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][2]  (.SI(test_si2), 
	.SE(n480), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][2] ), 
	.D(n276), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][1]  (.SI(\Reg_file[4][0] ), 
	.SE(n481), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][1] ), 
	.D(n275), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[4][0]  (.SI(REG3[7]), 
	.SE(n489), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[4][0] ), 
	.D(n274), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[6][7]  (.SI(\Reg_file[6][6] ), 
	.SE(n486), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][7] ), 
	.D(n265), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[6][6]  (.SI(\Reg_file[6][5] ), 
	.SE(n482), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][6] ), 
	.D(n264), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[6][5]  (.SI(\Reg_file[6][4] ), 
	.SE(n477), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][5] ), 
	.D(n263), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[6][4]  (.SI(\Reg_file[6][3] ), 
	.SE(n488), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][4] ), 
	.D(n262), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[6][3]  (.SI(\Reg_file[6][2] ), 
	.SE(n486), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][3] ), 
	.D(n261), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[6][2]  (.SI(\Reg_file[6][1] ), 
	.SE(n483), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][2] ), 
	.D(n260), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[6][1]  (.SI(\Reg_file[6][0] ), 
	.SE(n477), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][1] ), 
	.D(n259), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[6][0]  (.SI(\Reg_file[5][7] ), 
	.SE(n474), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[6][0] ), 
	.D(n258), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[8][7]  (.SI(\Reg_file[8][6] ), 
	.SE(n466), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][7] ), 
	.D(n249), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[8][6]  (.SI(\Reg_file[8][5] ), 
	.SE(n488), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][6] ), 
	.D(n248), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[8][5]  (.SI(\Reg_file[8][4] ), 
	.SE(n474), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][5] ), 
	.D(n247), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[8][4]  (.SI(\Reg_file[8][3] ), 
	.SE(n480), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][4] ), 
	.D(n246), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[8][3]  (.SI(\Reg_file[8][2] ), 
	.SE(n475), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][3] ), 
	.D(n245), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[8][2]  (.SI(\Reg_file[8][1] ), 
	.SE(n475), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][2] ), 
	.D(n244), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[8][1]  (.SI(\Reg_file[8][0] ), 
	.SE(n474), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][1] ), 
	.D(n243), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[8][0]  (.SI(\Reg_file[7][7] ), 
	.SE(n466), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[8][0] ), 
	.D(n242), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[10][7]  (.SI(\Reg_file[10][6] ), 
	.SE(n473), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][7] ), 
	.D(n233), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[10][6]  (.SI(\Reg_file[10][5] ), 
	.SE(n480), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][6] ), 
	.D(n232), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[10][5]  (.SI(\Reg_file[10][4] ), 
	.SE(n475), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][5] ), 
	.D(n231), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[10][4]  (.SI(\Reg_file[10][3] ), 
	.SE(n467), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][4] ), 
	.D(n230), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[10][3]  (.SI(\Reg_file[10][2] ), 
	.SE(n479), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][3] ), 
	.D(n229), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[10][2]  (.SI(\Reg_file[10][1] ), 
	.SE(n486), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][2] ), 
	.D(n228), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[10][1]  (.SI(\Reg_file[10][0] ), 
	.SE(n483), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][1] ), 
	.D(n227), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[10][0]  (.SI(\Reg_file[9][7] ), 
	.SE(n477), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[10][0] ), 
	.D(n226), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \Reg_file_reg[12][7]  (.SI(\Reg_file[12][6] ), 
	.SE(n478), 
	.RN(RST), 
	.Q(\Reg_file[12][7] ), 
	.D(n217), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[12][6]  (.SI(\Reg_file[12][5] ), 
	.SE(n489), 
	.RN(RST), 
	.Q(\Reg_file[12][6] ), 
	.D(n216), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[12][5]  (.SI(\Reg_file[12][4] ), 
	.SE(n485), 
	.RN(RST), 
	.Q(\Reg_file[12][5] ), 
	.D(n215), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[12][4]  (.SI(\Reg_file[12][3] ), 
	.SE(n467), 
	.RN(RST), 
	.Q(\Reg_file[12][4] ), 
	.D(n214), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[12][3]  (.SI(\Reg_file[12][2] ), 
	.SE(n467), 
	.RN(RST), 
	.Q(\Reg_file[12][3] ), 
	.D(n213), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[12][2]  (.SI(\Reg_file[12][1] ), 
	.SE(n481), 
	.RN(RST), 
	.Q(\Reg_file[12][2] ), 
	.D(n212), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[12][1]  (.SI(\Reg_file[12][0] ), 
	.SE(n487), 
	.RN(RST), 
	.Q(\Reg_file[12][1] ), 
	.D(n211), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[12][0]  (.SI(\Reg_file[11][7] ), 
	.SE(n473), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[12][0] ), 
	.D(n210), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[14][7]  (.SI(\Reg_file[14][6] ), 
	.SE(n479), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][7] ), 
	.D(n201), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[14][6]  (.SI(\Reg_file[14][5] ), 
	.SE(n485), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][6] ), 
	.D(n200), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[14][5]  (.SI(\Reg_file[14][4] ), 
	.SE(n473), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][5] ), 
	.D(n199), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[14][4]  (.SI(\Reg_file[14][3] ), 
	.SE(n486), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][4] ), 
	.D(n198), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[14][3]  (.SI(\Reg_file[14][2] ), 
	.SE(n488), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][3] ), 
	.D(n197), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[14][2]  (.SI(\Reg_file[14][1] ), 
	.SE(n488), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][2] ), 
	.D(n196), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[14][1]  (.SI(\Reg_file[14][0] ), 
	.SE(n473), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][1] ), 
	.D(n195), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[14][0]  (.SI(\Reg_file[13][7] ), 
	.SE(n479), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(\Reg_file[14][0] ), 
	.D(n194), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFSQX2M \Reg_file_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(n464), 
	.Q(REG3[5]), 
	.D(n287), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[2][1]  (.SI(REG2[0]), 
	.SE(n466), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n291), 
	.CK(CLK));
   SDFFSQX2M \Reg_file_reg[2][0]  (.SN(RST), 
	.SI(REG1[7]), 
	.SE(n465), 
	.Q(REG2[0]), 
	.D(n290), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[3][1]  (.SI(REG3[0]), 
	.SE(n475), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(REG3[1]), 
	.D(n283), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[3][3]  (.SI(REG3[2]), 
	.SE(n473), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(REG3[3]), 
	.D(n285), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[3][2]  (.SI(REG3[1]), 
	.SE(n482), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(REG3[2]), 
	.D(n284), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[3][6]  (.SI(REG3[5]), 
	.SE(n467), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(REG3[6]), 
	.D(n288), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[3][4]  (.SI(REG3[3]), 
	.SE(n487), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n286), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[3][7]  (.SI(REG3[6]), 
	.SE(n478), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(REG3[7]), 
	.D(n289), 
	.CK(scan_REF_CLK__L8_N3));
   SDFFRQX2M \Reg_file_reg[3][0]  (.SI(REG2[7]), 
	.SE(n478), 
	.RN(RST), 
	.Q(REG3[0]), 
	.D(n282), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFSQX4M \Reg_file_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n480), 
	.Q(REG2[7]), 
	.D(n297), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M \Reg_file_reg[2][2]  (.SI(REG2[1]), 
	.SE(n484), 
	.RN(RST), 
	.Q(REG2[2]), 
	.D(n292), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX4M \Reg_file_reg[2][4]  (.SI(REG2[3]), 
	.SE(n486), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n294), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX4M \Reg_file_reg[2][3]  (.SI(REG2[2]), 
	.SE(n482), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n293), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX4M \Reg_file_reg[2][5]  (.SI(REG2[4]), 
	.SE(n489), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n295), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX4M \Reg_file_reg[2][6]  (.SI(REG2[5]), 
	.SE(n479), 
	.RN(RST), 
	.Q(REG2[6]), 
	.D(n296), 
	.CK(scan_REF_CLK__L8_N1));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(n480), 
	.RN(FE_OFN1_scan_SYNC_RST_1), 
	.Q(RdData_Valid), 
	.D(n452), 
	.CK(scan_REF_CLK__L8_N2));
   SDFFRQX2M \Reg_file_reg[0][1]  (.SI(REG0[0]), 
	.SE(n476), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG0[1]), 
	.D(n307), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[0][0]  (.SI(RdData[7]), 
	.SE(n483), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG0[0]), 
	.D(n306), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[0][2]  (.SI(REG0[1]), 
	.SE(n476), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG0[2]), 
	.D(n308), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[0][3]  (.SI(REG0[2]), 
	.SE(n481), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG0[3]), 
	.D(n309), 
	.CK(CLK));
   SDFFRQX2M \Reg_file_reg[0][4]  (.SI(REG0[3]), 
	.SE(n483), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG0[4]), 
	.D(n310), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[0][5]  (.SI(REG0[4]), 
	.SE(n485), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG0[5]), 
	.D(n311), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[0][6]  (.SI(REG0[5]), 
	.SE(n482), 
	.RN(RST), 
	.Q(REG0[6]), 
	.D(n312), 
	.CK(CLK));
   SDFFRQX4M \Reg_file_reg[1][7]  (.SI(REG1[6]), 
	.SE(n466), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG1[7]), 
	.D(n305), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[1][2]  (.SI(REG1[1]), 
	.SE(n485), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG1[2]), 
	.D(n300), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[1][1]  (.SI(REG1[0]), 
	.SE(n477), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG1[1]), 
	.D(n299), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[1][0]  (.SI(REG0[7]), 
	.SE(n487), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG1[0]), 
	.D(n298), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[1][5]  (.SI(REG1[4]), 
	.SE(n484), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG1[5]), 
	.D(n303), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[1][3]  (.SI(REG1[2]), 
	.SE(n482), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG1[3]), 
	.D(n301), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[1][6]  (.SI(REG1[5]), 
	.SE(n489), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG1[6]), 
	.D(n304), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX2M \Reg_file_reg[0][7]  (.SI(REG0[6]), 
	.SE(n485), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(REG0[7]), 
	.D(n313), 
	.CK(scan_REF_CLK__L8_N4));
   SDFFRQX4M \Reg_file_reg[1][4]  (.SI(REG1[3]), 
	.SE(n465), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(REG1[4]), 
	.D(n302), 
	.CK(CLK));
   NAND2X2M U140 (.Y(n386), 
	.B(n451), 
	.A(N13));
   AOI21XLM U141 (.Y(n404), 
	.B0(n389), 
	.A1(n390), 
	.A0(n391));
   NOR2X2M U142 (.Y(n152), 
	.B(n407), 
	.A(n451));
   NOR2BX2M U143 (.Y(n170), 
	.B(N10), 
	.AN(n176));
   NOR2BX2M U144 (.Y(n155), 
	.B(N10), 
	.AN(n164));
   NOR2X2M U145 (.Y(n157), 
	.B(N11), 
	.A(n451));
   NOR2X2M U146 (.Y(n160), 
	.B(N12), 
	.A(n407));
   NOR2X2M U147 (.Y(n163), 
	.B(N12), 
	.A(N11));
   NAND2BX2M U148 (.Y(n150), 
	.B(RdEN), 
	.AN(WrEn));
   AOI22XLM U149 (.Y(n142), 
	.B1(n397), 
	.B0(REG1[0]), 
	.A1(n398), 
	.A0(REG0[0]));
   AOI22XLM U150 (.Y(n318), 
	.B1(n397), 
	.B0(REG1[1]), 
	.A1(n398), 
	.A0(REG0[1]));
   AOI22XLM U151 (.Y(n330), 
	.B1(n397), 
	.B0(REG1[2]), 
	.A1(n398), 
	.A0(REG0[2]));
   AOI22XLM U152 (.Y(n342), 
	.B1(n397), 
	.B0(REG1[3]), 
	.A1(n398), 
	.A0(REG0[3]));
   AOI22XLM U153 (.Y(n354), 
	.B1(n397), 
	.B0(REG1[4]), 
	.A1(n398), 
	.A0(REG0[4]));
   AOI22XLM U154 (.Y(n366), 
	.B1(n397), 
	.B0(REG1[5]), 
	.A1(n398), 
	.A0(REG0[5]));
   AOI22XLM U155 (.Y(n378), 
	.B1(n397), 
	.B0(REG1[6]), 
	.A1(n398), 
	.A0(REG0[6]));
   AOI22XLM U156 (.Y(n393), 
	.B1(n397), 
	.B0(REG1[7]), 
	.A1(n398), 
	.A0(REG0[7]));
   OAI2BB2XLM U157 (.Y(n298), 
	.B1(n175), 
	.B0(n459), 
	.A1N(n175), 
	.A0N(REG1[0]));
   OAI2BB2XLM U158 (.Y(n299), 
	.B1(n175), 
	.B0(n458), 
	.A1N(n175), 
	.A0N(REG1[1]));
   OAI2BB2XLM U159 (.Y(n300), 
	.B1(n175), 
	.B0(n457), 
	.A1N(n175), 
	.A0N(REG1[2]));
   OAI2BB2XLM U160 (.Y(n301), 
	.B1(n175), 
	.B0(n456), 
	.A1N(n175), 
	.A0N(REG1[3]));
   OAI2BB2XLM U161 (.Y(n302), 
	.B1(n175), 
	.B0(n455), 
	.A1N(n175), 
	.A0N(REG1[4]));
   OAI2BB2XLM U162 (.Y(n303), 
	.B1(n175), 
	.B0(n454), 
	.A1N(n175), 
	.A0N(REG1[5]));
   OAI2BB2XLM U163 (.Y(n304), 
	.B1(n175), 
	.B0(n460), 
	.A1N(n175), 
	.A0N(REG1[6]));
   OAI2BB2XLM U164 (.Y(n312), 
	.B1(n177), 
	.B0(n460), 
	.A1N(n177), 
	.A0N(REG0[6]));
   OAI2BB2XLM U165 (.Y(n313), 
	.B1(n177), 
	.B0(n453), 
	.A1N(n177), 
	.A0N(REG0[7]));
   CLKINVX2M U166 (.Y(n455), 
	.A(WrData[4]));
   CLKINVX2M U167 (.Y(n453), 
	.A(WrData[7]));
   CLKINVX2M U168 (.Y(n460), 
	.A(WrData[6]));
   NAND2X2M U174 (.Y(n167), 
	.B(n152), 
	.A(n168));
   NAND2X2M U183 (.Y(n151), 
	.B(n153), 
	.A(n152));
   NOR2BX2M U196 (.Y(n168), 
	.B(n408), 
	.AN(n176));
   NAND2X2M U198 (.Y(n173), 
	.B(n160), 
	.A(n168));
   NAND2X2M U200 (.Y(n175), 
	.B(n163), 
	.A(n168));
   NAND2X2M U202 (.Y(n177), 
	.B(n163), 
	.A(n170));
   NAND2X2M U203 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U204 (.Y(n169), 
	.B(n152), 
	.A(n170));
   NAND2X2M U205 (.Y(n171), 
	.B(n157), 
	.A(n168));
   NAND2X2M U206 (.Y(n172), 
	.B(n157), 
	.A(n170));
   NAND2X2M U207 (.Y(n174), 
	.B(n160), 
	.A(n170));
   NAND2X2M U208 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U209 (.Y(n161), 
	.B(n155), 
	.A(n160));
   NAND2X2M U210 (.Y(n165), 
	.B(n155), 
	.A(n163));
   NOR2BX2M U211 (.Y(n153), 
	.B(n408), 
	.AN(n164));
   NAND2X2M U212 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U213 (.Y(n159), 
	.B(n153), 
	.A(n160));
   NAND2X2M U214 (.Y(n162), 
	.B(n153), 
	.A(n163));
   INVX2M U215 (.Y(n452), 
	.A(n150));
   INVX2M U226 (.Y(n408), 
	.A(N10));
   INVX2M U227 (.Y(n407), 
	.A(N11));
   INVX2M U228 (.Y(n406), 
	.A(N13));
   NOR2BX2M U229 (.Y(n176), 
	.B(N13), 
	.AN(n166));
   NOR2BX2M U230 (.Y(n166), 
	.B(RdEN), 
	.AN(WrEn));
   INVX2M U231 (.Y(n451), 
	.A(N12));
   AND2X2M U232 (.Y(n164), 
	.B(n166), 
	.A(N13));
   CLKINVX2M U236 (.Y(n459), 
	.A(WrData[0]));
   CLKINVX2M U237 (.Y(n458), 
	.A(WrData[1]));
   CLKINVX2M U238 (.Y(n457), 
	.A(WrData[2]));
   CLKINVX2M U239 (.Y(n456), 
	.A(WrData[3]));
   CLKINVX2M U240 (.Y(n454), 
	.A(WrData[5]));
   AO22X1M U242 (.Y(n178), 
	.B1(n150), 
	.B0(RdData[0]), 
	.A1(n452), 
	.A0(N26));
   AO22X1M U243 (.Y(n179), 
	.B1(n150), 
	.B0(RdData[1]), 
	.A1(n452), 
	.A0(N25));
   AO22X1M U244 (.Y(n180), 
	.B1(n150), 
	.B0(RdData[2]), 
	.A1(n452), 
	.A0(N24));
   AO22X1M U245 (.Y(n181), 
	.B1(n150), 
	.B0(RdData[3]), 
	.A1(n452), 
	.A0(N23));
   AO22X1M U246 (.Y(n182), 
	.B1(n150), 
	.B0(RdData[4]), 
	.A1(n452), 
	.A0(N22));
   AO22X1M U247 (.Y(n183), 
	.B1(n150), 
	.B0(RdData[5]), 
	.A1(n452), 
	.A0(N21));
   AO22X1M U248 (.Y(n184), 
	.B1(n150), 
	.B0(RdData[6]), 
	.A1(n452), 
	.A0(N20));
   AO22X1M U249 (.Y(n185), 
	.B1(n150), 
	.B0(RdData[7]), 
	.A1(n452), 
	.A0(N19));
   OAI2BB2X1M U250 (.Y(n194), 
	.B1(n154), 
	.B0(n459), 
	.A1N(n154), 
	.A0N(\Reg_file[14][0] ));
   OAI2BB2X1M U251 (.Y(n195), 
	.B1(n154), 
	.B0(n458), 
	.A1N(n154), 
	.A0N(\Reg_file[14][1] ));
   OAI2BB2X1M U252 (.Y(n196), 
	.B1(n154), 
	.B0(n457), 
	.A1N(n154), 
	.A0N(\Reg_file[14][2] ));
   OAI2BB2X1M U253 (.Y(n197), 
	.B1(n154), 
	.B0(n456), 
	.A1N(n154), 
	.A0N(\Reg_file[14][3] ));
   OAI2BB2X1M U254 (.Y(n199), 
	.B1(n154), 
	.B0(n454), 
	.A1N(n154), 
	.A0N(\Reg_file[14][5] ));
   OAI2BB2X1M U255 (.Y(n210), 
	.B1(n158), 
	.B0(n459), 
	.A1N(n158), 
	.A0N(\Reg_file[12][0] ));
   OAI2BB2X1M U256 (.Y(n211), 
	.B1(n158), 
	.B0(n458), 
	.A1N(n158), 
	.A0N(\Reg_file[12][1] ));
   OAI2BB2X1M U257 (.Y(n212), 
	.B1(n158), 
	.B0(n457), 
	.A1N(n158), 
	.A0N(\Reg_file[12][2] ));
   OAI2BB2X1M U258 (.Y(n213), 
	.B1(n158), 
	.B0(n456), 
	.A1N(n158), 
	.A0N(\Reg_file[12][3] ));
   OAI2BB2X1M U259 (.Y(n215), 
	.B1(n158), 
	.B0(n454), 
	.A1N(n158), 
	.A0N(\Reg_file[12][5] ));
   OAI2BB2X1M U260 (.Y(n226), 
	.B1(n161), 
	.B0(n459), 
	.A1N(n161), 
	.A0N(\Reg_file[10][0] ));
   OAI2BB2X1M U261 (.Y(n227), 
	.B1(n161), 
	.B0(n458), 
	.A1N(n161), 
	.A0N(\Reg_file[10][1] ));
   OAI2BB2X1M U262 (.Y(n228), 
	.B1(n161), 
	.B0(n457), 
	.A1N(n161), 
	.A0N(\Reg_file[10][2] ));
   OAI2BB2X1M U263 (.Y(n229), 
	.B1(n161), 
	.B0(n456), 
	.A1N(n161), 
	.A0N(\Reg_file[10][3] ));
   OAI2BB2X1M U264 (.Y(n231), 
	.B1(n161), 
	.B0(n454), 
	.A1N(n161), 
	.A0N(\Reg_file[10][5] ));
   OAI2BB2X1M U265 (.Y(n242), 
	.B1(n165), 
	.B0(n459), 
	.A1N(n165), 
	.A0N(\Reg_file[8][0] ));
   OAI2BB2X1M U266 (.Y(n243), 
	.B1(n165), 
	.B0(n458), 
	.A1N(n165), 
	.A0N(\Reg_file[8][1] ));
   OAI2BB2X1M U267 (.Y(n244), 
	.B1(n165), 
	.B0(n457), 
	.A1N(n165), 
	.A0N(\Reg_file[8][2] ));
   OAI2BB2X1M U268 (.Y(n245), 
	.B1(n165), 
	.B0(n456), 
	.A1N(n165), 
	.A0N(\Reg_file[8][3] ));
   OAI2BB2X1M U269 (.Y(n247), 
	.B1(n165), 
	.B0(n454), 
	.A1N(n165), 
	.A0N(\Reg_file[8][5] ));
   OAI2BB2X1M U270 (.Y(n250), 
	.B1(n167), 
	.B0(n459), 
	.A1N(n167), 
	.A0N(\Reg_file[7][0] ));
   OAI2BB2X1M U271 (.Y(n251), 
	.B1(n167), 
	.B0(n458), 
	.A1N(n167), 
	.A0N(\Reg_file[7][1] ));
   OAI2BB2X1M U272 (.Y(n252), 
	.B1(n167), 
	.B0(n457), 
	.A1N(n167), 
	.A0N(\Reg_file[7][2] ));
   OAI2BB2X1M U273 (.Y(n253), 
	.B1(n167), 
	.B0(n456), 
	.A1N(n167), 
	.A0N(\Reg_file[7][3] ));
   OAI2BB2X1M U274 (.Y(n255), 
	.B1(n167), 
	.B0(n454), 
	.A1N(n167), 
	.A0N(\Reg_file[7][5] ));
   OAI2BB2X1M U275 (.Y(n258), 
	.B1(n169), 
	.B0(n459), 
	.A1N(n169), 
	.A0N(\Reg_file[6][0] ));
   OAI2BB2X1M U276 (.Y(n259), 
	.B1(n169), 
	.B0(n458), 
	.A1N(n169), 
	.A0N(\Reg_file[6][1] ));
   OAI2BB2X1M U277 (.Y(n260), 
	.B1(n169), 
	.B0(n457), 
	.A1N(n169), 
	.A0N(\Reg_file[6][2] ));
   OAI2BB2X1M U278 (.Y(n261), 
	.B1(n169), 
	.B0(n456), 
	.A1N(n169), 
	.A0N(\Reg_file[6][3] ));
   OAI2BB2X1M U279 (.Y(n263), 
	.B1(n169), 
	.B0(n454), 
	.A1N(n169), 
	.A0N(\Reg_file[6][5] ));
   OAI2BB2X1M U280 (.Y(n266), 
	.B1(n171), 
	.B0(n459), 
	.A1N(n171), 
	.A0N(\Reg_file[5][0] ));
   OAI2BB2X1M U281 (.Y(n267), 
	.B1(n171), 
	.B0(n458), 
	.A1N(n171), 
	.A0N(\Reg_file[5][1] ));
   OAI2BB2X1M U282 (.Y(n268), 
	.B1(n171), 
	.B0(n457), 
	.A1N(n171), 
	.A0N(\Reg_file[5][2] ));
   OAI2BB2X1M U283 (.Y(n269), 
	.B1(n171), 
	.B0(n456), 
	.A1N(n171), 
	.A0N(\Reg_file[5][3] ));
   OAI2BB2X1M U284 (.Y(n271), 
	.B1(n171), 
	.B0(n454), 
	.A1N(n171), 
	.A0N(\Reg_file[5][5] ));
   OAI2BB2X1M U285 (.Y(n274), 
	.B1(n172), 
	.B0(n459), 
	.A1N(n172), 
	.A0N(\Reg_file[4][0] ));
   OAI2BB2X1M U286 (.Y(n275), 
	.B1(n172), 
	.B0(n458), 
	.A1N(n172), 
	.A0N(\Reg_file[4][1] ));
   OAI2BB2X1M U287 (.Y(n276), 
	.B1(n172), 
	.B0(n457), 
	.A1N(n172), 
	.A0N(\Reg_file[4][2] ));
   OAI2BB2X1M U288 (.Y(n277), 
	.B1(n172), 
	.B0(n456), 
	.A1N(n172), 
	.A0N(\Reg_file[4][3] ));
   OAI2BB2X1M U289 (.Y(n279), 
	.B1(n172), 
	.B0(n454), 
	.A1N(n172), 
	.A0N(\Reg_file[4][5] ));
   OAI2BB2X1M U290 (.Y(n282), 
	.B1(n173), 
	.B0(n459), 
	.A1N(n173), 
	.A0N(REG3[0]));
   OAI2BB2X1M U291 (.Y(n283), 
	.B1(n173), 
	.B0(n458), 
	.A1N(n173), 
	.A0N(REG3[1]));
   OAI2BB2X1M U292 (.Y(n284), 
	.B1(n173), 
	.B0(n457), 
	.A1N(n173), 
	.A0N(REG3[2]));
   OAI2BB2X1M U293 (.Y(n285), 
	.B1(n173), 
	.B0(n456), 
	.A1N(n173), 
	.A0N(REG3[3]));
   OAI2BB2X1M U294 (.Y(n291), 
	.B1(n174), 
	.B0(n458), 
	.A1N(n174), 
	.A0N(REG2[1]));
   OAI2BB2X1M U295 (.Y(n292), 
	.B1(n174), 
	.B0(n457), 
	.A1N(n174), 
	.A0N(REG2[2]));
   OAI2BB2X1M U296 (.Y(n293), 
	.B1(n174), 
	.B0(n456), 
	.A1N(n174), 
	.A0N(REG2[3]));
   OAI2BB2X1M U297 (.Y(n295), 
	.B1(n174), 
	.B0(n454), 
	.A1N(n174), 
	.A0N(REG2[5]));
   OAI2BB2X1M U298 (.Y(n306), 
	.B1(n177), 
	.B0(n459), 
	.A1N(n177), 
	.A0N(REG0[0]));
   OAI2BB2X1M U299 (.Y(n307), 
	.B1(n177), 
	.B0(n458), 
	.A1N(n177), 
	.A0N(REG0[1]));
   OAI2BB2X1M U300 (.Y(n308), 
	.B1(n177), 
	.B0(n457), 
	.A1N(n177), 
	.A0N(REG0[2]));
   OAI2BB2X1M U301 (.Y(n309), 
	.B1(n177), 
	.B0(n456), 
	.A1N(n177), 
	.A0N(REG0[3]));
   OAI2BB2X1M U302 (.Y(n311), 
	.B1(n177), 
	.B0(n454), 
	.A1N(n177), 
	.A0N(REG0[5]));
   OAI2BB2X1M U303 (.Y(n198), 
	.B1(n154), 
	.B0(n455), 
	.A1N(n154), 
	.A0N(\Reg_file[14][4] ));
   OAI2BB2X1M U304 (.Y(n200), 
	.B1(n154), 
	.B0(n460), 
	.A1N(n154), 
	.A0N(\Reg_file[14][6] ));
   OAI2BB2X1M U305 (.Y(n201), 
	.B1(n154), 
	.B0(n453), 
	.A1N(n154), 
	.A0N(\Reg_file[14][7] ));
   OAI2BB2X1M U306 (.Y(n214), 
	.B1(n158), 
	.B0(n455), 
	.A1N(n158), 
	.A0N(\Reg_file[12][4] ));
   OAI2BB2X1M U307 (.Y(n216), 
	.B1(n158), 
	.B0(n460), 
	.A1N(n158), 
	.A0N(\Reg_file[12][6] ));
   OAI2BB2X1M U308 (.Y(n217), 
	.B1(n158), 
	.B0(n453), 
	.A1N(n158), 
	.A0N(\Reg_file[12][7] ));
   OAI2BB2X1M U309 (.Y(n230), 
	.B1(n161), 
	.B0(n455), 
	.A1N(n161), 
	.A0N(\Reg_file[10][4] ));
   OAI2BB2X1M U310 (.Y(n232), 
	.B1(n161), 
	.B0(n460), 
	.A1N(n161), 
	.A0N(\Reg_file[10][6] ));
   OAI2BB2X1M U311 (.Y(n233), 
	.B1(n161), 
	.B0(n453), 
	.A1N(n161), 
	.A0N(\Reg_file[10][7] ));
   OAI2BB2X1M U312 (.Y(n246), 
	.B1(n165), 
	.B0(n455), 
	.A1N(n165), 
	.A0N(\Reg_file[8][4] ));
   OAI2BB2X1M U313 (.Y(n248), 
	.B1(n165), 
	.B0(n460), 
	.A1N(n165), 
	.A0N(\Reg_file[8][6] ));
   OAI2BB2X1M U314 (.Y(n249), 
	.B1(n165), 
	.B0(n453), 
	.A1N(n165), 
	.A0N(\Reg_file[8][7] ));
   OAI2BB2X1M U315 (.Y(n254), 
	.B1(n167), 
	.B0(n455), 
	.A1N(n167), 
	.A0N(\Reg_file[7][4] ));
   OAI2BB2X1M U316 (.Y(n256), 
	.B1(n167), 
	.B0(n460), 
	.A1N(n167), 
	.A0N(\Reg_file[7][6] ));
   OAI2BB2X1M U317 (.Y(n257), 
	.B1(n167), 
	.B0(n453), 
	.A1N(n167), 
	.A0N(\Reg_file[7][7] ));
   OAI2BB2X1M U318 (.Y(n262), 
	.B1(n169), 
	.B0(n455), 
	.A1N(n169), 
	.A0N(\Reg_file[6][4] ));
   OAI2BB2X1M U319 (.Y(n264), 
	.B1(n169), 
	.B0(n460), 
	.A1N(n169), 
	.A0N(\Reg_file[6][6] ));
   OAI2BB2X1M U320 (.Y(n265), 
	.B1(n169), 
	.B0(n453), 
	.A1N(n169), 
	.A0N(\Reg_file[6][7] ));
   OAI2BB2X1M U321 (.Y(n270), 
	.B1(n171), 
	.B0(n455), 
	.A1N(n171), 
	.A0N(\Reg_file[5][4] ));
   OAI2BB2X1M U322 (.Y(n272), 
	.B1(n171), 
	.B0(n460), 
	.A1N(n171), 
	.A0N(\Reg_file[5][6] ));
   OAI2BB2X1M U323 (.Y(n273), 
	.B1(n171), 
	.B0(n453), 
	.A1N(n171), 
	.A0N(\Reg_file[5][7] ));
   OAI2BB2X1M U324 (.Y(n278), 
	.B1(n172), 
	.B0(n455), 
	.A1N(n172), 
	.A0N(\Reg_file[4][4] ));
   OAI2BB2X1M U325 (.Y(n280), 
	.B1(n172), 
	.B0(n460), 
	.A1N(n172), 
	.A0N(\Reg_file[4][6] ));
   OAI2BB2X1M U326 (.Y(n281), 
	.B1(n172), 
	.B0(n453), 
	.A1N(n172), 
	.A0N(\Reg_file[4][7] ));
   OAI2BB2X1M U327 (.Y(n294), 
	.B1(n174), 
	.B0(n455), 
	.A1N(n174), 
	.A0N(REG2[4]));
   OAI2BB2X1M U328 (.Y(n296), 
	.B1(n174), 
	.B0(n460), 
	.A1N(n174), 
	.A0N(REG2[6]));
   OAI2BB2X1M U329 (.Y(n286), 
	.B1(n173), 
	.B0(n455), 
	.A1N(n173), 
	.A0N(REG3[4]));
   OAI2BB2X1M U330 (.Y(n288), 
	.B1(n173), 
	.B0(n460), 
	.A1N(n173), 
	.A0N(REG3[6]));
   OAI2BB2X1M U331 (.Y(n289), 
	.B1(n173), 
	.B0(n453), 
	.A1N(n173), 
	.A0N(REG3[7]));
   OAI2BB2X1M U332 (.Y(n305), 
	.B1(n175), 
	.B0(n453), 
	.A1N(n175), 
	.A0N(REG1[7]));
   OAI2BB2X1M U333 (.Y(n310), 
	.B1(n177), 
	.B0(n455), 
	.A1N(n177), 
	.A0N(REG0[4]));
   OAI2BB2X1M U334 (.Y(n287), 
	.B1(n173), 
	.B0(n454), 
	.A1N(n173), 
	.A0N(REG3[5]));
   OAI2BB2X1M U335 (.Y(n290), 
	.B1(n174), 
	.B0(n459), 
	.A1N(n174), 
	.A0N(REG2[0]));
   OAI2BB2X1M U336 (.Y(n297), 
	.B1(n174), 
	.B0(n453), 
	.A1N(n174), 
	.A0N(REG2[7]));
   OAI2BB2X1M U337 (.Y(n186), 
	.B1(n459), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][0] ));
   OAI2BB2X1M U338 (.Y(n187), 
	.B1(n458), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][1] ));
   OAI2BB2X1M U339 (.Y(n188), 
	.B1(n457), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][2] ));
   OAI2BB2X1M U340 (.Y(n189), 
	.B1(n456), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][3] ));
   OAI2BB2X1M U341 (.Y(n191), 
	.B1(n454), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][5] ));
   OAI2BB2X1M U342 (.Y(n202), 
	.B1(n156), 
	.B0(n459), 
	.A1N(n156), 
	.A0N(\Reg_file[13][0] ));
   OAI2BB2X1M U343 (.Y(n203), 
	.B1(n156), 
	.B0(n458), 
	.A1N(n156), 
	.A0N(\Reg_file[13][1] ));
   OAI2BB2X1M U344 (.Y(n204), 
	.B1(n156), 
	.B0(n457), 
	.A1N(n156), 
	.A0N(\Reg_file[13][2] ));
   OAI2BB2X1M U345 (.Y(n205), 
	.B1(n156), 
	.B0(n456), 
	.A1N(n156), 
	.A0N(\Reg_file[13][3] ));
   OAI2BB2X1M U346 (.Y(n207), 
	.B1(n156), 
	.B0(n454), 
	.A1N(n156), 
	.A0N(\Reg_file[13][5] ));
   OAI2BB2X1M U347 (.Y(n218), 
	.B1(n159), 
	.B0(n459), 
	.A1N(n159), 
	.A0N(\Reg_file[11][0] ));
   OAI2BB2X1M U348 (.Y(n219), 
	.B1(n159), 
	.B0(n458), 
	.A1N(n159), 
	.A0N(\Reg_file[11][1] ));
   OAI2BB2X1M U349 (.Y(n220), 
	.B1(n159), 
	.B0(n457), 
	.A1N(n159), 
	.A0N(\Reg_file[11][2] ));
   OAI2BB2X1M U350 (.Y(n221), 
	.B1(n159), 
	.B0(n456), 
	.A1N(n159), 
	.A0N(\Reg_file[11][3] ));
   OAI2BB2X1M U351 (.Y(n223), 
	.B1(n159), 
	.B0(n454), 
	.A1N(n159), 
	.A0N(\Reg_file[11][5] ));
   OAI2BB2X1M U352 (.Y(n234), 
	.B1(n162), 
	.B0(n459), 
	.A1N(n162), 
	.A0N(\Reg_file[9][0] ));
   OAI2BB2X1M U353 (.Y(n235), 
	.B1(n162), 
	.B0(n458), 
	.A1N(n162), 
	.A0N(\Reg_file[9][1] ));
   OAI2BB2X1M U354 (.Y(n236), 
	.B1(n162), 
	.B0(n457), 
	.A1N(n162), 
	.A0N(\Reg_file[9][2] ));
   OAI2BB2X1M U355 (.Y(n237), 
	.B1(n162), 
	.B0(n456), 
	.A1N(n162), 
	.A0N(\Reg_file[9][3] ));
   OAI2BB2X1M U356 (.Y(n239), 
	.B1(n162), 
	.B0(n454), 
	.A1N(n162), 
	.A0N(\Reg_file[9][5] ));
   OAI2BB2X1M U357 (.Y(n206), 
	.B1(n156), 
	.B0(n455), 
	.A1N(n156), 
	.A0N(\Reg_file[13][4] ));
   OAI2BB2X1M U358 (.Y(n208), 
	.B1(n156), 
	.B0(n460), 
	.A1N(n156), 
	.A0N(\Reg_file[13][6] ));
   OAI2BB2X1M U359 (.Y(n209), 
	.B1(n156), 
	.B0(n453), 
	.A1N(n156), 
	.A0N(\Reg_file[13][7] ));
   OAI2BB2X1M U360 (.Y(n222), 
	.B1(n159), 
	.B0(n455), 
	.A1N(n159), 
	.A0N(\Reg_file[11][4] ));
   OAI2BB2X1M U361 (.Y(n224), 
	.B1(n159), 
	.B0(n460), 
	.A1N(n159), 
	.A0N(\Reg_file[11][6] ));
   OAI2BB2X1M U362 (.Y(n225), 
	.B1(n159), 
	.B0(n453), 
	.A1N(n159), 
	.A0N(\Reg_file[11][7] ));
   OAI2BB2X1M U363 (.Y(n238), 
	.B1(n162), 
	.B0(n455), 
	.A1N(n162), 
	.A0N(\Reg_file[9][4] ));
   OAI2BB2X1M U364 (.Y(n240), 
	.B1(n162), 
	.B0(n460), 
	.A1N(n162), 
	.A0N(\Reg_file[9][6] ));
   OAI2BB2X1M U365 (.Y(n241), 
	.B1(n162), 
	.B0(n453), 
	.A1N(n162), 
	.A0N(\Reg_file[9][7] ));
   OAI2BB2X1M U366 (.Y(n190), 
	.B1(n455), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][4] ));
   OAI2BB2X1M U367 (.Y(n193), 
	.B1(n453), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][7] ));
   OAI2BB2X1M U368 (.Y(n192), 
	.B1(n460), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(\Reg_file[15][6] ));
   NOR2X4M U369 (.Y(n396), 
	.B(N10), 
	.A(n407));
   NOR2X4M U370 (.Y(n395), 
	.B(n408), 
	.A(n407));
   AOI22X1M U371 (.Y(n139), 
	.B1(n395), 
	.B0(\Reg_file[11][0] ), 
	.A1(n396), 
	.A0(\Reg_file[10][0] ));
   NOR2X4M U372 (.Y(n398), 
	.B(N11), 
	.A(N10));
   NOR2X4M U373 (.Y(n397), 
	.B(N11), 
	.A(n408));
   AOI22X1M U374 (.Y(n138), 
	.B1(n397), 
	.B0(\Reg_file[9][0] ), 
	.A1(n398), 
	.A0(\Reg_file[8][0] ));
   AOI21X1M U375 (.Y(n149), 
	.B0(n386), 
	.A1(n138), 
	.A0(n139));
   AOI22X1M U376 (.Y(n141), 
	.B1(n395), 
	.B0(\Reg_file[15][0] ), 
	.A1(n396), 
	.A0(\Reg_file[14][0] ));
   AOI22X1M U377 (.Y(n140), 
	.B1(n397), 
	.B0(\Reg_file[13][0] ), 
	.A1(n398), 
	.A0(\Reg_file[12][0] ));
   CLKNAND2X2M U378 (.Y(n389), 
	.B(N12), 
	.A(N13));
   AOI21X1M U379 (.Y(n148), 
	.B0(n389), 
	.A1(n140), 
	.A0(n141));
   AOI22X1M U380 (.Y(n143), 
	.B1(n395), 
	.B0(REG3[0]), 
	.A1(n396), 
	.A0(REG2[0]));
   CLKNAND2X2M U381 (.Y(n392), 
	.B(n406), 
	.A(n451));
   AOI21X1M U382 (.Y(n147), 
	.B0(n392), 
	.A1(n142), 
	.A0(n143));
   AOI22X1M U383 (.Y(n145), 
	.B1(n395), 
	.B0(\Reg_file[7][0] ), 
	.A1(n396), 
	.A0(\Reg_file[6][0] ));
   AOI22X1M U384 (.Y(n144), 
	.B1(n397), 
	.B0(\Reg_file[5][0] ), 
	.A1(n398), 
	.A0(\Reg_file[4][0] ));
   CLKNAND2X2M U385 (.Y(n399), 
	.B(n406), 
	.A(N12));
   AOI21X1M U386 (.Y(n146), 
	.B0(n399), 
	.A1(n144), 
	.A0(n145));
   OR4X1M U387 (.Y(N26), 
	.D(n146), 
	.C(n147), 
	.B(n148), 
	.A(n149));
   AOI22X1M U388 (.Y(n315), 
	.B1(n395), 
	.B0(\Reg_file[11][1] ), 
	.A1(n396), 
	.A0(\Reg_file[10][1] ));
   AOI22X1M U389 (.Y(n314), 
	.B1(n397), 
	.B0(\Reg_file[9][1] ), 
	.A1(n398), 
	.A0(\Reg_file[8][1] ));
   AOI21X1M U390 (.Y(n325), 
	.B0(n386), 
	.A1(n314), 
	.A0(n315));
   AOI22X1M U391 (.Y(n317), 
	.B1(n395), 
	.B0(\Reg_file[15][1] ), 
	.A1(n396), 
	.A0(\Reg_file[14][1] ));
   AOI22X1M U392 (.Y(n316), 
	.B1(n397), 
	.B0(\Reg_file[13][1] ), 
	.A1(n398), 
	.A0(\Reg_file[12][1] ));
   AOI21X1M U393 (.Y(n324), 
	.B0(n389), 
	.A1(n316), 
	.A0(n317));
   AOI22X1M U394 (.Y(n319), 
	.B1(n395), 
	.B0(REG3[1]), 
	.A1(n396), 
	.A0(REG2[1]));
   AOI21X1M U395 (.Y(n323), 
	.B0(n392), 
	.A1(n318), 
	.A0(n319));
   AOI22X1M U396 (.Y(n321), 
	.B1(n395), 
	.B0(\Reg_file[7][1] ), 
	.A1(n396), 
	.A0(\Reg_file[6][1] ));
   AOI22X1M U397 (.Y(n320), 
	.B1(n397), 
	.B0(\Reg_file[5][1] ), 
	.A1(n398), 
	.A0(\Reg_file[4][1] ));
   AOI21X1M U398 (.Y(n322), 
	.B0(n399), 
	.A1(n320), 
	.A0(n321));
   OR4X1M U399 (.Y(N25), 
	.D(n322), 
	.C(n323), 
	.B(n324), 
	.A(n325));
   AOI22X1M U400 (.Y(n327), 
	.B1(n395), 
	.B0(\Reg_file[11][2] ), 
	.A1(n396), 
	.A0(\Reg_file[10][2] ));
   AOI22X1M U401 (.Y(n326), 
	.B1(n397), 
	.B0(\Reg_file[9][2] ), 
	.A1(n398), 
	.A0(\Reg_file[8][2] ));
   AOI21X1M U402 (.Y(n337), 
	.B0(n386), 
	.A1(n326), 
	.A0(n327));
   AOI22X1M U403 (.Y(n329), 
	.B1(n395), 
	.B0(\Reg_file[15][2] ), 
	.A1(n396), 
	.A0(\Reg_file[14][2] ));
   AOI22X1M U404 (.Y(n328), 
	.B1(n397), 
	.B0(\Reg_file[13][2] ), 
	.A1(n398), 
	.A0(\Reg_file[12][2] ));
   AOI21X1M U405 (.Y(n336), 
	.B0(n389), 
	.A1(n328), 
	.A0(n329));
   AOI22X1M U406 (.Y(n331), 
	.B1(n395), 
	.B0(REG3[2]), 
	.A1(n396), 
	.A0(REG2[2]));
   AOI21X1M U407 (.Y(n335), 
	.B0(n392), 
	.A1(n330), 
	.A0(n331));
   AOI22X1M U408 (.Y(n333), 
	.B1(n395), 
	.B0(\Reg_file[7][2] ), 
	.A1(n396), 
	.A0(\Reg_file[6][2] ));
   AOI22X1M U409 (.Y(n332), 
	.B1(n397), 
	.B0(\Reg_file[5][2] ), 
	.A1(n398), 
	.A0(\Reg_file[4][2] ));
   AOI21X1M U410 (.Y(n334), 
	.B0(n399), 
	.A1(n332), 
	.A0(n333));
   OR4X1M U411 (.Y(N24), 
	.D(n334), 
	.C(n335), 
	.B(n336), 
	.A(n337));
   AOI22X1M U412 (.Y(n339), 
	.B1(n395), 
	.B0(\Reg_file[11][3] ), 
	.A1(n396), 
	.A0(\Reg_file[10][3] ));
   AOI22X1M U413 (.Y(n338), 
	.B1(n397), 
	.B0(\Reg_file[9][3] ), 
	.A1(n398), 
	.A0(\Reg_file[8][3] ));
   AOI21X1M U414 (.Y(n349), 
	.B0(n386), 
	.A1(n338), 
	.A0(n339));
   AOI22X1M U415 (.Y(n341), 
	.B1(n395), 
	.B0(\Reg_file[15][3] ), 
	.A1(n396), 
	.A0(\Reg_file[14][3] ));
   AOI22X1M U416 (.Y(n340), 
	.B1(n397), 
	.B0(\Reg_file[13][3] ), 
	.A1(n398), 
	.A0(\Reg_file[12][3] ));
   AOI21X1M U417 (.Y(n348), 
	.B0(n389), 
	.A1(n340), 
	.A0(n341));
   AOI22X1M U418 (.Y(n343), 
	.B1(n395), 
	.B0(REG3[3]), 
	.A1(n396), 
	.A0(REG2[3]));
   AOI21X1M U419 (.Y(n347), 
	.B0(n392), 
	.A1(n342), 
	.A0(n343));
   AOI22X1M U420 (.Y(n345), 
	.B1(n395), 
	.B0(\Reg_file[7][3] ), 
	.A1(n396), 
	.A0(\Reg_file[6][3] ));
   AOI22X1M U421 (.Y(n344), 
	.B1(n397), 
	.B0(\Reg_file[5][3] ), 
	.A1(n398), 
	.A0(\Reg_file[4][3] ));
   AOI21X1M U422 (.Y(n346), 
	.B0(n399), 
	.A1(n344), 
	.A0(n345));
   OR4X1M U423 (.Y(N23), 
	.D(n346), 
	.C(n347), 
	.B(n348), 
	.A(n349));
   AOI22X1M U424 (.Y(n351), 
	.B1(n395), 
	.B0(\Reg_file[11][4] ), 
	.A1(n396), 
	.A0(\Reg_file[10][4] ));
   AOI22X1M U425 (.Y(n350), 
	.B1(n397), 
	.B0(\Reg_file[9][4] ), 
	.A1(n398), 
	.A0(\Reg_file[8][4] ));
   AOI21X1M U426 (.Y(n361), 
	.B0(n386), 
	.A1(n350), 
	.A0(n351));
   AOI22X1M U427 (.Y(n353), 
	.B1(n395), 
	.B0(\Reg_file[15][4] ), 
	.A1(n396), 
	.A0(\Reg_file[14][4] ));
   AOI22X1M U428 (.Y(n352), 
	.B1(n397), 
	.B0(\Reg_file[13][4] ), 
	.A1(n398), 
	.A0(\Reg_file[12][4] ));
   AOI21X1M U429 (.Y(n360), 
	.B0(n389), 
	.A1(n352), 
	.A0(n353));
   AOI22X1M U430 (.Y(n355), 
	.B1(n395), 
	.B0(REG3[4]), 
	.A1(n396), 
	.A0(REG2[4]));
   AOI21X1M U431 (.Y(n359), 
	.B0(n392), 
	.A1(n354), 
	.A0(n355));
   AOI22X1M U432 (.Y(n357), 
	.B1(n395), 
	.B0(\Reg_file[7][4] ), 
	.A1(n396), 
	.A0(\Reg_file[6][4] ));
   AOI22X1M U433 (.Y(n356), 
	.B1(n397), 
	.B0(\Reg_file[5][4] ), 
	.A1(n398), 
	.A0(\Reg_file[4][4] ));
   AOI21X1M U434 (.Y(n358), 
	.B0(n399), 
	.A1(n356), 
	.A0(n357));
   OR4X1M U435 (.Y(N22), 
	.D(n358), 
	.C(n359), 
	.B(n360), 
	.A(n361));
   AOI22X1M U436 (.Y(n363), 
	.B1(n395), 
	.B0(\Reg_file[11][5] ), 
	.A1(n396), 
	.A0(\Reg_file[10][5] ));
   AOI22X1M U437 (.Y(n362), 
	.B1(n397), 
	.B0(\Reg_file[9][5] ), 
	.A1(n398), 
	.A0(\Reg_file[8][5] ));
   AOI21X1M U438 (.Y(n373), 
	.B0(n386), 
	.A1(n362), 
	.A0(n363));
   AOI22X1M U439 (.Y(n365), 
	.B1(n395), 
	.B0(\Reg_file[15][5] ), 
	.A1(n396), 
	.A0(\Reg_file[14][5] ));
   AOI22X1M U440 (.Y(n364), 
	.B1(n397), 
	.B0(\Reg_file[13][5] ), 
	.A1(n398), 
	.A0(\Reg_file[12][5] ));
   AOI21X1M U441 (.Y(n372), 
	.B0(n389), 
	.A1(n364), 
	.A0(n365));
   AOI22X1M U442 (.Y(n367), 
	.B1(n395), 
	.B0(REG3[5]), 
	.A1(n396), 
	.A0(REG2[5]));
   AOI21X1M U443 (.Y(n371), 
	.B0(n392), 
	.A1(n366), 
	.A0(n367));
   AOI22X1M U444 (.Y(n369), 
	.B1(n395), 
	.B0(\Reg_file[7][5] ), 
	.A1(n396), 
	.A0(\Reg_file[6][5] ));
   AOI22X1M U445 (.Y(n368), 
	.B1(n397), 
	.B0(\Reg_file[5][5] ), 
	.A1(n398), 
	.A0(\Reg_file[4][5] ));
   AOI21X1M U446 (.Y(n370), 
	.B0(n399), 
	.A1(n368), 
	.A0(n369));
   OR4X1M U447 (.Y(N21), 
	.D(n370), 
	.C(n371), 
	.B(n372), 
	.A(n373));
   AOI22X1M U448 (.Y(n375), 
	.B1(n395), 
	.B0(\Reg_file[11][6] ), 
	.A1(n396), 
	.A0(\Reg_file[10][6] ));
   AOI22X1M U449 (.Y(n374), 
	.B1(n397), 
	.B0(\Reg_file[9][6] ), 
	.A1(n398), 
	.A0(\Reg_file[8][6] ));
   AOI21X1M U450 (.Y(n385), 
	.B0(n386), 
	.A1(n374), 
	.A0(n375));
   AOI22X1M U451 (.Y(n377), 
	.B1(n395), 
	.B0(\Reg_file[15][6] ), 
	.A1(n396), 
	.A0(\Reg_file[14][6] ));
   AOI22X1M U452 (.Y(n376), 
	.B1(n397), 
	.B0(\Reg_file[13][6] ), 
	.A1(n398), 
	.A0(\Reg_file[12][6] ));
   AOI21X1M U453 (.Y(n384), 
	.B0(n389), 
	.A1(n376), 
	.A0(n377));
   AOI22X1M U454 (.Y(n379), 
	.B1(n395), 
	.B0(REG3[6]), 
	.A1(n396), 
	.A0(REG2[6]));
   AOI21X1M U455 (.Y(n383), 
	.B0(n392), 
	.A1(n378), 
	.A0(n379));
   AOI22X1M U456 (.Y(n381), 
	.B1(n395), 
	.B0(\Reg_file[7][6] ), 
	.A1(n396), 
	.A0(\Reg_file[6][6] ));
   AOI22X1M U457 (.Y(n380), 
	.B1(n397), 
	.B0(\Reg_file[5][6] ), 
	.A1(n398), 
	.A0(\Reg_file[4][6] ));
   AOI21X1M U458 (.Y(n382), 
	.B0(n399), 
	.A1(n380), 
	.A0(n381));
   OR4X1M U459 (.Y(N20), 
	.D(n382), 
	.C(n383), 
	.B(n384), 
	.A(n385));
   AOI22X1M U460 (.Y(n388), 
	.B1(n395), 
	.B0(\Reg_file[11][7] ), 
	.A1(n396), 
	.A0(\Reg_file[10][7] ));
   AOI22X1M U461 (.Y(n387), 
	.B1(n397), 
	.B0(\Reg_file[9][7] ), 
	.A1(n398), 
	.A0(\Reg_file[8][7] ));
   AOI21X1M U462 (.Y(n405), 
	.B0(n386), 
	.A1(n387), 
	.A0(n388));
   AOI22X1M U463 (.Y(n391), 
	.B1(n395), 
	.B0(\Reg_file[15][7] ), 
	.A1(n396), 
	.A0(\Reg_file[14][7] ));
   AOI22X1M U464 (.Y(n390), 
	.B1(n397), 
	.B0(\Reg_file[13][7] ), 
	.A1(n398), 
	.A0(\Reg_file[12][7] ));
   AOI22X1M U465 (.Y(n394), 
	.B1(n395), 
	.B0(REG3[7]), 
	.A1(n396), 
	.A0(REG2[7]));
   AOI21X1M U466 (.Y(n403), 
	.B0(n392), 
	.A1(n393), 
	.A0(n394));
   AOI22X1M U467 (.Y(n401), 
	.B1(n395), 
	.B0(\Reg_file[7][7] ), 
	.A1(n396), 
	.A0(\Reg_file[6][7] ));
   AOI22X1M U468 (.Y(n400), 
	.B1(n397), 
	.B0(\Reg_file[5][7] ), 
	.A1(n398), 
	.A0(\Reg_file[4][7] ));
   AOI21X1M U469 (.Y(n402), 
	.B0(n399), 
	.A1(n400), 
	.A0(n401));
   OR4X1M U470 (.Y(N19), 
	.D(n402), 
	.C(n403), 
	.B(n404), 
	.A(n405));
   INVXLM U471 (.Y(n464), 
	.A(n490));
   INVXLM U472 (.Y(n465), 
	.A(n469));
   DLY1X1M U473 (.Y(n466), 
	.A(n471));
   DLY1X1M U474 (.Y(n467), 
	.A(n493));
   INVXLM U475 (.Y(n468), 
	.A(n490));
   INVXLM U476 (.Y(n469), 
	.A(n468));
   INVXLM U477 (.Y(n470), 
	.A(n468));
   INVXLM U478 (.Y(n471), 
	.A(n469));
   INVXLM U479 (.Y(n472), 
	.A(n470));
   DLY1X1M U480 (.Y(n473), 
	.A(n492));
   DLY1X1M U481 (.Y(n474), 
	.A(n472));
   DLY1X1M U482 (.Y(n475), 
	.A(n472));
   DLY1X1M U483 (.Y(n476), 
	.A(n491));
   DLY1X1M U484 (.Y(n477), 
	.A(n492));
   DLY1X1M U485 (.Y(n478), 
	.A(n493));
   DLY1X1M U486 (.Y(n479), 
	.A(n471));
   DLY1X1M U487 (.Y(n480), 
	.A(n471));
   DLY1X1M U488 (.Y(n481), 
	.A(n491));
   DLY1X1M U489 (.Y(n482), 
	.A(n471));
   DLY1X1M U490 (.Y(n483), 
	.A(n491));
   DLY1X1M U491 (.Y(n484), 
	.A(n492));
   DLY1X1M U492 (.Y(n485), 
	.A(n493));
   DLY1X1M U493 (.Y(n486), 
	.A(n493));
   DLY1X1M U494 (.Y(n487), 
	.A(n491));
   DLY1X1M U495 (.Y(n488), 
	.A(n472));
   DLY1X1M U496 (.Y(n489), 
	.A(n472));
   INVXLM U497 (.Y(n490), 
	.A(test_se));
   INVXLM U498 (.Y(n491), 
	.A(n469));
   INVXLM U499 (.Y(n492), 
	.A(n470));
   INVXLM U500 (.Y(n493), 
	.A(n469));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n149, 
	n168, 
	n167, 
	n166, 
	n169, 
	n146);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n149;
   input n168;
   input n167;
   input n166;
   input n169;
   input n146;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n4;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;

   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n167), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n149), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n169), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n169), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n11), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n10), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n11), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n11), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n149), 
	.A(\u_div/PartRem[2][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n169), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n168), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n10), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n10), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n168), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(\u_div/PartRem[6][2] ), 
	.A(n11));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n10), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n168), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n11), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n10), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n169), 
	.A(\u_div/PartRem[4][4] ));
   AND2X2M U1 (.Y(quotient[2]), 
	.B(n16), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X2M U2 (.Y(n16), 
	.B(b[7]), 
	.A(b[6]));
   AND2X2M U4 (.Y(quotient[3]), 
	.B(n4), 
	.A(\u_div/CryTmp[3][5] ));
   AND2X2M U9 (.Y(quotient[1]), 
	.B(n167), 
	.A(\u_div/CryTmp[1][7] ));
   AND3X2M U10 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n11), 
	.A(n14));
   AND2X2M U12 (.Y(quotient[4]), 
	.B(n15), 
	.A(\u_div/CryTmp[4][4] ));
   AND2X2M U13 (.Y(n14), 
	.B(n10), 
	.A(n15));
   AND3X2M U14 (.Y(n15), 
	.C(n168), 
	.B(n169), 
	.A(n16));
   INVX2M U15 (.Y(n11), 
	.A(b[2]));
   MX2X2M U16 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   INVX2M U17 (.Y(n12), 
	.A(b[1]));
   INVX2M U18 (.Y(n10), 
	.A(b[3]));
   AND2X1M U19 (.Y(n4), 
	.B(n16), 
	.A(n168));
   OR2X2M U20 (.Y(\u_div/CryTmp[2][1] ), 
	.B(a[2]), 
	.A(n146));
   OR2X2M U21 (.Y(\u_div/CryTmp[4][1] ), 
	.B(a[4]), 
	.A(n146));
   OR2X2M U22 (.Y(\u_div/CryTmp[1][1] ), 
	.B(a[1]), 
	.A(n146));
   OR2X2M U23 (.Y(\u_div/CryTmp[6][1] ), 
	.B(a[6]), 
	.A(n146));
   OR2X2M U24 (.Y(\u_div/CryTmp[3][1] ), 
	.B(a[3]), 
	.A(n146));
   OR2X2M U25 (.Y(\u_div/CryTmp[5][1] ), 
	.B(a[5]), 
	.A(n146));
   MX2XLM U26 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   MX2XLM U27 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MX2XLM U28 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   MX2XLM U29 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   MX2XLM U30 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   MX2XLM U31 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   MX2XLM U32 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   MX2XLM U33 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   MX2XLM U34 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   MX2XLM U35 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   MX2XLM U36 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   OR2X2M U37 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n146));
   XNOR2X2M U38 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n146));
   XNOR2X2M U39 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n146));
   XNOR2X2M U40 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n146));
   XNOR2X2M U41 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n146));
   XNOR2X2M U42 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n146));
   XNOR2X2M U43 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n146));
   NAND2X2M U44 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n166), 
	.A(b[0]));
   XNOR2X2M U46 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n146));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U62 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U63 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U64 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U65 (.Y(quotient[7]), 
	.D(n11), 
	.C(n12), 
	.B(n14), 
	.A(\u_div/CryTmp[7][1] ));
   AND2X1M U66 (.Y(quotient[5]), 
	.B(n14), 
	.A(\u_div/CryTmp[5][3] ));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n169, 
	n149, 
	n148, 
	n168, 
	n147, 
	n167, 
	n166, 
	n146);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n169;
   input n149;
   input n148;
   input n168;
   input n147;
   input n167;
   input n166;
   input n146;

   // Internal wires
   wire n8;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n167), 
	.A(A[7]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n168), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n169), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n148), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n147), 
	.A(A[2]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n149), 
	.A(A[6]));
   INVXLM U2 (.Y(n8), 
	.A(B[1]));
   XNOR2X2M U8 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n146));
   NAND2X2M U9 (.Y(carry[1]), 
	.B(n166), 
	.A(B[0]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   XOR2XLM U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   CLKXOR2X2M U2 (.Y(SUM[13]), 
	.B(n16), 
	.A(B[13]));
   CLKXOR2X2M U3 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   NAND2X2M U4 (.Y(n13), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U5 (.Y(n7), 
	.A(A[6]));
   INVX2M U6 (.Y(SUM[6]), 
	.A(n7));
   BUFX2M U7 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U8 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U9 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U10 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U11 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U12 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U13 (.Y(SUM[9]), 
	.B(n9), 
	.A(n8));
   NOR2X1M U14 (.Y(n9), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U15 (.Y(SUM[8]), 
	.B(n13), 
	.A(n12));
   NAND2BX1M U16 (.Y(n12), 
	.B(n15), 
	.AN(n14));
   OAI2BB1X1M U17 (.Y(n16), 
	.B0(n18), 
	.A1N(A[12]), 
	.A0N(n17));
   OAI21X1M U18 (.Y(n18), 
	.B0(B[12]), 
	.A1(n17), 
	.A0(A[12]));
   XOR3XLM U19 (.Y(SUM[12]), 
	.C(n17), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U20 (.Y(n17), 
	.B0N(n21), 
	.A1(n20), 
	.A0(n19));
   XNOR2X1M U21 (.Y(SUM[11]), 
	.B(n22), 
	.A(n20));
   NOR2X1M U22 (.Y(n22), 
	.B(n19), 
	.A(n21));
   NOR2X1M U23 (.Y(n19), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U24 (.Y(n21), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U25 (.Y(n20), 
	.B0(n25), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U26 (.Y(SUM[10]), 
	.B(n24), 
	.A(n26));
   AOI2BB1X1M U27 (.Y(n24), 
	.B0(n10), 
	.A1N(n11), 
	.A0N(n8));
   AND2X1M U28 (.Y(n10), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U29 (.Y(n11), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U30 (.Y(n8), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   CLKNAND2X2M U31 (.Y(n15), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U32 (.Y(n14), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U33 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   CLKNAND2X2M U34 (.Y(n25), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U35 (.Y(n23), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n159, 
	n149, 
	n146, 
	n167, 
	n160, 
	n161, 
	n162, 
	n163, 
	n164, 
	n166, 
	n165, 
	n169, 
	n168);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n159;
   input n149;
   input n146;
   input n167;
   input n160;
   input n161;
   input n162;
   input n163;
   input n164;
   input n166;
   input n165;
   input n169;
   input n168;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n29;
   wire n30;
   wire n31;

   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n9), 
	.A(\ab[2][6] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n8), 
	.A(\ab[2][5] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n3), 
	.A(\ab[2][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n4), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n7), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n6), 
	.A(\ab[2][1] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n5), 
	.A(\ab[2][0] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKINVX2M U10 (.Y(n30), 
	.A(B[2]));
   CLKINVX2M U11 (.Y(n29), 
	.A(B[3]));
   CLKINVX2M U15 (.Y(n31), 
	.A(B[1]));
   CLKXOR2X2M U16 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U17 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U18 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U19 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U20 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U21 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U22 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U23 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U24 (.Y(n14), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U25 (.Y(n15), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U26 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U27 (.Y(\A1[6] ), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U28 (.Y(n16), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   CLKXOR2X2M U29 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U33 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(\ab[1][1] ));
   CLKXOR2X2M U34 (.Y(\SUMB[1][2] ), 
	.B(\ab[0][3] ), 
	.A(\ab[1][2] ));
   CLKXOR2X2M U35 (.Y(\SUMB[1][3] ), 
	.B(\ab[0][4] ), 
	.A(\ab[1][3] ));
   CLKXOR2X2M U36 (.Y(\SUMB[1][4] ), 
	.B(\ab[0][5] ), 
	.A(\ab[1][4] ));
   CLKXOR2X2M U37 (.Y(\SUMB[1][5] ), 
	.B(\ab[0][6] ), 
	.A(\ab[1][5] ));
   CLKXOR2X2M U38 (.Y(\SUMB[1][6] ), 
	.B(\ab[0][7] ), 
	.A(\ab[1][6] ));
   NOR2X1M U47 (.Y(\ab[7][7] ), 
	.B(n167), 
	.A(n159));
   NOR2X1M U48 (.Y(\ab[7][6] ), 
	.B(n149), 
	.A(n159));
   NOR2X1M U49 (.Y(\ab[7][5] ), 
	.B(n168), 
	.A(n159));
   NOR2X1M U50 (.Y(\ab[7][4] ), 
	.B(n169), 
	.A(n159));
   NOR2X1M U51 (.Y(\ab[7][3] ), 
	.B(n29), 
	.A(n159));
   NOR2X1M U52 (.Y(\ab[7][2] ), 
	.B(n30), 
	.A(n159));
   NOR2X1M U53 (.Y(\ab[7][1] ), 
	.B(n31), 
	.A(n159));
   NOR2X1M U54 (.Y(\ab[7][0] ), 
	.B(n146), 
	.A(n159));
   NOR2X1M U55 (.Y(\ab[6][7] ), 
	.B(n160), 
	.A(n167));
   NOR2X1M U56 (.Y(\ab[6][6] ), 
	.B(n160), 
	.A(n149));
   NOR2X1M U57 (.Y(\ab[6][5] ), 
	.B(n160), 
	.A(n168));
   NOR2X1M U58 (.Y(\ab[6][4] ), 
	.B(n160), 
	.A(n169));
   NOR2X1M U59 (.Y(\ab[6][3] ), 
	.B(n160), 
	.A(n29));
   NOR2X1M U60 (.Y(\ab[6][2] ), 
	.B(n160), 
	.A(n30));
   NOR2X1M U61 (.Y(\ab[6][1] ), 
	.B(n160), 
	.A(n31));
   NOR2X1M U62 (.Y(\ab[6][0] ), 
	.B(n160), 
	.A(n146));
   NOR2X1M U63 (.Y(\ab[5][7] ), 
	.B(n161), 
	.A(n167));
   NOR2X1M U64 (.Y(\ab[5][6] ), 
	.B(n161), 
	.A(n149));
   NOR2X1M U65 (.Y(\ab[5][5] ), 
	.B(n161), 
	.A(n168));
   NOR2X1M U66 (.Y(\ab[5][4] ), 
	.B(n161), 
	.A(n169));
   NOR2X1M U67 (.Y(\ab[5][3] ), 
	.B(n161), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[5][2] ), 
	.B(n161), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[5][1] ), 
	.B(n161), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][0] ), 
	.B(n161), 
	.A(n146));
   NOR2X1M U71 (.Y(\ab[4][7] ), 
	.B(n162), 
	.A(n167));
   NOR2X1M U72 (.Y(\ab[4][6] ), 
	.B(n162), 
	.A(n149));
   NOR2X1M U73 (.Y(\ab[4][5] ), 
	.B(n162), 
	.A(n168));
   NOR2X1M U74 (.Y(\ab[4][4] ), 
	.B(n162), 
	.A(n169));
   NOR2X1M U75 (.Y(\ab[4][3] ), 
	.B(n162), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[4][2] ), 
	.B(n162), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[4][1] ), 
	.B(n162), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][0] ), 
	.B(n162), 
	.A(n146));
   NOR2X1M U79 (.Y(\ab[3][7] ), 
	.B(n163), 
	.A(n167));
   NOR2X1M U80 (.Y(\ab[3][6] ), 
	.B(n163), 
	.A(n149));
   NOR2X1M U81 (.Y(\ab[3][5] ), 
	.B(n163), 
	.A(n168));
   NOR2X1M U82 (.Y(\ab[3][4] ), 
	.B(n163), 
	.A(n169));
   NOR2X1M U83 (.Y(\ab[3][3] ), 
	.B(n163), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[3][2] ), 
	.B(n163), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[3][1] ), 
	.B(n163), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][0] ), 
	.B(n163), 
	.A(n146));
   NOR2X1M U87 (.Y(\ab[2][7] ), 
	.B(n164), 
	.A(n167));
   NOR2X1M U88 (.Y(\ab[2][6] ), 
	.B(n164), 
	.A(n149));
   NOR2X1M U89 (.Y(\ab[2][5] ), 
	.B(n164), 
	.A(n168));
   NOR2X1M U90 (.Y(\ab[2][4] ), 
	.B(n164), 
	.A(n169));
   NOR2X1M U91 (.Y(\ab[2][3] ), 
	.B(n164), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[2][2] ), 
	.B(n164), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[2][1] ), 
	.B(n164), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][0] ), 
	.B(n164), 
	.A(n146));
   NOR2X1M U95 (.Y(\ab[1][7] ), 
	.B(n165), 
	.A(n167));
   NOR2X1M U96 (.Y(\ab[1][6] ), 
	.B(n165), 
	.A(n149));
   NOR2X1M U97 (.Y(\ab[1][5] ), 
	.B(n165), 
	.A(n168));
   NOR2X1M U98 (.Y(\ab[1][4] ), 
	.B(n165), 
	.A(n169));
   NOR2X1M U99 (.Y(\ab[1][3] ), 
	.B(n165), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[1][2] ), 
	.B(n165), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[1][1] ), 
	.B(n165), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][0] ), 
	.B(n165), 
	.A(n146));
   NOR2X1M U103 (.Y(\ab[0][7] ), 
	.B(n166), 
	.A(n167));
   NOR2X1M U104 (.Y(\ab[0][6] ), 
	.B(n166), 
	.A(n149));
   NOR2X1M U105 (.Y(\ab[0][5] ), 
	.B(n166), 
	.A(n168));
   NOR2X1M U106 (.Y(\ab[0][4] ), 
	.B(n166), 
	.A(n169));
   NOR2X1M U107 (.Y(\ab[0][3] ), 
	.B(n166), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[0][2] ), 
	.B(n166), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[0][1] ), 
	.B(n166), 
	.A(n31));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n166), 
	.A(n146));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n16,
		n15,
		n13,
		n14,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN3_scan_SYNC_RST_1);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input CLK;
   input RST;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN3_scan_SYNC_RST_1;

   // Internal wires
   wire N67;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire N85;
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n6;
   wire n7;
   wire n8;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n173;
   wire n174;
   wire n175;
   wire [15:0] ALU_OUT_Comb;

   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(n175), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(n174), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(n173), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(n175), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(n174), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(n173), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(n175), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(n174), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(n173), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(n175), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(n174), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(n173), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(n175), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(n174), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(n173), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(CLK));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(n173), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(n174), 
	.RN(FE_OFN3_scan_SYNC_RST_1), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(CLK));
   AND3X2M U7 (.Y(n111), 
	.C(n8), 
	.B(n7), 
	.A(n6));
   NOR3BX2M U28 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n157), 
	.AN(n122));
   AOI31X2M U29 (.Y(ALU_OUT_Comb[0]), 
	.B0(n153), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   OAI222XLM U33 (.Y(n95), 
	.C1(n165), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n147), 
	.A0(n96));
   OAI222XLM U34 (.Y(n89), 
	.C1(n164), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n148), 
	.A0(n90));
   OAI222XLM U35 (.Y(n83), 
	.C1(n163), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n169), 
	.A0(n84));
   CLKINVX2M U36 (.Y(n169), 
	.A(B[4]));
   OAI222XLM U37 (.Y(n77), 
	.C1(n162), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n168), 
	.A0(n78));
   CLKINVX2M U38 (.Y(n168), 
	.A(B[5]));
   OAI21XLM U39 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   OAI21XLM U40 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI21XLM U41 (.Y(n44), 
	.B0(B[1]), 
	.A1(n165), 
	.A0(n43));
   CLKINVX2M U42 (.Y(n146), 
	.A(B[0]));
   INVXLM U43 (.Y(n147), 
	.A(B[2]));
   NAND2BXLM U44 (.Y(n47), 
	.B(B[4]), 
	.AN(A[4]));
   INVXLM U45 (.Y(n148), 
	.A(B[3]));
   NAND2BXLM U46 (.Y(n140), 
	.B(B[5]), 
	.AN(A[5]));
   NAND2X2M U47 (.Y(n6), 
	.B(n52), 
	.A(N85));
   NAND2X2M U48 (.Y(n7), 
	.B(n59), 
	.A(A[0]));
   NAND2XLM U49 (.Y(n8), 
	.B(n66), 
	.A(N101));
   OAI2BB1X2M U50 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   AND2X2M U51 (.Y(n59), 
	.B(n122), 
	.A(n116));
   OAI2BB1X2M U52 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N100));
   AND2X2M U53 (.Y(n67), 
	.B(n122), 
	.A(n123));
   NOR2X2M U55 (.Y(n58), 
	.B(n154), 
	.A(n124));
   OAI2BB1X2M U56 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N94));
   OAI2BB1X2M U57 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N95));
   OAI2BB1X2M U58 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N96));
   OAI2BB1X2M U59 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N97));
   OAI2BB1X2M U60 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N98));
   OAI2BB1X2M U61 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N99));
   INVX2M U62 (.Y(n156), 
	.A(n124));
   OAI2BB1X2M U63 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n156));
   NOR2BX2M U65 (.Y(n48), 
	.B(n153), 
	.AN(n52));
   INVX2M U66 (.Y(n155), 
	.A(n108));
   INVX2M U67 (.Y(n154), 
	.A(n117));
   NOR2BX2M U69 (.Y(n54), 
	.B(n154), 
	.AN(n123));
   NAND3X2M U70 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n158), 
	.A(n156));
   NAND2X2M U71 (.Y(n49), 
	.B(n152), 
	.A(EN));
   NOR2X2M U72 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NOR2X2M U73 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n158));
   NAND2X2M U74 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U75 (.Y(n158), 
	.A(ALU_FUN[0]));
   INVX2M U76 (.Y(n157), 
	.A(ALU_FUN[1]));
   NAND3X2M U77 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   NOR2X2M U78 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   AND2X2M U79 (.Y(n116), 
	.B(n157), 
	.A(ALU_FUN[2]));
   AND3X2M U80 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n158), 
	.A(n123));
   NAND3X2M U81 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NOR3X2M U82 (.Y(n106), 
	.C(n157), 
	.B(ALU_FUN[2]), 
	.A(n158));
   NOR3X2M U83 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n157));
   AND4X2M U84 (.Y(n107), 
	.D(n158), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   NOR3X2M U86 (.Y(n52), 
	.C(n157), 
	.B(ALU_FUN[2]), 
	.A(n154));
   INVX2M U87 (.Y(n153), 
	.A(EN));
   AOI22X1M U90 (.Y(n110), 
	.B1(n54), 
	.B0(N67), 
	.A1(n67), 
	.A0(N76));
   AOI211X2M U91 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n166), 
	.A0(n58));
   AOI31X2M U92 (.Y(ALU_OUT_Comb[1]), 
	.B0(n153), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI222X1M U93 (.Y(n98), 
	.C1(n67), 
	.C0(N77), 
	.B1(n52), 
	.B0(N86), 
	.A1(n54), 
	.A0(N68));
   AOI211X2M U94 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n155), 
	.A0(A[2]));
   AOI222XLM U95 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n165), 
	.B0(n58), 
	.A1(n66), 
	.A0(N102));
   AOI31X2M U96 (.Y(ALU_OUT_Comb[2]), 
	.B0(n153), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U97 (.Y(n92), 
	.B1(n54), 
	.B0(N69), 
	.A1(n67), 
	.A0(N78));
   AOI221XLM U98 (.Y(n94), 
	.C0(n95), 
	.B1(n164), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[3]));
   AOI222XLM U99 (.Y(n93), 
	.C1(n66), 
	.C0(N103), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(n52), 
	.A0(N87));
   AOI31X2M U100 (.Y(ALU_OUT_Comb[3]), 
	.B0(n153), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U101 (.Y(n86), 
	.B1(n54), 
	.B0(N70), 
	.A1(n67), 
	.A0(N79));
   AOI221XLM U102 (.Y(n88), 
	.C0(n89), 
	.B1(n163), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[4]));
   AOI222XLM U103 (.Y(n87), 
	.C1(n66), 
	.C0(N104), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(n52), 
	.A0(N88));
   AOI31X2M U104 (.Y(ALU_OUT_Comb[4]), 
	.B0(n153), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U105 (.Y(n80), 
	.B1(n54), 
	.B0(N71), 
	.A1(n67), 
	.A0(N80));
   AOI221XLM U106 (.Y(n82), 
	.C0(n83), 
	.B1(n162), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n155));
   AOI222XLM U107 (.Y(n81), 
	.C1(n66), 
	.C0(N105), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(n52), 
	.A0(N89));
   OAI222X1M U108 (.Y(n71), 
	.C1(n161), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n149), 
	.A0(n72));
   AOI221XLM U109 (.Y(n73), 
	.C0(n58), 
	.B1(n160), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U110 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n160), 
	.A0(n63));
   AOI31X2M U111 (.Y(ALU_OUT_Comb[5]), 
	.B0(n153), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U112 (.Y(n74), 
	.B1(n54), 
	.B0(N72), 
	.A1(n67), 
	.A0(N81));
   AOI221XLM U113 (.Y(n76), 
	.C0(n77), 
	.B1(n161), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n155));
   AOI222XLM U114 (.Y(n75), 
	.C1(n66), 
	.C0(N106), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(n52), 
	.A0(N90));
   AOI31X2M U115 (.Y(ALU_OUT_Comb[6]), 
	.B0(n153), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U116 (.Y(n68), 
	.B1(n54), 
	.B0(N73), 
	.A1(n67), 
	.A0(N82));
   AOI221XLM U117 (.Y(n70), 
	.C0(n71), 
	.B1(n160), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n155));
   AOI222XLM U118 (.Y(n69), 
	.C1(n66), 
	.C0(N107), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(n52), 
	.A0(N91));
   AOI31X2M U119 (.Y(ALU_OUT_Comb[7]), 
	.B0(n153), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U120 (.Y(n55), 
	.B1(n54), 
	.B0(N74), 
	.A1(n67), 
	.A0(N83));
   AOI221XLM U121 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n159), 
	.A0(n58));
   AOI22XLM U122 (.Y(n56), 
	.B1(n52), 
	.B0(N92), 
	.A1(n66), 
	.A0(N108));
   INVX2M U123 (.Y(n152), 
	.A(n109));
   AOI211X2M U124 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N84));
   AOI21X2M U125 (.Y(ALU_OUT_Comb[8]), 
	.B0(n153), 
	.A1(n51), 
	.A0(n50));
   AOI2BB2XLM U126 (.Y(n51), 
	.B1(n52), 
	.B0(N93), 
	.A1N(n53), 
	.A0N(n159));
   AOI21X2M U127 (.Y(n50), 
	.B0(n152), 
	.A1(n54), 
	.A0(N75));
   INVX2M U128 (.Y(n149), 
	.A(B[6]));
   INVX2M U129 (.Y(n165), 
	.A(A[1]));
   INVX2M U130 (.Y(n166), 
	.A(A[0]));
   INVX2M U131 (.Y(n159), 
	.A(A[7]));
   INVX2M U132 (.Y(n160), 
	.A(A[6]));
   INVX2M U133 (.Y(n164), 
	.A(A[2]));
   INVX2M U134 (.Y(n163), 
	.A(A[3]));
   INVX2M U135 (.Y(n161), 
	.A(A[5]));
   INVX2M U136 (.Y(n162), 
	.A(A[4]));
   OAI222X1M U142 (.Y(n60), 
	.C1(n160), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n167), 
	.A0(n61));
   INVX2M U143 (.Y(n167), 
	.A(B[7]));
   AOI221XLM U144 (.Y(n62), 
	.C0(n58), 
	.B1(n159), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U145 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n159), 
	.A0(n63));
   AOI221XLM U146 (.Y(n85), 
	.C0(n58), 
	.B1(n162), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U147 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n162), 
	.A0(n63));
   AOI221XLM U148 (.Y(n79), 
	.C0(n58), 
	.B1(n161), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U149 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n161), 
	.A0(n63));
   AOI221XLM U150 (.Y(n97), 
	.C0(n58), 
	.B1(n164), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U151 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n164), 
	.A0(n63));
   AOI221XLM U152 (.Y(n91), 
	.C0(n58), 
	.B1(n163), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U153 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n163), 
	.A0(n63));
   OAI2B2X1M U154 (.Y(n102), 
	.B1(n166), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U155 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n165), 
	.A0(n63));
   OAI2B2X1M U156 (.Y(n114), 
	.B1(n165), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U157 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n166), 
	.A0(n63));
   AOI31X2M U158 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U159 (.Y(n119), 
	.C0(n58), 
	.B1(n166), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   AOI31X2M U160 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U161 (.Y(n104), 
	.C0(n58), 
	.B1(n165), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   INVX2M U163 (.Y(n151), 
	.A(n131));
   INVX2M U164 (.Y(n150), 
	.A(n43));
   NOR2X1M U165 (.Y(n142), 
	.B(B[7]), 
	.A(n159));
   NAND2BX1M U166 (.Y(n135), 
	.B(A[4]), 
	.AN(B[4]));
   CLKNAND2X2M U167 (.Y(n137), 
	.B(n47), 
	.A(n135));
   NOR2X1M U168 (.Y(n132), 
	.B(A[3]), 
	.A(n148));
   NOR2X1M U169 (.Y(n46), 
	.B(A[2]), 
	.A(n147));
   NOR2X1M U170 (.Y(n43), 
	.B(A[0]), 
	.A(n146));
   CLKNAND2X2M U171 (.Y(n134), 
	.B(n147), 
	.A(A[2]));
   NAND2BX1M U172 (.Y(n129), 
	.B(n134), 
	.AN(n46));
   AOI211X1M U173 (.Y(n45), 
	.C0(n44), 
	.B0(n129), 
	.A1(n150), 
	.A0(A[1]));
   CLKNAND2X2M U174 (.Y(n133), 
	.B(n148), 
	.A(A[3]));
   OAI31X1M U175 (.Y(n125), 
	.B0(n133), 
	.A2(n45), 
	.A1(n46), 
	.A0(n132));
   OAI211X1M U176 (.Y(n126), 
	.C0(n140), 
	.B0(n47), 
	.A1(n125), 
	.A0(n137));
   NAND2BX1M U177 (.Y(n136), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U178 (.Y(n139), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U179 (.Y(n127), 
	.B1(n160), 
	.B0(B[6]), 
	.A2(n139), 
	.A1(n136), 
	.A0(n126));
   CLKNAND2X2M U180 (.Y(n143), 
	.B(n159), 
	.A(B[7]));
   OAI21X1M U181 (.Y(N159), 
	.B0(n143), 
	.A1(n127), 
	.A0(n142));
   CLKNAND2X2M U182 (.Y(n130), 
	.B(n146), 
	.A(A[0]));
   OA21X1M U183 (.Y(n128), 
	.B0(B[1]), 
	.A1(n165), 
	.A0(n130));
   AOI211X1M U184 (.Y(n131), 
	.C0(n128), 
	.B0(n129), 
	.A1(n165), 
	.A0(n130));
   AOI31X1M U185 (.Y(n138), 
	.B0(n132), 
	.A2(n133), 
	.A1(n134), 
	.A0(n151));
   OAI2B11X1M U186 (.Y(n141), 
	.C0(n135), 
	.B0(n136), 
	.A1N(n138), 
	.A0(n137));
   AOI32X1M U187 (.Y(n144), 
	.B1(n149), 
	.B0(A[6]), 
	.A2(n139), 
	.A1(n140), 
	.A0(n141));
   AOI2B1X1M U188 (.Y(n145), 
	.B0(n142), 
	.A1N(n144), 
	.A0(n143));
   CLKINVX1M U189 (.Y(N158), 
	.A(n145));
   NOR2X1M U190 (.Y(N157), 
	.B(N158), 
	.A(N159));
   DLY1X1M U192 (.Y(n173), 
	.A(test_se));
   DLY1X1M U193 (.Y(n174), 
	.A(test_se));
   DLY1X1M U194 (.Y(n175), 
	.A(test_se));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_52 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101 }), 
	.n149(n149), 
	.n168(n168), 
	.n167(n167), 
	.n166(n166), 
	.n169(n169), 
	.n146(n146));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_46 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N84,
		N83,
		N82,
		N81,
		N80,
		N79,
		N78,
		N77,
		N76 }), 
	.n169(n169), 
	.n149(n149), 
	.n148(n148), 
	.n168(n168), 
	.n147(n147), 
	.n167(n167), 
	.n166(n166), 
	.n146(n146));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_43 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N75,
		N74,
		N73,
		N72,
		N71,
		N70,
		N69,
		N68,
		N67 }));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_49 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N100,
		N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88,
		N87,
		N86,
		N85 }), 
	.n159(n159), 
	.n149(n149), 
	.n146(n146), 
	.n167(n167), 
	.n160(n160), 
	.n161(n161), 
	.n162(n162), 
	.n163(n163), 
	.n164(n164), 
	.n166(n166), 
	.n165(n165), 
	.n169(n169), 
	.n168(n168));
endmodule

module CLK_GATE_dft (
	CLK_EN, 
	TE, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input TE;
   input CLK;
   output GATED_CLK;

   // Internal wires
   wire _0_net_;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(_0_net_), 
	.CK(CLK));
   OR2X2M U1 (.Y(_0_net_), 
	.B(TE), 
	.A(CLK_EN));
endmodule

module FIFO_MEM_CNTRL_data_width8_depth8_addr_width4_test_1 (
	W_data, 
	W_inc, 
	W_full, 
	W_RST, 
	W_addr, 
	W_CLK, 
	R_addr, 
	R_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN5_scan_SYNC_RST_1, 
	scan_REF_CLK__L8_N5, 
	scan_REF_CLK__L8_N6, 
	scan_REF_CLK__L8_N7);
   input [7:0] W_data;
   input W_inc;
   input W_full;
   input W_RST;
   input [3:0] W_addr;
   input W_CLK;
   input [3:0] R_addr;
   output [7:0] R_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN5_scan_SYNC_RST_1;
   input scan_REF_CLK__L8_N5;
   input scan_REF_CLK__L8_N6;
   input scan_REF_CLK__L8_N7;

   // Internal wires
   wire FE_OFN4_scan_SYNC_RST_1;
   wire N10;
   wire N11;
   wire N12;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[3][7] ;
   wire \mem[3][6] ;
   wire \mem[3][5] ;
   wire \mem[3][4] ;
   wire \mem[3][3] ;
   wire \mem[3][2] ;
   wire \mem[3][1] ;
   wire \mem[3][0] ;
   wire \mem[2][7] ;
   wire \mem[2][6] ;
   wire \mem[2][5] ;
   wire \mem[2][4] ;
   wire \mem[2][3] ;
   wire \mem[2][2] ;
   wire \mem[2][1] ;
   wire \mem[2][0] ;
   wire \mem[1][7] ;
   wire \mem[1][6] ;
   wire \mem[1][5] ;
   wire \mem[1][4] ;
   wire \mem[1][3] ;
   wire \mem[1][2] ;
   wire \mem[1][1] ;
   wire \mem[1][0] ;
   wire \mem[0][7] ;
   wire \mem[0][6] ;
   wire \mem[0][5] ;
   wire \mem[0][4] ;
   wire \mem[0][3] ;
   wire \mem[0][2] ;
   wire \mem[0][1] ;
   wire \mem[0][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;

   assign N10 = R_addr[0] ;
   assign N11 = R_addr[1] ;
   assign N12 = R_addr[2] ;
   assign test_so2 = \mem[7][7]  ;
   assign test_so1 = \mem[7][1]  ;

   BUFX4M FE_OFC4_scan_SYNC_RST_1 (.Y(FE_OFN4_scan_SYNC_RST_1), 
	.A(W_RST));
   SDFFRQX2M \mem_reg[1][7]  (.SI(\mem[1][6] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\mem[1][7] ), 
	.D(n102), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[1][6]  (.SI(\mem[1][5] ), 
	.SE(n217), 
	.RN(W_RST), 
	.Q(\mem[1][6] ), 
	.D(n101), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[1][5]  (.SI(\mem[1][4] ), 
	.SE(n215), 
	.RN(W_RST), 
	.Q(\mem[1][5] ), 
	.D(n100), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[1][4]  (.SI(\mem[1][3] ), 
	.SE(n213), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[1][4] ), 
	.D(n99), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[1][3]  (.SI(\mem[1][2] ), 
	.SE(n212), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[1][3] ), 
	.D(n98), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[1][2]  (.SI(\mem[1][1] ), 
	.SE(n220), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[1][2] ), 
	.D(n97), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[1][1]  (.SI(\mem[1][0] ), 
	.SE(n217), 
	.RN(W_RST), 
	.Q(\mem[1][1] ), 
	.D(n96), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[1][0]  (.SI(\mem[0][7] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\mem[1][0] ), 
	.D(n95), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][7]  (.SI(\mem[0][6] ), 
	.SE(n220), 
	.RN(W_RST), 
	.Q(\mem[0][7] ), 
	.D(n94), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][6]  (.SI(\mem[0][5] ), 
	.SE(n214), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[0][6] ), 
	.D(n93), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][5]  (.SI(\mem[0][4] ), 
	.SE(n217), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[0][5] ), 
	.D(n92), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][4]  (.SI(\mem[0][3] ), 
	.SE(n219), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[0][4] ), 
	.D(n91), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][3]  (.SI(\mem[0][2] ), 
	.SE(n217), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[0][3] ), 
	.D(n90), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][2]  (.SI(\mem[0][1] ), 
	.SE(n218), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[0][2] ), 
	.D(n89), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][1]  (.SI(\mem[0][0] ), 
	.SE(n214), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[0][1] ), 
	.D(n88), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[0][0]  (.SI(test_si1), 
	.SE(n215), 
	.RN(W_RST), 
	.Q(\mem[0][0] ), 
	.D(n87), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n212), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[5][7] ), 
	.D(n134), 
	.CK(W_CLK));
   SDFFRQX2M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n215), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[5][6] ), 
	.D(n133), 
	.CK(W_CLK));
   SDFFRQX2M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n211), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[5][5] ), 
	.D(n132), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n217), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[5][4] ), 
	.D(n131), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n213), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[5][3] ), 
	.D(n130), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n213), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[5][2] ), 
	.D(n129), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n220), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[5][1] ), 
	.D(n128), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\mem[5][0] ), 
	.D(n127), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n213), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[4][7] ), 
	.D(n126), 
	.CK(W_CLK));
   SDFFRQX2M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n210), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[4][6] ), 
	.D(n125), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n212), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[4][5] ), 
	.D(n124), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(n215), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[4][4] ), 
	.D(n123), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n220), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[4][3] ), 
	.D(n122), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n220), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[4][2] ), 
	.D(n121), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n213), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[4][1] ), 
	.D(n120), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[4][0]  (.SI(\mem[3][7] ), 
	.SE(n211), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[4][0] ), 
	.D(n119), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n219), 
	.RN(W_RST), 
	.Q(\mem[7][7] ), 
	.D(n150), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n211), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[7][6] ), 
	.D(n149), 
	.CK(W_CLK));
   SDFFRQX2M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n210), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[7][5] ), 
	.D(n148), 
	.CK(W_CLK));
   SDFFRQX2M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n218), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[7][4] ), 
	.D(n147), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(n217), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[7][3] ), 
	.D(n146), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[7][2]  (.SI(test_si2), 
	.SE(n212), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[7][2] ), 
	.D(n145), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n219), 
	.RN(W_RST), 
	.Q(\mem[7][1] ), 
	.D(n144), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n210), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[7][0] ), 
	.D(n143), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n218), 
	.RN(FE_OFN5_scan_SYNC_RST_1), 
	.Q(\mem[6][7] ), 
	.D(n142), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n220), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[6][6] ), 
	.D(n141), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(n218), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[6][5] ), 
	.D(n140), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n214), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[6][4] ), 
	.D(n139), 
	.CK(scan_REF_CLK__L8_N6));
   SDFFRQX2M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n218), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[6][3] ), 
	.D(n138), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n213), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[6][2] ), 
	.D(n137), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n214), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[6][1] ), 
	.D(n136), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\mem[6][0] ), 
	.D(n135), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[3][7]  (.SI(\mem[3][6] ), 
	.SE(n219), 
	.RN(W_RST), 
	.Q(\mem[3][7] ), 
	.D(n118), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[3][6]  (.SI(\mem[3][5] ), 
	.SE(n218), 
	.RN(W_RST), 
	.Q(\mem[3][6] ), 
	.D(n117), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[3][5]  (.SI(\mem[3][4] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\mem[3][5] ), 
	.D(n116), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[3][4]  (.SI(\mem[3][3] ), 
	.SE(n214), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[3][4] ), 
	.D(n115), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[3][3]  (.SI(\mem[3][2] ), 
	.SE(n219), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[3][3] ), 
	.D(n114), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[3][2]  (.SI(\mem[3][1] ), 
	.SE(n219), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[3][2] ), 
	.D(n113), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[3][1]  (.SI(\mem[3][0] ), 
	.SE(n210), 
	.RN(W_RST), 
	.Q(\mem[3][1] ), 
	.D(n112), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[3][0]  (.SI(\mem[2][7] ), 
	.SE(n219), 
	.RN(W_RST), 
	.Q(\mem[3][0] ), 
	.D(n111), 
	.CK(scan_REF_CLK__L8_N5));
   SDFFRQX2M \mem_reg[2][7]  (.SI(\mem[2][6] ), 
	.SE(n215), 
	.RN(W_RST), 
	.Q(\mem[2][7] ), 
	.D(n110), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][6]  (.SI(\mem[2][5] ), 
	.SE(n214), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[2][6] ), 
	.D(n109), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][5]  (.SI(\mem[2][4] ), 
	.SE(n215), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[2][5] ), 
	.D(n108), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][4]  (.SI(\mem[2][3] ), 
	.SE(n217), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[2][4] ), 
	.D(n107), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][3]  (.SI(\mem[2][2] ), 
	.SE(n218), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[2][3] ), 
	.D(n106), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][2]  (.SI(\mem[2][1] ), 
	.SE(n212), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[2][2] ), 
	.D(n105), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][1]  (.SI(\mem[2][0] ), 
	.SE(n212), 
	.RN(FE_OFN4_scan_SYNC_RST_1), 
	.Q(\mem[2][1] ), 
	.D(n104), 
	.CK(scan_REF_CLK__L8_N7));
   SDFFRQX2M \mem_reg[2][0]  (.SI(\mem[1][7] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\mem[2][0] ), 
	.D(n103), 
	.CK(scan_REF_CLK__L8_N7));
   NAND3X2M U77 (.Y(n75), 
	.C(n76), 
	.B(n206), 
	.A(n205));
   NAND3X2M U78 (.Y(n81), 
	.C(n82), 
	.B(n206), 
	.A(n205));
   INVX2M U79 (.Y(n179), 
	.A(n180));
   NOR2X2M U81 (.Y(n173), 
	.B(n178), 
	.A(n177));
   NOR2BX2M U82 (.Y(n76), 
	.B(W_addr[2]), 
	.AN(n80));
   INVX2M U83 (.Y(n197), 
	.A(W_data[0]));
   INVX2M U84 (.Y(n198), 
	.A(W_data[1]));
   INVX2M U85 (.Y(n199), 
	.A(W_data[2]));
   INVX2M U86 (.Y(n200), 
	.A(W_data[3]));
   INVX2M U87 (.Y(n201), 
	.A(W_data[4]));
   INVX2M U88 (.Y(n202), 
	.A(W_data[5]));
   INVX2M U89 (.Y(n203), 
	.A(W_data[6]));
   INVX2M U90 (.Y(n204), 
	.A(W_data[7]));
   NAND3X2M U92 (.Y(n79), 
	.C(W_addr[1]), 
	.B(n76), 
	.A(W_addr[0]));
   OAI2BB2X1M U93 (.Y(n95), 
	.B1(n77), 
	.B0(n197), 
	.A1N(n77), 
	.A0N(\mem[1][0] ));
   OAI2BB2X1M U94 (.Y(n96), 
	.B1(n77), 
	.B0(n198), 
	.A1N(n77), 
	.A0N(\mem[1][1] ));
   OAI2BB2X1M U95 (.Y(n97), 
	.B1(n77), 
	.B0(n199), 
	.A1N(n77), 
	.A0N(\mem[1][2] ));
   OAI2BB2X1M U96 (.Y(n98), 
	.B1(n77), 
	.B0(n200), 
	.A1N(n77), 
	.A0N(\mem[1][3] ));
   OAI2BB2X1M U97 (.Y(n99), 
	.B1(n77), 
	.B0(n201), 
	.A1N(n77), 
	.A0N(\mem[1][4] ));
   OAI2BB2X1M U98 (.Y(n100), 
	.B1(n77), 
	.B0(n202), 
	.A1N(n77), 
	.A0N(\mem[1][5] ));
   OAI2BB2X1M U99 (.Y(n101), 
	.B1(n77), 
	.B0(n203), 
	.A1N(n77), 
	.A0N(\mem[1][6] ));
   OAI2BB2X1M U100 (.Y(n102), 
	.B1(n77), 
	.B0(n204), 
	.A1N(n77), 
	.A0N(\mem[1][7] ));
   OAI2BB2X1M U101 (.Y(n103), 
	.B1(n78), 
	.B0(n197), 
	.A1N(n78), 
	.A0N(\mem[2][0] ));
   OAI2BB2X1M U102 (.Y(n104), 
	.B1(n78), 
	.B0(n198), 
	.A1N(n78), 
	.A0N(\mem[2][1] ));
   OAI2BB2X1M U103 (.Y(n105), 
	.B1(n78), 
	.B0(n199), 
	.A1N(n78), 
	.A0N(\mem[2][2] ));
   OAI2BB2X1M U104 (.Y(n106), 
	.B1(n78), 
	.B0(n200), 
	.A1N(n78), 
	.A0N(\mem[2][3] ));
   OAI2BB2X1M U105 (.Y(n107), 
	.B1(n78), 
	.B0(n201), 
	.A1N(n78), 
	.A0N(\mem[2][4] ));
   OAI2BB2X1M U106 (.Y(n108), 
	.B1(n78), 
	.B0(n202), 
	.A1N(n78), 
	.A0N(\mem[2][5] ));
   OAI2BB2X1M U107 (.Y(n109), 
	.B1(n78), 
	.B0(n203), 
	.A1N(n78), 
	.A0N(\mem[2][6] ));
   OAI2BB2X1M U108 (.Y(n110), 
	.B1(n78), 
	.B0(n204), 
	.A1N(n78), 
	.A0N(\mem[2][7] ));
   OAI2BB2X1M U109 (.Y(n111), 
	.B1(n79), 
	.B0(n197), 
	.A1N(n79), 
	.A0N(\mem[3][0] ));
   OAI2BB2X1M U110 (.Y(n112), 
	.B1(n79), 
	.B0(n198), 
	.A1N(n79), 
	.A0N(\mem[3][1] ));
   OAI2BB2X1M U111 (.Y(n113), 
	.B1(n79), 
	.B0(n199), 
	.A1N(n79), 
	.A0N(\mem[3][2] ));
   OAI2BB2X1M U112 (.Y(n114), 
	.B1(n79), 
	.B0(n200), 
	.A1N(n79), 
	.A0N(\mem[3][3] ));
   OAI2BB2X1M U113 (.Y(n115), 
	.B1(n79), 
	.B0(n201), 
	.A1N(n79), 
	.A0N(\mem[3][4] ));
   OAI2BB2X1M U114 (.Y(n116), 
	.B1(n79), 
	.B0(n202), 
	.A1N(n79), 
	.A0N(\mem[3][5] ));
   OAI2BB2X1M U115 (.Y(n117), 
	.B1(n79), 
	.B0(n203), 
	.A1N(n79), 
	.A0N(\mem[3][6] ));
   OAI2BB2X1M U116 (.Y(n118), 
	.B1(n79), 
	.B0(n204), 
	.A1N(n79), 
	.A0N(\mem[3][7] ));
   OAI2BB2X1M U117 (.Y(n119), 
	.B1(n81), 
	.B0(n197), 
	.A1N(n81), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U118 (.Y(n120), 
	.B1(n81), 
	.B0(n198), 
	.A1N(n81), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U119 (.Y(n121), 
	.B1(n81), 
	.B0(n199), 
	.A1N(n81), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U120 (.Y(n122), 
	.B1(n81), 
	.B0(n200), 
	.A1N(n81), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U121 (.Y(n123), 
	.B1(n81), 
	.B0(n201), 
	.A1N(n81), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U122 (.Y(n124), 
	.B1(n81), 
	.B0(n202), 
	.A1N(n81), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U123 (.Y(n125), 
	.B1(n81), 
	.B0(n203), 
	.A1N(n81), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U124 (.Y(n126), 
	.B1(n81), 
	.B0(n204), 
	.A1N(n81), 
	.A0N(\mem[4][7] ));
   OAI2BB2X1M U125 (.Y(n127), 
	.B1(n83), 
	.B0(n197), 
	.A1N(n83), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U126 (.Y(n128), 
	.B1(n83), 
	.B0(n198), 
	.A1N(n83), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U127 (.Y(n129), 
	.B1(n83), 
	.B0(n199), 
	.A1N(n83), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U128 (.Y(n130), 
	.B1(n83), 
	.B0(n200), 
	.A1N(n83), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U129 (.Y(n131), 
	.B1(n83), 
	.B0(n201), 
	.A1N(n83), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U130 (.Y(n132), 
	.B1(n83), 
	.B0(n202), 
	.A1N(n83), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U131 (.Y(n133), 
	.B1(n83), 
	.B0(n203), 
	.A1N(n83), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U132 (.Y(n134), 
	.B1(n83), 
	.B0(n204), 
	.A1N(n83), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U133 (.Y(n135), 
	.B1(n84), 
	.B0(n197), 
	.A1N(n84), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U134 (.Y(n136), 
	.B1(n84), 
	.B0(n198), 
	.A1N(n84), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U135 (.Y(n137), 
	.B1(n84), 
	.B0(n199), 
	.A1N(n84), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U136 (.Y(n138), 
	.B1(n84), 
	.B0(n200), 
	.A1N(n84), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U137 (.Y(n139), 
	.B1(n84), 
	.B0(n201), 
	.A1N(n84), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U138 (.Y(n140), 
	.B1(n84), 
	.B0(n202), 
	.A1N(n84), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U139 (.Y(n141), 
	.B1(n84), 
	.B0(n203), 
	.A1N(n84), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U140 (.Y(n142), 
	.B1(n84), 
	.B0(n204), 
	.A1N(n84), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U141 (.Y(n143), 
	.B1(n85), 
	.B0(n197), 
	.A1N(n85), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U142 (.Y(n144), 
	.B1(n85), 
	.B0(n198), 
	.A1N(n85), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U143 (.Y(n145), 
	.B1(n85), 
	.B0(n199), 
	.A1N(n85), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U144 (.Y(n146), 
	.B1(n85), 
	.B0(n200), 
	.A1N(n85), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U145 (.Y(n147), 
	.B1(n85), 
	.B0(n201), 
	.A1N(n85), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U146 (.Y(n148), 
	.B1(n85), 
	.B0(n202), 
	.A1N(n85), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U147 (.Y(n149), 
	.B1(n85), 
	.B0(n203), 
	.A1N(n85), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U148 (.Y(n150), 
	.B1(n85), 
	.B0(n204), 
	.A1N(n85), 
	.A0N(\mem[7][7] ));
   NAND3X2M U149 (.Y(n77), 
	.C(W_addr[0]), 
	.B(n206), 
	.A(n76));
   NAND3X2M U150 (.Y(n78), 
	.C(W_addr[1]), 
	.B(n205), 
	.A(n76));
   NAND3X2M U151 (.Y(n85), 
	.C(n82), 
	.B(W_addr[0]), 
	.A(W_addr[1]));
   NAND3X2M U152 (.Y(n83), 
	.C(n82), 
	.B(n206), 
	.A(W_addr[0]));
   NAND3X2M U153 (.Y(n84), 
	.C(n82), 
	.B(n205), 
	.A(W_addr[1]));
   OAI2BB2X1M U154 (.Y(n87), 
	.B1(n197), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][0] ));
   OAI2BB2X1M U155 (.Y(n88), 
	.B1(n198), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][1] ));
   OAI2BB2X1M U156 (.Y(n89), 
	.B1(n199), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][2] ));
   OAI2BB2X1M U157 (.Y(n90), 
	.B1(n200), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][3] ));
   OAI2BB2X1M U158 (.Y(n91), 
	.B1(n201), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][4] ));
   OAI2BB2X1M U159 (.Y(n92), 
	.B1(n202), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][5] ));
   OAI2BB2X1M U160 (.Y(n93), 
	.B1(n203), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][6] ));
   OAI2BB2X1M U161 (.Y(n94), 
	.B1(n204), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[0][7] ));
   AND2X2M U162 (.Y(n82), 
	.B(n80), 
	.A(W_addr[2]));
   AND2X2M U163 (.Y(n80), 
	.B(W_inc), 
	.A(n86));
   NOR2XLM U164 (.Y(n86), 
	.B(W_addr[3]), 
	.A(W_full));
   INVX2M U165 (.Y(n205), 
	.A(W_addr[0]));
   INVX2M U166 (.Y(n206), 
	.A(W_addr[1]));
   INVX2M U167 (.Y(n178), 
	.A(N11));
   NOR2X2M U169 (.Y(n171), 
	.B(N12), 
	.A(n178));
   NOR2X2M U171 (.Y(n174), 
	.B(N11), 
	.A(n177));
   NOR2X2M U173 (.Y(n170), 
	.B(N12), 
	.A(N11));
   INVX2M U174 (.Y(n177), 
	.A(N12));
   BUFX2M U175 (.Y(n180), 
	.A(N10));
   AO22X1M U176 (.Y(n65), 
	.B1(n170), 
	.B0(\mem[1][0] ), 
	.A1(n171), 
	.A0(\mem[3][0] ));
   AOI221XLM U177 (.Y(n68), 
	.C0(n65), 
	.B1(n173), 
	.B0(\mem[7][0] ), 
	.A1(n174), 
	.A0(\mem[5][0] ));
   AO22X1M U178 (.Y(n66), 
	.B1(n170), 
	.B0(\mem[0][0] ), 
	.A1(n171), 
	.A0(\mem[2][0] ));
   AOI221XLM U179 (.Y(n67), 
	.C0(n66), 
	.B1(n173), 
	.B0(\mem[6][0] ), 
	.A1(n174), 
	.A0(\mem[4][0] ));
   OAI22X1M U180 (.Y(R_data[0]), 
	.B1(n67), 
	.B0(n180), 
	.A1(n68), 
	.A0(n179));
   AO22X1M U181 (.Y(n69), 
	.B1(n170), 
	.B0(\mem[1][1] ), 
	.A1(n171), 
	.A0(\mem[3][1] ));
   AOI221XLM U182 (.Y(n72), 
	.C0(n69), 
	.B1(n173), 
	.B0(\mem[7][1] ), 
	.A1(n174), 
	.A0(\mem[5][1] ));
   AO22X1M U183 (.Y(n70), 
	.B1(n170), 
	.B0(\mem[0][1] ), 
	.A1(n171), 
	.A0(\mem[2][1] ));
   AOI221XLM U184 (.Y(n71), 
	.C0(n70), 
	.B1(n173), 
	.B0(\mem[6][1] ), 
	.A1(n174), 
	.A0(\mem[4][1] ));
   OAI22X1M U185 (.Y(R_data[1]), 
	.B1(n71), 
	.B0(n180), 
	.A1(n72), 
	.A0(n179));
   AO22X1M U186 (.Y(n73), 
	.B1(n170), 
	.B0(\mem[1][2] ), 
	.A1(n171), 
	.A0(\mem[3][2] ));
   AOI221XLM U187 (.Y(n152), 
	.C0(n73), 
	.B1(n173), 
	.B0(\mem[7][2] ), 
	.A1(n174), 
	.A0(\mem[5][2] ));
   AO22X1M U188 (.Y(n74), 
	.B1(n170), 
	.B0(\mem[0][2] ), 
	.A1(n171), 
	.A0(\mem[2][2] ));
   AOI221XLM U189 (.Y(n151), 
	.C0(n74), 
	.B1(n173), 
	.B0(\mem[6][2] ), 
	.A1(n174), 
	.A0(\mem[4][2] ));
   OAI22X1M U190 (.Y(R_data[2]), 
	.B1(n151), 
	.B0(n180), 
	.A1(n152), 
	.A0(n179));
   AO22X1M U191 (.Y(n153), 
	.B1(n170), 
	.B0(\mem[1][3] ), 
	.A1(n171), 
	.A0(\mem[3][3] ));
   AOI221XLM U192 (.Y(n156), 
	.C0(n153), 
	.B1(n173), 
	.B0(\mem[7][3] ), 
	.A1(n174), 
	.A0(\mem[5][3] ));
   AO22X1M U193 (.Y(n154), 
	.B1(n170), 
	.B0(\mem[0][3] ), 
	.A1(n171), 
	.A0(\mem[2][3] ));
   AOI221XLM U194 (.Y(n155), 
	.C0(n154), 
	.B1(n173), 
	.B0(\mem[6][3] ), 
	.A1(n174), 
	.A0(\mem[4][3] ));
   OAI22X1M U195 (.Y(R_data[3]), 
	.B1(n155), 
	.B0(n180), 
	.A1(n156), 
	.A0(n179));
   AO22X1M U196 (.Y(n157), 
	.B1(n170), 
	.B0(\mem[1][4] ), 
	.A1(n171), 
	.A0(\mem[3][4] ));
   AOI221XLM U197 (.Y(n160), 
	.C0(n157), 
	.B1(n173), 
	.B0(\mem[7][4] ), 
	.A1(n174), 
	.A0(\mem[5][4] ));
   AO22X1M U198 (.Y(n158), 
	.B1(n170), 
	.B0(\mem[0][4] ), 
	.A1(n171), 
	.A0(\mem[2][4] ));
   AOI221XLM U199 (.Y(n159), 
	.C0(n158), 
	.B1(n173), 
	.B0(\mem[6][4] ), 
	.A1(n174), 
	.A0(\mem[4][4] ));
   OAI22X1M U200 (.Y(R_data[4]), 
	.B1(n159), 
	.B0(n180), 
	.A1(n160), 
	.A0(n179));
   AO22X1M U201 (.Y(n161), 
	.B1(n170), 
	.B0(\mem[1][5] ), 
	.A1(n171), 
	.A0(\mem[3][5] ));
   AOI221XLM U202 (.Y(n164), 
	.C0(n161), 
	.B1(n173), 
	.B0(\mem[7][5] ), 
	.A1(n174), 
	.A0(\mem[5][5] ));
   AO22X1M U203 (.Y(n162), 
	.B1(n170), 
	.B0(\mem[0][5] ), 
	.A1(n171), 
	.A0(\mem[2][5] ));
   AOI221XLM U204 (.Y(n163), 
	.C0(n162), 
	.B1(n173), 
	.B0(\mem[6][5] ), 
	.A1(n174), 
	.A0(\mem[4][5] ));
   OAI22X1M U205 (.Y(R_data[5]), 
	.B1(n163), 
	.B0(n180), 
	.A1(n164), 
	.A0(n179));
   AO22X1M U206 (.Y(n165), 
	.B1(n170), 
	.B0(\mem[1][6] ), 
	.A1(n171), 
	.A0(\mem[3][6] ));
   AOI221XLM U207 (.Y(n168), 
	.C0(n165), 
	.B1(n173), 
	.B0(\mem[7][6] ), 
	.A1(n174), 
	.A0(\mem[5][6] ));
   AO22X1M U208 (.Y(n166), 
	.B1(n170), 
	.B0(\mem[0][6] ), 
	.A1(n171), 
	.A0(\mem[2][6] ));
   AOI221XLM U209 (.Y(n167), 
	.C0(n166), 
	.B1(n173), 
	.B0(\mem[6][6] ), 
	.A1(n174), 
	.A0(\mem[4][6] ));
   OAI22X1M U210 (.Y(R_data[6]), 
	.B1(n167), 
	.B0(n180), 
	.A1(n168), 
	.A0(n179));
   AO22X1M U211 (.Y(n169), 
	.B1(n170), 
	.B0(\mem[1][7] ), 
	.A1(n171), 
	.A0(\mem[3][7] ));
   AOI221XLM U212 (.Y(n176), 
	.C0(n169), 
	.B1(n173), 
	.B0(\mem[7][7] ), 
	.A1(n174), 
	.A0(\mem[5][7] ));
   AO22X1M U213 (.Y(n172), 
	.B1(n170), 
	.B0(\mem[0][7] ), 
	.A1(n171), 
	.A0(\mem[2][7] ));
   AOI221XLM U214 (.Y(n175), 
	.C0(n172), 
	.B1(n173), 
	.B0(\mem[6][7] ), 
	.A1(n174), 
	.A0(\mem[4][7] ));
   OAI22X1M U215 (.Y(R_data[7]), 
	.B1(n175), 
	.B0(n180), 
	.A1(n179), 
	.A0(n176));
   DLY1X1M U216 (.Y(n210), 
	.A(n216));
   DLY1X1M U217 (.Y(n211), 
	.A(n216));
   DLY1X1M U218 (.Y(n212), 
	.A(n216));
   DLY1X1M U219 (.Y(n213), 
	.A(n216));
   DLY1X1M U220 (.Y(n214), 
	.A(n216));
   DLY1X1M U221 (.Y(n215), 
	.A(n216));
   DLY1X1M U222 (.Y(n216), 
	.A(test_se));
   DLY1X1M U223 (.Y(n217), 
	.A(n211));
   DLY1X1M U224 (.Y(n218), 
	.A(n220));
   DLY1X1M U225 (.Y(n219), 
	.A(n210));
   DLY1X1M U226 (.Y(n220), 
	.A(n216));
endmodule

module FIFO_wptr_addr_width4_test_1 (
	W_inc, 
	W_CLK, 
	W_RST, 
	wq2_rptr, 
	W_addr, 
	W_ptr, 
	W_full, 
	test_si, 
	test_so, 
	test_se);
   input W_inc;
   input W_CLK;
   input W_RST;
   input [4:0] wq2_rptr;
   output [3:0] W_addr;
   output [4:0] W_ptr;
   output W_full;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire extra_bit;
   wire N4;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n25;
   wire \eq_48/B[3] ;
   wire \eq_48/B[4] ;
   wire \add_31/carry[4] ;
   wire \add_31/carry[3] ;
   wire \add_31/carry[2] ;
   wire \add_31/carry[1] ;
   wire n3;
   wire n4;
   wire n23;
   wire n24;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire [4:0] W_ptr_in;

   assign test_so = extra_bit ;

   SDFFRQX2M extra_bit_reg (.SI(W_ptr[4]), 
	.SE(n35), 
	.RN(W_RST), 
	.Q(extra_bit), 
	.D(n25), 
	.CK(W_CLK));
   SDFFRQX2M \W_addr_reg[3]  (.SI(W_addr[2]), 
	.SE(n35), 
	.RN(W_RST), 
	.Q(W_addr[3]), 
	.D(n15), 
	.CK(W_CLK));
   SDFFRQX2M \W_addr_reg[2]  (.SI(W_addr[1]), 
	.SE(n36), 
	.RN(W_RST), 
	.Q(W_addr[2]), 
	.D(n17), 
	.CK(W_CLK));
   SDFFRX1M \W_ptr_reg[4]  (.SI(W_ptr[3]), 
	.SE(n33), 
	.RN(W_RST), 
	.QN(\eq_48/B[4] ), 
	.Q(W_ptr[4]), 
	.D(W_ptr_in[4]), 
	.CK(W_CLK));
   SDFFRX1M \W_ptr_reg[3]  (.SI(W_ptr[2]), 
	.SE(n34), 
	.RN(W_RST), 
	.QN(\eq_48/B[3] ), 
	.Q(W_ptr[3]), 
	.D(N23), 
	.CK(W_CLK));
   SDFFRQX2M \W_ptr_reg[2]  (.SI(W_ptr[1]), 
	.SE(n36), 
	.RN(W_RST), 
	.Q(W_ptr[2]), 
	.D(N22), 
	.CK(W_CLK));
   SDFFRQX2M \W_ptr_reg[0]  (.SI(W_addr[3]), 
	.SE(n34), 
	.RN(W_RST), 
	.Q(W_ptr[0]), 
	.D(N20), 
	.CK(W_CLK));
   SDFFRQX2M \W_ptr_reg[1]  (.SI(W_ptr[0]), 
	.SE(n33), 
	.RN(W_RST), 
	.Q(W_ptr[1]), 
	.D(N21), 
	.CK(W_CLK));
   SDFFRQX2M \W_addr_reg[0]  (.SI(test_si), 
	.SE(n34), 
	.RN(W_RST), 
	.Q(W_addr[0]), 
	.D(n21), 
	.CK(W_CLK));
   SDFFRQX2M \W_addr_reg[1]  (.SI(W_addr[0]), 
	.SE(n33), 
	.RN(W_RST), 
	.Q(W_addr[1]), 
	.D(n19), 
	.CK(W_CLK));
   NOR4X2M U3 (.Y(W_full), 
	.D(n26), 
	.C(n27), 
	.B(n28), 
	.A(n29));
   NOR2BX2M U6 (.Y(N4), 
	.B(W_full), 
	.AN(W_inc));
   CLKXOR2X2M U7 (.Y(N22), 
	.B(W_ptr_in[2]), 
	.A(W_ptr_in[3]));
   CLKXOR2X2M U8 (.Y(N21), 
	.B(W_ptr_in[1]), 
	.A(W_ptr_in[2]));
   CLKXOR2X2M U9 (.Y(N23), 
	.B(W_ptr_in[3]), 
	.A(W_ptr_in[4]));
   CLKXOR2X2M U10 (.Y(n21), 
	.B(N4), 
	.A(W_addr[0]));
   NAND2X2M U11 (.Y(n7), 
	.B(N4), 
	.A(W_addr[0]));
   NOR2BX2M U12 (.Y(n6), 
	.B(n7), 
	.AN(W_addr[1]));
   CLKXOR2X2M U13 (.Y(N20), 
	.B(W_ptr_in[0]), 
	.A(W_ptr_in[1]));
   NAND2X2M U14 (.Y(n5), 
	.B(n6), 
	.A(W_addr[2]));
   XNOR2X2M U15 (.Y(n19), 
	.B(n7), 
	.A(W_addr[1]));
   CLKXOR2X2M U16 (.Y(n17), 
	.B(n6), 
	.A(W_addr[2]));
   CLKXOR2X2M U17 (.Y(n25), 
	.B(n8), 
	.A(extra_bit));
   NOR2BX2M U18 (.Y(n8), 
	.B(n5), 
	.AN(W_addr[3]));
   XNOR2X2M U29 (.Y(n15), 
	.B(n5), 
	.A(W_addr[3]));
   CLKXOR2X2M U30 (.Y(W_ptr_in[4]), 
	.B(\add_31/carry[4] ), 
	.A(extra_bit));
   AND2X1M U31 (.Y(\add_31/carry[4] ), 
	.B(W_addr[3]), 
	.A(\add_31/carry[3] ));
   CLKXOR2X2M U32 (.Y(W_ptr_in[3]), 
	.B(\add_31/carry[3] ), 
	.A(W_addr[3]));
   AND2X1M U33 (.Y(\add_31/carry[3] ), 
	.B(W_addr[2]), 
	.A(\add_31/carry[2] ));
   CLKXOR2X2M U34 (.Y(W_ptr_in[2]), 
	.B(\add_31/carry[2] ), 
	.A(W_addr[2]));
   AND2X1M U35 (.Y(\add_31/carry[2] ), 
	.B(W_addr[1]), 
	.A(\add_31/carry[1] ));
   CLKXOR2X2M U36 (.Y(W_ptr_in[1]), 
	.B(\add_31/carry[1] ), 
	.A(W_addr[1]));
   AND2X1M U37 (.Y(\add_31/carry[1] ), 
	.B(N4), 
	.A(W_addr[0]));
   CLKXOR2X2M U38 (.Y(W_ptr_in[0]), 
	.B(W_addr[0]), 
	.A(N4));
   CLKXOR2X2M U39 (.Y(n29), 
	.B(wq2_rptr[2]), 
	.A(W_ptr[2]));
   NOR2BX1M U40 (.Y(n3), 
	.B(wq2_rptr[0]), 
	.AN(W_ptr[0]));
   OAI2B2X1M U41 (.Y(n24), 
	.B1(n3), 
	.B0(W_ptr[1]), 
	.A1N(wq2_rptr[1]), 
	.A0(n3));
   NOR2BX1M U42 (.Y(n4), 
	.B(W_ptr[0]), 
	.AN(wq2_rptr[0]));
   OAI2B2X1M U43 (.Y(n23), 
	.B1(n4), 
	.B0(wq2_rptr[1]), 
	.A1N(W_ptr[1]), 
	.A0(n4));
   CLKNAND2X2M U44 (.Y(n28), 
	.B(n23), 
	.A(n24));
   CLKXOR2X2M U45 (.Y(n27), 
	.B(wq2_rptr[3]), 
	.A(\eq_48/B[3] ));
   CLKXOR2X2M U46 (.Y(n26), 
	.B(wq2_rptr[4]), 
	.A(\eq_48/B[4] ));
   INVXLM U47 (.Y(n32), 
	.A(test_se));
   INVXLM U48 (.Y(n33), 
	.A(n32));
   INVXLM U49 (.Y(n34), 
	.A(n32));
   INVXLM U50 (.Y(n35), 
	.A(n32));
   INVXLM U51 (.Y(n36), 
	.A(n32));
endmodule

module FIFO_rptr_addr_width4_test_1 (
	R_inc, 
	R_CLK, 
	R_RST, 
	rq2_wptr, 
	R_addr, 
	R_ptr, 
	R_empty, 
	test_si, 
	test_so, 
	test_se);
   input R_inc;
   input R_CLK;
   input R_RST;
   input [4:0] rq2_wptr;
   output [3:0] R_addr;
   output [4:0] R_ptr;
   output R_empty;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n41;
   wire extra_bit;
   wire N4;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire \add_31/carry[4] ;
   wire \add_31/carry[3] ;
   wire \add_31/carry[2] ;
   wire \add_31/carry[1] ;
   wire n3;
   wire n4;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n39;
   wire [4:0] R_ptr_in;

   assign test_so = extra_bit ;

   SDFFRQX1M extra_bit_reg (.SI(R_ptr[4]), 
	.SE(n34), 
	.RN(R_RST), 
	.Q(extra_bit), 
	.D(n23), 
	.CK(R_CLK));
   SDFFRQX1M \R_addr_reg[3]  (.SI(R_addr[2]), 
	.SE(n36), 
	.RN(R_RST), 
	.Q(R_addr[3]), 
	.D(n15), 
	.CK(R_CLK));
   SDFFRQX1M \R_addr_reg[0]  (.SI(test_si), 
	.SE(n34), 
	.RN(R_RST), 
	.Q(R_addr[0]), 
	.D(n21), 
	.CK(R_CLK));
   SDFFRQX1M \R_ptr_reg[2]  (.SI(R_ptr[1]), 
	.SE(n33), 
	.RN(R_RST), 
	.Q(R_ptr[2]), 
	.D(N22), 
	.CK(R_CLK));
   SDFFRQX1M \R_ptr_reg[4]  (.SI(R_ptr[3]), 
	.SE(n35), 
	.RN(R_RST), 
	.Q(R_ptr[4]), 
	.D(R_ptr_in[4]), 
	.CK(R_CLK));
   SDFFRQX1M \R_ptr_reg[3]  (.SI(R_ptr[2]), 
	.SE(n36), 
	.RN(R_RST), 
	.Q(R_ptr[3]), 
	.D(N23), 
	.CK(R_CLK));
   SDFFRQX1M \R_ptr_reg[1]  (.SI(R_ptr[0]), 
	.SE(n34), 
	.RN(R_RST), 
	.Q(R_ptr[1]), 
	.D(N21), 
	.CK(R_CLK));
   SDFFRQX2M \R_addr_reg[2]  (.SI(n39), 
	.SE(n33), 
	.RN(R_RST), 
	.Q(R_addr[2]), 
	.D(n17), 
	.CK(R_CLK));
   SDFFRQX1M \R_ptr_reg[0]  (.SI(R_addr[3]), 
	.SE(n35), 
	.RN(R_RST), 
	.Q(R_ptr[0]), 
	.D(N20), 
	.CK(R_CLK));
   SDFFRQX1M \R_addr_reg[1]  (.SI(R_addr[0]), 
	.SE(n33), 
	.RN(R_RST), 
	.Q(n41), 
	.D(n19), 
	.CK(R_CLK));
   CLKXOR2X2M U5 (.Y(N23), 
	.B(R_ptr_in[3]), 
	.A(R_ptr_in[4]));
   CLKXOR2X2M U6 (.Y(N22), 
	.B(R_ptr_in[2]), 
	.A(R_ptr_in[3]));
   CLKXOR2X2M U7 (.Y(N21), 
	.B(R_ptr_in[1]), 
	.A(R_ptr_in[2]));
   NOR2BX2M U8 (.Y(N4), 
	.B(R_empty), 
	.AN(R_inc));
   CLKXOR2X2M U9 (.Y(N20), 
	.B(R_ptr_in[0]), 
	.A(R_ptr_in[1]));
   CLKXOR2X2M U10 (.Y(n21), 
	.B(N4), 
	.A(R_addr[0]));
   NOR2BX2M U11 (.Y(n6), 
	.B(n7), 
	.AN(n39));
   NAND2X2M U12 (.Y(n5), 
	.B(n6), 
	.A(R_addr[2]));
   NAND2X2M U13 (.Y(n7), 
	.B(N4), 
	.A(R_addr[0]));
   CLKXOR2X2M U14 (.Y(n17), 
	.B(n6), 
	.A(R_addr[2]));
   XNOR2X2M U15 (.Y(n15), 
	.B(n5), 
	.A(R_addr[3]));
   XNOR2X2M U16 (.Y(n19), 
	.B(n7), 
	.A(n39));
   CLKXOR2X2M U17 (.Y(n23), 
	.B(n8), 
	.A(extra_bit));
   NOR2BX2M U18 (.Y(n8), 
	.B(n5), 
	.AN(R_addr[3]));
   CLKXOR2X2M U29 (.Y(R_ptr_in[4]), 
	.B(\add_31/carry[4] ), 
	.A(extra_bit));
   AND2X1M U30 (.Y(\add_31/carry[4] ), 
	.B(R_addr[3]), 
	.A(\add_31/carry[3] ));
   CLKXOR2X2M U31 (.Y(R_ptr_in[3]), 
	.B(\add_31/carry[3] ), 
	.A(R_addr[3]));
   AND2X1M U32 (.Y(\add_31/carry[3] ), 
	.B(R_addr[2]), 
	.A(\add_31/carry[2] ));
   CLKXOR2X2M U33 (.Y(R_ptr_in[2]), 
	.B(\add_31/carry[2] ), 
	.A(R_addr[2]));
   AND2X1M U34 (.Y(\add_31/carry[2] ), 
	.B(n39), 
	.A(\add_31/carry[1] ));
   CLKXOR2X2M U35 (.Y(R_ptr_in[1]), 
	.B(\add_31/carry[1] ), 
	.A(n39));
   AND2X1M U36 (.Y(\add_31/carry[1] ), 
	.B(N4), 
	.A(R_addr[0]));
   CLKXOR2X2M U37 (.Y(R_ptr_in[0]), 
	.B(R_addr[0]), 
	.A(N4));
   CLKXOR2X2M U38 (.Y(n29), 
	.B(rq2_wptr[2]), 
	.A(R_ptr[2]));
   NOR2BX1M U39 (.Y(n3), 
	.B(rq2_wptr[0]), 
	.AN(R_ptr[0]));
   OAI2B2X1M U40 (.Y(n25), 
	.B1(n3), 
	.B0(R_ptr[1]), 
	.A1N(rq2_wptr[1]), 
	.A0(n3));
   NOR2BX1M U41 (.Y(n4), 
	.B(R_ptr[0]), 
	.AN(rq2_wptr[0]));
   OAI2B2X1M U42 (.Y(n24), 
	.B1(n4), 
	.B0(rq2_wptr[1]), 
	.A1N(R_ptr[1]), 
	.A0(n4));
   CLKNAND2X2M U43 (.Y(n28), 
	.B(n24), 
	.A(n25));
   CLKXOR2X2M U44 (.Y(n27), 
	.B(rq2_wptr[3]), 
	.A(R_ptr[3]));
   CLKXOR2X2M U45 (.Y(n26), 
	.B(rq2_wptr[4]), 
	.A(R_ptr[4]));
   NOR4X1M U46 (.Y(R_empty), 
	.D(n26), 
	.C(n27), 
	.B(n28), 
	.A(n29));
   INVXLM U47 (.Y(n32), 
	.A(test_se));
   INVXLM U48 (.Y(n33), 
	.A(n32));
   INVXLM U49 (.Y(n34), 
	.A(n32));
   INVXLM U50 (.Y(n35), 
	.A(n32));
   INVXLM U51 (.Y(n36), 
	.A(n32));
   INVXLM U52 (.Y(n37), 
	.A(n41));
   INVXLM U53 (.Y(R_addr[1]), 
	.A(n37));
   INVXLM U54 (.Y(n39), 
	.A(n37));
endmodule

module DF_SYNC_data_width5_NUM_STAGES2_test_0 (
	CLK, 
	RST, 
	unsync_bus, 
	sync_bus, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [4:0] unsync_bus;
   output [4:0] sync_bus;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire \MULTI_FLIP_FLOP[4][1] ;
   wire \MULTI_FLIP_FLOP[3][1] ;
   wire \MULTI_FLIP_FLOP[2][1] ;
   wire \MULTI_FLIP_FLOP[1][1] ;
   wire \MULTI_FLIP_FLOP[0][1] ;
   wire n15;
   wire n16;

   assign test_so = \MULTI_FLIP_FLOP[4][1]  ;

   SDFFRQX1M \MULTI_FLIP_FLOP_reg[4][0]  (.SI(\MULTI_FLIP_FLOP[3][1] ), 
	.SE(n15), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(\MULTI_FLIP_FLOP[4][1] ), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[3][0]  (.SI(\MULTI_FLIP_FLOP[2][1] ), 
	.SE(n15), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(\MULTI_FLIP_FLOP[3][1] ), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[2][0]  (.SI(\MULTI_FLIP_FLOP[1][1] ), 
	.SE(n15), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(\MULTI_FLIP_FLOP[2][1] ), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[0][0]  (.SI(test_si), 
	.SE(n15), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(\MULTI_FLIP_FLOP[0][1] ), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[1][0]  (.SI(\MULTI_FLIP_FLOP[0][1] ), 
	.SE(n15), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(\MULTI_FLIP_FLOP[1][1] ), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[4][1]  (.SI(sync_bus[4]), 
	.SE(n16), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[4][1] ), 
	.D(unsync_bus[4]), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[3][1]  (.SI(sync_bus[3]), 
	.SE(n16), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[3][1] ), 
	.D(unsync_bus[3]), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[2][1]  (.SI(sync_bus[2]), 
	.SE(n16), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[2][1] ), 
	.D(unsync_bus[2]), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[1][1]  (.SI(sync_bus[1]), 
	.SE(n16), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[1][1] ), 
	.D(unsync_bus[1]), 
	.CK(CLK));
   SDFFRQX1M \MULTI_FLIP_FLOP_reg[0][1]  (.SI(sync_bus[0]), 
	.SE(n16), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[0][1] ), 
	.D(unsync_bus[0]), 
	.CK(CLK));
   DLY1X1M U15 (.Y(n15), 
	.A(test_se));
   DLY1X1M U16 (.Y(n16), 
	.A(n15));
endmodule

module DF_SYNC_data_width5_NUM_STAGES2_test_1 (
	CLK, 
	RST, 
	unsync_bus, 
	sync_bus, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [4:0] unsync_bus;
   output [4:0] sync_bus;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire \MULTI_FLIP_FLOP[4][1] ;
   wire \MULTI_FLIP_FLOP[3][1] ;
   wire \MULTI_FLIP_FLOP[2][1] ;
   wire \MULTI_FLIP_FLOP[1][1] ;
   wire \MULTI_FLIP_FLOP[0][1] ;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;

   assign test_so = \MULTI_FLIP_FLOP[4][1]  ;

   SDFFRQX2M \MULTI_FLIP_FLOP_reg[4][0]  (.SI(\MULTI_FLIP_FLOP[3][1] ), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(\MULTI_FLIP_FLOP[4][1] ), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[3][0]  (.SI(\MULTI_FLIP_FLOP[2][1] ), 
	.SE(n29), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(\MULTI_FLIP_FLOP[3][1] ), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[2][0]  (.SI(\MULTI_FLIP_FLOP[1][1] ), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(\MULTI_FLIP_FLOP[2][1] ), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[0][0]  (.SI(test_si), 
	.SE(n27), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(\MULTI_FLIP_FLOP[0][1] ), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[1][0]  (.SI(\MULTI_FLIP_FLOP[0][1] ), 
	.SE(n29), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(\MULTI_FLIP_FLOP[1][1] ), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[4][1]  (.SI(sync_bus[4]), 
	.SE(n26), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[4][1] ), 
	.D(unsync_bus[4]), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[3][1]  (.SI(sync_bus[3]), 
	.SE(n28), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[3][1] ), 
	.D(unsync_bus[3]), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[2][1]  (.SI(sync_bus[2]), 
	.SE(n26), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[2][1] ), 
	.D(unsync_bus[2]), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[1][1]  (.SI(sync_bus[1]), 
	.SE(n28), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[1][1] ), 
	.D(unsync_bus[1]), 
	.CK(CLK));
   SDFFRQX2M \MULTI_FLIP_FLOP_reg[0][1]  (.SI(sync_bus[0]), 
	.SE(n26), 
	.RN(RST), 
	.Q(\MULTI_FLIP_FLOP[0][1] ), 
	.D(unsync_bus[0]), 
	.CK(CLK));
   INVXLM U15 (.Y(n25), 
	.A(test_se));
   INVXLM U16 (.Y(n26), 
	.A(n25));
   INVXLM U17 (.Y(n27), 
	.A(n25));
   INVXLM U18 (.Y(n28), 
	.A(n25));
   INVXLM U19 (.Y(n29), 
	.A(n25));
endmodule

module ASYNC_FIFO_data_width8_depth8_addr_width4_NUM_STAGES2_test_1 (
	W_data, 
	W_inc, 
	R_inc, 
	W_CLK, 
	W_RST, 
	R_CLK, 
	R_RST, 
	R_data, 
	W_full, 
	R_empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN5_scan_SYNC_RST_1, 
	scan_REF_CLK__L8_N5, 
	scan_REF_CLK__L8_N6, 
	scan_REF_CLK__L8_N7);
   input [7:0] W_data;
   input W_inc;
   input R_inc;
   input W_CLK;
   input W_RST;
   input R_CLK;
   input R_RST;
   output [7:0] R_data;
   output W_full;
   output R_empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN5_scan_SYNC_RST_1;
   input scan_REF_CLK__L8_N5;
   input scan_REF_CLK__L8_N6;
   input scan_REF_CLK__L8_N7;

   // Internal wires
   wire n7;
   wire n8;
   wire n10;
   wire n11;
   wire [3:0] W_addr;
   wire [3:0] R_addr;
   wire [4:0] wq2_rptr;
   wire [4:0] W_ptr;
   wire [4:0] rq2_wptr;
   wire [4:0] R_ptr;

   FIFO_MEM_CNTRL_data_width8_depth8_addr_width4_test_1 FIFO_MEM_CNTRL (.W_data({ W_data[7],
		W_data[6],
		W_data[5],
		W_data[4],
		W_data[3],
		W_data[2],
		W_data[1],
		W_data[0] }), 
	.W_inc(W_inc), 
	.W_full(W_full), 
	.W_RST(W_RST), 
	.W_addr({ W_addr[3],
		W_addr[2],
		W_addr[1],
		W_addr[0] }), 
	.W_CLK(W_CLK), 
	.R_addr({ R_addr[3],
		R_addr[2],
		R_addr[1],
		R_addr[0] }), 
	.R_data({ R_data[7],
		R_data[6],
		R_data[5],
		R_data[4],
		R_data[3],
		R_data[2],
		R_data[1],
		R_data[0] }), 
	.test_si2(test_si2), 
	.test_si1(n10), 
	.test_so2(n8), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN5_scan_SYNC_RST_1(FE_OFN5_scan_SYNC_RST_1), 
	.scan_REF_CLK__L8_N5(scan_REF_CLK__L8_N5), 
	.scan_REF_CLK__L8_N6(scan_REF_CLK__L8_N6), 
	.scan_REF_CLK__L8_N7(scan_REF_CLK__L8_N7));
   FIFO_wptr_addr_width4_test_1 FIFO_wptr (.W_inc(W_inc), 
	.W_CLK(scan_REF_CLK__L8_N5), 
	.W_RST(W_RST), 
	.wq2_rptr({ wq2_rptr[4],
		wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.W_addr({ W_addr[3],
		W_addr[2],
		W_addr[1],
		W_addr[0] }), 
	.W_ptr({ W_ptr[4],
		W_ptr[3],
		W_ptr[2],
		W_ptr[1],
		W_ptr[0] }), 
	.W_full(W_full), 
	.test_si(n7), 
	.test_so(test_so2), 
	.test_se(test_se));
   FIFO_rptr_addr_width4_test_1 FIFO_rptr (.R_inc(R_inc), 
	.R_CLK(R_CLK), 
	.R_RST(R_RST), 
	.rq2_wptr({ rq2_wptr[4],
		rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.R_addr({ R_addr[3],
		R_addr[2],
		R_addr[1],
		R_addr[0] }), 
	.R_ptr({ R_ptr[4],
		R_ptr[3],
		R_ptr[2],
		R_ptr[1],
		R_ptr[0] }), 
	.R_empty(R_empty), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(test_se));
   DF_SYNC_data_width5_NUM_STAGES2_test_0 DF_SYNC_R (.CLK(R_CLK), 
	.RST(R_RST), 
	.unsync_bus({ W_ptr[4],
		W_ptr[3],
		W_ptr[2],
		W_ptr[1],
		W_ptr[0] }), 
	.sync_bus({ rq2_wptr[4],
		rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(test_si1), 
	.test_so(n11), 
	.test_se(test_se));
   DF_SYNC_data_width5_NUM_STAGES2_test_1 DF_SYNC_W (.CLK(scan_REF_CLK__L8_N5), 
	.RST(W_RST), 
	.unsync_bus({ R_ptr[4],
		R_ptr[3],
		R_ptr[2],
		R_ptr[1],
		R_ptr[0] }), 
	.sync_bus({ wq2_rptr[4],
		wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(test_se));
endmodule

module FSM_TX_test_1 (
	Data_Valid, 
	PAR_EN, 
	ser_done, 
	CLK, 
	RST, 
	ser_en, 
	mux_sel, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input Data_Valid;
   input PAR_EN;
   input ser_done;
   input CLK;
   input RST;
   output ser_en;
   output [1:0] mux_sel;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n18;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign test_so = current_state[2] ;

   SDFFRQX1M \current_state_reg[0]  (.SI(test_si), 
	.SE(n18), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX1M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(n18), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX1M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(n18), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   INVX2M U6 (.Y(ser_en), 
	.A(mux_sel[0]));
   NAND2X2M U7 (.Y(mux_sel[0]), 
	.B(n7), 
	.A(n14));
   INVX2M U8 (.Y(n6), 
	.A(n12));
   NAND2X2M U9 (.Y(mux_sel[1]), 
	.B(n6), 
	.A(n9));
   OAI31X1M U10 (.Y(next_state[0]), 
	.B0(n11), 
	.A2(n4), 
	.A1(n9), 
	.A0(n8));
   INVX2M U11 (.Y(n8), 
	.A(PAR_EN));
   NAND4BX1M U12 (.Y(n11), 
	.D(n7), 
	.C(n5), 
	.B(Data_Valid), 
	.AN(current_state[1]));
   OAI21X2M U13 (.Y(busy), 
	.B0(mux_sel[0]), 
	.A1(n14), 
	.A0(n13));
   AOI21X2M U14 (.Y(n13), 
	.B0(n12), 
	.A1(n15), 
	.A0(current_state[2]));
   CLKXOR2X2M U15 (.Y(n14), 
	.B(current_state[1]), 
	.A(current_state[0]));
   NOR2X2M U16 (.Y(n12), 
	.B(current_state[2]), 
	.A(n15));
   NAND2X2M U17 (.Y(n15), 
	.B(current_state[1]), 
	.A(current_state[0]));
   INVX2M U18 (.Y(n7), 
	.A(current_state[2]));
   OAI32X1M U19 (.Y(next_state[1]), 
	.B1(n9), 
	.B0(n10), 
	.A2(current_state[1]), 
	.A1(current_state[2]), 
	.A0(n5));
   NOR2X2M U20 (.Y(n10), 
	.B(n4), 
	.A(PAR_EN));
   OAI31X1M U21 (.Y(next_state[2]), 
	.B0(n6), 
	.A2(n9), 
	.A1(PAR_EN), 
	.A0(n4));
   NAND3X2M U22 (.Y(n9), 
	.C(current_state[1]), 
	.B(n7), 
	.A(n5));
   INVX2M U23 (.Y(n5), 
	.A(current_state[0]));
   INVX2M U24 (.Y(n4), 
	.A(ser_done));
   DLY1X1M U25 (.Y(n18), 
	.A(test_se));
endmodule

module serializer_test_1 (
	P_DATA, 
	ser_en, 
	RST, 
	CLK, 
	Data_Valid, 
	Busy, 
	ser_data, 
	ser_done, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] P_DATA;
   input ser_en;
   input RST;
   input CLK;
   input Data_Valid;
   input Busy;
   output ser_data;
   output ser_done;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N27;
   wire n14;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n17;
   wire n18;
   wire n19;
   wire n45;
   wire n46;
   wire n48;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire [7:0] shift_register;
   wire [2:0] count;

   assign test_so = shift_register[7] ;

   SDFFRQX1M \shift_register_reg[7]  (.SI(shift_register[6]), 
	.SE(n51), 
	.RN(RST), 
	.Q(shift_register[7]), 
	.D(n38), 
	.CK(CLK));
   SDFFRQX1M \shift_register_reg[6]  (.SI(shift_register[5]), 
	.SE(n51), 
	.RN(RST), 
	.Q(shift_register[6]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX1M \shift_register_reg[5]  (.SI(shift_register[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(shift_register[5]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX1M \shift_register_reg[4]  (.SI(shift_register[3]), 
	.SE(n54), 
	.RN(RST), 
	.Q(shift_register[4]), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX1M \shift_register_reg[3]  (.SI(shift_register[2]), 
	.SE(n53), 
	.RN(RST), 
	.Q(shift_register[3]), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX1M \shift_register_reg[2]  (.SI(shift_register[1]), 
	.SE(n52), 
	.RN(RST), 
	.Q(shift_register[2]), 
	.D(n43), 
	.CK(CLK));
   SDFFRQX1M ser_data_reg (.SI(count[2]), 
	.SE(n52), 
	.RN(RST), 
	.Q(ser_data), 
	.D(n36), 
	.CK(CLK));
   SDFFRX1M \shift_register_reg[0]  (.SI(ser_done), 
	.SE(n51), 
	.RN(RST), 
	.QN(n14), 
	.Q(n48), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX1M ser_done_reg (.SI(ser_data), 
	.SE(n53), 
	.RN(RST), 
	.Q(ser_done), 
	.D(N27), 
	.CK(CLK));
   SDFFRQX1M \shift_register_reg[1]  (.SI(n48), 
	.SE(n54), 
	.RN(RST), 
	.Q(shift_register[1]), 
	.D(n44), 
	.CK(CLK));
   SDFFRQX1M \count_reg[2]  (.SI(count[1]), 
	.SE(n54), 
	.RN(RST), 
	.Q(count[2]), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX1M \count_reg[1]  (.SI(count[0]), 
	.SE(n53), 
	.RN(RST), 
	.Q(count[1]), 
	.D(n34), 
	.CK(CLK));
   SDFFRQX1M \count_reg[0]  (.SI(test_si), 
	.SE(n52), 
	.RN(RST), 
	.Q(count[0]), 
	.D(n35), 
	.CK(CLK));
   INVX2M U16 (.Y(n46), 
	.A(n24));
   NAND2X2M U17 (.Y(n25), 
	.B(n24), 
	.A(n23));
   NAND2X2M U18 (.Y(n24), 
	.B(n23), 
	.A(ser_en));
   INVX2M U19 (.Y(n45), 
	.A(n23));
   NAND2BX2M U22 (.Y(n23), 
	.B(Data_Valid), 
	.AN(Busy));
   AOI21X2M U23 (.Y(n22), 
	.B0(n45), 
	.A1(n46), 
	.A0(n17));
   NOR3X2M U24 (.Y(N27), 
	.C(n18), 
	.B(n17), 
	.A(n19));
   OAI32X1M U25 (.Y(n33), 
	.B1(n19), 
	.B0(n21), 
	.A2(n20), 
	.A1(count[2]), 
	.A0(n18));
   AOI21BX2M U26 (.Y(n21), 
	.B0N(n22), 
	.A1(n18), 
	.A0(n46));
   OAI22X1M U27 (.Y(n35), 
	.B1(n24), 
	.B0(count[0]), 
	.A1(n23), 
	.A0(n17));
   OAI22X1M U28 (.Y(n34), 
	.B1(n20), 
	.B0(count[1]), 
	.A1(n18), 
	.A0(n22));
   OAI2B1X2M U29 (.Y(n44), 
	.B0(n32), 
	.A1N(shift_register[1]), 
	.A0(n25));
   AOI22X1M U30 (.Y(n32), 
	.B1(n45), 
	.B0(P_DATA[1]), 
	.A1(n46), 
	.A0(shift_register[2]));
   OAI2B1X2M U31 (.Y(n43), 
	.B0(n31), 
	.A1N(shift_register[2]), 
	.A0(n25));
   AOI22X1M U32 (.Y(n31), 
	.B1(n45), 
	.B0(P_DATA[2]), 
	.A1(n46), 
	.A0(shift_register[3]));
   OAI2B1X2M U33 (.Y(n42), 
	.B0(n30), 
	.A1N(shift_register[3]), 
	.A0(n25));
   AOI22X1M U34 (.Y(n30), 
	.B1(n45), 
	.B0(P_DATA[3]), 
	.A1(n46), 
	.A0(shift_register[4]));
   OAI2B1X2M U35 (.Y(n41), 
	.B0(n29), 
	.A1N(shift_register[4]), 
	.A0(n25));
   AOI22X1M U36 (.Y(n29), 
	.B1(n45), 
	.B0(P_DATA[4]), 
	.A1(n46), 
	.A0(shift_register[5]));
   OAI2B1X2M U37 (.Y(n40), 
	.B0(n28), 
	.A1N(shift_register[5]), 
	.A0(n25));
   AOI22X1M U38 (.Y(n28), 
	.B1(n45), 
	.B0(P_DATA[5]), 
	.A1(n46), 
	.A0(shift_register[6]));
   OAI2B1X2M U39 (.Y(n39), 
	.B0(n27), 
	.A1N(shift_register[6]), 
	.A0(n25));
   AOI22X1M U40 (.Y(n27), 
	.B1(n45), 
	.B0(P_DATA[6]), 
	.A1(n46), 
	.A0(shift_register[7]));
   NAND2X2M U41 (.Y(n20), 
	.B(n46), 
	.A(count[0]));
   OAI21X2M U42 (.Y(n37), 
	.B0(n26), 
	.A1(n25), 
	.A0(n14));
   AOI22X1M U43 (.Y(n26), 
	.B1(n45), 
	.B0(P_DATA[0]), 
	.A1(n46), 
	.A0(shift_register[1]));
   OAI2BB2X1M U44 (.Y(n36), 
	.B1(n14), 
	.B0(n24), 
	.A1N(n24), 
	.A0N(ser_data));
   AO2B2X2M U45 (.Y(n38), 
	.B1(n45), 
	.B0(P_DATA[7]), 
	.A1N(n25), 
	.A0(shift_register[7]));
   INVX2M U46 (.Y(n18), 
	.A(count[1]));
   INVX2M U47 (.Y(n17), 
	.A(count[0]));
   INVX2M U48 (.Y(n19), 
	.A(count[2]));
   INVXLM U49 (.Y(n50), 
	.A(test_se));
   INVXLM U50 (.Y(n51), 
	.A(n50));
   INVXLM U51 (.Y(n52), 
	.A(n50));
   INVXLM U52 (.Y(n53), 
	.A(n50));
   INVXLM U53 (.Y(n54), 
	.A(n50));
endmodule

module Parity_calc_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_TYP, 
	CLK, 
	RST, 
	busy, 
	Par_bit, 
	test_si, 
	test_se);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_TYP;
   input CLK;
   input RST;
   input busy;
   output Par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;

   SDFFRQX1M Par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Par_bit), 
	.D(n8), 
	.CK(CLK));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   CLKXOR2X2M U3 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XNOR2X2M U4 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(Par_bit));
   NAND2BX2M U6 (.Y(n2), 
	.B(Data_Valid), 
	.AN(busy));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(PAR_TYP), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
endmodule

module MUX (
	ser_data, 
	Par_bit, 
	mux_sel, 
	TX_OUT, 
	ser_en);
   input ser_data;
   input Par_bit;
   input [1:0] mux_sel;
   output TX_OUT;
   input ser_en;

   // Internal wires
   wire n2;
   wire n3;

   OAI21X4M U3 (.Y(TX_OUT), 
	.B0(n3), 
	.A1(ser_en), 
	.A0(n2));
   NAND3X2M U4 (.Y(n3), 
	.C(ser_data), 
	.B(ser_en), 
	.A(mux_sel[1]));
   NOR2BX2M U5 (.Y(n2), 
	.B(Par_bit), 
	.AN(mux_sel[1]));
endmodule

module UART_TX_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	TX_OUT, 
	Busy, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output TX_OUT;
   output Busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire ser_done;
   wire ser_en;
   wire ser_data;
   wire Par_bit;
   wire n5;
   wire [1:0] mux_sel;

   FSM_TX_test_1 FSM_TX (.Data_Valid(Data_Valid), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.CLK(CLK), 
	.RST(RST), 
	.ser_en(ser_en), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.busy(Busy), 
	.test_si(test_si), 
	.test_so(n5), 
	.test_se(test_se));
   serializer_test_1 serializer (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.RST(RST), 
	.CLK(CLK), 
	.Data_Valid(Data_Valid), 
	.Busy(Busy), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.test_si(Par_bit), 
	.test_so(test_so), 
	.test_se(test_se));
   Parity_calc_test_1 Parity_calc (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(Data_Valid), 
	.PAR_TYP(PAR_TYP), 
	.CLK(CLK), 
	.RST(RST), 
	.busy(Busy), 
	.Par_bit(Par_bit), 
	.test_si(n5), 
	.test_se(test_se));
   MUX MUX (.ser_data(ser_data), 
	.Par_bit(Par_bit), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.TX_OUT(TX_OUT), 
	.ser_en(ser_en));
endmodule

module NOT (
	X, 
	Y);
   input X;
   output Y;

   INVX2M U1 (.Y(Y), 
	.A(X));
endmodule

module PULSE_GEN_test_1 (
	LVL_SIG, 
	RST, 
	CLK, 
	PULSE_SIG, 
	test_si, 
	test_se, 
	FE_OFN6_scan_SYNC_RST_2);
   input LVL_SIG;
   input RST;
   input CLK;
   output PULSE_SIG;
   input test_si;
   input test_se;
   input FE_OFN6_scan_SYNC_RST_2;

   // Internal wires
   wire DATA_VALID_DELAY;
   wire N1;

   SDFFRQX1M DATA_VALID_DELAY_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_VALID_DELAY), 
	.D(LVL_SIG), 
	.CK(CLK));
   SDFFRQX1M PULSE_SIG_reg (.SI(DATA_VALID_DELAY), 
	.SE(test_se), 
	.RN(FE_OFN6_scan_SYNC_RST_2), 
	.Q(PULSE_SIG), 
	.D(N1), 
	.CK(CLK));
   NOR2BX2M U5 (.Y(N1), 
	.B(DATA_VALID_DELAY), 
	.AN(LVL_SIG));
endmodule

module ClkDiv_dft_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_dft_0_DW01_inc_1 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_dft_0_DW01_inc_2 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_dft_test_0 (
	i_ref_clk_pos, 
	i_ref_clk_neg, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	scan_UART_CLK_pos__L1_N1, 
	scan_UART_CLK_pos__L8_N1, 
	scan_UART_CLK_neg__L3_N0);
   input i_ref_clk_pos;
   input i_ref_clk_neg;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input scan_UART_CLK_pos__L1_N1;
   input scan_UART_CLK_pos__L8_N1;
   input scan_UART_CLK_neg__L3_N0;

   // Internal wires
   wire FE_PHN15_n115;
   wire FE_PHN14_n115;
   wire n105__Exclude_0_NET;
   wire clk_div__L1_N0;
   wire clk_div__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N0;
   wire N1;
   wire clk_div;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N27;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N145;
   wire N146;
   wire N147;
   wire N148;
   wire N149;
   wire N150;
   wire N151;
   wire N152;
   wire N159;
   wire N160;
   wire n62;
   wire n63;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n11;
   wire n12;
   wire n13;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n115;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire [7:0] count_positive;
   wire [7:0] count_negative;

   assign test_so = count_positive[7] ;

   DLY4X1M FE_PHC15_n115 (.Y(FE_PHN14_n115), 
	.A(FE_PHN15_n115));
   DLY4X1M FE_PHC14_n115 (.Y(n115), 
	.A(FE_PHN14_n115));
   BUFX8M n105__Exclude_0 (.Y(n105__Exclude_0_NET), 
	.A(n105));
   CLKBUFX24M clk_div__L1_I0 (.Y(clk_div__L1_N0), 
	.A(clk_div));
   BUFX8M clk_div__Exclude_0 (.Y(clk_div__Exclude_0_NET), 
	.A(clk_div));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M clk_div_reg (.SI(test_si), 
	.SE(n118), 
	.RN(i_rst_n), 
	.Q(clk_div), 
	.D(n63), 
	.CK(scan_UART_CLK_pos__L1_N1));
   SDFFNSRHX2M clk_odd_div_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(clk_div__Exclude_0_NET), 
	.SE(n118), 
	.RN(i_rst_n), 
	.QN(n105), 
	.Q(FE_PHN15_n115), 
	.D(n62), 
	.CKN(scan_UART_CLK_neg__L3_N0));
   SDFFRQX2M \count_positive_reg[7]  (.SI(count_positive[6]), 
	.SE(n120), 
	.RN(i_rst_n), 
	.Q(count_positive[7]), 
	.D(N83), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[6]  (.SI(count_positive[5]), 
	.SE(n119), 
	.RN(i_rst_n), 
	.Q(count_positive[6]), 
	.D(N82), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[4]  (.SI(count_positive[3]), 
	.SE(n120), 
	.RN(i_rst_n), 
	.Q(count_positive[4]), 
	.D(N80), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[3]  (.SI(count_positive[2]), 
	.SE(n119), 
	.RN(i_rst_n), 
	.Q(count_positive[3]), 
	.D(N79), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[5]  (.SI(count_positive[4]), 
	.SE(n118), 
	.RN(i_rst_n), 
	.Q(count_positive[5]), 
	.D(N81), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[0]  (.SI(count_negative[7]), 
	.SE(n119), 
	.RN(i_rst_n), 
	.Q(count_positive[0]), 
	.D(N76), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[1]  (.SI(count_positive[0]), 
	.SE(n120), 
	.RN(i_rst_n), 
	.Q(count_positive[1]), 
	.D(N77), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[2]  (.SI(count_positive[1]), 
	.SE(n118), 
	.RN(i_rst_n), 
	.Q(count_positive[2]), 
	.D(N78), 
	.CK(i_ref_clk_pos));
   SDFFNSRHX2M \count_negative_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n115), 
	.SE(n119), 
	.RN(i_rst_n), 
	.QN(n109), 
	.Q(count_negative[0]), 
	.D(N145), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[5]), 
	.SE(n119), 
	.RN(i_rst_n), 
	.QN(n113), 
	.Q(count_negative[6]), 
	.D(N151), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[0]), 
	.SE(n120), 
	.RN(i_rst_n), 
	.QN(n108), 
	.Q(count_negative[1]), 
	.D(N146), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[4]), 
	.SE(n118), 
	.RN(i_rst_n), 
	.QN(n112), 
	.Q(count_negative[5]), 
	.D(N150), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[7]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[6]), 
	.SE(n120), 
	.RN(i_rst_n), 
	.QN(n107), 
	.Q(count_negative[7]), 
	.D(N152), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[3]), 
	.SE(n120), 
	.RN(i_rst_n), 
	.QN(n111), 
	.Q(count_negative[4]), 
	.D(N149), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[1]), 
	.SE(n118), 
	.RN(i_rst_n), 
	.QN(n106), 
	.Q(count_negative[2]), 
	.D(N147), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[2]), 
	.SE(n119), 
	.RN(i_rst_n), 
	.QN(n110), 
	.Q(count_negative[3]), 
	.D(N148), 
	.CKN(i_ref_clk_neg));
   AND2X2M U7 (.Y(n1), 
	.B(N27), 
	.A(count_positive[0]));
   AND2X2M U8 (.Y(n2), 
	.B(N27), 
	.A(count_positive[1]));
   AND2X2M U9 (.Y(n3), 
	.B(N27), 
	.A(count_positive[2]));
   AND2X2M U10 (.Y(n4), 
	.B(N27), 
	.A(count_positive[3]));
   AND2X2M U11 (.Y(n5), 
	.B(N27), 
	.A(count_positive[4]));
   AND2X2M U19 (.Y(n6), 
	.B(N27), 
	.A(count_positive[5]));
   AND2X2M U20 (.Y(n7), 
	.B(N27), 
	.A(count_positive[6]));
   AND2X2M U37 (.Y(n8), 
	.B(count_positive[7]), 
	.A(N27));
   NOR2X2M U38 (.Y(n50), 
	.B(i_div_ratio[0]), 
	.A(n47));
   AOI2B1X1M U39 (.Y(n51), 
	.B0(n47), 
	.A1N(n52), 
	.A0(n46));
   AO22XLM U40 (.Y(N82), 
	.B1(n51), 
	.B0(N45), 
	.A1(n50), 
	.A0(N36));
   AO22XLM U41 (.Y(N81), 
	.B1(n51), 
	.B0(N44), 
	.A1(n50), 
	.A0(N35));
   AO22XLM U42 (.Y(N80), 
	.B1(n51), 
	.B0(N43), 
	.A1(n50), 
	.A0(N34));
   AO22XLM U43 (.Y(N79), 
	.B1(n51), 
	.B0(N42), 
	.A1(n50), 
	.A0(N33));
   AO22XLM U44 (.Y(N78), 
	.B1(n51), 
	.B0(N41), 
	.A1(n50), 
	.A0(N32));
   AO22XLM U45 (.Y(N77), 
	.B1(n51), 
	.B0(N40), 
	.A1(n50), 
	.A0(N31));
   AO22XLM U46 (.Y(N76), 
	.B1(n51), 
	.B0(N39), 
	.A1(n50), 
	.A0(N30));
   AO22XLM U47 (.Y(N83), 
	.B1(n51), 
	.B0(N46), 
	.A1(n50), 
	.A0(N37));
   NAND3X2M U48 (.Y(n79), 
	.C(N1), 
	.B(i_div_ratio[0]), 
	.A(n80));
   OAI21X2M U49 (.Y(n47), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n104), 
	.A0(n103));
   OR2X2M U51 (.Y(n11), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   NAND2X2M U53 (.Y(N27), 
	.B(n71), 
	.A(n70));
   MX2X2M U54 (.Y(N160), 
	.S0(N0), 
	.B(clk_div__L1_N0), 
	.A(N159));
   MX2X2M U55 (.Y(o_div_clk), 
	.S0(N1), 
	.B(N160), 
	.A(scan_UART_CLK_pos__L8_N1));
   OAI2BB1X1M U56 (.Y(N12), 
	.B0(n11), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   OR2X1M U57 (.Y(n12), 
	.B(i_div_ratio[2]), 
	.A(n11));
   OAI2BB1X1M U58 (.Y(N13), 
	.B0(n12), 
	.A1N(i_div_ratio[2]), 
	.A0N(n11));
   OR2X1M U59 (.Y(n13), 
	.B(i_div_ratio[3]), 
	.A(n12));
   OAI2BB1X1M U60 (.Y(N14), 
	.B0(n13), 
	.A1N(i_div_ratio[3]), 
	.A0N(n12));
   OR2X1M U61 (.Y(n41), 
	.B(LTIE_LTIELO_NET), 
	.A(n13));
   OAI2BB1X1M U62 (.Y(N15), 
	.B0(n41), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n13));
   OR2X1M U63 (.Y(n42), 
	.B(LTIE_LTIELO_NET), 
	.A(n41));
   OAI2BB1X1M U64 (.Y(N16), 
	.B0(n42), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n41));
   OR2X1M U65 (.Y(n43), 
	.B(LTIE_LTIELO_NET), 
	.A(n42));
   OAI2BB1X1M U66 (.Y(N17), 
	.B0(n43), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n42));
   NOR2X1M U67 (.Y(N19), 
	.B(LTIE_LTIELO_NET), 
	.A(n43));
   AO21XLM U68 (.Y(N18), 
	.B0(N19), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n43));
   MXI2X1M U69 (.Y(n63), 
	.S0(clk_div__Exclude_0_NET), 
	.B(n45), 
	.A(n44));
   CLKNAND2X2M U70 (.Y(n44), 
	.B(n45), 
	.A(N1));
   NAND3X1M U71 (.Y(n45), 
	.C(N1), 
	.B(N27), 
	.A(n46));
   NOR3X1M U72 (.Y(n62), 
	.C(n48), 
	.B(N0), 
	.A(n47));
   XNOR2X1M U73 (.Y(n48), 
	.B(n105__Exclude_0_NET), 
	.A(n49));
   NAND4BBX1M U74 (.Y(n46), 
	.D(n54), 
	.C(n53), 
	.BN(count_positive[4]), 
	.AN(count_positive[3]));
   NOR4X1M U75 (.Y(n54), 
	.D(N0), 
	.C(count_positive[0]), 
	.B(count_positive[1]), 
	.A(count_positive[2]));
   NOR3X1M U76 (.Y(n53), 
	.C(count_positive[6]), 
	.B(count_positive[7]), 
	.A(count_positive[5]));
   AOI21X1M U77 (.Y(n52), 
	.B0(N0), 
	.A1(n56), 
	.A0(n55));
   NOR4X1M U78 (.Y(n56), 
	.D(n60), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   CLKXOR2X2M U79 (.Y(n60), 
	.B(N13), 
	.A(count_positive[2]));
   CLKXOR2X2M U80 (.Y(n59), 
	.B(N12), 
	.A(count_positive[1]));
   CLKNAND2X2M U81 (.Y(n58), 
	.B(n61), 
	.A(N27));
   CLKXOR2X2M U82 (.Y(n57), 
	.B(N0), 
	.A(count_positive[0]));
   NOR4X1M U83 (.Y(n55), 
	.D(n67), 
	.C(n66), 
	.B(n65), 
	.A(n64));
   CLKXOR2X2M U84 (.Y(n67), 
	.B(N14), 
	.A(count_positive[3]));
   CLKXOR2X2M U85 (.Y(n66), 
	.B(N16), 
	.A(count_positive[5]));
   CLKXOR2X2M U86 (.Y(n65), 
	.B(N15), 
	.A(count_positive[4]));
   CLKNAND2X2M U87 (.Y(n64), 
	.B(n69), 
	.A(n68));
   XNOR2X1M U88 (.Y(n69), 
	.B(count_positive[6]), 
	.A(N17));
   XNOR2X1M U89 (.Y(n68), 
	.B(count_positive[7]), 
	.A(N18));
   NOR4X1M U90 (.Y(n71), 
	.D(n74), 
	.C(n73), 
	.B(n72), 
	.A(count_positive[7]));
   CLKXOR2X2M U91 (.Y(n74), 
	.B(count_positive[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U92 (.Y(n73), 
	.B(count_positive[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U93 (.Y(n72), 
	.B(count_positive[0]), 
	.A(i_div_ratio[1]));
   NOR4X1M U94 (.Y(n70), 
	.D(n78), 
	.C(n77), 
	.B(n76), 
	.A(n75));
   CLKXOR2X2M U95 (.Y(n78), 
	.B(count_positive[6]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U96 (.Y(n77), 
	.B(count_positive[5]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U97 (.Y(n76), 
	.B(count_positive[4]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U98 (.Y(n75), 
	.B(count_positive[3]), 
	.A(LTIE_LTIELO_NET));
   NAND2BX1M U99 (.Y(N159), 
	.B(n105), 
	.AN(clk_div));
   NOR2BX1M U100 (.Y(N152), 
	.B(n79), 
	.AN(N117));
   NOR2BX1M U101 (.Y(N151), 
	.B(n79), 
	.AN(N116));
   NOR2BX1M U102 (.Y(N150), 
	.B(n79), 
	.AN(N115));
   NOR2BX1M U103 (.Y(N149), 
	.B(n79), 
	.AN(N114));
   NOR2BX1M U104 (.Y(N148), 
	.B(n79), 
	.AN(N113));
   NOR2BX1M U105 (.Y(N147), 
	.B(n79), 
	.AN(N112));
   NOR2BX1M U106 (.Y(N146), 
	.B(n79), 
	.AN(N111));
   NOR2BX1M U107 (.Y(N145), 
	.B(n79), 
	.AN(N110));
   NAND4X1M U108 (.Y(n80), 
	.D(n83), 
	.C(n82), 
	.B(n81), 
	.A(n49));
   NOR3X1M U109 (.Y(n83), 
	.C(n86), 
	.B(n85), 
	.A(n84));
   XNOR2X1M U110 (.Y(n86), 
	.B(n109), 
	.A(N0));
   XNOR2X1M U111 (.Y(n85), 
	.B(n111), 
	.A(N15));
   NAND3X1M U112 (.Y(n84), 
	.C(n88), 
	.B(n61), 
	.A(n87));
   CLKXOR2X2M U113 (.Y(n88), 
	.B(N14), 
	.A(n110));
   CLKINVX1M U114 (.Y(n61), 
	.A(N19));
   CLKXOR2X2M U115 (.Y(n87), 
	.B(N18), 
	.A(n107));
   NOR3X1M U116 (.Y(n82), 
	.C(n91), 
	.B(n90), 
	.A(n89));
   XNOR2X1M U117 (.Y(n91), 
	.B(n113), 
	.A(N17));
   XNOR2X1M U118 (.Y(n90), 
	.B(n112), 
	.A(N16));
   XNOR2X1M U119 (.Y(n89), 
	.B(n108), 
	.A(N12));
   CLKXOR2X2M U120 (.Y(n81), 
	.B(N13), 
	.A(n106));
   OA22X1M U121 (.Y(n49), 
	.B1(n95), 
	.B0(n94), 
	.A1(n93), 
	.A0(n92));
   NAND4X1M U122 (.Y(n95), 
	.D(n109), 
	.C(n108), 
	.B(n107), 
	.A(n106));
   NAND4X1M U123 (.Y(n94), 
	.D(n113), 
	.C(n112), 
	.B(n111), 
	.A(n110));
   NAND4X1M U124 (.Y(n93), 
	.D(n98), 
	.C(n97), 
	.B(n96), 
	.A(n107));
   CLKXOR2X2M U125 (.Y(n98), 
	.B(LTIE_LTIELO_NET), 
	.A(n111));
   CLKXOR2X2M U126 (.Y(n97), 
	.B(LTIE_LTIELO_NET), 
	.A(n112));
   CLKXOR2X2M U127 (.Y(n96), 
	.B(LTIE_LTIELO_NET), 
	.A(n113));
   NAND4X1M U128 (.Y(n92), 
	.D(n102), 
	.C(n101), 
	.B(n100), 
	.A(n99));
   CLKXOR2X2M U129 (.Y(n102), 
	.B(i_div_ratio[1]), 
	.A(n109));
   CLKXOR2X2M U130 (.Y(n101), 
	.B(i_div_ratio[2]), 
	.A(n108));
   CLKXOR2X2M U131 (.Y(n100), 
	.B(i_div_ratio[3]), 
	.A(n106));
   CLKXOR2X2M U132 (.Y(n99), 
	.B(LTIE_LTIELO_NET), 
	.A(n110));
   CLKINVX1M U133 (.Y(N1), 
	.A(n47));
   OR3X1M U134 (.Y(n104), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U135 (.Y(n103), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   CLKINVX1M U136 (.Y(N0), 
	.A(i_div_ratio[0]));
   DLY1X1M U137 (.Y(n117), 
	.A(test_se));
   DLY1X1M U138 (.Y(n118), 
	.A(n117));
   DLY1X1M U139 (.Y(n119), 
	.A(n117));
   DLY1X1M U140 (.Y(n120), 
	.A(n117));
   ClkDiv_dft_0_DW01_inc_0 r98 (.A({ count_negative[7],
		count_negative[6],
		count_negative[5],
		count_negative[4],
		count_negative[3],
		count_negative[2],
		count_negative[1],
		count_negative[0] }), 
	.SUM({ N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110 }));
   ClkDiv_dft_0_DW01_inc_1 r95 (.A({ count_positive[7],
		count_positive[6],
		count_positive[5],
		count_positive[4],
		count_positive[3],
		count_positive[2],
		count_positive[1],
		count_positive[0] }), 
	.SUM({ N46,
		N45,
		N44,
		N43,
		N42,
		N41,
		N40,
		N39 }));
   ClkDiv_dft_0_DW01_inc_2 add_39_aco (.A({ n8,
		n7,
		n6,
		n5,
		n4,
		n3,
		n2,
		n1 }), 
	.SUM({ N37,
		N36,
		N35,
		N34,
		N33,
		N32,
		N31,
		N30 }));
endmodule

module ClkDiv_dft_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_dft_1_DW01_inc_1 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_dft_1_DW01_inc_2 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_dft_test_1 (
	i_ref_clk_pos, 
	i_ref_clk_neg, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	scan_UART_CLK_pos__L2_N0, 
	scan_UART_CLK_pos__L8_N0, 
	scan_UART_CLK_neg__L2_N1);
   input i_ref_clk_pos;
   input i_ref_clk_neg;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input scan_UART_CLK_pos__L2_N0;
   input scan_UART_CLK_pos__L8_N0;
   input scan_UART_CLK_neg__L2_N1;

   // Internal wires
   wire FE_PHN13_n144;
   wire FE_PHN12_n144;
   wire n105__Exclude_0_NET;
   wire clk_div__L1_N0;
   wire clk_div__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N0;
   wire N1;
   wire clk_div;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N27;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N145;
   wire N146;
   wire N147;
   wire N148;
   wire N149;
   wire N150;
   wire N151;
   wire N152;
   wire N159;
   wire N160;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n11;
   wire n12;
   wire n13;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n144;
   wire n146;
   wire n147;
   wire n148;
   wire [7:0] count_positive;
   wire [7:0] count_negative;

   assign test_so = count_positive[7] ;

   DLY4X1M FE_PHC13_n144 (.Y(FE_PHN12_n144), 
	.A(FE_PHN13_n144));
   DLY4X1M FE_PHC12_n144 (.Y(n144), 
	.A(FE_PHN12_n144));
   BUFX8M n105__Exclude_0 (.Y(n105__Exclude_0_NET), 
	.A(n105));
   CLKBUFX24M clk_div__L1_I0 (.Y(clk_div__L1_N0), 
	.A(clk_div));
   BUFX8M clk_div__Exclude_0 (.Y(clk_div__Exclude_0_NET), 
	.A(clk_div));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M clk_div_reg (.SI(test_si), 
	.SE(n146), 
	.RN(i_rst_n), 
	.Q(clk_div), 
	.D(n114), 
	.CK(scan_UART_CLK_pos__L2_N0));
   SDFFNSRHX2M clk_odd_div_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(clk_div__Exclude_0_NET), 
	.SE(n146), 
	.RN(i_rst_n), 
	.QN(n105), 
	.Q(FE_PHN13_n144), 
	.D(n115), 
	.CKN(scan_UART_CLK_neg__L2_N1));
   SDFFRQX2M \count_positive_reg[7]  (.SI(count_positive[6]), 
	.SE(n148), 
	.RN(i_rst_n), 
	.Q(count_positive[7]), 
	.D(N83), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[6]  (.SI(count_positive[5]), 
	.SE(n147), 
	.RN(i_rst_n), 
	.Q(count_positive[6]), 
	.D(N82), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[4]  (.SI(count_positive[3]), 
	.SE(n148), 
	.RN(i_rst_n), 
	.Q(count_positive[4]), 
	.D(N80), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[3]  (.SI(count_positive[2]), 
	.SE(n147), 
	.RN(i_rst_n), 
	.Q(count_positive[3]), 
	.D(N79), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[5]  (.SI(count_positive[4]), 
	.SE(n146), 
	.RN(i_rst_n), 
	.Q(count_positive[5]), 
	.D(N81), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[0]  (.SI(count_negative[7]), 
	.SE(n147), 
	.RN(i_rst_n), 
	.Q(count_positive[0]), 
	.D(N76), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[1]  (.SI(count_positive[0]), 
	.SE(n148), 
	.RN(i_rst_n), 
	.Q(count_positive[1]), 
	.D(N77), 
	.CK(i_ref_clk_pos));
   SDFFRQX2M \count_positive_reg[2]  (.SI(count_positive[1]), 
	.SE(n146), 
	.RN(i_rst_n), 
	.Q(count_positive[2]), 
	.D(N78), 
	.CK(i_ref_clk_pos));
   SDFFNSRHX2M \count_negative_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n144), 
	.SE(n147), 
	.RN(i_rst_n), 
	.QN(n109), 
	.Q(count_negative[0]), 
	.D(N145), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[5]), 
	.SE(n147), 
	.RN(i_rst_n), 
	.QN(n113), 
	.Q(count_negative[6]), 
	.D(N151), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[0]), 
	.SE(n148), 
	.RN(i_rst_n), 
	.QN(n108), 
	.Q(count_negative[1]), 
	.D(N146), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[4]), 
	.SE(n146), 
	.RN(i_rst_n), 
	.QN(n112), 
	.Q(count_negative[5]), 
	.D(N150), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[7]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[6]), 
	.SE(n148), 
	.RN(i_rst_n), 
	.QN(n107), 
	.Q(count_negative[7]), 
	.D(N152), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[3]), 
	.SE(n148), 
	.RN(i_rst_n), 
	.QN(n111), 
	.Q(count_negative[4]), 
	.D(N149), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[1]), 
	.SE(n146), 
	.RN(i_rst_n), 
	.QN(n106), 
	.Q(count_negative[2]), 
	.D(N147), 
	.CKN(i_ref_clk_neg));
   SDFFNSRHX2M \count_negative_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(count_negative[2]), 
	.SE(n147), 
	.RN(i_rst_n), 
	.QN(n110), 
	.Q(count_negative[3]), 
	.D(N148), 
	.CKN(i_ref_clk_neg));
   AND2X2M U7 (.Y(n1), 
	.B(N27), 
	.A(count_positive[0]));
   AND2X2M U8 (.Y(n2), 
	.B(N27), 
	.A(count_positive[1]));
   AND2X2M U9 (.Y(n3), 
	.B(N27), 
	.A(count_positive[2]));
   AND2X2M U10 (.Y(n4), 
	.B(N27), 
	.A(count_positive[3]));
   AND2X2M U11 (.Y(n5), 
	.B(N27), 
	.A(count_positive[4]));
   AND2X2M U19 (.Y(n6), 
	.B(N27), 
	.A(count_positive[5]));
   AND2X2M U20 (.Y(n7), 
	.B(N27), 
	.A(count_positive[6]));
   AND2X2M U37 (.Y(n8), 
	.B(count_positive[7]), 
	.A(N27));
   NOR2X2M U38 (.Y(n50), 
	.B(i_div_ratio[0]), 
	.A(n47));
   AOI2B1X1M U39 (.Y(n51), 
	.B0(n47), 
	.A1N(n52), 
	.A0(n46));
   AO22XLM U40 (.Y(N82), 
	.B1(n51), 
	.B0(N45), 
	.A1(n50), 
	.A0(N36));
   AO22XLM U41 (.Y(N81), 
	.B1(n51), 
	.B0(N44), 
	.A1(n50), 
	.A0(N35));
   AO22XLM U42 (.Y(N80), 
	.B1(n51), 
	.B0(N43), 
	.A1(n50), 
	.A0(N34));
   AO22XLM U43 (.Y(N79), 
	.B1(n51), 
	.B0(N42), 
	.A1(n50), 
	.A0(N33));
   AO22XLM U44 (.Y(N78), 
	.B1(n51), 
	.B0(N41), 
	.A1(n50), 
	.A0(N32));
   AO22XLM U45 (.Y(N77), 
	.B1(n51), 
	.B0(N40), 
	.A1(n50), 
	.A0(N31));
   AO22XLM U46 (.Y(N76), 
	.B1(n51), 
	.B0(N39), 
	.A1(n50), 
	.A0(N30));
   AO22XLM U47 (.Y(N83), 
	.B1(n51), 
	.B0(N46), 
	.A1(n50), 
	.A0(N37));
   NAND3X2M U48 (.Y(n79), 
	.C(N1), 
	.B(i_div_ratio[0]), 
	.A(n80));
   OAI21X2M U49 (.Y(n47), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n104), 
	.A0(n103));
   NAND2X2M U52 (.Y(N27), 
	.B(n71), 
	.A(n70));
   OR2X2M U53 (.Y(n11), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   MX2X2M U54 (.Y(N160), 
	.S0(N0), 
	.B(clk_div__L1_N0), 
	.A(N159));
   MX2X2M U55 (.Y(o_div_clk), 
	.S0(N1), 
	.B(N160), 
	.A(scan_UART_CLK_pos__L8_N0));
   OAI2BB1X1M U56 (.Y(N12), 
	.B0(n11), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   OR2X1M U57 (.Y(n12), 
	.B(i_div_ratio[2]), 
	.A(n11));
   OAI2BB1X1M U58 (.Y(N13), 
	.B0(n12), 
	.A1N(i_div_ratio[2]), 
	.A0N(n11));
   OR2X1M U59 (.Y(n13), 
	.B(i_div_ratio[3]), 
	.A(n12));
   OAI2BB1X1M U60 (.Y(N14), 
	.B0(n13), 
	.A1N(i_div_ratio[3]), 
	.A0N(n12));
   OR2X1M U61 (.Y(n41), 
	.B(i_div_ratio[4]), 
	.A(n13));
   OAI2BB1X1M U62 (.Y(N15), 
	.B0(n41), 
	.A1N(i_div_ratio[4]), 
	.A0N(n13));
   OR2X1M U63 (.Y(n42), 
	.B(i_div_ratio[5]), 
	.A(n41));
   OAI2BB1X1M U64 (.Y(N16), 
	.B0(n42), 
	.A1N(i_div_ratio[5]), 
	.A0N(n41));
   OR2X1M U65 (.Y(n43), 
	.B(i_div_ratio[6]), 
	.A(n42));
   OAI2BB1X1M U66 (.Y(N17), 
	.B0(n43), 
	.A1N(i_div_ratio[6]), 
	.A0N(n42));
   NOR2X1M U67 (.Y(N19), 
	.B(i_div_ratio[7]), 
	.A(n43));
   AO21XLM U68 (.Y(N18), 
	.B0(N19), 
	.A1(i_div_ratio[7]), 
	.A0(n43));
   MXI2X1M U69 (.Y(n114), 
	.S0(clk_div__Exclude_0_NET), 
	.B(n45), 
	.A(n44));
   CLKNAND2X2M U70 (.Y(n44), 
	.B(n45), 
	.A(N1));
   NAND3X1M U71 (.Y(n45), 
	.C(N1), 
	.B(N27), 
	.A(n46));
   NOR3X1M U72 (.Y(n115), 
	.C(n48), 
	.B(N0), 
	.A(n47));
   XNOR2X1M U73 (.Y(n48), 
	.B(n105__Exclude_0_NET), 
	.A(n49));
   NAND4BBX1M U74 (.Y(n46), 
	.D(n54), 
	.C(n53), 
	.BN(count_positive[4]), 
	.AN(count_positive[3]));
   NOR4X1M U75 (.Y(n54), 
	.D(N0), 
	.C(count_positive[0]), 
	.B(count_positive[1]), 
	.A(count_positive[2]));
   NOR3X1M U76 (.Y(n53), 
	.C(count_positive[6]), 
	.B(count_positive[7]), 
	.A(count_positive[5]));
   AOI21X1M U77 (.Y(n52), 
	.B0(N0), 
	.A1(n56), 
	.A0(n55));
   NOR4X1M U78 (.Y(n56), 
	.D(n60), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   CLKXOR2X2M U79 (.Y(n60), 
	.B(N13), 
	.A(count_positive[2]));
   CLKXOR2X2M U80 (.Y(n59), 
	.B(N12), 
	.A(count_positive[1]));
   CLKNAND2X2M U81 (.Y(n58), 
	.B(n61), 
	.A(N27));
   CLKXOR2X2M U82 (.Y(n57), 
	.B(N0), 
	.A(count_positive[0]));
   NOR4X1M U83 (.Y(n55), 
	.D(n67), 
	.C(n66), 
	.B(n65), 
	.A(n64));
   CLKXOR2X2M U84 (.Y(n67), 
	.B(N14), 
	.A(count_positive[3]));
   CLKXOR2X2M U85 (.Y(n66), 
	.B(N16), 
	.A(count_positive[5]));
   CLKXOR2X2M U86 (.Y(n65), 
	.B(N15), 
	.A(count_positive[4]));
   CLKNAND2X2M U87 (.Y(n64), 
	.B(n69), 
	.A(n68));
   XNOR2X1M U88 (.Y(n69), 
	.B(count_positive[6]), 
	.A(N17));
   XNOR2X1M U89 (.Y(n68), 
	.B(count_positive[7]), 
	.A(N18));
   NOR4X1M U90 (.Y(n71), 
	.D(n74), 
	.C(n73), 
	.B(n72), 
	.A(count_positive[7]));
   CLKXOR2X2M U91 (.Y(n74), 
	.B(count_positive[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U92 (.Y(n73), 
	.B(count_positive[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U93 (.Y(n72), 
	.B(count_positive[0]), 
	.A(i_div_ratio[1]));
   NOR4X1M U94 (.Y(n70), 
	.D(n78), 
	.C(n77), 
	.B(n76), 
	.A(n75));
   CLKXOR2X2M U95 (.Y(n78), 
	.B(count_positive[6]), 
	.A(i_div_ratio[7]));
   CLKXOR2X2M U96 (.Y(n77), 
	.B(count_positive[5]), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U97 (.Y(n76), 
	.B(count_positive[4]), 
	.A(i_div_ratio[5]));
   CLKXOR2X2M U98 (.Y(n75), 
	.B(count_positive[3]), 
	.A(i_div_ratio[4]));
   NAND2BX1M U99 (.Y(N159), 
	.B(n105), 
	.AN(clk_div));
   NOR2BX1M U100 (.Y(N152), 
	.B(n79), 
	.AN(N117));
   NOR2BX1M U101 (.Y(N151), 
	.B(n79), 
	.AN(N116));
   NOR2BX1M U102 (.Y(N150), 
	.B(n79), 
	.AN(N115));
   NOR2BX1M U103 (.Y(N149), 
	.B(n79), 
	.AN(N114));
   NOR2BX1M U104 (.Y(N148), 
	.B(n79), 
	.AN(N113));
   NOR2BX1M U105 (.Y(N147), 
	.B(n79), 
	.AN(N112));
   NOR2BX1M U106 (.Y(N146), 
	.B(n79), 
	.AN(N111));
   NOR2BX1M U107 (.Y(N145), 
	.B(n79), 
	.AN(N110));
   NAND4X1M U108 (.Y(n80), 
	.D(n83), 
	.C(n82), 
	.B(n81), 
	.A(n49));
   NOR3X1M U109 (.Y(n83), 
	.C(n86), 
	.B(n85), 
	.A(n84));
   XNOR2X1M U110 (.Y(n86), 
	.B(n109), 
	.A(N0));
   XNOR2X1M U111 (.Y(n85), 
	.B(n111), 
	.A(N15));
   NAND3X1M U112 (.Y(n84), 
	.C(n88), 
	.B(n61), 
	.A(n87));
   CLKXOR2X2M U113 (.Y(n88), 
	.B(N14), 
	.A(n110));
   CLKINVX1M U114 (.Y(n61), 
	.A(N19));
   CLKXOR2X2M U115 (.Y(n87), 
	.B(N18), 
	.A(n107));
   NOR3X1M U116 (.Y(n82), 
	.C(n91), 
	.B(n90), 
	.A(n89));
   XNOR2X1M U117 (.Y(n91), 
	.B(n113), 
	.A(N17));
   XNOR2X1M U118 (.Y(n90), 
	.B(n112), 
	.A(N16));
   XNOR2X1M U119 (.Y(n89), 
	.B(n108), 
	.A(N12));
   CLKXOR2X2M U120 (.Y(n81), 
	.B(N13), 
	.A(n106));
   OA22X1M U121 (.Y(n49), 
	.B1(n95), 
	.B0(n94), 
	.A1(n93), 
	.A0(n92));
   NAND4X1M U122 (.Y(n95), 
	.D(n109), 
	.C(n108), 
	.B(n107), 
	.A(n106));
   NAND4X1M U123 (.Y(n94), 
	.D(n113), 
	.C(n112), 
	.B(n111), 
	.A(n110));
   NAND4X1M U124 (.Y(n93), 
	.D(n98), 
	.C(n97), 
	.B(n96), 
	.A(n107));
   CLKXOR2X2M U125 (.Y(n98), 
	.B(i_div_ratio[5]), 
	.A(n111));
   CLKXOR2X2M U126 (.Y(n97), 
	.B(i_div_ratio[6]), 
	.A(n112));
   CLKXOR2X2M U127 (.Y(n96), 
	.B(i_div_ratio[7]), 
	.A(n113));
   NAND4X1M U128 (.Y(n92), 
	.D(n102), 
	.C(n101), 
	.B(n100), 
	.A(n99));
   CLKXOR2X2M U129 (.Y(n102), 
	.B(i_div_ratio[1]), 
	.A(n109));
   CLKXOR2X2M U130 (.Y(n101), 
	.B(i_div_ratio[2]), 
	.A(n108));
   CLKXOR2X2M U131 (.Y(n100), 
	.B(i_div_ratio[3]), 
	.A(n106));
   CLKXOR2X2M U132 (.Y(n99), 
	.B(i_div_ratio[4]), 
	.A(n110));
   CLKINVX1M U133 (.Y(N1), 
	.A(n47));
   OR3X1M U134 (.Y(n104), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U135 (.Y(n103), 
	.D(i_div_ratio[7]), 
	.C(i_div_ratio[6]), 
	.B(i_div_ratio[5]), 
	.A(i_div_ratio[4]));
   CLKINVX1M U136 (.Y(N0), 
	.A(i_div_ratio[0]));
   DLY1X1M U137 (.Y(n146), 
	.A(test_se));
   DLY1X1M U138 (.Y(n147), 
	.A(test_se));
   DLY1X1M U139 (.Y(n148), 
	.A(test_se));
   ClkDiv_dft_1_DW01_inc_0 r98 (.A({ count_negative[7],
		count_negative[6],
		count_negative[5],
		count_negative[4],
		count_negative[3],
		count_negative[2],
		count_negative[1],
		count_negative[0] }), 
	.SUM({ N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110 }));
   ClkDiv_dft_1_DW01_inc_1 r95 (.A({ count_positive[7],
		count_positive[6],
		count_positive[5],
		count_positive[4],
		count_positive[3],
		count_positive[2],
		count_positive[1],
		count_positive[0] }), 
	.SUM({ N46,
		N45,
		N44,
		N43,
		N42,
		N41,
		N40,
		N39 }));
   ClkDiv_dft_1_DW01_inc_2 add_39_aco (.A({ n8,
		n7,
		n6,
		n5,
		n4,
		n3,
		n2,
		n1 }), 
	.SUM({ N37,
		N36,
		N35,
		N34,
		N33,
		N32,
		N31,
		N30 }));
endmodule

module Clk_Div_Mux (
	prescale, 
	Div_Ratio);
   input [5:0] prescale;
   output [7:0] Div_Ratio;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI211X2M U11 (.Y(Div_Ratio[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U12 (.Y(n8), 
	.D(n15), 
	.C(prescale[3]), 
	.B(prescale[4]), 
	.A(prescale[5]));
   NAND2X2M U13 (.Y(n9), 
	.B(n6), 
	.A(n7));
   NAND4BX1M U14 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(prescale[4]), 
	.AN(prescale[3]));
   NAND4BX1M U15 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(prescale[3]), 
	.AN(prescale[4]));
   INVX2M U16 (.Y(n15), 
	.A(prescale[2]));
   NOR3X2M U17 (.Y(Div_Ratio[2]), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(n6));
   NOR3X2M U18 (.Y(Div_Ratio[1]), 
	.C(prescale[0]), 
	.B(prescale[1]), 
	.A(n7));
   INVX2M U19 (.Y(n16), 
	.A(prescale[1]));
   INVX2M U20 (.Y(n17), 
	.A(prescale[0]));
   INVX2M U21 (.Y(n14), 
	.A(prescale[5]));
   NOR4X1M U22 (.Y(Div_Ratio[3]), 
	.D(prescale[4]), 
	.C(prescale[5]), 
	.B(prescale[3]), 
	.A(n5));
   NAND3X2M U23 (.Y(n5), 
	.C(prescale[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U3 (.Y(Div_Ratio[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(Div_Ratio[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(Div_Ratio[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(Div_Ratio[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule


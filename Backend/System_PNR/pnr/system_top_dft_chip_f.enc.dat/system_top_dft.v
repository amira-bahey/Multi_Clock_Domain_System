module system_top_dft (
	REF_CLK, 
	UART_CLK, 
	RST, 
	RX_IN, 
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO, 
	TX_OUT, 
	PAR_ERR, 
	STP_ERR);
   input REF_CLK;
   input UART_CLK;
   input RST;
   input RX_IN;
   input [2:0] SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output [2:0] SO;
   output TX_OUT;
   output PAR_ERR;
   output STP_ERR;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N1;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_scan__L3_N4;
   wire REF_CLK_scan__L3_N3;
   wire REF_CLK_scan__L3_N2;
   wire REF_CLK_scan__L3_N1;
   wire REF_CLK_scan__L3_N0;
   wire REF_CLK_scan__L2_N0;
   wire REF_CLK_scan__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire UART_CLK_scan__L12_N0;
   wire UART_CLK_scan__L11_N0;
   wire UART_CLK_scan__L10_N0;
   wire UART_CLK_scan__L9_N0;
   wire UART_CLK_scan__L8_N0;
   wire UART_CLK_scan__L7_N0;
   wire UART_CLK_scan__L6_N1;
   wire UART_CLK_scan__L6_N0;
   wire UART_CLK_scan__L5_N1;
   wire UART_CLK_scan__L5_N0;
   wire UART_CLK_scan__L4_N1;
   wire UART_CLK_scan__L4_N0;
   wire UART_CLK_scan__L3_N1;
   wire UART_CLK_scan__L3_N0;
   wire UART_CLK_scan__L2_N1;
   wire UART_CLK_scan__L2_N0;
   wire UART_CLK_scan__L1_N0;
   wire TX_CLK_scan__L3_N1;
   wire TX_CLK_scan__L3_N0;
   wire TX_CLK_scan__L2_N0;
   wire TX_CLK_scan__L1_N0;
   wire RX_CLK_scan__L3_N3;
   wire RX_CLK_scan__L3_N2;
   wire RX_CLK_scan__L3_N1;
   wire RX_CLK_scan__L3_N0;
   wire RX_CLK_scan__L2_N0;
   wire RX_CLK_scan__L1_N0;
   wire FE_OFN2_RST_M_2;
   wire FE_OFN1_RST_M_1;
   wire REF_CLK_scan;
   wire RST_M_1;
   wire OUT_Valid;
   wire RdData_Valid;
   wire RX_D_VLD;
   wire EN;
   wire CLK_EN;
   wire WrEn;
   wire RdEn;
   wire TX_D_VLD;
   wire F_FULL;
   wire ALU_CLK;
   wire _0_net_;
   wire TX_CLK_scan;
   wire RX_CLK_scan;
   wire RST_M_2;
   wire F_EMPTY;
   wire busy;
   wire sync_en;
   wire RST_M_0;
   wire SYNC_RST_REF;
   wire UART_CLK_scan;
   wire SYNC_RST_UART;
   wire RD_INC;
   wire TX_CLK;
   wire RX_CLK;
   wire n1;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire [15:0] ALU_OUT;
   wire [7:0] RdData;
   wire [7:0] RX_P_DATA;
   wire [3:0] ALU_FUN;
   wire [3:0] Address;
   wire [7:0] WrData;
   wire [7:0] TX_P_DATA;
   wire [7:0] operandA;
   wire [7:0] operandB;
   wire [7:0] UART_CONFIG;
   wire [7:0] div_ratio;
   wire [7:0] F_RdData;
   wire [7:0] RX_OUT;
   wire [7:0] div_ratio_rx;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;

   assign SO[1] = STP_ERR ;

   CLKINVX8M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX8M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX6M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N1));
   CLKBUFX20M scan_clk__L9_I1 (.Y(scan_clk__L9_N1), 
	.A(scan_clk__L8_N0));
   CLKINVX6M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX20M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX20M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   CLKBUFX20M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKINVX6M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX40M REF_CLK_scan__L3_I4 (.Y(REF_CLK_scan__L3_N4), 
	.A(REF_CLK_scan__L2_N0));
   CLKINVX40M REF_CLK_scan__L3_I3 (.Y(REF_CLK_scan__L3_N3), 
	.A(REF_CLK_scan__L2_N0));
   CLKINVX40M REF_CLK_scan__L3_I2 (.Y(REF_CLK_scan__L3_N2), 
	.A(REF_CLK_scan__L2_N0));
   CLKINVX40M REF_CLK_scan__L3_I1 (.Y(REF_CLK_scan__L3_N1), 
	.A(REF_CLK_scan__L2_N0));
   CLKINVX40M REF_CLK_scan__L3_I0 (.Y(REF_CLK_scan__L3_N0), 
	.A(REF_CLK_scan__L2_N0));
   CLKINVX40M REF_CLK_scan__L2_I0 (.Y(REF_CLK_scan__L2_N0), 
	.A(REF_CLK_scan__L1_N0));
   CLKBUFX24M REF_CLK_scan__L1_I0 (.Y(REF_CLK_scan__L1_N0), 
	.A(REF_CLK_scan));
   CLKINVX32M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX18M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX40M UART_CLK_scan__L12_I0 (.Y(UART_CLK_scan__L12_N0), 
	.A(UART_CLK_scan__L11_N0));
   CLKINVX40M UART_CLK_scan__L11_I0 (.Y(UART_CLK_scan__L11_N0), 
	.A(UART_CLK_scan__L10_N0));
   CLKBUFX40M UART_CLK_scan__L10_I0 (.Y(UART_CLK_scan__L10_N0), 
	.A(UART_CLK_scan__L9_N0));
   CLKBUFX40M UART_CLK_scan__L9_I0 (.Y(UART_CLK_scan__L9_N0), 
	.A(UART_CLK_scan__L8_N0));
   CLKBUFX24M UART_CLK_scan__L8_I0 (.Y(UART_CLK_scan__L8_N0), 
	.A(UART_CLK_scan__L7_N0));
   CLKBUFX24M UART_CLK_scan__L7_I0 (.Y(UART_CLK_scan__L7_N0), 
	.A(UART_CLK_scan__L6_N1));
   CLKBUFX24M UART_CLK_scan__L6_I1 (.Y(UART_CLK_scan__L6_N1), 
	.A(UART_CLK_scan__L5_N1));
   CLKINVX24M UART_CLK_scan__L6_I0 (.Y(UART_CLK_scan__L6_N0), 
	.A(UART_CLK_scan__L5_N0));
   CLKBUFX24M UART_CLK_scan__L5_I1 (.Y(UART_CLK_scan__L5_N1), 
	.A(UART_CLK_scan__L4_N1));
   CLKINVX32M UART_CLK_scan__L5_I0 (.Y(UART_CLK_scan__L5_N0), 
	.A(UART_CLK_scan__L4_N0));
   CLKBUFX24M UART_CLK_scan__L4_I1 (.Y(UART_CLK_scan__L4_N1), 
	.A(UART_CLK_scan__L3_N1));
   CLKBUFX12M UART_CLK_scan__L4_I0 (.Y(UART_CLK_scan__L4_N0), 
	.A(UART_CLK_scan__L3_N0));
   CLKBUFX24M UART_CLK_scan__L3_I1 (.Y(UART_CLK_scan__L3_N1), 
	.A(UART_CLK_scan__L2_N1));
   CLKBUFX12M UART_CLK_scan__L3_I0 (.Y(UART_CLK_scan__L3_N0), 
	.A(UART_CLK_scan__L2_N0));
   CLKBUFX24M UART_CLK_scan__L2_I1 (.Y(UART_CLK_scan__L2_N1), 
	.A(UART_CLK_scan__L1_N0));
   CLKBUFX24M UART_CLK_scan__L2_I0 (.Y(UART_CLK_scan__L2_N0), 
	.A(UART_CLK_scan__L1_N0));
   CLKBUFX24M UART_CLK_scan__L1_I0 (.Y(UART_CLK_scan__L1_N0), 
	.A(UART_CLK_scan));
   CLKINVX32M TX_CLK_scan__L3_I1 (.Y(TX_CLK_scan__L3_N1), 
	.A(TX_CLK_scan__L2_N0));
   CLKINVX32M TX_CLK_scan__L3_I0 (.Y(TX_CLK_scan__L3_N0), 
	.A(TX_CLK_scan__L2_N0));
   CLKINVX32M TX_CLK_scan__L2_I0 (.Y(TX_CLK_scan__L2_N0), 
	.A(TX_CLK_scan__L1_N0));
   BUFX16M TX_CLK_scan__L1_I0 (.Y(TX_CLK_scan__L1_N0), 
	.A(TX_CLK_scan));
   CLKINVX24M RX_CLK_scan__L3_I3 (.Y(RX_CLK_scan__L3_N3), 
	.A(RX_CLK_scan__L2_N0));
   CLKINVX24M RX_CLK_scan__L3_I2 (.Y(RX_CLK_scan__L3_N2), 
	.A(RX_CLK_scan__L2_N0));
   CLKINVX24M RX_CLK_scan__L3_I1 (.Y(RX_CLK_scan__L3_N1), 
	.A(RX_CLK_scan__L2_N0));
   CLKINVX24M RX_CLK_scan__L3_I0 (.Y(RX_CLK_scan__L3_N0), 
	.A(RX_CLK_scan__L2_N0));
   CLKINVX40M RX_CLK_scan__L2_I0 (.Y(RX_CLK_scan__L2_N0), 
	.A(RX_CLK_scan__L1_N0));
   BUFX16M RX_CLK_scan__L1_I0 (.Y(RX_CLK_scan__L1_N0), 
	.A(RX_CLK_scan));
   BUFX4M FE_OFC2_RST_M_2 (.Y(FE_OFN2_RST_M_2), 
	.A(RST_M_2));
   CLKBUFX8M FE_OFC1_RST_M_1 (.Y(FE_OFN1_RST_M_1), 
	.A(RST_M_1));
   BUFX4M U15 (.Y(n1), 
	.A(test_mode));
   OR2X2M U18 (.Y(_0_net_), 
	.B(n1), 
	.A(CLK_EN));
   DLY1X1M U25 (.Y(n18), 
	.A(n25));
   DLY1X1M U26 (.Y(n19), 
	.A(n26));
   DLY1X1M U27 (.Y(n20), 
	.A(n27));
   DLY1X1M U28 (.Y(n21), 
	.A(n28));
   DLY1X1M U32 (.Y(n25), 
	.A(n28));
   DLY1X1M U33 (.Y(n26), 
	.A(SE));
   DLY1X1M U34 (.Y(n27), 
	.A(n26));
   DLY1X1M U35 (.Y(n28), 
	.A(n27));
   SYS_CTRL_data_width8_addr4_out_width16_test_1 U0 (.CLK(REF_CLK_scan__L3_N0), 
	.RST(RST_M_1), 
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
	.OUT_Valid(OUT_Valid), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.RX_P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.RX_D_VLD(RX_D_VLD), 
	.fifo_full(F_FULL), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.EN(EN), 
	.CLK_EN(CLK_EN), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.TX_P_DATA({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.TX_D_VLD(TX_D_VLD), 
	.test_si(SI[2]), 
	.test_so(n16), 
	.test_se(SE), 
	.FE_OFN1_RST_M_1(FE_OFN1_RST_M_1), 
	.REF_CLK_scan__L3_N3(REF_CLK_scan__L3_N3));
   Register_File_addr4_width8_test_1 U1 (.WrData({ WrData[7],
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
	.RdEn(RdEn), 
	.CLK(REF_CLK_scan__L3_N0), 
	.RST(RST_M_1), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.REG0({ operandA[7],
		operandA[6],
		operandA[5],
		operandA[4],
		operandA[3],
		operandA[2],
		operandA[1],
		operandA[0] }), 
	.REG1({ operandB[7],
		operandB[6],
		operandB[5],
		operandB[4],
		operandB[3],
		operandB[2],
		operandB[1],
		operandB[0] }), 
	.REG2({ UART_CONFIG[7],
		UART_CONFIG[6],
		UART_CONFIG[5],
		UART_CONFIG[4],
		UART_CONFIG[3],
		UART_CONFIG[2],
		UART_CONFIG[1],
		UART_CONFIG[0] }), 
	.REG3({ div_ratio[7],
		div_ratio[6],
		div_ratio[5],
		div_ratio[4],
		div_ratio[3],
		div_ratio[2],
		div_ratio[1],
		div_ratio[0] }), 
	.test_si(n16), 
	.test_so(n15), 
	.test_se(SE), 
	.FE_OFN1_RST_M_1(FE_OFN1_RST_M_1), 
	.REF_CLK_scan__L3_N1(REF_CLK_scan__L3_N1), 
	.REF_CLK_scan__L3_N3(REF_CLK_scan__L3_N3));
   ALU_data_width8_out_width16_test_1 U2 (.A({ operandA[7],
		operandA[6],
		operandA[5],
		operandA[4],
		operandA[3],
		operandA[2],
		operandA[1],
		operandA[0] }), 
	.B({ operandB[7],
		operandB[6],
		operandB[5],
		operandB[4],
		operandB[3],
		operandB[2],
		operandB[1],
		operandB[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK(ALU_CLK__L3_N0), 
	.RST(RST_M_1), 
	.En(EN), 
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
	.ALU_Valid(OUT_Valid), 
	.test_si2(SI[1]), 
	.test_si1(n15), 
	.test_se(n20));
   CLK_GATE U3 (.CLK_EN(_0_net_), 
	.CLK(REF_CLK_scan), 
	.GATED_CLK(ALU_CLK));
   UART_width8_test_1 U4 (.UART_CONFIG({ UART_CONFIG[7],
		UART_CONFIG[6],
		UART_CONFIG[5],
		UART_CONFIG[4],
		UART_CONFIG[3],
		UART_CONFIG[2],
		UART_CONFIG[1],
		UART_CONFIG[0] }), 
	.TX_CLK(TX_CLK_scan__L3_N0), 
	.RX_CLK(RX_CLK_scan__L3_N0), 
	.RST(RST_M_2), 
	.RX_IN(RX_IN), 
	.F_EMPTY(F_EMPTY), 
	.RdData({ F_RdData[7],
		F_RdData[6],
		F_RdData[5],
		F_RdData[4],
		F_RdData[3],
		F_RdData[2],
		F_RdData[1],
		F_RdData[0] }), 
	.TX_OUT(TX_OUT), 
	.busy(busy), 
	.RX_OUT({ RX_OUT[7],
		RX_OUT[6],
		RX_OUT[5],
		RX_OUT[4],
		RX_OUT[3],
		RX_OUT[2],
		RX_OUT[1],
		RX_OUT[0] }), 
	.sync_en(sync_en), 
	.PAR_ERR(PAR_ERR), 
	.STP_ERR(STP_ERR), 
	.test_si2(n11), 
	.test_si1(OUT_Valid), 
	.test_so1(n13), 
	.test_se(SE), 
	.FE_OFN2_RST_M_2(FE_OFN2_RST_M_2), 
	.RX_CLK_scan__L3_N1(RX_CLK_scan__L3_N1), 
	.RX_CLK_scan__L3_N2(RX_CLK_scan__L3_N2), 
	.RX_CLK_scan__L3_N3(RX_CLK_scan__L3_N3), 
	.TX_CLK_scan__L3_N1(TX_CLK_scan__L3_N1));
   RST_SYNC_NUM_STAGES2_test_0 U5 (.RST(RST_M_0), 
	.CLK(REF_CLK_scan__L3_N0), 
	.SYNC_RST(SYNC_RST_REF), 
	.test_si(n13), 
	.test_se(n19), 
	.REF_CLK_scan__L3_N3(REF_CLK_scan__L3_N3));
   RST_SYNC_NUM_STAGES2_test_1 U6 (.RST(RST_M_0), 
	.CLK(UART_CLK_scan__L12_N0), 
	.SYNC_RST(SYNC_RST_UART), 
	.test_si(SYNC_RST_REF), 
	.test_se(n20));
   Pulse_Gen_test_1 U7 (.CLK(TX_CLK_scan__L3_N1), 
	.RST(FE_OFN2_RST_M_2), 
	.LVL_SIG(busy), 
	.Pulse_SIG(RD_INC), 
	.test_si(SYNC_RST_UART), 
	.test_so(n12), 
	.test_se(n21));
   FIFO_DATA_WIDTH8_test_1 U8 (.WR_DATA({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.W_INC(TX_D_VLD), 
	.W_CLK(REF_CLK_scan__L3_N0), 
	.W_RST(RST_M_1), 
	.R_CLK(TX_CLK_scan__L3_N0), 
	.R_RST(FE_OFN2_RST_M_2), 
	.R_INC(RD_INC), 
	.RD_DATA({ F_RdData[7],
		F_RdData[6],
		F_RdData[5],
		F_RdData[4],
		F_RdData[3],
		F_RdData[2],
		F_RdData[1],
		F_RdData[0] }), 
	.FULL(F_FULL), 
	.EMPTY(F_EMPTY), 
	.test_si2(SI[0]), 
	.test_si1(n12), 
	.test_so2(n9), 
	.test_so1(n11), 
	.test_se(n25), 
	.TX_CLK_scan__L3_N1(TX_CLK_scan__L3_N1), 
	.REF_CLK_scan__L3_N2(REF_CLK_scan__L3_N2), 
	.REF_CLK_scan__L3_N3(REF_CLK_scan__L3_N3), 
	.REF_CLK_scan__L3_N4(REF_CLK_scan__L3_N4));
   Clock_Divider_test_0 U10 (.i_ref_clk(UART_CLK_scan), 
	.i_rst_n(RST_M_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ div_ratio[7],
		div_ratio[6],
		div_ratio[5],
		div_ratio[4],
		div_ratio[3],
		div_ratio[2],
		div_ratio[1],
		div_ratio[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(n18), 
	.UART_CLK_scan__L12_N0(UART_CLK_scan__L12_N0), 
	.UART_CLK_scan__L6_N0(UART_CLK_scan__L6_N0));
   Clock_Divider_test_1 U11 (.i_ref_clk(UART_CLK_scan__L12_N0), 
	.i_rst_n(RST_M_2), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		div_ratio_rx[2],
		div_ratio_rx[1],
		div_ratio_rx[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(n18), 
	.FE_OFN2_RST_M_2(FE_OFN2_RST_M_2), 
	.UART_CLK_scan__L6_N0(UART_CLK_scan__L6_N0));
   clk_div_mux U12 (.IN({ UART_CONFIG[7],
		UART_CONFIG[6],
		UART_CONFIG[5],
		UART_CONFIG[4],
		UART_CONFIG[3],
		UART_CONFIG[2] }), 
	.div_ratio_rx({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		div_ratio_rx[2],
		div_ratio_rx[1],
		div_ratio_rx[0] }));
   data_synchronizer_data_width8_test_1 du (.unsync_bus({ RX_OUT[7],
		RX_OUT[6],
		RX_OUT[5],
		RX_OUT[4],
		RX_OUT[3],
		RX_OUT[2],
		RX_OUT[1],
		RX_OUT[0] }), 
	.bus_enable(sync_en), 
	.CLK(RX_CLK_scan__L3_N2), 
	.RST(FE_OFN1_RST_M_1), 
	.sync_bus({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.enable_pulse(RX_D_VLD), 
	.test_si(n7), 
	.test_se(n19), 
	.RX_CLK_scan__L3_N3(RX_CLK_scan__L3_N3));
   mux2X1_0 M0 (.IN_0(RST), 
	.IN_1(scan_rst), 
	.SEL(n1), 
	.OUT(RST_M_0));
   mux2X1_6 M1 (.IN_0(SYNC_RST_REF), 
	.IN_1(scan_rst), 
	.SEL(n1), 
	.OUT(RST_M_1));
   mux2X1_5 M2 (.IN_0(SYNC_RST_UART), 
	.IN_1(scan_rst), 
	.SEL(n1), 
	.OUT(RST_M_2));
   mux2X1_4 M3 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L9_N0), 
	.SEL(n1), 
	.OUT(REF_CLK_scan));
   mux2X1_3 M4 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(n1), 
	.OUT(UART_CLK_scan));
   mux2X1_2 M5 (.IN_0(TX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(n1), 
	.OUT(TX_CLK_scan));
   mux2X1_1 M6 (.IN_0(RX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(n1), 
	.OUT(RX_CLK_scan));
   BUFX2M U29 (.Y(SO[0]), 
	.A(RX_P_DATA[7]));
   BUFX2M U31 (.Y(SO[2]), 
	.A(ALU_OUT[2]));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 26 17:40:48 2024
/////////////////////////////////////////////////////////////
module SYS_CTRL_data_width8_addr4_out_width16_test_1 (
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_Valid, 
	RdData, 
	RdData_Valid, 
	RX_P_DATA, 
	RX_D_VLD, 
	fifo_full, 
	ALU_FUN, 
	EN, 
	CLK_EN, 
	Address, 
	WrEn, 
	RdEn, 
	WrData, 
	TX_P_DATA, 
	TX_D_VLD, 
	clk_div_en, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN1_RST_M_1, 
	REF_CLK_scan__L3_N3);
   input CLK;
   input RST;
   input [15:0] ALU_OUT;
   input OUT_Valid;
   input [7:0] RdData;
   input RdData_Valid;
   input [7:0] RX_P_DATA;
   input RX_D_VLD;
   input fifo_full;
   output [3:0] ALU_FUN;
   output EN;
   output CLK_EN;
   output [3:0] Address;
   output WrEn;
   output RdEn;
   output [7:0] WrData;
   output [7:0] TX_P_DATA;
   output TX_D_VLD;
   output clk_div_en;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN1_RST_M_1;
   input REF_CLK_scan__L3_N3;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n135;
   wire N345;
   wire N346;
   wire N347;
   wire N348;
   wire N349;
   wire N350;
   wire N351;
   wire N352;
   wire N353;
   wire N354;
   wire N355;
   wire N356;
   wire N357;
   wire N358;
   wire N359;
   wire N360;
   wire N362;
   wire N363;
   wire N364;
   wire N365;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
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
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n77;
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
   wire n97;
   wire n98;
   wire n99;
   wire n102;
   wire n103;
   wire n104;
   wire n25;
   wire n26;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n122;
   wire n123;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
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
   wire n154;
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
   wire [31:0] current_state;
   wire [3:0] next_state;
   wire [3:0] Address_reg;
   wire [15:0] ALU_OUT_reg;

   assign clk_div_en = 1'b1 ;
   assign test_so = n132 ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND3BX2M U116 (.Y(n98), 
	.C(RX_D_VLD), 
	.B(current_state[0]), 
	.AN(n55));
   OAI2BB2X1M U140 (.Y(Address[1]), 
	.B1(n57), 
	.B0(n80), 
	.A1N(n102), 
	.A0N(Address_reg[1]));
   SDFFRQX4M \current_state_reg[3]  (.SI(n133), 
	.SE(n163), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(REF_CLK_scan__L3_N3));
   AOI221XLM U27 (.Y(n103), 
	.C0(n127), 
	.B1(Address_reg[0]), 
	.B0(n104), 
	.A1(n122), 
	.A0(n131));
   NOR2X2M U28 (.Y(ALU_FUN[3]), 
	.B(n130), 
	.A(n74));
   NOR2X2M U29 (.Y(ALU_FUN[1]), 
	.B(n130), 
	.A(n80));
   AND3X2M U31 (.Y(n26), 
	.C(n126), 
	.B(n113), 
	.A(n25));
   NAND3X1M U34 (.Y(n58), 
	.C(RX_P_DATA[6]), 
	.B(n72), 
	.A(RX_P_DATA[2]));
   NAND3X1M U36 (.Y(n65), 
	.C(RX_P_DATA[5]), 
	.B(n72), 
	.A(RX_P_DATA[1]));
   AOI211X2M U38 (.Y(n70), 
	.C0(current_state[3]), 
	.B0(n129), 
	.A1(RX_D_VLD), 
	.A0(current_state[2]));
   CLKBUFX2M U63 (.Y(Address[2]), 
	.A(n135));
   OAI2BB2X1M U64 (.Y(n135), 
	.B1(n57), 
	.B0(n79), 
	.A1N(n102), 
	.A0N(Address_reg[2]));
   NOR2BX2M U65 (.Y(RdEn), 
	.B(n57), 
	.AN(RX_D_VLD));
   NOR2X2M U66 (.Y(ALU_FUN[0]), 
	.B(n130), 
	.A(n81));
   NOR2X2M U67 (.Y(ALU_FUN[2]), 
	.B(n130), 
	.A(n79));
   NAND3X2M U68 (.Y(n82), 
	.C(n167), 
	.B(n134), 
	.A(n53));
   CLKINVX2M U70 (.Y(Address[0]), 
	.A(n103));
   NAND2X2M U71 (.Y(n74), 
	.B(RX_D_VLD), 
	.A(RX_P_DATA[3]));
   INVX2M U72 (.Y(n117), 
	.A(RX_P_DATA[4]));
   INVX2M U73 (.Y(WrEn), 
	.A(n75));
   CLKNAND2X2M U74 (.Y(n75), 
	.B(n77), 
	.A(RX_D_VLD));
   CLKINVX2M U75 (.Y(n111), 
	.A(n92));
   INVX2M U76 (.Y(n128), 
	.A(n77));
   INVX2M U77 (.Y(n131), 
	.A(n57));
   INVX2M U78 (.Y(n123), 
	.A(RX_D_VLD));
   INVX2M U79 (.Y(n112), 
	.A(fifo_full));
   CLKINVX2M U80 (.Y(EN), 
	.A(n47));
   CLKNAND2X2M U83 (.Y(n57), 
	.B(n132), 
	.A(n95));
   NOR2X2M U84 (.Y(n83), 
	.B(n129), 
	.A(n134));
   NAND2X2M U85 (.Y(n50), 
	.B(n53), 
	.A(n83));
   NAND3X2M U86 (.Y(n56), 
	.C(n83), 
	.B(n132), 
	.A(n133));
   NAND3X2M U87 (.Y(n77), 
	.C(n82), 
	.B(n50), 
	.A(n56));
   NOR2X2M U88 (.Y(WrData[0]), 
	.B(n81), 
	.A(n128));
   NOR2X2M U89 (.Y(WrData[4]), 
	.B(n75), 
	.A(n117));
   NOR2X2M U90 (.Y(WrData[5]), 
	.B(n75), 
	.A(n116));
   NOR2X2M U91 (.Y(WrData[6]), 
	.B(n75), 
	.A(n115));
   NOR2X2M U92 (.Y(WrData[7]), 
	.B(n75), 
	.A(n154));
   CLKINVX2M U93 (.Y(n110), 
	.A(n93));
   NOR2BX2M U94 (.Y(n102), 
	.B(n82), 
	.AN(RX_D_VLD));
   NAND2X2M U95 (.Y(n92), 
	.B(n112), 
	.A(n64));
   NAND3X2M U96 (.Y(TX_D_VLD), 
	.C(n93), 
	.B(n94), 
	.A(n92));
   NOR2X2M U97 (.Y(n104), 
	.B(n82), 
	.A(n123));
   NOR2X2M U99 (.Y(WrData[1]), 
	.B(n80), 
	.A(n128));
   NOR2X2M U100 (.Y(WrData[2]), 
	.B(n79), 
	.A(n128));
   NOR2X2M U101 (.Y(WrData[3]), 
	.B(n128), 
	.A(n74));
   CLKINVX2M U102 (.Y(n109), 
	.A(n94));
   NAND2X2M U103 (.Y(n47), 
	.B(n99), 
	.A(RX_D_VLD));
   OAI211X2M U104 (.Y(n54), 
	.C0(n57), 
	.B0(n56), 
	.A1(n55), 
	.A0(n129));
   NAND3X2M U105 (.Y(n55), 
	.C(n134), 
	.B(n132), 
	.A(n133));
   NOR2X2M U106 (.Y(n62), 
	.B(n65), 
	.A(n117));
   NAND2X2M U108 (.Y(next_state[3]), 
	.B(n48), 
	.A(n47));
   NAND2X2M U109 (.Y(next_state[0]), 
	.B(n26), 
	.A(n67));
   INVX2M U110 (.Y(n126), 
	.A(n70));
   NOR2X2M U111 (.Y(N362), 
	.B(n98), 
	.A(n120));
   NOR2X2M U112 (.Y(N363), 
	.B(n98), 
	.A(n119));
   NOR2X2M U113 (.Y(N364), 
	.B(n98), 
	.A(n118));
   CLKINVX2M U114 (.Y(n130), 
	.A(n99));
   NOR2X2M U117 (.Y(n53), 
	.B(n133), 
	.A(current_state[3]));
   CLKINVX2M U118 (.Y(n129), 
	.A(current_state[0]));
   CLKINVX2M U119 (.Y(n134), 
	.A(current_state[1]));
   OAI2BB2X1M U120 (.Y(Address[3]), 
	.B1(n57), 
	.B0(n74), 
	.A1N(n102), 
	.A0N(Address_reg[3]));
   OAI2BB1X2M U121 (.Y(TX_P_DATA[0]), 
	.B0(n91), 
	.A1N(n109), 
	.A0N(RdData[0]));
   AOI22X1M U122 (.Y(n91), 
	.B1(n111), 
	.B0(ALU_OUT_reg[0]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[8]));
   OAI2BB1X2M U123 (.Y(TX_P_DATA[1]), 
	.B0(n90), 
	.A1N(n109), 
	.A0N(RdData[1]));
   AOI22X1M U124 (.Y(n90), 
	.B1(n111), 
	.B0(ALU_OUT_reg[1]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[9]));
   OAI2BB1X2M U125 (.Y(TX_P_DATA[2]), 
	.B0(n89), 
	.A1N(n109), 
	.A0N(RdData[2]));
   AOI22X1M U126 (.Y(n89), 
	.B1(n111), 
	.B0(ALU_OUT_reg[2]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[10]));
   OAI2BB1X2M U127 (.Y(TX_P_DATA[3]), 
	.B0(n88), 
	.A1N(n109), 
	.A0N(RdData[3]));
   AOI22X1M U128 (.Y(n88), 
	.B1(n111), 
	.B0(ALU_OUT_reg[3]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[11]));
   OAI2BB1X2M U129 (.Y(TX_P_DATA[4]), 
	.B0(n87), 
	.A1N(n109), 
	.A0N(RdData[4]));
   AOI22X1M U130 (.Y(n87), 
	.B1(n111), 
	.B0(ALU_OUT_reg[4]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[12]));
   OAI2BB1X2M U131 (.Y(TX_P_DATA[5]), 
	.B0(n86), 
	.A1N(n109), 
	.A0N(RdData[5]));
   AOI22X1M U132 (.Y(n86), 
	.B1(n111), 
	.B0(ALU_OUT_reg[5]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[13]));
   OAI2BB1X2M U133 (.Y(TX_P_DATA[6]), 
	.B0(n85), 
	.A1N(n109), 
	.A0N(RdData[6]));
   AOI22X1M U134 (.Y(n85), 
	.B1(n111), 
	.B0(ALU_OUT_reg[6]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[14]));
   OAI2BB1X2M U135 (.Y(TX_P_DATA[7]), 
	.B0(n84), 
	.A1N(n109), 
	.A0N(RdData[7]));
   AOI22X1M U136 (.Y(n84), 
	.B1(n111), 
	.B0(ALU_OUT_reg[7]), 
	.A1(n110), 
	.A0(ALU_OUT_reg[15]));
   INVX2M U137 (.Y(n122), 
	.A(n81));
   INVX2M U138 (.Y(n127), 
	.A(n50));
   CLKINVX2M U139 (.Y(n132), 
	.A(current_state[3]));
   NAND4X2M U141 (.Y(n94), 
	.D(n97), 
	.C(RdData_Valid), 
	.B(n53), 
	.A(current_state[1]));
   NOR2X2M U142 (.Y(n97), 
	.B(current_state[0]), 
	.A(fifo_full));
   NAND2X2M U143 (.Y(n79), 
	.B(RX_D_VLD), 
	.A(RX_P_DATA[2]));
   NAND3X2M U144 (.Y(n93), 
	.C(n112), 
	.B(current_state[3]), 
	.A(n95));
   INVX2M U146 (.Y(n113), 
	.A(n66));
   OAI31X1M U147 (.Y(n66), 
	.B0(n56), 
	.A2(n58), 
	.A1(RX_P_DATA[0]), 
	.A0(n73));
   NAND3X2M U148 (.Y(n73), 
	.C(n119), 
	.B(n116), 
	.A(n117));
   NOR4X1M U149 (.Y(n72), 
	.D(n154), 
	.C(n55), 
	.B(n74), 
	.A(current_state[0]));
   NAND3X2M U150 (.Y(n71), 
	.C(n118), 
	.B(n115), 
	.A(n117));
   NAND2X2M U151 (.Y(n81), 
	.B(RX_D_VLD), 
	.A(RX_P_DATA[0]));
   NAND2X2M U152 (.Y(n80), 
	.B(RX_D_VLD), 
	.A(RX_P_DATA[1]));
   NAND3X2M U153 (.Y(next_state[1]), 
	.C(n113), 
	.B(n61), 
	.A(n60));
   NAND3X2M U154 (.Y(n60), 
	.C(current_state[1]), 
	.B(n132), 
	.A(n123));
   AOI211X2M U155 (.Y(n61), 
	.C0(n64), 
	.B0(n131), 
	.A1(n63), 
	.A0(n62));
   NOR3X2M U156 (.Y(n63), 
	.C(RX_P_DATA[2]), 
	.B(RX_P_DATA[6]), 
	.A(n120));
   NAND3X2M U158 (.Y(next_state[2]), 
	.C(n49), 
	.B(n51), 
	.A(n50));
   AOI22X1M U159 (.Y(n51), 
	.B1(n54), 
	.B0(RX_D_VLD), 
	.A1(n123), 
	.A0(n53));
   NAND3BX2M U161 (.Y(n67), 
	.C(OUT_Valid), 
	.B(n129), 
	.AN(n48));
   NAND3X2M U162 (.Y(n48), 
	.C(current_state[3]), 
	.B(n133), 
	.A(n134));
   NOR2BX2M U163 (.Y(N365), 
	.B(n98), 
	.AN(RX_P_DATA[3]));
   INVX2M U164 (.Y(n120), 
	.A(RX_P_DATA[0]));
   INVX2M U165 (.Y(n118), 
	.A(RX_P_DATA[2]));
   INVX2M U166 (.Y(n119), 
	.A(RX_P_DATA[1]));
   INVX2M U167 (.Y(n115), 
	.A(RX_P_DATA[6]));
   INVX2M U168 (.Y(n116), 
	.A(RX_P_DATA[5]));
   NOR2BX2M U170 (.Y(N345), 
	.B(n67), 
	.AN(ALU_OUT[0]));
   NOR2BX2M U171 (.Y(N346), 
	.B(n67), 
	.AN(ALU_OUT[1]));
   NOR2BX2M U172 (.Y(N347), 
	.B(n67), 
	.AN(ALU_OUT[2]));
   NOR2BX2M U173 (.Y(N348), 
	.B(n67), 
	.AN(ALU_OUT[3]));
   NOR2BX2M U174 (.Y(N349), 
	.B(n67), 
	.AN(ALU_OUT[4]));
   NOR2BX2M U175 (.Y(N350), 
	.B(n67), 
	.AN(ALU_OUT[5]));
   NOR2BX2M U176 (.Y(N351), 
	.B(n67), 
	.AN(ALU_OUT[6]));
   NOR2BX2M U177 (.Y(N352), 
	.B(n67), 
	.AN(ALU_OUT[7]));
   NOR2BX2M U178 (.Y(N353), 
	.B(n67), 
	.AN(ALU_OUT[8]));
   NOR2BX2M U179 (.Y(N354), 
	.B(n67), 
	.AN(ALU_OUT[9]));
   NOR2BX2M U180 (.Y(N355), 
	.B(n67), 
	.AN(ALU_OUT[10]));
   NOR2BX2M U181 (.Y(N356), 
	.B(n67), 
	.AN(ALU_OUT[11]));
   NOR2BX2M U182 (.Y(N357), 
	.B(n67), 
	.AN(ALU_OUT[12]));
   NOR2BX2M U183 (.Y(N358), 
	.B(n67), 
	.AN(ALU_OUT[13]));
   NOR2BX2M U184 (.Y(N359), 
	.B(n67), 
	.AN(ALU_OUT[14]));
   NOR2BX2M U185 (.Y(N360), 
	.B(n67), 
	.AN(ALU_OUT[15]));
   OAI21X2M U186 (.Y(CLK_EN), 
	.B0(n130), 
	.A1(n48), 
	.A0(current_state[0]));
   INVXLM U187 (.Y(n138), 
	.A(test_se));
   INVXLM U188 (.Y(n139), 
	.A(n138));
   DLY1X1M U189 (.Y(n140), 
	.A(n151));
   DLY1X1M U190 (.Y(n141), 
	.A(n160));
   DLY1X1M U191 (.Y(n142), 
	.A(n161));
   DLY1X1M U192 (.Y(n143), 
	.A(n162));
   DLY1X1M U193 (.Y(n144), 
	.A(n163));
   DLY1X1M U194 (.Y(n145), 
	.A(n166));
   DLY1X1M U195 (.Y(n146), 
	.A(n156));
   DLY1X1M U196 (.Y(n147), 
	.A(n157));
   DLY1X1M U197 (.Y(n148), 
	.A(n140));
   DLY1X1M U198 (.Y(n149), 
	.A(n159));
   DLY1X1M U199 (.Y(n150), 
	.A(n165));
   DLY1X1M U200 (.Y(n151), 
	.A(n141));
   INVXLM U203 (.Y(n154), 
	.A(RX_P_DATA[7]));
   DLY1X1M U205 (.Y(n156), 
	.A(n142));
   DLY1X1M U206 (.Y(n157), 
	.A(n143));
   DLY1X1M U207 (.Y(n158), 
	.A(n151));
   DLY1X1M U208 (.Y(n159), 
	.A(n161));
   DLY1X1M U209 (.Y(n160), 
	.A(n139));
   DLY1X1M U210 (.Y(n161), 
	.A(n141));
   DLY1X1M U211 (.Y(n162), 
	.A(n160));
   DLY1X1M U212 (.Y(n163), 
	.A(n143));
   DLY1X1M U213 (.Y(n164), 
	.A(n140));
   DLY1X1M U215 (.Y(n166), 
	.A(n142));
   INVXLM U216 (.Y(n167), 
	.A(n129));
   SDFFRQX1M \Address_reg_reg[2]  (.SI(Address_reg[1]), 
	.SE(n146), 
	.RN(RST), 
	.Q(Address_reg[2]), 
	.D(N364), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \Address_reg_reg[1]  (.SI(Address_reg[0]), 
	.SE(n159), 
	.RN(RST), 
	.Q(Address_reg[1]), 
	.D(N363), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \Address_reg_reg[0]  (.SI(ALU_OUT_reg[15]), 
	.SE(n157), 
	.RN(RST), 
	.Q(Address_reg[0]), 
	.D(N362), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \Address_reg_reg[3]  (.SI(Address_reg[2]), 
	.SE(n148), 
	.RN(RST), 
	.Q(Address_reg[3]), 
	.D(N365), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \ALU_OUT_reg_reg[15]  (.SI(ALU_OUT_reg[14]), 
	.SE(n145), 
	.RN(RST), 
	.Q(ALU_OUT_reg[15]), 
	.D(N360), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[14]  (.SI(ALU_OUT_reg[13]), 
	.SE(n164), 
	.RN(RST), 
	.Q(ALU_OUT_reg[14]), 
	.D(N359), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[13]  (.SI(ALU_OUT_reg[12]), 
	.SE(n156), 
	.RN(RST), 
	.Q(ALU_OUT_reg[13]), 
	.D(N358), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[12]  (.SI(ALU_OUT_reg[11]), 
	.SE(n144), 
	.RN(RST), 
	.Q(ALU_OUT_reg[12]), 
	.D(N357), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[11]  (.SI(ALU_OUT_reg[10]), 
	.SE(n164), 
	.RN(RST), 
	.Q(ALU_OUT_reg[11]), 
	.D(N356), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[10]  (.SI(ALU_OUT_reg[9]), 
	.SE(n144), 
	.RN(RST), 
	.Q(ALU_OUT_reg[10]), 
	.D(N355), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[9]  (.SI(ALU_OUT_reg[8]), 
	.SE(n145), 
	.RN(RST), 
	.Q(ALU_OUT_reg[9]), 
	.D(N354), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[8]  (.SI(ALU_OUT_reg[7]), 
	.SE(n150), 
	.RN(RST), 
	.Q(ALU_OUT_reg[8]), 
	.D(N353), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[7]  (.SI(ALU_OUT_reg[6]), 
	.SE(n147), 
	.RN(RST), 
	.Q(ALU_OUT_reg[7]), 
	.D(N352), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[6]  (.SI(ALU_OUT_reg[5]), 
	.SE(n150), 
	.RN(RST), 
	.Q(ALU_OUT_reg[6]), 
	.D(N351), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[5]  (.SI(ALU_OUT_reg[4]), 
	.SE(n148), 
	.RN(RST), 
	.Q(ALU_OUT_reg[5]), 
	.D(N350), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[4]  (.SI(ALU_OUT_reg[3]), 
	.SE(n149), 
	.RN(RST), 
	.Q(ALU_OUT_reg[4]), 
	.D(N349), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[3]  (.SI(ALU_OUT_reg[2]), 
	.SE(n146), 
	.RN(RST), 
	.Q(ALU_OUT_reg[3]), 
	.D(N348), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[2]  (.SI(ALU_OUT_reg[1]), 
	.SE(n149), 
	.RN(RST), 
	.Q(ALU_OUT_reg[2]), 
	.D(N347), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[1]  (.SI(ALU_OUT_reg[0]), 
	.SE(n147), 
	.RN(RST), 
	.Q(ALU_OUT_reg[1]), 
	.D(N346), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg_reg[0]  (.SI(test_si), 
	.SE(n158), 
	.RN(RST), 
	.Q(ALU_OUT_reg[0]), 
	.D(N345), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX4M \current_state_reg[0]  (.SI(Address_reg[3]), 
	.SE(n158), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX4M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(n166), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFSRX2M \current_state_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n134), 
	.SE(n165), 
	.RN(FE_OFN1_RST_M_1), 
	.QN(n133), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(REF_CLK_scan__L3_N3));
   NOR2X2M U3 (.Y(n59), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   NAND4BX1M U4 (.Y(n49), 
	.D(n59), 
	.C(RX_P_DATA[0]), 
	.B(RX_P_DATA[4]), 
	.AN(n58));
   NOR3X2M U5 (.Y(n95), 
	.C(n134), 
	.B(current_state[2]), 
	.A(current_state[0]));
   NOR4X1M U6 (.Y(n64), 
	.D(current_state[2]), 
	.C(current_state[1]), 
	.B(n132), 
	.A(n129));
   BUFX2M U7 (.Y(n165), 
	.A(n162));
   NOR3BX2M U8 (.Y(n99), 
	.C(current_state[1]), 
	.B(current_state[0]), 
	.AN(n53));
   OR3X1M U9 (.Y(n25), 
	.C(n65), 
	.B(RX_P_DATA[0]), 
	.A(n71));
endmodule

module Register_File_addr4_width8_test_1 (
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN1_RST_M_1, 
	REF_CLK_scan__L3_N1, 
	REF_CLK_scan__L3_N3);
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN1_RST_M_1;
   input REF_CLK_scan__L3_N1;
   input REF_CLK_scan__L3_N3;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire N11;
   wire N12;
   wire N13;
   wire n25;
   wire n26;
   wire n27;
   wire n298;
   wire n28;
   wire n301;
   wire n29;
   wire \Reg_File[7][6] ;
   wire \Reg_File[7][5] ;
   wire \Reg_File[7][4] ;
   wire \Reg_File[7][3] ;
   wire \Reg_File[7][2] ;
   wire \Reg_File[7][1] ;
   wire \Reg_File[7][0] ;
   wire \Reg_File[6][7] ;
   wire \Reg_File[6][6] ;
   wire \Reg_File[6][5] ;
   wire \Reg_File[6][4] ;
   wire \Reg_File[6][3] ;
   wire \Reg_File[6][2] ;
   wire \Reg_File[6][1] ;
   wire \Reg_File[6][0] ;
   wire \Reg_File[5][7] ;
   wire \Reg_File[5][6] ;
   wire \Reg_File[5][5] ;
   wire \Reg_File[5][4] ;
   wire \Reg_File[5][3] ;
   wire \Reg_File[5][2] ;
   wire \Reg_File[5][1] ;
   wire \Reg_File[5][0] ;
   wire \Reg_File[4][7] ;
   wire \Reg_File[4][6] ;
   wire \Reg_File[4][5] ;
   wire \Reg_File[4][4] ;
   wire \Reg_File[4][3] ;
   wire \Reg_File[4][2] ;
   wire \Reg_File[4][1] ;
   wire \Reg_File[4][0] ;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire n85;
   wire n86;
   wire n88;
   wire n90;
   wire n91;
   wire n92;
   wire n94;
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
   wire n74;
   wire n76;
   wire n78;
   wire n80;
   wire n82;
   wire n84;
   wire n89;
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
   wire n265;
   wire n266;
   wire n270;
   wire n272;
   wire n276;
   wire n278;
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
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
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
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSQX2M \Reg_File_reg[2][7]  (.SN(FE_OFN1_RST_M_1), 
	.SI(REG2[6]), 
	.SE(n379), 
	.Q(n301), 
	.D(n130), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n345), 
	.RN(RST), 
	.Q(RdData[7]), 
	.D(n105), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n358), 
	.RN(RST), 
	.Q(RdData[6]), 
	.D(n104), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n358), 
	.RN(RST), 
	.Q(RdData[5]), 
	.D(n103), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n378), 
	.RN(RST), 
	.Q(RdData[4]), 
	.D(n102), 
	.CK(CLK));
   SDFFRQX1M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n346), 
	.RN(RST), 
	.Q(RdData[3]), 
	.D(n101), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n338), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(RdData[2]), 
	.D(n100), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n357), 
	.RN(RST), 
	.Q(RdData[1]), 
	.D(n99), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(n357), 
	.RN(RST), 
	.Q(RdData[0]), 
	.D(n98), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \Reg_File_reg[5][7]  (.SI(\Reg_File[5][6] ), 
	.SE(n377), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][7] ), 
	.D(n154), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][6]  (.SI(\Reg_File[5][5] ), 
	.SE(n342), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][6] ), 
	.D(n153), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][5]  (.SI(\Reg_File[5][4] ), 
	.SE(n342), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][5] ), 
	.D(n152), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][4]  (.SI(\Reg_File[5][3] ), 
	.SE(n356), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][4] ), 
	.D(n151), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][3]  (.SI(\Reg_File[5][2] ), 
	.SE(n356), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][3] ), 
	.D(n150), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][2]  (.SI(\Reg_File[5][1] ), 
	.SE(n375), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][2] ), 
	.D(n149), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][1]  (.SI(\Reg_File[5][0] ), 
	.SE(n341), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][1] ), 
	.D(n148), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[5][0]  (.SI(\Reg_File[4][7] ), 
	.SE(n341), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[5][0] ), 
	.D(n147), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][7]  (.SI(\Reg_File[4][6] ), 
	.SE(n355), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][7] ), 
	.D(n146), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][6]  (.SI(\Reg_File[4][5] ), 
	.SE(n355), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][6] ), 
	.D(n145), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][5]  (.SI(\Reg_File[4][4] ), 
	.SE(n373), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][5] ), 
	.D(n144), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][4]  (.SI(\Reg_File[4][3] ), 
	.SE(n344), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][4] ), 
	.D(n143), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][3]  (.SI(\Reg_File[4][2] ), 
	.SE(n343), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][3] ), 
	.D(n142), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][2]  (.SI(\Reg_File[4][1] ), 
	.SE(n354), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][2] ), 
	.D(n141), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][1]  (.SI(\Reg_File[4][0] ), 
	.SE(n354), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][1] ), 
	.D(n140), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[4][0]  (.SI(REG3[7]), 
	.SE(n372), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[4][0] ), 
	.D(n139), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][7]  (.SI(\Reg_File[7][6] ), 
	.SE(n333), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(test_so), 
	.D(n170), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][6]  (.SI(\Reg_File[7][5] ), 
	.SE(n338), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][6] ), 
	.D(n169), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][5]  (.SI(\Reg_File[7][4] ), 
	.SE(n353), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][5] ), 
	.D(n168), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][4]  (.SI(\Reg_File[7][3] ), 
	.SE(n353), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][4] ), 
	.D(n167), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][3]  (.SI(\Reg_File[7][2] ), 
	.SE(n371), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][3] ), 
	.D(n166), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][2]  (.SI(\Reg_File[7][1] ), 
	.SE(n337), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][2] ), 
	.D(n165), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][1]  (.SI(\Reg_File[7][0] ), 
	.SE(n337), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][1] ), 
	.D(n164), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[7][0]  (.SI(\Reg_File[6][7] ), 
	.SE(n352), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[7][0] ), 
	.D(n163), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][7]  (.SI(\Reg_File[6][6] ), 
	.SE(n352), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][7] ), 
	.D(n162), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][6]  (.SI(\Reg_File[6][5] ), 
	.SE(n369), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][6] ), 
	.D(n161), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][5]  (.SI(\Reg_File[6][4] ), 
	.SE(n336), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][5] ), 
	.D(n160), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][4]  (.SI(\Reg_File[6][3] ), 
	.SE(n336), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][4] ), 
	.D(n159), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][3]  (.SI(\Reg_File[6][2] ), 
	.SE(n351), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][3] ), 
	.D(n158), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][2]  (.SI(\Reg_File[6][1] ), 
	.SE(n351), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][2] ), 
	.D(n157), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][1]  (.SI(\Reg_File[6][0] ), 
	.SE(n367), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][1] ), 
	.D(n156), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX1M \Reg_File_reg[6][0]  (.SI(\Reg_File[5][7] ), 
	.SE(n340), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(\Reg_File[6][0] ), 
	.D(n155), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[1][3]  (.SI(REG1[2]), 
	.SE(n339), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG1[3]), 
	.D(n118), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[1][2]  (.SI(REG1[1]), 
	.SE(n350), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG1[2]), 
	.D(n117), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[2][2]  (.SI(REG2[1]), 
	.SE(n350), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG2[2]), 
	.D(n125), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[2][4]  (.SI(REG2[3]), 
	.SE(n366), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG2[4]), 
	.D(n127), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[2][3]  (.SI(REG2[2]), 
	.SE(n335), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG2[3]), 
	.D(n126), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[3][6]  (.SI(REG3[5]), 
	.SE(n335), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG3[6]), 
	.D(n137), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSQX4M \Reg_File_reg[2][0]  (.SN(FE_OFN1_RST_M_1), 
	.SI(REG1[7]), 
	.SE(n360), 
	.Q(REG2[0]), 
	.D(n123), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[3][1]  (.SI(REG3[0]), 
	.SE(n349), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n132), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[3][2]  (.SI(REG3[1]), 
	.SE(n349), 
	.RN(RST), 
	.Q(REG3[2]), 
	.D(n133), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX2M \Reg_File_reg[3][0]  (.SI(REG2[7]), 
	.SE(n362), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG3[0]), 
	.D(n131), 
	.CK(CLK));
   SDFFRQX4M \Reg_File_reg[3][7]  (.SI(REG3[6]), 
	.SE(n364), 
	.RN(RST), 
	.Q(REG3[7]), 
	.D(n138), 
	.CK(CLK));
   SDFFSQX4M \Reg_File_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(n360), 
	.Q(REG3[5]), 
	.D(n136), 
	.CK(CLK));
   SDFFRQX4M \Reg_File_reg[3][4]  (.SI(REG3[3]), 
	.SE(n333), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG3[4]), 
	.D(n135), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX4M \Reg_File_reg[3][3]  (.SI(REG3[2]), 
	.SE(n334), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG3[3]), 
	.D(n134), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX2M \Reg_File_reg[0][0]  (.SI(RdData[7]), 
	.SE(n348), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG0[0]), 
	.D(n107), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFRQX2M \Reg_File_reg[1][6]  (.SI(REG1[5]), 
	.SE(n314), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG1[6]), 
	.D(n121), 
	.CK(CLK));
   SDFFRQX2M \Reg_File_reg[1][5]  (.SI(REG1[4]), 
	.SE(n310), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(n298), 
	.D(n120), 
	.CK(CLK));
   CLKINVX1M U77 (.Y(REG1[4]), 
	.A(n74));
   INVXLM U78 (.Y(n76), 
	.A(n298));
   CLKINVX1M U79 (.Y(REG1[5]), 
	.A(n76));
   CLKINVX1M U81 (.Y(REG1[0]), 
	.A(n78));
   CLKINVX1M U83 (.Y(REG2[5]), 
	.A(n80));
   CLKINVX1M U85 (.Y(REG2[6]), 
	.A(n82));
   MX4XLM U86 (.Y(n250), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4XLM U87 (.Y(n260), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4XLM U88 (.Y(n252), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4XLM U89 (.Y(n254), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4XLM U90 (.Y(n256), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4XLM U91 (.Y(n258), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4XLM U92 (.Y(n248), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   CLKINVX1M U94 (.Y(REG1[7]), 
	.A(n84));
   INVXLM U95 (.Y(n89), 
	.A(n301));
   CLKINVX1M U96 (.Y(REG2[7]), 
	.A(n89));
   CLKAND2X2M U170 (.Y(n94), 
	.B(n92), 
	.A(N13));
   INVX2M U171 (.Y(n292), 
	.A(N12));
   INVX2M U172 (.Y(n294), 
	.A(N11));
   NOR2BX2M U173 (.Y(n92), 
	.B(Address[3]), 
	.AN(n86));
   CLKINVX2M U174 (.Y(n296), 
	.A(n85));
   NOR2BX2M U175 (.Y(n86), 
	.B(RdEn), 
	.AN(WrEn));
   CLKINVX2M U176 (.Y(n272), 
	.A(n244));
   CLKINVX2M U178 (.Y(n278), 
	.A(n243));
   NAND2BX2M U181 (.Y(n85), 
	.B(RdEn), 
	.AN(WrEn));
   AND3X2M U187 (.Y(n243), 
	.C(n88), 
	.B(n292), 
	.A(n294));
   CLKINVX2M U188 (.Y(n276), 
	.A(n245));
   CLKINVX2M U190 (.Y(n270), 
	.A(n246));
   AND3X2M U192 (.Y(n244), 
	.C(n94), 
	.B(n292), 
	.A(n294));
   CLKINVX4M U193 (.Y(n263), 
	.A(n265));
   NOR2BX2M U195 (.Y(n88), 
	.B(N13), 
	.AN(n92));
   NAND3X2M U197 (.Y(n90), 
	.C(N12), 
	.B(n294), 
	.A(n88));
   NAND3X2M U199 (.Y(n91), 
	.C(N12), 
	.B(n88), 
	.A(N11));
   NAND3X2M U201 (.Y(n96), 
	.C(n94), 
	.B(n294), 
	.A(N12));
   NAND3X2M U203 (.Y(n97), 
	.C(n94), 
	.B(N11), 
	.A(N12));
   CLKBUFX2M U204 (.Y(n266), 
	.A(N12));
   AND3X2M U205 (.Y(n245), 
	.C(N11), 
	.B(n292), 
	.A(n88));
   AND3X2M U206 (.Y(n246), 
	.C(n94), 
	.B(n292), 
	.A(N11));
   CLKINVX2M U207 (.Y(n295), 
	.A(WrData[0]));
   CLKINVX2M U208 (.Y(n289), 
	.A(WrData[4]));
   CLKINVX2M U209 (.Y(n288), 
	.A(WrData[5]));
   CLKINVX2M U210 (.Y(n287), 
	.A(WrData[6]));
   CLKINVX2M U211 (.Y(n286), 
	.A(WrData[7]));
   INVX2M U212 (.Y(n265), 
	.A(N11));
   CLKINVX2M U213 (.Y(n293), 
	.A(WrData[1]));
   CLKINVX2M U214 (.Y(n291), 
	.A(WrData[2]));
   CLKINVX2M U215 (.Y(n290), 
	.A(WrData[3]));
   OAI2BB2X1M U217 (.Y(n115), 
	.B1(n276), 
	.B0(n295), 
	.A1N(n276), 
	.A0N(REG1[0]));
   OAI2BB2X1M U218 (.Y(n116), 
	.B1(n276), 
	.B0(n293), 
	.A1N(n276), 
	.A0N(REG1[1]));
   OAI2BB2X1M U219 (.Y(n117), 
	.B1(n276), 
	.B0(n291), 
	.A1N(n276), 
	.A0N(REG1[2]));
   OAI2BB2X1M U220 (.Y(n118), 
	.B1(n276), 
	.B0(n290), 
	.A1N(n276), 
	.A0N(REG1[3]));
   OAI2BB2X1M U221 (.Y(n119), 
	.B1(n276), 
	.B0(n289), 
	.A1N(n276), 
	.A0N(REG1[4]));
   OAI2BB2X1M U222 (.Y(n120), 
	.B1(n276), 
	.B0(n288), 
	.A1N(n276), 
	.A0N(REG1[5]));
   OAI2BB2X1M U223 (.Y(n121), 
	.B1(n276), 
	.B0(n287), 
	.A1N(n276), 
	.A0N(REG1[6]));
   OAI2BB2X1M U224 (.Y(n122), 
	.B1(n276), 
	.B0(n286), 
	.A1N(n276), 
	.A0N(REG1[7]));
   OAI2BB2X1M U225 (.Y(n124), 
	.B1(n90), 
	.B0(n293), 
	.A1N(n90), 
	.A0N(REG2[1]));
   OAI2BB2X1M U226 (.Y(n125), 
	.B1(n90), 
	.B0(n291), 
	.A1N(n90), 
	.A0N(REG2[2]));
   OAI2BB2X1M U227 (.Y(n126), 
	.B1(n90), 
	.B0(n290), 
	.A1N(n90), 
	.A0N(REG2[3]));
   OAI2BB2X1M U228 (.Y(n127), 
	.B1(n90), 
	.B0(n289), 
	.A1N(n90), 
	.A0N(REG2[4]));
   OAI2BB2X1M U229 (.Y(n128), 
	.B1(n90), 
	.B0(n288), 
	.A1N(n90), 
	.A0N(REG2[5]));
   OAI2BB2X1M U230 (.Y(n129), 
	.B1(n90), 
	.B0(n287), 
	.A1N(n90), 
	.A0N(REG2[6]));
   OAI2BB2X1M U231 (.Y(n131), 
	.B1(n91), 
	.B0(n295), 
	.A1N(n91), 
	.A0N(REG3[0]));
   OAI2BB2X1M U232 (.Y(n132), 
	.B1(n91), 
	.B0(n293), 
	.A1N(n91), 
	.A0N(REG3[1]));
   OAI2BB2X1M U233 (.Y(n133), 
	.B1(n91), 
	.B0(n291), 
	.A1N(n91), 
	.A0N(REG3[2]));
   OAI2BB2X1M U234 (.Y(n134), 
	.B1(n91), 
	.B0(n290), 
	.A1N(n91), 
	.A0N(REG3[3]));
   OAI2BB2X1M U235 (.Y(n135), 
	.B1(n91), 
	.B0(n289), 
	.A1N(n91), 
	.A0N(REG3[4]));
   OAI2BB2X1M U236 (.Y(n137), 
	.B1(n91), 
	.B0(n287), 
	.A1N(n91), 
	.A0N(REG3[6]));
   OAI2BB2X1M U237 (.Y(n138), 
	.B1(n91), 
	.B0(n286), 
	.A1N(n91), 
	.A0N(REG3[7]));
   OAI2BB2X1M U238 (.Y(n139), 
	.B1(n272), 
	.B0(n295), 
	.A1N(n272), 
	.A0N(\Reg_File[4][0] ));
   OAI2BB2X1M U239 (.Y(n140), 
	.B1(n272), 
	.B0(n293), 
	.A1N(n272), 
	.A0N(\Reg_File[4][1] ));
   OAI2BB2X1M U240 (.Y(n141), 
	.B1(n272), 
	.B0(n291), 
	.A1N(n272), 
	.A0N(\Reg_File[4][2] ));
   OAI2BB2X1M U241 (.Y(n142), 
	.B1(n272), 
	.B0(n290), 
	.A1N(n272), 
	.A0N(\Reg_File[4][3] ));
   OAI2BB2X1M U242 (.Y(n143), 
	.B1(n272), 
	.B0(n289), 
	.A1N(n272), 
	.A0N(\Reg_File[4][4] ));
   OAI2BB2X1M U243 (.Y(n144), 
	.B1(n272), 
	.B0(n288), 
	.A1N(n272), 
	.A0N(\Reg_File[4][5] ));
   OAI2BB2X1M U244 (.Y(n145), 
	.B1(n272), 
	.B0(n287), 
	.A1N(n272), 
	.A0N(\Reg_File[4][6] ));
   OAI2BB2X1M U245 (.Y(n146), 
	.B1(n272), 
	.B0(n286), 
	.A1N(n272), 
	.A0N(\Reg_File[4][7] ));
   OAI2BB2X1M U246 (.Y(n147), 
	.B1(n270), 
	.B0(n295), 
	.A1N(n270), 
	.A0N(\Reg_File[5][0] ));
   OAI2BB2X1M U247 (.Y(n148), 
	.B1(n270), 
	.B0(n293), 
	.A1N(n270), 
	.A0N(\Reg_File[5][1] ));
   OAI2BB2X1M U248 (.Y(n149), 
	.B1(n270), 
	.B0(n291), 
	.A1N(n270), 
	.A0N(\Reg_File[5][2] ));
   OAI2BB2X1M U249 (.Y(n150), 
	.B1(n270), 
	.B0(n290), 
	.A1N(n270), 
	.A0N(\Reg_File[5][3] ));
   OAI2BB2X1M U250 (.Y(n151), 
	.B1(n270), 
	.B0(n289), 
	.A1N(n270), 
	.A0N(\Reg_File[5][4] ));
   OAI2BB2X1M U251 (.Y(n152), 
	.B1(n270), 
	.B0(n288), 
	.A1N(n270), 
	.A0N(\Reg_File[5][5] ));
   OAI2BB2X1M U252 (.Y(n153), 
	.B1(n270), 
	.B0(n287), 
	.A1N(n270), 
	.A0N(\Reg_File[5][6] ));
   OAI2BB2X1M U253 (.Y(n154), 
	.B1(n270), 
	.B0(n286), 
	.A1N(n270), 
	.A0N(\Reg_File[5][7] ));
   OAI2BB2X1M U254 (.Y(n155), 
	.B1(n96), 
	.B0(n295), 
	.A1N(n96), 
	.A0N(\Reg_File[6][0] ));
   OAI2BB2X1M U255 (.Y(n156), 
	.B1(n96), 
	.B0(n293), 
	.A1N(n96), 
	.A0N(\Reg_File[6][1] ));
   OAI2BB2X1M U256 (.Y(n157), 
	.B1(n96), 
	.B0(n291), 
	.A1N(n96), 
	.A0N(\Reg_File[6][2] ));
   OAI2BB2X1M U257 (.Y(n158), 
	.B1(n96), 
	.B0(n290), 
	.A1N(n96), 
	.A0N(\Reg_File[6][3] ));
   OAI2BB2X1M U258 (.Y(n159), 
	.B1(n96), 
	.B0(n289), 
	.A1N(n96), 
	.A0N(\Reg_File[6][4] ));
   OAI2BB2X1M U259 (.Y(n160), 
	.B1(n96), 
	.B0(n288), 
	.A1N(n96), 
	.A0N(\Reg_File[6][5] ));
   OAI2BB2X1M U260 (.Y(n161), 
	.B1(n96), 
	.B0(n287), 
	.A1N(n96), 
	.A0N(\Reg_File[6][6] ));
   OAI2BB2X1M U261 (.Y(n162), 
	.B1(n96), 
	.B0(n286), 
	.A1N(n96), 
	.A0N(\Reg_File[6][7] ));
   OAI2BB2X1M U262 (.Y(n163), 
	.B1(n97), 
	.B0(n295), 
	.A1N(n97), 
	.A0N(\Reg_File[7][0] ));
   OAI2BB2X1M U263 (.Y(n164), 
	.B1(n97), 
	.B0(n293), 
	.A1N(n97), 
	.A0N(\Reg_File[7][1] ));
   OAI2BB2X1M U264 (.Y(n165), 
	.B1(n97), 
	.B0(n291), 
	.A1N(n97), 
	.A0N(\Reg_File[7][2] ));
   OAI2BB2X1M U265 (.Y(n166), 
	.B1(n97), 
	.B0(n290), 
	.A1N(n97), 
	.A0N(\Reg_File[7][3] ));
   OAI2BB2X1M U266 (.Y(n167), 
	.B1(n97), 
	.B0(n289), 
	.A1N(n97), 
	.A0N(\Reg_File[7][4] ));
   OAI2BB2X1M U267 (.Y(n168), 
	.B1(n97), 
	.B0(n288), 
	.A1N(n97), 
	.A0N(\Reg_File[7][5] ));
   OAI2BB2X1M U268 (.Y(n169), 
	.B1(n97), 
	.B0(n287), 
	.A1N(n97), 
	.A0N(\Reg_File[7][6] ));
   OAI2BB2X1M U269 (.Y(n170), 
	.B1(n97), 
	.B0(n286), 
	.A1N(n97), 
	.A0N(test_so));
   OAI2BB2X1M U270 (.Y(n123), 
	.B1(n90), 
	.B0(n295), 
	.A1N(n90), 
	.A0N(REG2[0]));
   OAI2BB2X1M U271 (.Y(n130), 
	.B1(n90), 
	.B0(n286), 
	.A1N(n90), 
	.A0N(REG2[7]));
   OAI2BB2X1M U272 (.Y(n136), 
	.B1(n91), 
	.B0(n288), 
	.A1N(n91), 
	.A0N(REG3[5]));
   OAI2BB2X1M U273 (.Y(n107), 
	.B1(n295), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[0]));
   OAI2BB2X1M U274 (.Y(n108), 
	.B1(n293), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[1]));
   OAI2BB2X1M U275 (.Y(n109), 
	.B1(n291), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[2]));
   OAI2BB2X1M U276 (.Y(n110), 
	.B1(n290), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[3]));
   OAI2BB2X1M U277 (.Y(n111), 
	.B1(n289), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[4]));
   OAI2BB2X1M U278 (.Y(n112), 
	.B1(n288), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[5]));
   OAI2BB2X1M U279 (.Y(n113), 
	.B1(n287), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[6]));
   OAI2BB2X1M U280 (.Y(n114), 
	.B1(n286), 
	.B0(n278), 
	.A1N(n278), 
	.A0N(REG0[7]));
   AO22X1M U281 (.Y(n98), 
	.B1(n85), 
	.B0(RdData[0]), 
	.A1(n296), 
	.A0(N34));
   MX2XLM U282 (.Y(N34), 
	.S0(N13), 
	.B(n247), 
	.A(n248));
   MX4X1M U283 (.Y(n247), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][0] ), 
	.C(\Reg_File[6][0] ), 
	.B(\Reg_File[5][0] ), 
	.A(\Reg_File[4][0] ));
   AO22X1M U284 (.Y(n99), 
	.B1(n85), 
	.B0(RdData[1]), 
	.A1(n296), 
	.A0(N33));
   MX2XLM U285 (.Y(N33), 
	.S0(N13), 
	.B(n249), 
	.A(n250));
   MX4X1M U286 (.Y(n249), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][1] ), 
	.C(\Reg_File[6][1] ), 
	.B(\Reg_File[5][1] ), 
	.A(\Reg_File[4][1] ));
   AO22X1M U287 (.Y(n100), 
	.B1(n85), 
	.B0(RdData[2]), 
	.A1(n296), 
	.A0(N32));
   MX2XLM U288 (.Y(N32), 
	.S0(N13), 
	.B(n251), 
	.A(n252));
   MX4X1M U289 (.Y(n251), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][2] ), 
	.C(\Reg_File[6][2] ), 
	.B(\Reg_File[5][2] ), 
	.A(\Reg_File[4][2] ));
   AO22X1M U290 (.Y(n101), 
	.B1(n85), 
	.B0(RdData[3]), 
	.A1(n296), 
	.A0(N31));
   MX2XLM U291 (.Y(N31), 
	.S0(N13), 
	.B(n253), 
	.A(n254));
   MX4X1M U292 (.Y(n253), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][3] ), 
	.C(\Reg_File[6][3] ), 
	.B(\Reg_File[5][3] ), 
	.A(\Reg_File[4][3] ));
   AO22X1M U293 (.Y(n102), 
	.B1(n85), 
	.B0(RdData[4]), 
	.A1(n296), 
	.A0(N30));
   MX2XLM U294 (.Y(N30), 
	.S0(N13), 
	.B(n255), 
	.A(n256));
   MX4X1M U295 (.Y(n255), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][4] ), 
	.C(\Reg_File[6][4] ), 
	.B(\Reg_File[5][4] ), 
	.A(\Reg_File[4][4] ));
   AO22X1M U296 (.Y(n103), 
	.B1(n85), 
	.B0(RdData[5]), 
	.A1(n296), 
	.A0(N29));
   MX2XLM U297 (.Y(N29), 
	.S0(N13), 
	.B(n257), 
	.A(n258));
   MX4X1M U298 (.Y(n257), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][5] ), 
	.C(\Reg_File[6][5] ), 
	.B(\Reg_File[5][5] ), 
	.A(\Reg_File[4][5] ));
   AO22X1M U299 (.Y(n104), 
	.B1(n85), 
	.B0(RdData[6]), 
	.A1(n296), 
	.A0(N28));
   MX2XLM U300 (.Y(N28), 
	.S0(N13), 
	.B(n259), 
	.A(n260));
   MX4X1M U301 (.Y(n259), 
	.S1(n266), 
	.S0(n263), 
	.D(\Reg_File[7][6] ), 
	.C(\Reg_File[6][6] ), 
	.B(\Reg_File[5][6] ), 
	.A(\Reg_File[4][6] ));
   AO22X1M U302 (.Y(n105), 
	.B1(n85), 
	.B0(RdData[7]), 
	.A1(n296), 
	.A0(N27));
   MX2XLM U303 (.Y(N27), 
	.S0(N13), 
	.B(n261), 
	.A(n262));
   MX4X1M U304 (.Y(n262), 
	.S1(n266), 
	.S0(n263), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   MX4X1M U305 (.Y(n261), 
	.S1(n266), 
	.S0(n263), 
	.D(test_so), 
	.C(\Reg_File[6][7] ), 
	.B(\Reg_File[5][7] ), 
	.A(\Reg_File[4][7] ));
   OAI2BB1X2M U306 (.Y(n106), 
	.B0(n85), 
	.A1N(RdData_Valid), 
	.A0N(n86));
   DLY1X1M U307 (.Y(n306), 
	.A(test_se));
   DLY1X1M U308 (.Y(n307), 
	.A(n306));
   DLY1X1M U309 (.Y(n308), 
	.A(n320));
   DLY1X1M U310 (.Y(n309), 
	.A(n308));
   DLY1X1M U311 (.Y(n310), 
	.A(n324));
   DLY1X1M U312 (.Y(n311), 
	.A(n325));
   INVXLM U313 (.Y(n312), 
	.A(n306));
   INVXLM U314 (.Y(n313), 
	.A(n312));
   DLY1X1M U315 (.Y(n314), 
	.A(n326));
   DLY1X1M U316 (.Y(n315), 
	.A(n326));
   DLY1X1M U317 (.Y(n316), 
	.A(n323));
   DLY1X1M U318 (.Y(n317), 
	.A(n323));
   DLY1X1M U319 (.Y(n318), 
	.A(n313));
   DLY1X1M U320 (.Y(n319), 
	.A(n307));
   DLY1X1M U321 (.Y(n320), 
	.A(n307));
   DLY1X1M U322 (.Y(n321), 
	.A(n320));
   DLY1X1M U323 (.Y(n322), 
	.A(n308));
   DLY1X1M U324 (.Y(n323), 
	.A(n318));
   DLY1X1M U325 (.Y(n324), 
	.A(n319));
   DLY1X1M U326 (.Y(n325), 
	.A(n318));
   DLY1X1M U327 (.Y(n326), 
	.A(n319));
   DLY1X1M U328 (.Y(n327), 
	.A(n361));
   DLY1X1M U329 (.Y(n328), 
	.A(n365));
   DLY1X1M U330 (.Y(n329), 
	.A(n368));
   DLY1X1M U331 (.Y(n330), 
	.A(n370));
   DLY1X1M U332 (.Y(n331), 
	.A(n374));
   DLY1X1M U333 (.Y(n332), 
	.A(n376));
   DLY1X1M U334 (.Y(n333), 
	.A(n334));
   DLY1X1M U335 (.Y(n334), 
	.A(n363));
   DLY1X1M U336 (.Y(n335), 
	.A(n328));
   DLY1X1M U337 (.Y(n336), 
	.A(n339));
   DLY1X1M U338 (.Y(n337), 
	.A(n340));
   DLY1X1M U339 (.Y(n338), 
	.A(n347));
   DLY1X1M U340 (.Y(n339), 
	.A(n329));
   DLY1X1M U341 (.Y(n340), 
	.A(n330));
   DLY1X1M U342 (.Y(n341), 
	.A(n343));
   DLY1X1M U343 (.Y(n342), 
	.A(n344));
   DLY1X1M U344 (.Y(n343), 
	.A(n331));
   DLY1X1M U345 (.Y(n344), 
	.A(n332));
   DLY1X1M U346 (.Y(n345), 
	.A(n347));
   DLY1X1M U347 (.Y(n346), 
	.A(n348));
   DLY1X1M U348 (.Y(n347), 
	.A(n328));
   DLY1X1M U349 (.Y(n348), 
	.A(n327));
   DLY1X1M U350 (.Y(n349), 
	.A(n364));
   DLY1X1M U351 (.Y(n350), 
	.A(n366));
   DLY1X1M U352 (.Y(n351), 
	.A(n367));
   DLY1X1M U353 (.Y(n352), 
	.A(n369));
   DLY1X1M U354 (.Y(n353), 
	.A(n371));
   DLY1X1M U355 (.Y(n354), 
	.A(n372));
   DLY1X1M U356 (.Y(n355), 
	.A(n373));
   DLY1X1M U357 (.Y(n356), 
	.A(n375));
   DLY1X1M U358 (.Y(n357), 
	.A(n377));
   DLY1X1M U359 (.Y(n358), 
	.A(n378));
   DLY1X1M U360 (.Y(n359), 
	.A(n362));
   DLY1X1M U361 (.Y(n360), 
	.A(n379));
   DLY1X1M U362 (.Y(n361), 
	.A(n314));
   DLY1X1M U363 (.Y(n362), 
	.A(n361));
   DLY1X1M U364 (.Y(n363), 
	.A(n315));
   DLY1X1M U365 (.Y(n364), 
	.A(n363));
   DLY1X1M U366 (.Y(n365), 
	.A(n322));
   DLY1X1M U367 (.Y(n366), 
	.A(n365));
   DLY1X1M U368 (.Y(n367), 
	.A(n370));
   DLY1X1M U369 (.Y(n368), 
	.A(n324));
   DLY1X1M U370 (.Y(n369), 
	.A(n329));
   DLY1X1M U371 (.Y(n370), 
	.A(n321));
   DLY1X1M U372 (.Y(n371), 
	.A(n330));
   DLY1X1M U373 (.Y(n372), 
	.A(n374));
   DLY1X1M U374 (.Y(n373), 
	.A(n376));
   DLY1X1M U375 (.Y(n374), 
	.A(n316));
   DLY1X1M U376 (.Y(n375), 
	.A(n331));
   DLY1X1M U377 (.Y(n376), 
	.A(n325));
   DLY1X1M U378 (.Y(n377), 
	.A(n332));
   DLY1X1M U379 (.Y(n378), 
	.A(n327));
   DLY1X1M U380 (.Y(n379), 
	.A(n368));
   SDFFSRX1M \Reg_File_reg[0][1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[0]), 
	.SE(n316), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(n27), 
	.D(n108), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[0][7]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[6]), 
	.SE(n346), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(n25), 
	.D(n114), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[0][6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[5]), 
	.SE(n315), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(n26), 
	.D(n113), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[1][7]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG1[6]), 
	.SE(n359), 
	.RN(FE_OFN1_RST_M_1), 
	.QN(n84), 
	.D(n122), 
	.CK(CLK));
   SDFFSRX1M \Reg_File_reg[1][4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG1[3]), 
	.SE(n309), 
	.RN(FE_OFN1_RST_M_1), 
	.QN(n74), 
	.D(n119), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[1][1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG1[0]), 
	.SE(n311), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(n28), 
	.D(n116), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[1][0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[7]), 
	.SE(n317), 
	.RN(FE_OFN1_RST_M_1), 
	.QN(n78), 
	.D(n115), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[2][6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG2[5]), 
	.SE(n317), 
	.RN(FE_OFN1_RST_M_1), 
	.QN(n82), 
	.D(n129), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[2][5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG2[4]), 
	.SE(n322), 
	.RN(FE_OFN1_RST_M_1), 
	.QN(n80), 
	.D(n128), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX1M \Reg_File_reg[2][1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG2[0]), 
	.SE(n359), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(n29), 
	.D(n124), 
	.CK(CLK));
   SDFFRQX1M RdData_Valid_reg (.SI(test_si), 
	.SE(n345), 
	.RN(RST), 
	.Q(RdData_Valid), 
	.D(n106), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX2M \Reg_File_reg[0][4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[3]), 
	.SE(n321), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG0[4]), 
	.D(n111), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX2M \Reg_File_reg[0][5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[4]), 
	.SE(n310), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG0[5]), 
	.D(n112), 
	.CK(CLK));
   SDFFSRX2M \Reg_File_reg[0][2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[1]), 
	.SE(n309), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG0[2]), 
	.D(n109), 
	.CK(REF_CLK_scan__L3_N1));
   SDFFSRX2M \Reg_File_reg[0][3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(REG0[2]), 
	.SE(n311), 
	.RN(FE_OFN1_RST_M_1), 
	.Q(REG0[3]), 
	.D(n110), 
	.CK(REF_CLK_scan__L3_N1));
   INVXLM U3 (.Y(n1), 
	.A(n28));
   INVX2M U4 (.Y(REG1[1]), 
	.A(n1));
   INVXLM U5 (.Y(n3), 
	.A(n27));
   INVX2M U6 (.Y(REG0[1]), 
	.A(n3));
   INVXLM U7 (.Y(n5), 
	.A(n26));
   INVX2M U8 (.Y(REG0[6]), 
	.A(n5));
   INVXLM U9 (.Y(n7), 
	.A(n25));
   INVX2M U10 (.Y(REG0[7]), 
	.A(n7));
   INVXLM U11 (.Y(n9), 
	.A(n29));
   INVX2M U12 (.Y(REG2[1]), 
	.A(n9));
endmodule

module ALU_data_width8_out_width16_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n198, 
	n219, 
	n216, 
	n168, 
	n218, 
	n217, 
	n200, 
	n202);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n198;
   input n219;
   input n216;
   input n168;
   input n218;
   input n217;
   input n200;
   input n202;

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
   wire n2;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n10;
   wire n11;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n218), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n219), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n218), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n2), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n216), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n219), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n218), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n219), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n219), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n5), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n6), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n7), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n2), 
	.A(\u_div/PartRem[2][6] ));
   CLKINVX2M U1 (.Y(n6), 
	.A(b[2]));
   CLKINVX2M U2 (.Y(n5), 
	.A(b[3]));
   NOR2X2M U6 (.Y(n11), 
	.B(b[7]), 
	.A(b[6]));
   AND3X2M U7 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n218), 
	.A(n11));
   AND2X2M U8 (.Y(quotient[4]), 
	.B(n10), 
	.A(\u_div/CryTmp[4][4] ));
   AND2X2M U9 (.Y(quotient[2]), 
	.B(n11), 
	.A(\u_div/CryTmp[2][6] ));
   AND2X2M U10 (.Y(quotient[1]), 
	.B(n216), 
	.A(\u_div/CryTmp[1][7] ));
   AND2X2M U11 (.Y(quotient[5]), 
	.B(n9), 
	.A(\u_div/CryTmp[5][3] ));
   MX2X1M U12 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   MX2X1M U13 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   MX2X1M U14 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   MX2X1M U15 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   MX2X1M U16 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   MX2X1M U17 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   MX2X1M U18 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   MX2X1M U19 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   MX2X1M U20 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MX2X1M U21 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   MX2X1M U22 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   MX2X1M U23 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   MX2X1M U24 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   MX2X1M U25 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   MX2XLM U26 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   MX2XLM U27 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   MX2XLM U28 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   MX2XLM U29 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   AND3X2M U30 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n6), 
	.A(n9));
   AND2X2M U31 (.Y(n9), 
	.B(n5), 
	.A(n10));
   OR2X2M U32 (.Y(\u_div/CryTmp[7][1] ), 
	.B(n198), 
	.A(n168));
   XNOR2X2M U33 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n198));
   XNOR2X2M U34 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n198));
   XNOR2X2M U35 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n198));
   XNOR2X2M U36 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n198));
   XNOR2X2M U37 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n198));
   XNOR2X2M U38 (.Y(\u_div/SumTmp[7][0] ), 
	.B(n168), 
	.A(n198));
   CLKINVX2M U39 (.Y(n7), 
	.A(b[1]));
   XNOR2X2M U40 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n198));
   INVX2M U41 (.Y(n2), 
	.A(b[6]));
   OR2X2M U42 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n198), 
	.A(a[5]));
   OR2X2M U43 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n198), 
	.A(a[4]));
   OR2X2M U44 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n198), 
	.A(a[3]));
   OR2X2M U45 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n198), 
	.A(a[2]));
   OR2X2M U46 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n198), 
	.A(a[1]));
   NAND2BX2M U47 (.Y(\u_div/CryTmp[0][1] ), 
	.B(b[0]), 
	.AN(a[0]));
   OR2X2M U48 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n198), 
	.A(a[6]));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U60 (.Y(quotient[7]), 
	.D(n6), 
	.C(n7), 
	.B(n9), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U61 (.Y(n10), 
	.C(n218), 
	.B(n219), 
	.A(n11));
endmodule

module ALU_data_width8_out_width16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n198, 
	n219, 
	n216, 
	n218, 
	n217, 
	n200, 
	n202);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n198;
   input n219;
   input n216;
   input n218;
   input n217;
   input n200;
   input n202;

   // Internal wires
   wire n3;
   wire n6;
   wire n7;
   wire n8;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n216), 
	.A(A[7]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n218), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n219), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   INVX2M U1 (.Y(DIFF[8]), 
	.A(carry[8]));
   XNOR2X2M U2 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n198));
   OR2X2M U3 (.Y(carry[1]), 
	.B(n198), 
	.A(A[0]));
   INVX2M U4 (.Y(n8), 
	.A(B[1]));
   INVX2M U5 (.Y(n3), 
	.A(B[6]));
   INVX2M U7 (.Y(n7), 
	.A(B[2]));
   INVX2M U8 (.Y(n6), 
	.A(B[3]));
endmodule

module ALU_data_width8_out_width16_DW01_add_0 (
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
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
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
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   XOR2X1M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_data_width8_out_width16_DW01_add_1 (
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
   wire \A[5] ;
   wire \A[4] ;
   wire \A[3] ;
   wire \A[2] ;
   wire \A[1] ;
   wire \A[0] ;
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
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;

   assign SUM[6] = A[6] ;
   assign SUM[5] = \A[5]  ;
   assign \A[5]  = A[5] ;
   assign SUM[4] = \A[4]  ;
   assign \A[4]  = A[4] ;
   assign SUM[3] = \A[3]  ;
   assign \A[3]  = A[3] ;
   assign SUM[2] = \A[2]  ;
   assign \A[2]  = A[2] ;
   assign SUM[1] = \A[1]  ;
   assign \A[1]  = A[1] ;
   assign SUM[0] = \A[0]  ;
   assign \A[0]  = A[0] ;

   OAI21BX1M U2 (.Y(n10), 
	.B0N(n14), 
	.A1(n13), 
	.A0(n12));
   AOI2BB1X2M U3 (.Y(n17), 
	.B0(n3), 
	.A1N(n4), 
	.A0N(n1));
   NOR2X2M U4 (.Y(n12), 
	.B(A[11]), 
	.A(B[11]));
   NOR2X2M U5 (.Y(n4), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X2M U6 (.Y(n16), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X2M U7 (.Y(n7), 
	.B(A[8]), 
	.A(B[8]));
   OAI2BB1XLM U8 (.Y(n9), 
	.B0(n11), 
	.A1N(A[12]), 
	.A0N(n10));
   NAND2X2M U9 (.Y(n6), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U10 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U11 (.Y(SUM[13]), 
	.B(n9), 
	.A(B[13]));
   XNOR2X1M U12 (.Y(SUM[9]), 
	.B(n2), 
	.A(n1));
   NOR2X1M U13 (.Y(n2), 
	.B(n4), 
	.A(n3));
   CLKXOR2X2M U14 (.Y(SUM[8]), 
	.B(n6), 
	.A(n5));
   NAND2BX1M U15 (.Y(n5), 
	.B(n8), 
	.AN(n7));
   OAI21X1M U16 (.Y(n11), 
	.B0(B[12]), 
	.A1(n10), 
	.A0(A[12]));
   XOR3XLM U17 (.Y(SUM[12]), 
	.C(n10), 
	.B(A[12]), 
	.A(B[12]));
   XNOR2X1M U18 (.Y(SUM[11]), 
	.B(n15), 
	.A(n13));
   NOR2X1M U19 (.Y(n15), 
	.B(n12), 
	.A(n14));
   AND2X1M U20 (.Y(n14), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U21 (.Y(n13), 
	.B0(n18), 
	.A1(n17), 
	.A0(n16));
   CLKXOR2X2M U22 (.Y(SUM[10]), 
	.B(n17), 
	.A(n19));
   AND2X1M U23 (.Y(n3), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U24 (.Y(n1), 
	.B0(n8), 
	.A1(n7), 
	.A0(n6));
   CLKNAND2X2M U25 (.Y(n8), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U26 (.Y(n19), 
	.B(n18), 
	.AN(n16));
   CLKNAND2X2M U27 (.Y(n18), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_data_width8_out_width16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n224, 
	n225, 
	n222, 
	n223, 
	n198, 
	n219, 
	n216, 
	n221, 
	n197, 
	n218, 
	n217, 
	n226, 
	n200, 
	n202, 
	n220);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n224;
   input n225;
   input n222;
   input n223;
   input n198;
   input n219;
   input n216;
   input n221;
   input n197;
   input n218;
   input n217;
   input n226;
   input n200;
   input n202;
   input n220;

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
   wire n18;
   wire n21;
   wire n22;
   wire n23;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n32;

   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
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
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
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
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n10), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n9), 
	.A(\ab[2][5] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n7), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n6), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n5), 
	.A(\ab[2][2] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
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
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
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
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n4), 
	.A(\ab[2][1] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   CLKINVX2M U10 (.Y(n22), 
	.A(B[2]));
   CLKINVX2M U11 (.Y(n21), 
	.A(B[3]));
   NOR2X2M U15 (.Y(\ab[0][6] ), 
	.B(n32), 
	.A(n18));
   NOR2X2M U16 (.Y(\ab[0][1] ), 
	.B(n32), 
	.A(n23));
   NOR2X2M U17 (.Y(\ab[1][6] ), 
	.B(n197), 
	.A(n18));
   NOR2X2M U18 (.Y(\ab[1][1] ), 
	.B(n197), 
	.A(n23));
   CLKXOR2X2M U19 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   NOR2X2M U20 (.Y(\ab[0][7] ), 
	.B(n32), 
	.A(n216));
   NOR2X2M U21 (.Y(\ab[0][2] ), 
	.B(n32), 
	.A(n22));
   NOR2X2M U22 (.Y(\ab[0][4] ), 
	.B(n32), 
	.A(n219));
   NOR2X2M U23 (.Y(\ab[0][5] ), 
	.B(n32), 
	.A(n218));
   NOR2X2M U24 (.Y(\ab[0][3] ), 
	.B(n32), 
	.A(n21));
   NOR2X2M U25 (.Y(\ab[7][7] ), 
	.B(n216), 
	.A(n220));
   NOR2X2M U26 (.Y(\ab[1][3] ), 
	.B(n197), 
	.A(n21));
   NOR2X2M U27 (.Y(\ab[1][4] ), 
	.B(n197), 
	.A(n219));
   NOR2X2M U28 (.Y(\ab[1][5] ), 
	.B(n197), 
	.A(n218));
   NOR2X2M U29 (.Y(\ab[1][2] ), 
	.B(n197), 
	.A(n22));
   NOR2X2M U30 (.Y(\ab[1][0] ), 
	.B(n197), 
	.A(n198));
   CLKXOR2X2M U31 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U32 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U33 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U34 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U35 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U36 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   CLKINVX2M U38 (.Y(n29), 
	.A(A[3]));
   CLKINVX2M U39 (.Y(n28), 
	.A(A[4]));
   CLKINVX2M U40 (.Y(n27), 
	.A(A[5]));
   CLKINVX2M U42 (.Y(n30), 
	.A(A[2]));
   AND2X2M U44 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   XOR2X1M U45 (.Y(\SUMB[1][2] ), 
	.B(\ab[0][3] ), 
	.A(\ab[1][2] ));
   AND2X2M U46 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U47 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U48 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U49 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U50 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKINVX2M U51 (.Y(n18), 
	.A(B[6]));
   CLKINVX2M U52 (.Y(n23), 
	.A(B[1]));
   CLKINVX2M U53 (.Y(n32), 
	.A(A[0]));
   XOR2X1M U54 (.Y(\SUMB[1][3] ), 
	.B(\ab[0][4] ), 
	.A(\ab[1][3] ));
   XOR2X1M U55 (.Y(\SUMB[1][4] ), 
	.B(\ab[0][5] ), 
	.A(\ab[1][4] ));
   XOR2X1M U56 (.Y(\SUMB[1][5] ), 
	.B(\ab[0][6] ), 
	.A(\ab[1][5] ));
   XOR2X1M U57 (.Y(\SUMB[1][6] ), 
	.B(\ab[0][7] ), 
	.A(\ab[1][6] ));
   XOR2X1M U58 (.Y(\SUMB[1][1] ), 
	.B(\ab[0][2] ), 
	.A(\ab[1][1] ));
   CLKXOR2X2M U59 (.Y(\A1[6] ), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   NOR2X1M U62 (.Y(\ab[7][6] ), 
	.B(n18), 
	.A(n220));
   NOR2X1M U63 (.Y(\ab[7][5] ), 
	.B(n218), 
	.A(n220));
   NOR2X1M U64 (.Y(\ab[7][4] ), 
	.B(n219), 
	.A(n220));
   NOR2X1M U65 (.Y(\ab[7][3] ), 
	.B(n21), 
	.A(n220));
   NOR2X1M U66 (.Y(\ab[7][2] ), 
	.B(n22), 
	.A(n220));
   NOR2X1M U67 (.Y(\ab[7][1] ), 
	.B(n23), 
	.A(n220));
   NOR2X1M U68 (.Y(\ab[7][0] ), 
	.B(n198), 
	.A(n220));
   NOR2X1M U69 (.Y(\ab[6][7] ), 
	.B(n221), 
	.A(n216));
   NOR2X1M U70 (.Y(\ab[6][6] ), 
	.B(n221), 
	.A(n18));
   NOR2X1M U71 (.Y(\ab[6][5] ), 
	.B(n221), 
	.A(n218));
   NOR2X1M U72 (.Y(\ab[6][4] ), 
	.B(n221), 
	.A(n219));
   NOR2X1M U73 (.Y(\ab[6][3] ), 
	.B(n221), 
	.A(n21));
   NOR2X1M U74 (.Y(\ab[6][2] ), 
	.B(n221), 
	.A(n22));
   NOR2X1M U75 (.Y(\ab[6][1] ), 
	.B(n221), 
	.A(n23));
   NOR2X1M U76 (.Y(\ab[6][0] ), 
	.B(n221), 
	.A(n198));
   NOR2X1M U77 (.Y(\ab[5][7] ), 
	.B(n27), 
	.A(n216));
   NOR2X1M U78 (.Y(\ab[5][6] ), 
	.B(n27), 
	.A(n18));
   NOR2X1M U79 (.Y(\ab[5][5] ), 
	.B(n27), 
	.A(n218));
   NOR2X1M U80 (.Y(\ab[5][4] ), 
	.B(n27), 
	.A(n219));
   NOR2X1M U81 (.Y(\ab[5][3] ), 
	.B(n27), 
	.A(n21));
   NOR2X1M U82 (.Y(\ab[5][2] ), 
	.B(n27), 
	.A(n22));
   NOR2X1M U83 (.Y(\ab[5][1] ), 
	.B(n27), 
	.A(n23));
   NOR2X1M U84 (.Y(\ab[5][0] ), 
	.B(n27), 
	.A(n198));
   NOR2X1M U85 (.Y(\ab[4][7] ), 
	.B(n28), 
	.A(n216));
   NOR2X1M U86 (.Y(\ab[4][6] ), 
	.B(n28), 
	.A(n18));
   NOR2X1M U87 (.Y(\ab[4][5] ), 
	.B(n28), 
	.A(n218));
   NOR2X1M U88 (.Y(\ab[4][4] ), 
	.B(n28), 
	.A(n219));
   NOR2X1M U89 (.Y(\ab[4][3] ), 
	.B(n28), 
	.A(n21));
   NOR2X1M U90 (.Y(\ab[4][2] ), 
	.B(n28), 
	.A(n22));
   NOR2X1M U91 (.Y(\ab[4][1] ), 
	.B(n28), 
	.A(n23));
   NOR2X1M U92 (.Y(\ab[4][0] ), 
	.B(n28), 
	.A(n198));
   NOR2X1M U93 (.Y(\ab[3][7] ), 
	.B(n29), 
	.A(n216));
   NOR2X1M U94 (.Y(\ab[3][6] ), 
	.B(n29), 
	.A(n18));
   NOR2X1M U95 (.Y(\ab[3][5] ), 
	.B(n29), 
	.A(n218));
   NOR2X1M U96 (.Y(\ab[3][4] ), 
	.B(n29), 
	.A(n219));
   NOR2X1M U97 (.Y(\ab[3][3] ), 
	.B(n29), 
	.A(n21));
   NOR2X1M U98 (.Y(\ab[3][2] ), 
	.B(n29), 
	.A(n22));
   NOR2X1M U99 (.Y(\ab[3][1] ), 
	.B(n29), 
	.A(n23));
   NOR2X1M U100 (.Y(\ab[3][0] ), 
	.B(n29), 
	.A(n198));
   NOR2X1M U101 (.Y(\ab[2][7] ), 
	.B(n30), 
	.A(n216));
   NOR2X1M U102 (.Y(\ab[2][6] ), 
	.B(n30), 
	.A(n18));
   NOR2X1M U103 (.Y(\ab[2][5] ), 
	.B(n30), 
	.A(n218));
   NOR2X1M U104 (.Y(\ab[2][4] ), 
	.B(n30), 
	.A(n219));
   NOR2X1M U105 (.Y(\ab[2][3] ), 
	.B(n30), 
	.A(n21));
   NOR2X1M U106 (.Y(\ab[2][2] ), 
	.B(n30), 
	.A(n22));
   NOR2X1M U107 (.Y(\ab[2][1] ), 
	.B(n30), 
	.A(n23));
   NOR2X1M U108 (.Y(\ab[2][0] ), 
	.B(n30), 
	.A(n198));
   NOR2X1M U109 (.Y(\ab[1][7] ), 
	.B(n197), 
	.A(n216));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n32), 
	.A(n198));
   ALU_data_width8_out_width16_DW01_add_1 FS_1 (.A({ 1'b0,
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
	.B({ n3,
		n14,
		n16,
		n13,
		n15,
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

module ALU_data_width8_out_width16_test_1 (
	A, 
	B, 
	ALU_FUN, 
	CLK, 
	RST, 
	En, 
	ALU_OUT, 
	ALU_Valid, 
	Arith_Flag, 
	Logic_Flag, 
	CMP_Flag, 
	Shift_Flag, 
	test_si2, 
	test_si1, 
	test_se);
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input CLK;
   input RST;
   input En;
   output [15:0] ALU_OUT;
   output ALU_Valid;
   output Arith_Flag;
   output Logic_Flag;
   output CMP_Flag;
   output Shift_Flag;
   input test_si2;
   input test_si1;
   input test_se;

   // Internal wires
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N63;
   wire N64;
   wire N65;
   wire N66;
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
   wire N117;
   wire N118;
   wire N119;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n22;
   wire n23;
   wire n24;
   wire n27;
   wire n29;
   wire n31;
   wire n32;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n100;
   wire n101;
   wire n103;
   wire n106;
   wire n107;
   wire n108;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n127;
   wire n129;
   wire n131;
   wire n133;
   wire n135;
   wire n137;
   wire n139;
   wire n141;
   wire n143;
   wire n145;
   wire n147;
   wire n149;
   wire n151;
   wire n153;
   wire n155;
   wire n157;
   wire n83;
   wire n90;
   wire n163;
   wire n164;
   wire n166;
   wire n168;
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

   NOR3X2M U74 (.Y(n35), 
	.C(n93), 
	.B(n215), 
	.A(n92));
   NOR3BX2M U116 (.Y(n98), 
	.C(n214), 
	.B(n215), 
	.AN(Arith_Flag));
   AOI22X1M U125 (.Y(n47), 
	.B1(n211), 
	.B0(n207), 
	.A1(n49), 
	.A0(n213));
   SDFFRQX2M ALU_Valid_reg (.SI(ALU_OUT[15]), 
	.SE(n243), 
	.RN(RST), 
	.Q(ALU_Valid), 
	.D(En), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(n245), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(n143), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(n236), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(n129), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(n239), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(n155), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(n234), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(n151), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(n237), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(n147), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(n238), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(n157), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(n235), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(n153), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(n246), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(n149), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(n233), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(n145), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(n244), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(n137), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[3]  (.SI(test_si2), 
	.SE(n237), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(n133), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(n238), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(n139), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(n235), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(n135), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(n236), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(n131), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(n233), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(n141), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[0]  (.SI(test_si1), 
	.SE(n234), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(n127), 
	.CK(CLK));
   AOI222X1M U3 (.Y(n36), 
	.C1(n35), 
	.C0(A[2]), 
	.B1(n83), 
	.B0(n206), 
	.A1(ALU_OUT[1]), 
	.A0(n215));
   XNOR2X2M U22 (.Y(n190), 
	.B(B[6]), 
	.A(n164));
   OAI31X1M U23 (.Y(n176), 
	.B0(n184), 
	.A2(n173), 
	.A1(n174), 
	.A0(n183));
   AOI211X2M U24 (.Y(n173), 
	.C0(n172), 
	.B0(n180), 
	.A1(n199), 
	.A0(n90));
   NAND3X2M U25 (.Y(n19), 
	.C(N119), 
	.B(n17), 
	.A(n212));
   OAI21X2M U26 (.Y(N119), 
	.B0(n194), 
	.A1(n178), 
	.A0(n193));
   NOR2X2M U27 (.Y(n183), 
	.B(A[3]), 
	.A(n202));
   NOR2X2M U28 (.Y(n171), 
	.B(A[0]), 
	.A(n198));
   NOR2X2M U29 (.Y(n174), 
	.B(A[2]), 
	.A(n200));
   AOI211X2M U30 (.Y(n182), 
	.C0(n179), 
	.B0(n180), 
	.A1(n197), 
	.A0(n181));
   NOR2X2M U31 (.Y(n193), 
	.B(B[7]), 
	.A(n166));
   NAND4X2M U32 (.Y(n27), 
	.D(n207), 
	.C(n214), 
	.B(En), 
	.A(n211));
   CLKINVX2M U33 (.Y(n207), 
	.A(ALU_FUN[3]));
   AOI22X1M U34 (.Y(n124), 
	.B1(n210), 
	.B0(ALU_FUN[1]), 
	.A1(n214), 
	.A0(n212));
   INVX2M U35 (.Y(n214), 
	.A(ALU_FUN[0]));
   NAND4X2M U36 (.Y(n107), 
	.D(n210), 
	.C(n213), 
	.B(n214), 
	.A(ALU_FUN[3]));
   OR2X2M U38 (.Y(n24), 
	.B(n215), 
	.A(n47));
   CLKINVX2M U39 (.Y(n208), 
	.A(n45));
   CLKINVX1M U40 (.Y(n206), 
	.A(n27));
   NOR2BX2M U44 (.Y(n14), 
	.B(n213), 
	.AN(n98));
   NOR2BX2M U45 (.Y(n41), 
	.B(n100), 
	.AN(n17));
   CLKINVX2M U46 (.Y(n205), 
	.A(n32));
   CLKNAND2X2M U47 (.Y(n31), 
	.B(n50), 
	.A(En));
   NOR2BX2M U48 (.Y(n17), 
	.B(n207), 
	.AN(n101));
   OAI2BB1X2M U49 (.Y(n50), 
	.B0(n108), 
	.A1N(n49), 
	.A0N(n213));
   NOR2X2M U50 (.Y(n45), 
	.B(n215), 
	.A(n107));
   INVX2M U51 (.Y(n212), 
	.A(n92));
   CLKINVX2M U52 (.Y(n209), 
	.A(n111));
   INVX2M U53 (.Y(n211), 
	.A(n100));
   NAND2X2M U54 (.Y(n108), 
	.B(n207), 
	.A(n212));
   NAND3X2M U55 (.Y(Logic_Flag), 
	.C(n47), 
	.B(n107), 
	.A(n108));
   INVX2M U56 (.Y(n215), 
	.A(En));
   INVX2M U57 (.Y(n204), 
	.A(n19));
   AND2X2M U58 (.Y(n115), 
	.B(n101), 
	.A(Arith_Flag));
   NOR2X2M U59 (.Y(CMP_Flag), 
	.B(n207), 
	.A(n124));
   CLKINVX2M U60 (.Y(n203), 
	.A(n114));
   OAI221X1M U61 (.Y(n103), 
	.C0(n27), 
	.B1(n220), 
	.B0(n208), 
	.A1(n24), 
	.A0(n168));
   OAI221X1M U62 (.Y(n57), 
	.C0(n27), 
	.B1(n225), 
	.B0(n208), 
	.A1(n24), 
	.A0(A[2]));
   OAI221X1M U63 (.Y(n65), 
	.C0(n27), 
	.B1(n224), 
	.B0(n208), 
	.A1(n24), 
	.A0(A[3]));
   OAI221X1M U64 (.Y(n73), 
	.C0(n27), 
	.B1(n223), 
	.B0(n208), 
	.A1(n24), 
	.A0(A[4]));
   OAI221X1M U65 (.Y(n81), 
	.C0(n27), 
	.B1(n222), 
	.B0(n208), 
	.A1(n24), 
	.A0(A[5]));
   OAI221X1M U66 (.Y(n89), 
	.C0(n27), 
	.B1(n221), 
	.B0(n208), 
	.A1(n24), 
	.A0(n164));
   OAI221X1M U67 (.Y(n56), 
	.C0(n32), 
	.B1(n208), 
	.B0(A[2]), 
	.A1(n225), 
	.A0(n31));
   OAI221X1M U68 (.Y(n64), 
	.C0(n32), 
	.B1(n208), 
	.B0(A[3]), 
	.A1(n224), 
	.A0(n31));
   OAI221X1M U69 (.Y(n72), 
	.C0(n32), 
	.B1(n208), 
	.B0(A[4]), 
	.A1(n223), 
	.A0(n31));
   OAI221X1M U70 (.Y(n80), 
	.C0(n32), 
	.B1(n208), 
	.B0(A[5]), 
	.A1(n222), 
	.A0(n31));
   OAI221X1M U71 (.Y(n88), 
	.C0(n32), 
	.B1(n208), 
	.B0(n164), 
	.A1(n221), 
	.A0(n31));
   OAI221X1M U72 (.Y(n106), 
	.C0(n32), 
	.B1(n208), 
	.B0(n168), 
	.A1(n220), 
	.A0(n31));
   CLKINVX2M U73 (.Y(n213), 
	.A(ALU_FUN[1]));
   NOR2X2M U75 (.Y(n101), 
	.B(ALU_FUN[0]), 
	.A(n215));
   NAND2X2M U76 (.Y(n100), 
	.B(ALU_FUN[2]), 
	.A(ALU_FUN[1]));
   NOR2X2M U77 (.Y(n49), 
	.B(ALU_FUN[2]), 
	.A(n93));
   NAND2X2M U78 (.Y(n93), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[0]));
   NAND2X2M U79 (.Y(n92), 
	.B(n213), 
	.A(ALU_FUN[2]));
   NAND2X2M U80 (.Y(n111), 
	.B(ALU_FUN[1]), 
	.A(n115));
   OAI32X1M U81 (.Y(Shift_Flag), 
	.B1(n93), 
	.B0(n92), 
	.A2(n207), 
	.A1(ALU_FUN[0]), 
	.A0(n100));
   INVX2M U82 (.Y(n210), 
	.A(ALU_FUN[2]));
   NOR2X2M U83 (.Y(Arith_Flag), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[2]));
   OAI21X2M U84 (.Y(n40), 
	.B0(n32), 
	.A1(n208), 
	.A0(n90));
   NAND4X2M U86 (.Y(n32), 
	.D(n207), 
	.C(En), 
	.B(n212), 
	.A(ALU_FUN[0]));
   NOR2BX2M U88 (.Y(n23), 
	.B(ALU_FUN[1]), 
	.AN(n115));
   NOR2BX2M U90 (.Y(n22), 
	.B(ALU_FUN[1]), 
	.AN(n98));
   INVX2M U92 (.Y(n225), 
	.A(A[2]));
   INVX2M U93 (.Y(n224), 
	.A(A[3]));
   INVX2M U94 (.Y(n223), 
	.A(A[4]));
   INVX2M U95 (.Y(n222), 
	.A(A[5]));
   INVX2M U96 (.Y(n221), 
	.A(n164));
   INVX2M U97 (.Y(n220), 
	.A(n168));
   INVX2M U98 (.Y(n197), 
	.A(n90));
   AND4X2M U99 (.Y(n16), 
	.D(n210), 
	.C(n17), 
	.B(ALU_FUN[1]), 
	.A(N117));
   NAND4X2M U100 (.Y(n129), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   AOI221XLM U101 (.Y(n39), 
	.C0(n42), 
	.B1(A[0]), 
	.B0(n41), 
	.A1(n40), 
	.A0(B[1]));
   AOI222X1M U102 (.Y(n37), 
	.C1(n209), 
	.C0(N62), 
	.B1(n46), 
	.B0(En), 
	.A1(n205), 
	.A0(n90));
   AOI222X1M U103 (.Y(n38), 
	.C1(n22), 
	.C0(N53), 
	.B1(n14), 
	.B0(N78), 
	.A1(n23), 
	.A0(N44));
   NAND4X2M U104 (.Y(n139), 
	.D(n87), 
	.C(n86), 
	.B(n85), 
	.A(n84));
   AOI222X1M U105 (.Y(n86), 
	.C1(n217), 
	.C0(n89), 
	.B1(n23), 
	.B0(N49), 
	.A1(n88), 
	.A0(B[6]));
   AOI222X1M U106 (.Y(n87), 
	.C1(n14), 
	.C0(N83), 
	.B1(n41), 
	.B0(A[5]), 
	.A1(n22), 
	.A0(N58));
   AOI222X1M U107 (.Y(n85), 
	.C1(n205), 
	.C0(n164), 
	.B1(n209), 
	.B0(N67), 
	.A1(n221), 
	.A0(n206));
   INVXLM U108 (.Y(n199), 
	.A(n171));
   INVXLM U109 (.Y(n201), 
	.A(n182));
   OAI31X1M U110 (.Y(n46), 
	.B0(n48), 
	.A2(n90), 
	.A1(B[1]), 
	.A0(n47));
   AOI33X2M U111 (.Y(n48), 
	.B2(B[1]), 
	.B1(n50), 
	.B0(n90), 
	.A2(N118), 
	.A1(ALU_FUN[1]), 
	.A0(n49));
   OAI221X1M U112 (.Y(n20), 
	.C0(n27), 
	.B1(n226), 
	.B0(n208), 
	.A1(n24), 
	.A0(A[0]));
   OAI221X1M U113 (.Y(n29), 
	.C0(n32), 
	.B1(n208), 
	.B0(A[0]), 
	.A1(n31), 
	.A0(n226));
   OAI2BB1X2M U114 (.Y(n114), 
	.B0(n24), 
	.A1N(n22), 
	.A0N(N60));
   INVX2M U115 (.Y(N118), 
	.A(n196));
   OAI21X2M U117 (.Y(n42), 
	.B0(n19), 
	.A1(n43), 
	.A0(B[1]));
   AOI21X2M U118 (.Y(n43), 
	.B0(n206), 
	.A1(n45), 
	.A0(n90));
   INVX2M U119 (.Y(n226), 
	.A(A[0]));
   CLKINVX2M U120 (.Y(n90), 
	.A(n83));
   CLKINVX2M U124 (.Y(n164), 
	.A(n163));
   CLKINVX2M U129 (.Y(n168), 
	.A(n166));
   INVX2M U136 (.Y(n217), 
	.A(B[6]));
   AOI222X1M U137 (.Y(n10), 
	.C1(n35), 
	.C0(n90), 
	.B1(n226), 
	.B0(n206), 
	.A1(n215), 
	.A0(ALU_OUT[0]));
   AOI22X1M U138 (.Y(n52), 
	.B1(n215), 
	.B0(ALU_OUT[2]), 
	.A1(n35), 
	.A0(A[3]));
   AOI22X1M U139 (.Y(n68), 
	.B1(ALU_OUT[4]), 
	.B0(n215), 
	.A1(n35), 
	.A0(A[5]));
   AOI22X1M U140 (.Y(n84), 
	.B1(ALU_OUT[6]), 
	.B0(n215), 
	.A1(n35), 
	.A0(n168));
   AOI22X1M U158 (.Y(n60), 
	.B1(ALU_OUT[3]), 
	.B0(n215), 
	.A1(n35), 
	.A0(A[4]));
   AOI22X1M U159 (.Y(n76), 
	.B1(ALU_OUT[5]), 
	.B0(n215), 
	.A1(n35), 
	.A0(n164));
   AOI22X1M U160 (.Y(n94), 
	.B1(ALU_OUT[7]), 
	.B0(n215), 
	.A1(n220), 
	.A0(n206));
   OAI2B11X2M U161 (.Y(n143), 
	.C0(n113), 
	.B0(n112), 
	.A1N(N69), 
	.A0(n111));
   AOI32X1M U162 (.Y(n112), 
	.B1(n23), 
	.B0(N51), 
	.A2(n168), 
	.A1(n101), 
	.A0(n211));
   AOI21X2M U163 (.Y(n113), 
	.B0(n114), 
	.A1(ALU_OUT[8]), 
	.A0(n215));
   NAND4X2M U164 (.Y(n127), 
	.D(n13), 
	.C(n12), 
	.B(n11), 
	.A(n10));
   AOI211X2M U165 (.Y(n13), 
	.C0(n16), 
	.B0(n204), 
	.A1(n14), 
	.A0(N77));
   AOI222X1M U166 (.Y(n12), 
	.C1(n23), 
	.C0(N43), 
	.B1(n22), 
	.B0(N52), 
	.A1(n198), 
	.A0(n20));
   AOI222X1M U167 (.Y(n11), 
	.C1(n209), 
	.C0(N61), 
	.B1(n29), 
	.B0(B[0]), 
	.A1(A[0]), 
	.A0(n205));
   NAND4X2M U168 (.Y(n131), 
	.D(n55), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   AOI222X1M U169 (.Y(n54), 
	.C1(n200), 
	.C0(n57), 
	.B1(n23), 
	.B0(N45), 
	.A1(n56), 
	.A0(B[2]));
   AOI222X1M U170 (.Y(n55), 
	.C1(n14), 
	.C0(N79), 
	.B1(n90), 
	.B0(n41), 
	.A1(n22), 
	.A0(N54));
   AOI222X1M U171 (.Y(n53), 
	.C1(n205), 
	.C0(A[2]), 
	.B1(n209), 
	.B0(N63), 
	.A1(n225), 
	.A0(n206));
   NAND4X2M U172 (.Y(n133), 
	.D(n63), 
	.C(n62), 
	.B(n61), 
	.A(n60));
   AOI222X1M U173 (.Y(n62), 
	.C1(n202), 
	.C0(n65), 
	.B1(n23), 
	.B0(N46), 
	.A1(n64), 
	.A0(B[3]));
   AOI222X1M U174 (.Y(n63), 
	.C1(n14), 
	.C0(N80), 
	.B1(n41), 
	.B0(A[2]), 
	.A1(n22), 
	.A0(N55));
   AOI222X1M U175 (.Y(n61), 
	.C1(n205), 
	.C0(A[3]), 
	.B1(n209), 
	.B0(N64), 
	.A1(n224), 
	.A0(n206));
   NAND4X2M U176 (.Y(n135), 
	.D(n71), 
	.C(n70), 
	.B(n69), 
	.A(n68));
   AOI222X1M U177 (.Y(n70), 
	.C1(n219), 
	.C0(n73), 
	.B1(n23), 
	.B0(N47), 
	.A1(n72), 
	.A0(B[4]));
   AOI222X1M U178 (.Y(n71), 
	.C1(n14), 
	.C0(N81), 
	.B1(n41), 
	.B0(A[3]), 
	.A1(n22), 
	.A0(N56));
   AOI222X1M U179 (.Y(n69), 
	.C1(n205), 
	.C0(A[4]), 
	.B1(n209), 
	.B0(N65), 
	.A1(n223), 
	.A0(n206));
   NAND4X2M U180 (.Y(n137), 
	.D(n79), 
	.C(n78), 
	.B(n77), 
	.A(n76));
   AOI222X1M U181 (.Y(n78), 
	.C1(n218), 
	.C0(n81), 
	.B1(n23), 
	.B0(N48), 
	.A1(n80), 
	.A0(B[5]));
   AOI222X1M U182 (.Y(n79), 
	.C1(n14), 
	.C0(N82), 
	.B1(n41), 
	.B0(A[4]), 
	.A1(n22), 
	.A0(N57));
   AOI222X1M U183 (.Y(n77), 
	.C1(n205), 
	.C0(A[5]), 
	.B1(n209), 
	.B0(N66), 
	.A1(n222), 
	.A0(n206));
   NAND4X2M U184 (.Y(n141), 
	.D(n97), 
	.C(n96), 
	.B(n95), 
	.A(n94));
   AOI22X1M U185 (.Y(n96), 
	.B1(n216), 
	.B0(n103), 
	.A1(n23), 
	.A0(N50));
   AOI222X1M U186 (.Y(n97), 
	.C1(n14), 
	.C0(N84), 
	.B1(n41), 
	.B0(n164), 
	.A1(n22), 
	.A0(N59));
   AOI222X1M U187 (.Y(n95), 
	.C1(n209), 
	.C0(N68), 
	.B1(n106), 
	.B0(B[7]), 
	.A1(n205), 
	.A0(n168));
   NAND2X2M U188 (.Y(n145), 
	.B(n203), 
	.A(n116));
   AOI22X1M U189 (.Y(n116), 
	.B1(ALU_OUT[9]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N70));
   NAND2X2M U190 (.Y(n149), 
	.B(n203), 
	.A(n119));
   AOI22X1M U191 (.Y(n119), 
	.B1(ALU_OUT[11]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N72));
   NAND2X2M U192 (.Y(n153), 
	.B(n203), 
	.A(n121));
   AOI22X1M U193 (.Y(n121), 
	.B1(ALU_OUT[13]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N74));
   NAND2X2M U194 (.Y(n157), 
	.B(n203), 
	.A(n123));
   AOI22X1M U195 (.Y(n123), 
	.B1(ALU_OUT[15]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N76));
   NAND2X2M U196 (.Y(n147), 
	.B(n203), 
	.A(n118));
   AOI22X1M U197 (.Y(n118), 
	.B1(ALU_OUT[10]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N71));
   NAND2X2M U198 (.Y(n151), 
	.B(n203), 
	.A(n120));
   AOI22X1M U199 (.Y(n120), 
	.B1(ALU_OUT[12]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N73));
   NAND2X2M U200 (.Y(n155), 
	.B(n203), 
	.A(n122));
   AOI22X1M U201 (.Y(n122), 
	.B1(ALU_OUT[14]), 
	.B0(n215), 
	.A1(n209), 
	.A0(N75));
   INVX2M U203 (.Y(n198), 
	.A(B[0]));
   INVX2M U204 (.Y(n200), 
	.A(B[2]));
   INVX2M U205 (.Y(n202), 
	.A(B[3]));
   INVX2M U207 (.Y(n216), 
	.A(B[7]));
   INVX2M U208 (.Y(n219), 
	.A(B[4]));
   INVX2M U209 (.Y(n218), 
	.A(B[5]));
   INVX2M U212 (.Y(n83), 
	.A(A[1]));
   INVX2M U214 (.Y(n166), 
	.A(A[7]));
   INVX2M U215 (.Y(n163), 
	.A(A[6]));
   NAND2BX1M U217 (.Y(n186), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U218 (.Y(n175), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U219 (.Y(n188), 
	.B(n175), 
	.A(n186));
   CLKNAND2X2M U220 (.Y(n185), 
	.B(n200), 
	.A(A[2]));
   NAND2BX1M U221 (.Y(n180), 
	.B(n185), 
	.AN(n174));
   AOI21X1M U222 (.Y(n172), 
	.B0(B[1]), 
	.A1(n197), 
	.A0(n171));
   CLKNAND2X2M U223 (.Y(n184), 
	.B(n202), 
	.A(A[3]));
   NAND2BX1M U224 (.Y(n191), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U225 (.Y(n177), 
	.C0(n191), 
	.B0(n175), 
	.A1(n176), 
	.A0(n188));
   NAND2BX1M U226 (.Y(n187), 
	.B(A[5]), 
	.AN(B[5]));
   AOI32X1M U227 (.Y(n178), 
	.B1(n163), 
	.B0(B[6]), 
	.A2(n190), 
	.A1(n187), 
	.A0(n177));
   CLKNAND2X2M U228 (.Y(n194), 
	.B(n220), 
	.A(B[7]));
   CLKNAND2X2M U229 (.Y(n181), 
	.B(n198), 
	.A(A[0]));
   OA21X1M U230 (.Y(n179), 
	.B0(B[1]), 
	.A1(n197), 
	.A0(n181));
   AOI31X1M U231 (.Y(n189), 
	.B0(n183), 
	.A2(n184), 
	.A1(n185), 
	.A0(n201));
   OAI2B11X1M U232 (.Y(n192), 
	.C0(n186), 
	.B0(n187), 
	.A1N(n189), 
	.A0(n188));
   AOI32X1M U233 (.Y(n195), 
	.B1(n217), 
	.B0(n164), 
	.A2(n190), 
	.A1(n191), 
	.A0(n192));
   AOI2B1X1M U234 (.Y(n196), 
	.B0(n193), 
	.A1N(n195), 
	.A0(n194));
   NOR2X1M U235 (.Y(N117), 
	.B(N118), 
	.A(N119));
   DLY1X1M U237 (.Y(n231), 
	.A(n240));
   DLY1X1M U238 (.Y(n232), 
	.A(n240));
   DLY1X1M U239 (.Y(n233), 
	.A(n239));
   DLY1X1M U240 (.Y(n234), 
	.A(n244));
   DLY1X1M U241 (.Y(n235), 
	.A(n245));
   DLY1X1M U242 (.Y(n236), 
	.A(n246));
   DLY1X1M U243 (.Y(n237), 
	.A(n243));
   DLY1X1M U244 (.Y(n238), 
	.A(n242));
   DLY1X1M U245 (.Y(n239), 
	.A(n242));
   DLY1X1M U246 (.Y(n240), 
	.A(test_se));
   DLY1X1M U247 (.Y(n241), 
	.A(n231));
   DLY1X1M U248 (.Y(n242), 
	.A(n231));
   DLY1X1M U249 (.Y(n243), 
	.A(n232));
   DLY1X1M U250 (.Y(n244), 
	.A(n241));
   DLY1X1M U251 (.Y(n245), 
	.A(n241));
   DLY1X1M U252 (.Y(n246), 
	.A(n232));
   ALU_data_width8_out_width16_DW_div_uns_0 div_30 (.a({ n168,
		n164,
		A[5],
		A[4],
		A[3],
		A[2],
		n90,
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N84,
		N83,
		N82,
		N81,
		N80,
		N79,
		N78,
		N77 }), 
	.n198(n198), 
	.n219(n219), 
	.n216(n216), 
	.n168(n168), 
	.n218(n218), 
	.n217(n217), 
	.n200(n200), 
	.n202(n202));
   ALU_data_width8_out_width16_DW01_sub_0 sub_24 (.A({ 1'b0,
		n168,
		n164,
		A[5],
		A[4],
		A[3],
		A[2],
		n90,
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
	.DIFF({ N60,
		N59,
		N58,
		N57,
		N56,
		N55,
		N54,
		N53,
		N52 }), 
	.n198(n198), 
	.n219(n219), 
	.n216(n216), 
	.n218(n218), 
	.n217(n217), 
	.n200(n200), 
	.n202(n202));
   ALU_data_width8_out_width16_DW01_add_0 add_21 (.A({ 1'b0,
		n168,
		n164,
		A[5],
		A[4],
		A[3],
		A[2],
		n90,
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
	.SUM({ N51,
		N50,
		N49,
		N48,
		N47,
		N46,
		N45,
		N44,
		N43 }));
   ALU_data_width8_out_width16_DW02_mult_0 mult_27 (.A({ n168,
		n164,
		A[5],
		A[4],
		A[3],
		A[2],
		n90,
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
	.PRODUCT({ N76,
		N75,
		N74,
		N73,
		N72,
		N71,
		N70,
		N69,
		N68,
		N67,
		N66,
		N65,
		N64,
		N63,
		N62,
		N61 }), 
	.n224(n224), 
	.n225(n225), 
	.n222(n222), 
	.n223(n223), 
	.n198(n198), 
	.n219(n219), 
	.n216(n216), 
	.n221(n221), 
	.n197(n197), 
	.n218(n218), 
	.n217(n217), 
	.n226(n226), 
	.n200(n200), 
	.n202(n202), 
	.n220(n220));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module serializer_data_width8_test_1 (
	P_DATA, 
	DATA_VALID, 
	ser_en, 
	CLK, 
	RST, 
	ser_data, 
	ser_done, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] P_DATA;
   input DATA_VALID;
   input ser_en;
   input CLK;
   input RST;
   output ser_data;
   output ser_done;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
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
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n15;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n80;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
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
   wire [3:0] counter;
   wire [7:0] mem;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSRX2M \counter_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n104), 
	.SE(n96), 
	.RN(RST), 
	.QN(n80), 
	.Q(counter[2]), 
	.D(n48), 
	.CK(CLK));
   SDFFSQX1M \counter_reg[3]  (.SN(RST), 
	.SI(n80), 
	.SE(n97), 
	.Q(counter[3]), 
	.D(n50), 
	.CK(CLK));
   NAND2BX2M U16 (.Y(n27), 
	.B(ser_en), 
	.AN(ser_done));
   CLKINVX2M U18 (.Y(n15), 
	.A(n104));
   NAND2X2M U44 (.Y(n35), 
	.B(n27), 
	.A(DATA_VALID));
   AOI21X2M U45 (.Y(n37), 
	.B0(n76), 
	.A1(n77), 
	.A0(counter[0]));
   CLKINVX2M U46 (.Y(n76), 
	.A(n35));
   INVX2M U49 (.Y(n77), 
	.A(n27));
   OAI21X2M U50 (.Y(n36), 
	.B0(n37), 
	.A1(n27), 
	.A0(n15));
   CLKNAND2X2M U51 (.Y(n30), 
	.B(n15), 
	.A(n78));
   OAI22X1M U52 (.Y(n49), 
	.B1(n27), 
	.B0(n30), 
	.A1(n15), 
	.A0(n37));
   NOR3X2M U53 (.Y(ser_done), 
	.C(n30), 
	.B(counter[3]), 
	.A(counter[2]));
   OAI32X1M U54 (.Y(n48), 
	.B1(n80), 
	.B0(n75), 
	.A2(n30), 
	.A1(counter[2]), 
	.A0(n27));
   INVX2M U55 (.Y(n75), 
	.A(n36));
   OAI2B2X1M U56 (.Y(n50), 
	.B1(n76), 
	.B0(n77), 
	.A1N(counter[3]), 
	.A0(n38));
   NOR2X2M U57 (.Y(n38), 
	.B(n36), 
	.A(counter[2]));
   OAI22X1M U58 (.Y(n51), 
	.B1(n27), 
	.B0(counter[0]), 
	.A1(n35), 
	.A0(n78));
   OAI2BB2X1M U59 (.Y(n39), 
	.B1(n27), 
	.B0(n26), 
	.A1N(n27), 
	.A0N(ser_data));
   AOI22X1M U60 (.Y(n26), 
	.B1(n29), 
	.B0(counter[2]), 
	.A1(n80), 
	.A0(n28));
   OAI21X2M U61 (.Y(n28), 
	.B0(n33), 
	.A1(n20), 
	.A0(n30));
   OAI21X2M U62 (.Y(n29), 
	.B0(n31), 
	.A1(n23), 
	.A0(n30));
   OAI2BB2X1M U63 (.Y(n41), 
	.B1(n25), 
	.B0(n76), 
	.A1N(n76), 
	.A0N(P_DATA[1]));
   OAI2BB2X1M U64 (.Y(n42), 
	.B1(n24), 
	.B0(n76), 
	.A1N(n76), 
	.A0N(P_DATA[2]));
   OAI2BB2X1M U65 (.Y(n43), 
	.B1(n23), 
	.B0(n76), 
	.A1N(n76), 
	.A0N(P_DATA[3]));
   OAI2BB2X1M U66 (.Y(n45), 
	.B1(n22), 
	.B0(n76), 
	.A1N(n76), 
	.A0N(P_DATA[5]));
   OAI2BB2X1M U67 (.Y(n46), 
	.B1(n21), 
	.B0(n76), 
	.A1N(n76), 
	.A0N(P_DATA[6]));
   OAI2BB2X1M U68 (.Y(n47), 
	.B1(n20), 
	.B0(n76), 
	.A1N(n76), 
	.A0N(P_DATA[7]));
   AO22X1M U69 (.Y(n40), 
	.B1(n76), 
	.B0(P_DATA[0]), 
	.A1(mem[0]), 
	.A0(n35));
   AO22X1M U70 (.Y(n44), 
	.B1(n76), 
	.B0(P_DATA[4]), 
	.A1(mem[4]), 
	.A0(n35));
   AOI32X1M U71 (.Y(n31), 
	.B1(n32), 
	.B0(n104), 
	.A2(mem[4]), 
	.A1(n15), 
	.A0(counter[0]));
   OAI22X1M U72 (.Y(n32), 
	.B1(n22), 
	.B0(counter[0]), 
	.A1(n21), 
	.A0(n78));
   AOI32X1M U73 (.Y(n33), 
	.B1(n104), 
	.B0(n34), 
	.A2(mem[0]), 
	.A1(n15), 
	.A0(counter[0]));
   OAI22X1M U74 (.Y(n34), 
	.B1(n25), 
	.B0(counter[0]), 
	.A1(n24), 
	.A0(n78));
   DLY1X1M U75 (.Y(n92), 
	.A(n98));
   DLY1X1M U76 (.Y(n93), 
	.A(test_se));
   DLY1X1M U77 (.Y(n94), 
	.A(n98));
   DLY1X1M U78 (.Y(n95), 
	.A(n102));
   DLY1X1M U79 (.Y(n96), 
	.A(n100));
   DLY1X1M U80 (.Y(n97), 
	.A(n100));
   DLY1X1M U81 (.Y(n98), 
	.A(n93));
   DLY1X1M U82 (.Y(n99), 
	.A(n93));
   DLY1X1M U83 (.Y(n100), 
	.A(n99));
   DLY1X1M U84 (.Y(n101), 
	.A(n92));
   DLY1X1M U85 (.Y(n102), 
	.A(n99));
   DLY1X1M U86 (.Y(n103), 
	.A(n92));
   SDFFRX1M ser_data_reg (.SI(n82), 
	.SE(n97), 
	.RN(RST), 
	.QN(test_so), 
	.Q(ser_data), 
	.D(n39), 
	.CK(CLK));
   SDFFRX1M \mem_reg[4]  (.SI(n86), 
	.SE(n101), 
	.RN(RST), 
	.QN(n85), 
	.Q(mem[4]), 
	.D(n44), 
	.CK(CLK));
   SDFFRX1M \mem_reg[0]  (.SI(counter[3]), 
	.SE(n102), 
	.RN(RST), 
	.QN(n89), 
	.Q(mem[0]), 
	.D(n40), 
	.CK(CLK));
   SDFFRX1M \mem_reg[6]  (.SI(n84), 
	.SE(n94), 
	.RN(RST), 
	.QN(n21), 
	.Q(n83), 
	.D(n46), 
	.CK(CLK));
   SDFFRX1M \mem_reg[5]  (.SI(n85), 
	.SE(n96), 
	.RN(RST), 
	.QN(n22), 
	.Q(n84), 
	.D(n45), 
	.CK(CLK));
   SDFFRX1M \mem_reg[2]  (.SI(n88), 
	.SE(n95), 
	.RN(RST), 
	.QN(n24), 
	.Q(n87), 
	.D(n42), 
	.CK(CLK));
   SDFFRX1M \mem_reg[1]  (.SI(n89), 
	.SE(n103), 
	.RN(RST), 
	.QN(n25), 
	.Q(n88), 
	.D(n41), 
	.CK(CLK));
   SDFFRX1M \mem_reg[7]  (.SI(n83), 
	.SE(n95), 
	.RN(RST), 
	.QN(n20), 
	.Q(n82), 
	.D(n47), 
	.CK(CLK));
   SDFFRX1M \mem_reg[3]  (.SI(n87), 
	.SE(n103), 
	.RN(RST), 
	.QN(n23), 
	.Q(n86), 
	.D(n43), 
	.CK(CLK));
   SDFFRX1M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n101), 
	.RN(RST), 
	.Q(n104), 
	.D(n49), 
	.CK(CLK));
   SDFFRX2M \counter_reg[0]  (.SI(test_si), 
	.SE(n94), 
	.RN(RST), 
	.QN(n78), 
	.Q(counter[0]), 
	.D(n51), 
	.CK(CLK));
endmodule

module fsm_test_1 (
	DATA_VALID, 
	PAR_EN, 
	ser_done, 
	CLK, 
	RST, 
	ser_en, 
	busy, 
	mux_sel, 
	test_si, 
	test_so, 
	test_se, 
	TX_CLK_scan__L3_N1);
   input DATA_VALID;
   input PAR_EN;
   input ser_done;
   input CLK;
   input RST;
   output ser_en;
   output busy;
   output [1:0] mux_sel;
   input test_si;
   output test_so;
   input test_se;
   input TX_CLK_scan__L3_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire busy_c;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n6;
   wire n24;
   wire n25;
   wire n28;
   wire n31;
   wire n32;
   wire n33;
   wire [31:0] current_state;
   wire [2:0] next_state;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFSRX2M \current_state_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n28), 
	.SE(n32), 
	.RN(RST), 
	.QN(n24), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   INVX2M U8 (.Y(n6), 
	.A(test_so));
   NAND2X2M U17 (.Y(n12), 
	.B(n6), 
	.A(current_state[1]));
   NAND2X2M U19 (.Y(ser_en), 
	.B(n10), 
	.A(n9));
   NAND2X2M U20 (.Y(n10), 
	.B(n24), 
	.A(mux_sel[1]));
   INVX2M U21 (.Y(mux_sel[1]), 
	.A(n12));
   OAI21X2M U22 (.Y(next_state[1]), 
	.B0(n9), 
	.A1(n10), 
	.A0(n13));
   AND2X2M U23 (.Y(n13), 
	.B(ser_done), 
	.A(n14));
   OAI21X2M U24 (.Y(mux_sel[0]), 
	.B0(n16), 
	.A1(n24), 
	.A0(n12));
   NAND3X2M U25 (.Y(n9), 
	.C(n25), 
	.B(current_state[0]), 
	.A(n6));
   OAI32X1M U26 (.Y(next_state[0]), 
	.B1(n14), 
	.B0(n10), 
	.A2(current_state[0]), 
	.A1(current_state[1]), 
	.A0(n15));
   NAND2X2M U27 (.Y(n15), 
	.B(n6), 
	.A(DATA_VALID));
   NAND2X2M U28 (.Y(n14), 
	.B(ser_done), 
	.A(PAR_EN));
   NOR2X2M U29 (.Y(next_state[2]), 
	.B(n12), 
	.A(n11));
   AOI2B1X1M U30 (.Y(n11), 
	.B0(current_state[0]), 
	.A1N(PAR_EN), 
	.A0(ser_done));
   OAI211X2M U31 (.Y(busy_c), 
	.C0(n12), 
	.B0(n16), 
	.A1(n24), 
	.A0(test_so));
   NAND3X2M U32 (.Y(n16), 
	.C(test_so), 
	.B(n25), 
	.A(n24));
   DLY1X1M U33 (.Y(n31), 
	.A(test_se));
   DLY1X1M U34 (.Y(n32), 
	.A(n31));
   DLY1X1M U35 (.Y(n33), 
	.A(n31));
   SDFFRX1M busy_reg (.SI(test_si), 
	.SE(n33), 
	.RN(RST), 
	.QN(n28), 
	.Q(busy), 
	.D(busy_c), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFRX1M \current_state_reg[2]  (.SI(n25), 
	.SE(n32), 
	.RN(RST), 
	.Q(test_so), 
	.D(next_state[2]), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFRX1M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(n33), 
	.RN(RST), 
	.QN(n25), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(TX_CLK_scan__L3_N1));
endmodule

module parity_calc_data_width8_test_1 (
	P_DATA, 
	DATA_VALID, 
	PAR_TYP, 
	CLK, 
	RST, 
	PAR_BIT, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] P_DATA;
   input DATA_VALID;
   input PAR_TYP;
   input CLK;
   input RST;
   output PAR_BIT;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n10;

   XNOR2X2M U6 (.Y(n6), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   XOR3XLM U7 (.Y(n4), 
	.C(n7), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   CLKXOR2X2M U8 (.Y(n7), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   OAI2BB2X1M U9 (.Y(n8), 
	.B1(n10), 
	.B0(n3), 
	.A1N(n10), 
	.A0N(PAR_BIT));
   INVX2M U10 (.Y(n10), 
	.A(DATA_VALID));
   XOR3XLM U11 (.Y(n3), 
	.C(n5), 
	.B(PAR_TYP), 
	.A(n4));
   XOR3XLM U12 (.Y(n5), 
	.C(n6), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   SDFFRX1M PAR_BIT_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.QN(test_so), 
	.Q(PAR_BIT), 
	.D(n8), 
	.CK(CLK));
endmodule

module UART_TX_width8_test_1 (
	P_DATA, 
	DATA_VALID, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	TX_CLK_scan__L3_N1);
   input [7:0] P_DATA;
   input DATA_VALID;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input TX_CLK_scan__L3_N1;

   // Internal wires
   wire ser_en;
   wire ser_done;
   wire ser_data;
   wire par_bit;
   wire mux_out;
   wire n3;
   wire n4;
   wire n5;
   wire n10;
   wire n12;
   wire n13;
   wire n14;
   wire n17;
   wire n18;
   wire n19;
   wire n1;
   wire [1:0] mux_sel;

   assign test_so = TX_OUT ;

   OAI21X2M U9 (.Y(mux_out), 
	.B0(n4), 
	.A1(n10), 
	.A0(n3));
   NOR2BX2M U10 (.Y(n3), 
	.B(par_bit), 
	.AN(mux_sel[1]));
   NAND3X2M U11 (.Y(n4), 
	.C(ser_data), 
	.B(n10), 
	.A(mux_sel[1]));
   INVX2M U12 (.Y(n10), 
	.A(mux_sel[0]));
   DLY1X1M U13 (.Y(n17), 
	.A(test_se));
   DLY1X1M U14 (.Y(n18), 
	.A(n17));
   DLY1X1M U15 (.Y(n19), 
	.A(n17));
   serializer_data_width8_test_1 S (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.DATA_VALID(DATA_VALID), 
	.ser_en(ser_en), 
	.CLK(CLK), 
	.RST(RST), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.test_si(n13), 
	.test_so(n12), 
	.test_se(n19));
   fsm_test_1 F (.DATA_VALID(DATA_VALID), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.CLK(CLK), 
	.RST(RST), 
	.ser_en(ser_en), 
	.busy(busy), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.test_si(test_si), 
	.test_so(n14), 
	.test_se(n18), 
	.TX_CLK_scan__L3_N1(TX_CLK_scan__L3_N1));
   parity_calc_data_width8_test_1 P (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.DATA_VALID(DATA_VALID), 
	.PAR_TYP(PAR_TYP), 
	.CLK(CLK), 
	.RST(RST), 
	.PAR_BIT(par_bit), 
	.test_si(n14), 
	.test_so(n13), 
	.test_se(n18));
   SDFFRX1M TX_OUT_reg (.SI(n12), 
	.SE(n19), 
	.RN(RST), 
	.Q(n5), 
	.D(mux_out), 
	.CK(CLK));
   INVXLM U3 (.Y(n1), 
	.A(n5));
   INVX2M U4 (.Y(TX_OUT), 
	.A(n1));
endmodule

module FSM_test_1 (
	RX_IN, 
	CLK, 
	RST, 
	PAR_EN, 
	BIT_CNT, 
	EDGE_CNT, 
	PRESCALE, 
	PAR_ERR, 
	STRT_GLITCH, 
	STP_ERR, 
	ENABLE, 
	DATA_SAMP_EN, 
	DESER_EN, 
	DATA_VALID, 
	PAR_CHK_EN, 
	STRT_CHK_EN, 
	STP_CHK_EN, 
	test_so, 
	test_se, 
	RX_CLK_scan__L3_N1);
   input RX_IN;
   input CLK;
   input RST;
   input PAR_EN;
   input [3:0] BIT_CNT;
   input [4:0] EDGE_CNT;
   input [5:0] PRESCALE;
   input PAR_ERR;
   input STRT_GLITCH;
   input STP_ERR;
   output ENABLE;
   output DATA_SAMP_EN;
   output DESER_EN;
   output DATA_VALID;
   output PAR_CHK_EN;
   output STRT_CHK_EN;
   output STP_CHK_EN;
   output test_so;
   input test_se;
   input RX_CLK_scan__L3_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire N164;
   wire N165;
   wire N166;
   wire N167;
   wire N168;
   wire N169;
   wire N170;
   wire n19;
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
   wire n36;
   wire n37;
   wire n1;
   wire n2;
   wire n7;
   wire n8;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n20;
   wire n35;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n46;
   wire n48;
   wire [31:0] current_state;
   wire [2:0] next_state;

   assign DATA_SAMP_EN = 1'b1 ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NOR3BX2M U49 (.Y(n29), 
	.C(BIT_CNT[3]), 
	.B(STRT_GLITCH), 
	.AN(n31));
   OR4X1M U6 (.Y(n1), 
	.D(n18), 
	.C(n20), 
	.B(n35), 
	.A(n38));
   AND3X2M U7 (.Y(n2), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   NOR3X2M U8 (.Y(DESER_EN), 
	.C(n28), 
	.B(current_state[0]), 
	.A(n1));
   NOR2X2M U9 (.Y(n34), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NOR3BX2M U10 (.Y(DATA_VALID), 
	.C(PAR_ERR), 
	.B(STP_ERR), 
	.AN(STP_CHK_EN));
   NOR2X2M U11 (.Y(n37), 
	.B(BIT_CNT[2]), 
	.A(PAR_ERR));
   NAND3BX2M U12 (.Y(n24), 
	.C(current_state[2]), 
	.B(n43), 
	.AN(current_state[1]));
   NOR3X2M U13 (.Y(n31), 
	.C(n40), 
	.B(BIT_CNT[2]), 
	.A(BIT_CNT[1]));
   NOR3X2M U14 (.Y(n23), 
	.C(BIT_CNT[3]), 
	.B(STP_ERR), 
	.A(BIT_CNT[2]));
   NOR4X1M U15 (.Y(n36), 
	.D(BIT_CNT[2]), 
	.C(BIT_CNT[3]), 
	.B(RX_IN), 
	.A(STP_ERR));
   AOI32X1M U16 (.Y(n30), 
	.B1(current_state[0]), 
	.B0(n26), 
	.A2(n31), 
	.A1(BIT_CNT[3]), 
	.A0(PAR_EN));
   NAND4X2M U17 (.Y(n26), 
	.D(n40), 
	.C(n37), 
	.B(BIT_CNT[1]), 
	.A(BIT_CNT[3]));
   NAND3BX1M U18 (.Y(n25), 
	.C(n31), 
	.B(BIT_CNT[3]), 
	.AN(PAR_EN));
   NOR2BX2M U22 (.Y(n14), 
	.B(N164), 
	.AN(EDGE_CNT[0]));
   NOR2BX2M U23 (.Y(n15), 
	.B(EDGE_CNT[0]), 
	.AN(N164));
   NOR2X2M U24 (.Y(N170), 
	.B(PRESCALE[5]), 
	.A(n13));
   NAND2BX2M U25 (.Y(n7), 
	.B(N164), 
	.AN(PRESCALE[1]));
   OR2X2M U26 (.Y(n13), 
	.B(PRESCALE[4]), 
	.A(n12));
   OR2X2M U27 (.Y(n8), 
	.B(PRESCALE[2]), 
	.A(n7));
   OR2X2M U28 (.Y(n12), 
	.B(PRESCALE[3]), 
	.A(n8));
   OAI2BB1XLM U29 (.Y(N168), 
	.B0(n13), 
	.A1N(PRESCALE[4]), 
	.A0N(n12));
   OAI2BB1XLM U30 (.Y(N167), 
	.B0(n12), 
	.A1N(PRESCALE[3]), 
	.A0N(n8));
   OAI2BB1XLM U31 (.Y(N166), 
	.B0(n8), 
	.A1N(PRESCALE[2]), 
	.A0N(n7));
   NAND2X2M U32 (.Y(n28), 
	.B(test_so), 
	.A(current_state[1]));
   INVX2M U33 (.Y(n40), 
	.A(BIT_CNT[0]));
   NOR3X2M U35 (.Y(PAR_CHK_EN), 
	.C(n28), 
	.B(n43), 
	.A(n1));
   NOR2X2M U36 (.Y(STP_CHK_EN), 
	.B(n1), 
	.A(n24));
   NAND3X2M U37 (.Y(ENABLE), 
	.C(RX_IN), 
	.B(n43), 
	.A(n34));
   INVX2M U38 (.Y(n42), 
	.A(n24));
   OAI2BB2X1M U39 (.Y(next_state[1]), 
	.B1(n28), 
	.B0(n27), 
	.A1N(STRT_CHK_EN), 
	.A0N(n29));
   AOI21BX2M U40 (.Y(n27), 
	.B0N(n30), 
	.A1(n43), 
	.A0(n25));
   INVX2M U41 (.Y(STRT_CHK_EN), 
	.A(n32));
   INVX2M U42 (.Y(N164), 
	.A(PRESCALE[0]));
   OAI221X1M U43 (.Y(next_state[0]), 
	.C0(n33), 
	.B1(n32), 
	.B0(n29), 
	.A1(n28), 
	.A0(n30));
   AOI32X1M U44 (.Y(n33), 
	.B1(n36), 
	.B0(n2), 
	.A2(n34), 
	.A1(n43), 
	.A0(n46));
   INVX2M U45 (.Y(n46), 
	.A(RX_IN));
   CLKINVX2M U46 (.Y(n43), 
	.A(current_state[0]));
   INVX2M U48 (.Y(n39), 
	.A(n19));
   AOI31X2M U50 (.Y(n19), 
	.B0(n22), 
	.A2(current_state[1]), 
	.A1(test_so), 
	.A0(n21));
   AOI31X2M U51 (.Y(n22), 
	.B0(n24), 
	.A2(n23), 
	.A1(n41), 
	.A0(n40));
   OAI22X1M U52 (.Y(n21), 
	.B1(n43), 
	.B0(n26), 
	.A1(n25), 
	.A0(current_state[0]));
   INVX2M U53 (.Y(n41), 
	.A(BIT_CNT[1]));
   NAND2X2M U54 (.Y(n32), 
	.B(current_state[0]), 
	.A(n34));
   OAI2BB1X1M U55 (.Y(N165), 
	.B0(n7), 
	.A1N(PRESCALE[1]), 
	.A0N(PRESCALE[0]));
   AO21XLM U56 (.Y(N169), 
	.B0(N170), 
	.A1(PRESCALE[5]), 
	.A0(n13));
   OAI2B2X1M U57 (.Y(n17), 
	.B1(n14), 
	.B0(EDGE_CNT[1]), 
	.A1N(N165), 
	.A0(n14));
   OAI2B2X1M U58 (.Y(n16), 
	.B1(n15), 
	.B0(N165), 
	.A1N(EDGE_CNT[1]), 
	.A0(n15));
   NAND4BBX1M U59 (.Y(n38), 
	.D(n16), 
	.C(n17), 
	.BN(N169), 
	.AN(N170));
   CLKXOR2X2M U60 (.Y(n35), 
	.B(EDGE_CNT[4]), 
	.A(N168));
   CLKXOR2X2M U61 (.Y(n20), 
	.B(EDGE_CNT[2]), 
	.A(N166));
   CLKXOR2X2M U62 (.Y(n18), 
	.B(EDGE_CNT[3]), 
	.A(N167));
   DLY1X1M U63 (.Y(n48), 
	.A(test_se));
   SDFFSRX1M \current_state_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(n43), 
	.SE(n48), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(RX_CLK_scan__L3_N1));
   SDFFSRX1M \current_state_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(current_state[1]), 
	.SE(n48), 
	.RN(RST), 
	.QN(test_so), 
	.Q(current_state[2]), 
	.D(n39), 
	.CK(RX_CLK_scan__L3_N1));
   SDFFRQX4M \current_state_reg[0]  (.SI(EDGE_CNT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
endmodule

module data_sampling_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PRESCALE, 
	DATA_SAMP_EN, 
	EDGE_CNT, 
	SAMPLED_BIT, 
	test_si, 
	test_so, 
	test_se, 
	RX_CLK_scan__L3_N2);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] PRESCALE;
   input DATA_SAMP_EN;
   input [4:0] EDGE_CNT;
   output SAMPLED_BIT;
   input test_si;
   output test_so;
   input test_se;
   input RX_CLK_scan__L3_N2;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire sample1;
   wire sample2;
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
   wire n27;
   wire n8;
   wire n9;
   wire n10;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n34;
   wire n35;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI32X1M U14 (.Y(n18), 
	.B1(n21), 
	.B0(EDGE_CNT[4]), 
	.A2(n8), 
	.A1(n13), 
	.A0(n20));
   OAI2BB1X2M U6 (.Y(SAMPLED_BIT), 
	.B0(n24), 
	.A1N(sample2), 
	.A0N(sample1));
   NOR2X1M U8 (.Y(n23), 
	.B(PRESCALE[1]), 
	.A(PRESCALE[2]));
   AOI33X2M U9 (.Y(n21), 
	.B2(n16), 
	.B1(n9), 
	.B0(EDGE_CNT[2]), 
	.A2(n15), 
	.A1(n10), 
	.A0(EDGE_CNT[3]));
   NAND4X2M U10 (.Y(n11), 
	.D(n8), 
	.C(n12), 
	.B(EDGE_CNT[0]), 
	.A(EDGE_CNT[1]));
   INVX2M U16 (.Y(n31), 
	.A(RX_IN));
   NAND2X2M U17 (.Y(n20), 
	.B(n9), 
	.A(n10));
   NAND3BX2M U18 (.Y(n22), 
	.C(n23), 
	.B(HTIE_LTIEHI_NET), 
	.AN(PRESCALE[0]));
   NAND4BX1M U19 (.Y(n13), 
	.D(n29), 
	.C(n30), 
	.B(PRESCALE[5]), 
	.AN(n22));
   NOR4X1M U20 (.Y(n15), 
	.D(PRESCALE[5]), 
	.C(PRESCALE[3]), 
	.B(n22), 
	.A(n29));
   NOR4X1M U21 (.Y(n16), 
	.D(PRESCALE[5]), 
	.C(PRESCALE[4]), 
	.B(n22), 
	.A(n30));
   OAI2BB2X1M U22 (.Y(n26), 
	.B1(n17), 
	.B0(n31), 
	.A1N(sample2), 
	.A0N(n17));
   NAND3BX2M U23 (.Y(n17), 
	.C(n28), 
	.B(n18), 
	.AN(EDGE_CNT[0]));
   OAI2BB2X1M U24 (.Y(n27), 
	.B1(n19), 
	.B0(n31), 
	.A1N(n19), 
	.A0N(test_so));
   NAND3X2M U25 (.Y(n19), 
	.C(EDGE_CNT[0]), 
	.B(n18), 
	.A(n28));
   INVX2M U26 (.Y(n10), 
	.A(EDGE_CNT[2]));
   INVX2M U27 (.Y(n9), 
	.A(EDGE_CNT[3]));
   INVX2M U28 (.Y(n29), 
	.A(PRESCALE[4]));
   INVX2M U29 (.Y(n30), 
	.A(PRESCALE[3]));
   OAI2BB2X1M U30 (.Y(n25), 
	.B1(n31), 
	.B0(n11), 
	.A1N(sample1), 
	.A0N(n11));
   OAI32X1M U31 (.Y(n12), 
	.B1(n14), 
	.B0(EDGE_CNT[3]), 
	.A2(n10), 
	.A1(n13), 
	.A0(n9));
   AOI22X1M U32 (.Y(n14), 
	.B1(n10), 
	.B0(n16), 
	.A1(EDGE_CNT[2]), 
	.A0(n15));
   INVX2M U33 (.Y(n8), 
	.A(EDGE_CNT[4]));
   INVX2M U34 (.Y(n28), 
	.A(EDGE_CNT[1]));
   DLY1X1M U35 (.Y(n34), 
	.A(n35));
   DLY1X1M U36 (.Y(n35), 
	.A(test_se));
   SDFFRQX1M sample3_reg (.SI(sample2), 
	.SE(n34), 
	.RN(RST), 
	.Q(test_so), 
	.D(n27), 
	.CK(RX_CLK_scan__L3_N2));
   SDFFSRX2M sample1_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(n35), 
	.RN(RST), 
	.Q(sample1), 
	.D(n25), 
	.CK(CLK));
   SDFFSRX2M sample2_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(sample1), 
	.SE(n34), 
	.RN(RST), 
	.Q(sample2), 
	.D(n26), 
	.CK(RX_CLK_scan__L3_N2));
   OAI21X2M U3 (.Y(n24), 
	.B0(test_so), 
	.A1(sample2), 
	.A0(sample1));
endmodule

module deserializer_test_1 (
	CLK, 
	RST, 
	SAMPLED_BIT, 
	DESER_EN, 
	P_DATA, 
	test_si, 
	test_so, 
	test_se, 
	RX_CLK_scan__L3_N2, 
	RX_CLK_scan__L3_N3);
   input CLK;
   input RST;
   input SAMPLED_BIT;
   input DESER_EN;
   output [7:0] P_DATA;
   input test_si;
   output test_so;
   input test_se;
   input RX_CLK_scan__L3_N2;
   input RX_CLK_scan__L3_N3;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \counter[0] ;
   wire n1;
   wire n2;
   wire n6;
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
   wire n31;
   wire n33;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n4;
   wire n5;
   wire n57;
   wire n58;
   wire n59;
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

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI21X1M U5 (.Y(n36), 
	.B0(n9), 
	.A1(n8), 
	.A0(n2));
   OAI21X1M U6 (.Y(n40), 
	.B0(n17), 
	.A1(n16), 
	.A0(n2));
   NOR2X2M U20 (.Y(n15), 
	.B(test_so), 
	.A(n58));
   NAND2X2M U21 (.Y(n10), 
	.B(n5), 
	.A(\counter[0] ));
   OAI221X1M U25 (.Y(n33), 
	.C0(n6), 
	.B1(n5), 
	.B0(DESER_EN), 
	.A1(n58), 
	.A0(n2));
   NAND2BX2M U26 (.Y(n16), 
	.B(SAMPLED_BIT), 
	.AN(n18));
   NAND2X2M U27 (.Y(n8), 
	.B(n15), 
	.A(SAMPLED_BIT));
   INVX2M U28 (.Y(n58), 
	.A(DESER_EN));
   CLKINVX2M U29 (.Y(n57), 
	.A(n15));
   XNOR2X2M U30 (.Y(n35), 
	.B(DESER_EN), 
	.A(n59));
   CLKNAND2X2M U31 (.Y(n18), 
	.B(DESER_EN), 
	.A(test_so));
   OAI2B2X1M U32 (.Y(n31), 
	.B1(n57), 
	.B0(n2), 
	.A1N(test_so), 
	.A0(n1));
   NOR2X2M U33 (.Y(n1), 
	.B(n58), 
	.A(n2));
   OAI21X2M U34 (.Y(n9), 
	.B0(P_DATA[0]), 
	.A1(n57), 
	.A0(n2));
   OAI21X2M U46 (.Y(n17), 
	.B0(P_DATA[4]), 
	.A1(n18), 
	.A0(n2));
   OAI21X2M U47 (.Y(n37), 
	.B0(n11), 
	.A1(n10), 
	.A0(n8));
   OAI21X2M U48 (.Y(n11), 
	.B0(P_DATA[1]), 
	.A1(n10), 
	.A0(n57));
   OAI21X2M U49 (.Y(n38), 
	.B0(n13), 
	.A1(n12), 
	.A0(n8));
   OAI21X2M U50 (.Y(n13), 
	.B0(P_DATA[2]), 
	.A1(n12), 
	.A0(n57));
   OAI21X2M U51 (.Y(n39), 
	.B0(n14), 
	.A1(n6), 
	.A0(n8));
   OAI21X2M U52 (.Y(n14), 
	.B0(P_DATA[3]), 
	.A1(n6), 
	.A0(n57));
   OAI21X2M U53 (.Y(n41), 
	.B0(n19), 
	.A1(n16), 
	.A0(n10));
   OAI21X2M U54 (.Y(n19), 
	.B0(P_DATA[5]), 
	.A1(n18), 
	.A0(n10));
   OAI21X2M U55 (.Y(n42), 
	.B0(n20), 
	.A1(n16), 
	.A0(n12));
   OAI21X2M U56 (.Y(n20), 
	.B0(P_DATA[6]), 
	.A1(n18), 
	.A0(n12));
   OAI21X2M U57 (.Y(n43), 
	.B0(n21), 
	.A1(n16), 
	.A0(n6));
   OAI21X2M U58 (.Y(n21), 
	.B0(P_DATA[7]), 
	.A1(n18), 
	.A0(n6));
   CLKNAND2X2M U59 (.Y(n6), 
	.B(\counter[0] ), 
	.A(n4));
   DLY1X1M U60 (.Y(n64), 
	.A(n68));
   DLY1X1M U61 (.Y(n65), 
	.A(test_se));
   DLY1X1M U62 (.Y(n66), 
	.A(n72));
   DLY1X1M U63 (.Y(n67), 
	.A(n64));
   DLY1X1M U64 (.Y(n68), 
	.A(n65));
   DLY1X1M U65 (.Y(n69), 
	.A(n65));
   DLY1X1M U66 (.Y(n70), 
	.A(n64));
   DLY1X1M U67 (.Y(n71), 
	.A(n69));
   DLY1X1M U68 (.Y(n72), 
	.A(n69));
   DLY1X1M U69 (.Y(n73), 
	.A(n68));
   SDFFSQX2M \counter_reg[2]  (.SN(RST), 
	.SI(n4), 
	.SE(n73), 
	.Q(test_so), 
	.D(n31), 
	.CK(CLK));
   SDFFSRX2M \P_DATA_reg[6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[5]), 
	.SE(n67), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n42), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFSRX2M \P_DATA_reg[7]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[6]), 
	.SE(n67), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n43), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFSRX2M \P_DATA_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[1]), 
	.SE(n66), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n38), 
	.CK(RX_CLK_scan__L3_N2));
   SDFFSRX2M \P_DATA_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[2]), 
	.SE(n70), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n39), 
	.CK(RX_CLK_scan__L3_N2));
   SDFFSRX2M \P_DATA_reg[4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[3]), 
	.SE(n71), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n40), 
	.CK(CLK));
   SDFFSRX2M \P_DATA_reg[5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[4]), 
	.SE(n73), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n41), 
	.CK(CLK));
   SDFFSRX2M \P_DATA_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(n66), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n36), 
	.CK(RX_CLK_scan__L3_N2));
   SDFFSRX2M \P_DATA_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(P_DATA[0]), 
	.SE(n70), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n37), 
	.CK(RX_CLK_scan__L3_N2));
   SDFFSX2M \counter_reg[0]  (.SN(RST), 
	.SI(P_DATA[7]), 
	.SE(n71), 
	.QN(n59), 
	.Q(\counter[0] ), 
	.D(n35), 
	.CK(CLK));
   SDFFSX2M \counter_reg[1]  (.SN(RST), 
	.SI(\counter[0] ), 
	.SE(n72), 
	.QN(n5), 
	.Q(n4), 
	.D(n33), 
	.CK(CLK));
   CLKNAND2X2M U3 (.Y(n2), 
	.B(n59), 
	.A(n5));
   NAND2X2M U4 (.Y(n12), 
	.B(n4), 
	.A(n59));
endmodule

module edge_bit_counter_test_1 (
	ENABLE, 
	PAR_EN, 
	CLK, 
	RST, 
	PRESCALE, 
	BIT_CNT, 
	EDGE_CNT, 
	test_si, 
	test_se, 
	RX_CLK_scan__L3_N1);
   input ENABLE;
   input PAR_EN;
   input CLK;
   input RST;
   input [5:0] PRESCALE;
   output [3:0] BIT_CNT;
   output [4:0] EDGE_CNT;
   input test_si;
   input test_se;
   input RX_CLK_scan__L3_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n74;
   wire n75;
   wire N5;
   wire N6;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N14;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
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
   wire \add_19/carry[4] ;
   wire \add_19/carry[3] ;
   wire \add_19/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
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
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI33X2M U23 (.Y(n29), 
	.B2(n72), 
	.B1(n69), 
	.B0(n33), 
	.A2(n73), 
	.A1(n70), 
	.A0(n32));
   SDFFRQX4M \BIT_CNT_reg[3]  (.SI(BIT_CNT[2]), 
	.SE(n81), 
	.RN(RST), 
	.Q(BIT_CNT[3]), 
	.D(n36), 
	.CK(RX_CLK_scan__L3_N1));
   SDFFRQX4M \EDGE_CNT_reg[3]  (.SI(EDGE_CNT[2]), 
	.SE(n80), 
	.RN(RST), 
	.Q(EDGE_CNT[3]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX4M \EDGE_CNT_reg[1]  (.SI(EDGE_CNT[0]), 
	.SE(n79), 
	.RN(RST), 
	.Q(EDGE_CNT[1]), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX4M \EDGE_CNT_reg[2]  (.SI(EDGE_CNT[1]), 
	.SE(n84), 
	.RN(RST), 
	.Q(EDGE_CNT[2]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX4M \BIT_CNT_reg[1]  (.SI(n69), 
	.SE(n83), 
	.RN(RST), 
	.Q(BIT_CNT[1]), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX1M \EDGE_CNT_reg[4]  (.SI(EDGE_CNT[3]), 
	.SE(n79), 
	.RN(RST), 
	.Q(n74), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX4M \BIT_CNT_reg[2]  (.SI(BIT_CNT[1]), 
	.SE(n85), 
	.RN(RST), 
	.Q(BIT_CNT[2]), 
	.D(n67), 
	.CK(CLK));
   AOI21BX2M U6 (.Y(n1), 
	.B0N(n50), 
	.A1(PRESCALE[3]), 
	.A0(n49));
   AOI21BX2M U7 (.Y(n2), 
	.B0N(n49), 
	.A1(PRESCALE[2]), 
	.A0(n48));
   CLKINVX2M U14 (.Y(EDGE_CNT[0]), 
	.A(n3));
   NAND4X2M U17 (.Y(n25), 
	.D(n72), 
	.C(BIT_CNT[1]), 
	.B(n26), 
	.A(BIT_CNT[2]));
   INVXLM U18 (.Y(n5), 
	.A(n74));
   CLKINVX2M U19 (.Y(EDGE_CNT[4]), 
	.A(n5));
   OAI221X1M U20 (.Y(n57), 
	.C0(n56), 
	.B1(n1), 
	.B0(EDGE_CNT[3]), 
	.A1(n2), 
	.A0(EDGE_CNT[2]));
   NOR2BX2M U31 (.Y(n52), 
	.B(N5), 
	.AN(EDGE_CNT[0]));
   NOR4BBX1M U32 (.Y(N14), 
	.D(N12), 
	.C(n60), 
	.BN(n61), 
	.AN(n62));
   NOR3X2M U34 (.Y(n26), 
	.C(n31), 
	.B(n69), 
	.A(n29));
   OAI2B11X2M U35 (.Y(N12), 
	.C0(n58), 
	.B0(n59), 
	.A1N(N9), 
	.A0(EDGE_CNT[4]));
   NOR2X2M U36 (.Y(N11), 
	.B(PRESCALE[5]), 
	.A(n51));
   OAI2BB1X2M U37 (.Y(N9), 
	.B0(n51), 
	.A1N(PRESCALE[4]), 
	.A0N(n50));
   NAND2BX2M U38 (.Y(n48), 
	.B(N5), 
	.AN(PRESCALE[1]));
   OR2X2M U39 (.Y(n51), 
	.B(PRESCALE[4]), 
	.A(n50));
   OR2X2M U40 (.Y(n49), 
	.B(PRESCALE[2]), 
	.A(n48));
   OR2X2M U41 (.Y(n50), 
	.B(PRESCALE[3]), 
	.A(n49));
   NOR2BX2M U42 (.Y(n55), 
	.B(n75), 
	.AN(N5));
   INVX2M U43 (.Y(n70), 
	.A(BIT_CNT[1]));
   INVX2M U44 (.Y(n71), 
	.A(BIT_CNT[2]));
   NOR2X2M U46 (.Y(n34), 
	.B(n66), 
	.A(n65));
   CLKINVX2M U47 (.Y(n65), 
	.A(n35));
   AOI21X2M U48 (.Y(n30), 
	.B0(n31), 
	.A1(n68), 
	.A0(n69));
   OAI2BB2X1M U49 (.Y(n37), 
	.B1(n70), 
	.B0(n30), 
	.A1N(n26), 
	.A0N(n70));
   INVX2M U50 (.Y(n66), 
	.A(n31));
   NAND2X1M U51 (.Y(n35), 
	.B(ENABLE), 
	.A(N12));
   CLKINVX1M U52 (.Y(n68), 
	.A(n29));
   INVX2M U53 (.Y(n67), 
	.A(n28));
   AOI32X1M U54 (.Y(n28), 
	.B1(BIT_CNT[2]), 
	.B0(n27), 
	.A2(BIT_CNT[1]), 
	.A1(n71), 
	.A0(n26));
   OAI21X2M U55 (.Y(n27), 
	.B0(n30), 
	.A1(n29), 
	.A0(BIT_CNT[1]));
   NAND3X2M U56 (.Y(n31), 
	.C(N14), 
	.B(n35), 
	.A(ENABLE));
   INVX2M U57 (.Y(N5), 
	.A(PRESCALE[0]));
   INVX2M U58 (.Y(n63), 
	.A(EDGE_CNT[1]));
   OAI32X1M U59 (.Y(n38), 
	.B1(n69), 
	.B0(n66), 
	.A2(n29), 
	.A1(BIT_CNT[0]), 
	.A0(n31));
   OAI21X2M U60 (.Y(n36), 
	.B0(n25), 
	.A1(n72), 
	.A0(n24));
   AOI21X2M U61 (.Y(n24), 
	.B0(n27), 
	.A1(n71), 
	.A0(n68));
   AO22X1M U62 (.Y(n43), 
	.B1(n65), 
	.B0(n3), 
	.A1(n34), 
	.A0(EDGE_CNT[0]));
   AO22X1M U63 (.Y(n41), 
	.B1(n65), 
	.B0(N19), 
	.A1(n34), 
	.A0(EDGE_CNT[1]));
   AO22X1M U64 (.Y(n39), 
	.B1(n65), 
	.B0(N21), 
	.A1(n34), 
	.A0(EDGE_CNT[3]));
   AO22X1M U65 (.Y(n40), 
	.B1(n65), 
	.B0(N20), 
	.A1(n34), 
	.A0(EDGE_CNT[2]));
   AO22X1M U66 (.Y(n42), 
	.B1(n65), 
	.B0(N22), 
	.A1(n34), 
	.A0(EDGE_CNT[4]));
   INVX2M U67 (.Y(n64), 
	.A(EDGE_CNT[4]));
   NAND3X2M U68 (.Y(n32), 
	.C(BIT_CNT[3]), 
	.B(n71), 
	.A(n69));
   NAND3X2M U69 (.Y(n33), 
	.C(n70), 
	.B(n73), 
	.A(n71));
   INVX2M U70 (.Y(n73), 
	.A(PAR_EN));
   INVX2M U72 (.Y(n72), 
	.A(BIT_CNT[3]));
   ADDHX1M U73 (.S(N19), 
	.CO(\add_19/carry[2] ), 
	.B(EDGE_CNT[0]), 
	.A(EDGE_CNT[1]));
   ADDHX1M U74 (.S(N20), 
	.CO(\add_19/carry[3] ), 
	.B(\add_19/carry[2] ), 
	.A(EDGE_CNT[2]));
   ADDHX1M U75 (.S(N21), 
	.CO(\add_19/carry[4] ), 
	.B(\add_19/carry[3] ), 
	.A(EDGE_CNT[3]));
   OAI2BB1X1M U76 (.Y(N6), 
	.B0(n48), 
	.A1N(PRESCALE[1]), 
	.A0N(PRESCALE[0]));
   AO21XLM U77 (.Y(N10), 
	.B0(N11), 
	.A1(PRESCALE[5]), 
	.A0(n51));
   CLKXOR2X2M U78 (.Y(N22), 
	.B(EDGE_CNT[4]), 
	.A(\add_19/carry[4] ));
   CLKNAND2X2M U79 (.Y(n62), 
	.B(n2), 
	.A(EDGE_CNT[2]));
   CLKNAND2X2M U80 (.Y(n61), 
	.B(n1), 
	.A(EDGE_CNT[3]));
   OAI2B2X1M U81 (.Y(n53), 
	.B1(n52), 
	.B0(EDGE_CNT[1]), 
	.A1N(N6), 
	.A0(n52));
   OAI21X1M U82 (.Y(n60), 
	.B0(n53), 
	.A1(n64), 
	.A0(N9));
   AO21XLM U83 (.Y(n54), 
	.B0(N6), 
	.A1(n55), 
	.A0(n63));
   OAI211X1M U84 (.Y(n56), 
	.C0(n62), 
	.B0(n54), 
	.A1(n63), 
	.A0(n55));
   OAI211X1M U85 (.Y(n59), 
	.C0(n61), 
	.B0(n57), 
	.A1(n64), 
	.A0(N9));
   NOR2X1M U86 (.Y(n58), 
	.B(N10), 
	.A(N11));
   DLY1X1M U87 (.Y(n78), 
	.A(n82));
   DLY1X1M U88 (.Y(n79), 
	.A(n85));
   DLY1X1M U89 (.Y(n80), 
	.A(n83));
   DLY1X1M U90 (.Y(n81), 
	.A(n84));
   DLY1X1M U91 (.Y(n82), 
	.A(test_se));
   DLY1X1M U92 (.Y(n83), 
	.A(n82));
   DLY1X1M U93 (.Y(n84), 
	.A(n78));
   DLY1X1M U94 (.Y(n85), 
	.A(n78));
   SDFFSRX1M \BIT_CNT_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(n81), 
	.RN(RST), 
	.QN(n69), 
	.Q(BIT_CNT[0]), 
	.D(n38), 
	.CK(CLK));
   SDFFSRX1M \EDGE_CNT_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(BIT_CNT[3]), 
	.SE(n80), 
	.RN(RST), 
	.QN(n3), 
	.Q(n75), 
	.D(n43), 
	.CK(CLK));
endmodule

module PARITY_CHECK_test_1 (
	CLK, 
	RST, 
	PAR_CHK_EN, 
	SAMPLED_BIT, 
	PAR_TYP, 
	P_DATA, 
	PAR_ERR, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input PAR_CHK_EN;
   input SAMPLED_BIT;
   input PAR_TYP;
   input [7:0] P_DATA;
   output PAR_ERR;
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
   wire n10;

   SDFFRQX4M PAR_ERR_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(PAR_ERR), 
	.D(n9), 
	.CK(CLK));
   XNOR2X2M U2 (.Y(n7), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   XNOR2X2M U3 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   OAI2BB2X1M U5 (.Y(n9), 
	.B1(n10), 
	.B0(n1), 
	.A1N(n10), 
	.A0N(PAR_ERR));
   XOR3XLM U6 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   INVX2M U7 (.Y(n10), 
	.A(PAR_CHK_EN));
   XOR3XLM U8 (.Y(n4), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U9 (.Y(n5), 
	.B(PAR_TYP), 
	.A(SAMPLED_BIT));
   XOR3XLM U11 (.Y(n3), 
	.C(n7), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
endmodule

module STRT_CHECK_test_1 (
	CLK, 
	RST, 
	STRT_CHK_EN, 
	SAMPLED_BIT, 
	STRT_GLITCH, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input STRT_CHK_EN;
   input SAMPLED_BIT;
   output STRT_GLITCH;
   input test_si;
   input test_se;

   // Internal wires
   wire n8;
   wire n2;

   AO2B2X2M U4 (.Y(n2), 
	.B1(SAMPLED_BIT), 
	.B0(STRT_CHK_EN), 
	.A1N(STRT_CHK_EN), 
	.A0(n8));
   CLKBUFX1M U5 (.Y(STRT_GLITCH), 
	.A(n8));
   SDFFRQX1M STRT_GLITCH_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(n8), 
	.D(n2), 
	.CK(CLK));
endmodule

module STOP_CHECK_test_1 (
	CLK, 
	RST, 
	STP_CHK_EN, 
	SAMPLED_BIT, 
	STP_ERR, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input STP_CHK_EN;
   input SAMPLED_BIT;
   output STP_ERR;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n4;
   wire n7;
   wire n8;

   OAI2BB2X1M U3 (.Y(n3), 
	.B1(n4), 
	.B0(SAMPLED_BIT), 
	.A1N(n4), 
	.A0N(n8));
   INVX2M U5 (.Y(n4), 
	.A(STP_CHK_EN));
   INVXLM U6 (.Y(n7), 
	.A(STP_ERR));
   INVXLM U7 (.Y(n8), 
	.A(n7));
   SDFFRHQX8M STP_ERR_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(STP_ERR), 
	.D(n3), 
	.CK(CLK));
endmodule

module UART_RX_width8_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PRESCALE, 
	PAR_TYP, 
	PAR_EN, 
	DATA_VALID, 
	P_DATA, 
	PAR_ERR, 
	STP_ERR, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	RX_CLK_scan__L3_N1, 
	RX_CLK_scan__L3_N2, 
	RX_CLK_scan__L3_N3);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] PRESCALE;
   input PAR_TYP;
   input PAR_EN;
   output DATA_VALID;
   output [7:0] P_DATA;
   output PAR_ERR;
   output STP_ERR;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input RX_CLK_scan__L3_N1;
   input RX_CLK_scan__L3_N2;
   input RX_CLK_scan__L3_N3;

   // Internal wires
   wire STRT_GLITCH;
   wire ENABLE;
   wire DESER_EN;
   wire PAR_CHK_EN;
   wire STRT_CHK_EN;
   wire STP_CHK_EN;
   wire SAMPLED_BIT;
   wire n3;
   wire n4;
   wire n5;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [3:0] BIT_CNT;
   wire [4:0] EDGE_CNT;

   assign test_so1 = STRT_GLITCH ;

   INVXLM U4 (.Y(n9), 
	.A(STP_ERR));
   INVXLM U5 (.Y(n10), 
	.A(n9));
   DLY1X1M U6 (.Y(n11), 
	.A(test_se));
   DLY1X1M U7 (.Y(n12), 
	.A(n11));
   DLY1X1M U8 (.Y(n13), 
	.A(n11));
   DLY1X1M U9 (.Y(n14), 
	.A(n12));
   DLY1X1M U10 (.Y(n15), 
	.A(n13));
   DLY1X1M U11 (.Y(n16), 
	.A(n12));
   FSM_test_1 F (.RX_IN(RX_IN), 
	.CLK(CLK), 
	.RST(RST), 
	.PAR_EN(PAR_EN), 
	.BIT_CNT({ BIT_CNT[3],
		BIT_CNT[2],
		BIT_CNT[1],
		BIT_CNT[0] }), 
	.EDGE_CNT({ EDGE_CNT[4],
		EDGE_CNT[3],
		EDGE_CNT[2],
		EDGE_CNT[1],
		EDGE_CNT[0] }), 
	.PRESCALE({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.PAR_ERR(PAR_ERR), 
	.STRT_GLITCH(STRT_GLITCH), 
	.STP_ERR(n10), 
	.ENABLE(ENABLE), 
	.DESER_EN(DESER_EN), 
	.DATA_VALID(DATA_VALID), 
	.PAR_CHK_EN(PAR_CHK_EN), 
	.STRT_CHK_EN(STRT_CHK_EN), 
	.STP_CHK_EN(STP_CHK_EN), 
	.test_so(n3), 
	.test_se(n17), 
	.RX_CLK_scan__L3_N1(RX_CLK_scan__L3_N1));
   data_sampling_test_1 D0 (.CLK(CLK), 
	.RST(RST), 
	.RX_IN(RX_IN), 
	.PRESCALE({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.DATA_SAMP_EN(1'b1), 
	.EDGE_CNT({ EDGE_CNT[4],
		EDGE_CNT[3],
		EDGE_CNT[2],
		EDGE_CNT[1],
		EDGE_CNT[0] }), 
	.SAMPLED_BIT(SAMPLED_BIT), 
	.test_si(test_si1), 
	.test_so(n5), 
	.test_se(n16), 
	.RX_CLK_scan__L3_N2(RX_CLK_scan__L3_N2));
   deserializer_test_1 D1 (.CLK(RX_CLK_scan__L3_N1), 
	.RST(RST), 
	.SAMPLED_BIT(SAMPLED_BIT), 
	.DESER_EN(DESER_EN), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(n14), 
	.RX_CLK_scan__L3_N2(RX_CLK_scan__L3_N2), 
	.RX_CLK_scan__L3_N3(RX_CLK_scan__L3_N3));
   edge_bit_counter_test_1 E (.ENABLE(ENABLE), 
	.PAR_EN(PAR_EN), 
	.CLK(CLK), 
	.RST(RST), 
	.PRESCALE({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.BIT_CNT({ BIT_CNT[3],
		BIT_CNT[2],
		BIT_CNT[1],
		BIT_CNT[0] }), 
	.EDGE_CNT({ EDGE_CNT[4],
		EDGE_CNT[3],
		EDGE_CNT[2],
		EDGE_CNT[1],
		EDGE_CNT[0] }), 
	.test_si(n4), 
	.test_se(n15), 
	.RX_CLK_scan__L3_N1(RX_CLK_scan__L3_N1));
   PARITY_CHECK_test_1 P (.CLK(CLK), 
	.RST(RST), 
	.PAR_CHK_EN(PAR_CHK_EN), 
	.SAMPLED_BIT(SAMPLED_BIT), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.PAR_ERR(PAR_ERR), 
	.test_si(n3), 
	.test_se(n15));
   STRT_CHECK_test_1 S0 (.CLK(CLK), 
	.RST(RST), 
	.STRT_CHK_EN(STRT_CHK_EN), 
	.SAMPLED_BIT(SAMPLED_BIT), 
	.STRT_GLITCH(STRT_GLITCH), 
	.test_si(PAR_ERR), 
	.test_se(n16));
   STOP_CHECK_test_1 S1 (.CLK(RX_CLK_scan__L3_N2), 
	.RST(RST), 
	.STP_CHK_EN(STP_CHK_EN), 
	.SAMPLED_BIT(SAMPLED_BIT), 
	.STP_ERR(STP_ERR), 
	.test_si(test_si2), 
	.test_se(n14));
   BUFX2M U12 (.Y(n17), 
	.A(n13));
endmodule

module UART_width8_test_1 (
	UART_CONFIG, 
	TX_CLK, 
	RX_CLK, 
	RST, 
	RX_IN, 
	F_EMPTY, 
	RdData, 
	TX_OUT, 
	busy, 
	RX_OUT, 
	sync_en, 
	PAR_ERR, 
	STP_ERR, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN2_RST_M_2, 
	RX_CLK_scan__L3_N1, 
	RX_CLK_scan__L3_N2, 
	RX_CLK_scan__L3_N3, 
	TX_CLK_scan__L3_N1);
   input [7:0] UART_CONFIG;
   input TX_CLK;
   input RX_CLK;
   input RST;
   input RX_IN;
   input F_EMPTY;
   input [7:0] RdData;
   output TX_OUT;
   output busy;
   output [7:0] RX_OUT;
   output sync_en;
   output PAR_ERR;
   output STP_ERR;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN2_RST_M_2;
   input RX_CLK_scan__L3_N1;
   input RX_CLK_scan__L3_N2;
   input RX_CLK_scan__L3_N3;
   input TX_CLK_scan__L3_N1;

   // Internal wires
   wire n3;
   wire n7;
   wire n8;
   wire n9;

   INVXLM U2 (.Y(n7), 
	.A(test_se));
   INVXLM U3 (.Y(n8), 
	.A(n7));
   DLY1X1M U4 (.Y(n9), 
	.A(n8));
   UART_TX_width8_test_1 dut0 (.P_DATA({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.DATA_VALID(F_EMPTY), 
	.PAR_EN(UART_CONFIG[0]), 
	.PAR_TYP(UART_CONFIG[1]), 
	.CLK(TX_CLK), 
	.RST(FE_OFN2_RST_M_2), 
	.TX_OUT(TX_OUT), 
	.busy(busy), 
	.test_si(test_si1), 
	.test_so(n3), 
	.test_se(n9), 
	.TX_CLK_scan__L3_N1(TX_CLK_scan__L3_N1));
   UART_RX_width8_test_1 dut1 (.CLK(RX_CLK), 
	.RST(RST), 
	.RX_IN(RX_IN), 
	.PRESCALE({ UART_CONFIG[7],
		UART_CONFIG[6],
		UART_CONFIG[5],
		UART_CONFIG[4],
		UART_CONFIG[3],
		UART_CONFIG[2] }), 
	.PAR_TYP(UART_CONFIG[1]), 
	.PAR_EN(UART_CONFIG[0]), 
	.DATA_VALID(sync_en), 
	.P_DATA({ RX_OUT[7],
		RX_OUT[6],
		RX_OUT[5],
		RX_OUT[4],
		RX_OUT[3],
		RX_OUT[2],
		RX_OUT[1],
		RX_OUT[0] }), 
	.PAR_ERR(PAR_ERR), 
	.STP_ERR(STP_ERR), 
	.test_si2(test_si2), 
	.test_si1(n3), 
	.test_so1(test_so1), 
	.test_se(n9), 
	.RX_CLK_scan__L3_N1(RX_CLK_scan__L3_N1), 
	.RX_CLK_scan__L3_N2(RX_CLK_scan__L3_N2), 
	.RX_CLK_scan__L3_N3(RX_CLK_scan__L3_N3));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se, 
	REF_CLK_scan__L3_N3);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;
   input REF_CLK_scan__L3_N3;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n8;
   wire n9;
   wire [1:0] Q;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \Q_reg[0]  (.SI(test_si), 
	.SE(n9), 
	.RN(RST), 
	.Q(Q[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M SYNC_RST_reg (.SI(Q[1]), 
	.SE(n8), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(Q[1]), 
	.CK(CLK));
   SDFFRQX1M \Q_reg[1]  (.SI(Q[0]), 
	.SE(n8), 
	.RN(RST), 
	.Q(Q[1]), 
	.D(Q[0]), 
	.CK(CLK));
   DLY1X1M U8 (.Y(n8), 
	.A(n9));
   DLY1X1M U9 (.Y(n9), 
	.A(test_se));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n11;
   wire n12;
   wire [1:0] Q;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \Q_reg[0]  (.SI(test_si), 
	.SE(n11), 
	.RN(RST), 
	.Q(Q[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M SYNC_RST_reg (.SI(Q[1]), 
	.SE(n11), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(Q[1]), 
	.CK(CLK));
   SDFFRQX1M \Q_reg[1]  (.SI(Q[0]), 
	.SE(n12), 
	.RN(RST), 
	.Q(Q[1]), 
	.D(Q[0]), 
	.CK(CLK));
   DLY1X1M U8 (.Y(n11), 
	.A(n12));
   DLY1X1M U9 (.Y(n12), 
	.A(test_se));
endmodule

module Pulse_Gen_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	Pulse_SIG, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output Pulse_SIG;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire [1:0] Q;

   assign test_so = Q[1] ;

   SDFFRQX1M \Q_reg[1]  (.SI(Q[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q[1]), 
	.D(Q[0]), 
	.CK(CLK));
   SDFFRQX1M \Q_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q[0]), 
	.D(LVL_SIG), 
	.CK(CLK));
   NOR2BX2M U7 (.Y(Pulse_SIG), 
	.B(Q[1]), 
	.AN(Q[0]));
endmodule

module FIFO_MEM_DATA_WIDTH8_test_1 (
	WR_DATA, 
	W_CLKEN, 
	W_ADDR, 
	R_ADDR, 
	W_CLK, 
	W_RST, 
	RD_DATA, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_RST_M_1, 
	REF_CLK_scan__L3_N2, 
	REF_CLK_scan__L3_N3, 
	REF_CLK_scan__L3_N4);
   input [7:0] WR_DATA;
   input W_CLKEN;
   input [2:0] W_ADDR;
   input [2:0] R_ADDR;
   input W_CLK;
   input W_RST;
   output [7:0] RD_DATA;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_RST_M_1;
   input REF_CLK_scan__L3_N2;
   input REF_CLK_scan__L3_N3;
   input REF_CLK_scan__L3_N4;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \mem[0][7] ;
   wire \mem[0][6] ;
   wire \mem[0][5] ;
   wire \mem[0][4] ;
   wire \mem[0][3] ;
   wire \mem[0][2] ;
   wire \mem[0][1] ;
   wire \mem[0][0] ;
   wire \mem[1][7] ;
   wire \mem[1][6] ;
   wire \mem[1][5] ;
   wire \mem[1][3] ;
   wire \mem[1][2] ;
   wire \mem[1][1] ;
   wire \mem[1][0] ;
   wire \mem[2][7] ;
   wire \mem[2][6] ;
   wire \mem[2][5] ;
   wire \mem[2][4] ;
   wire \mem[2][3] ;
   wire \mem[2][2] ;
   wire \mem[2][1] ;
   wire \mem[2][0] ;
   wire \mem[3][7] ;
   wire \mem[3][6] ;
   wire \mem[3][5] ;
   wire \mem[3][4] ;
   wire \mem[3][3] ;
   wire \mem[3][2] ;
   wire \mem[3][1] ;
   wire \mem[3][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire n76;
   wire n81;
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
   wire n221;
   wire n222;
   wire n224;
   wire n226;
   wire n228;
   wire n230;
   wire n232;
   wire n234;
   wire n236;
   wire n238;
   wire n240;
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

   assign N10 = R_ADDR[0] ;
   assign N11 = R_ADDR[1] ;
   assign N12 = R_ADDR[2] ;

   SDFFRQX1M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n286), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][7] ), 
	.D(n116), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n286), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][6] ), 
	.D(n115), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n323), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][5] ), 
	.D(n114), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(n276), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][4] ), 
	.D(n113), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n276), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][3] ), 
	.D(n112), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n285), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][2] ), 
	.D(n111), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n285), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][1] ), 
	.D(n110), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[4][0]  (.SI(\mem[3][7] ), 
	.SE(n321), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[4][0] ), 
	.D(n109), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n275), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(test_so2), 
	.D(n92), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n275), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][6] ), 
	.D(n91), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n284), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][5] ), 
	.D(n90), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n284), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][4] ), 
	.D(n89), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(n319), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][3] ), 
	.D(n88), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(n274), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][2] ), 
	.D(n87), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n274), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][1] ), 
	.D(n86), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n283), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[7][0] ), 
	.D(n85), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n283), 
	.RN(W_RST), 
	.Q(\mem[6][7] ), 
	.D(n100), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n317), 
	.RN(W_RST), 
	.Q(\mem[6][6] ), 
	.D(n99), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(n273), 
	.RN(W_RST), 
	.Q(\mem[6][5] ), 
	.D(n98), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n273), 
	.RN(W_RST), 
	.Q(\mem[6][4] ), 
	.D(n97), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n282), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[6][3] ), 
	.D(n96), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n282), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[6][2] ), 
	.D(n95), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n315), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[6][1] ), 
	.D(n94), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n272), 
	.RN(W_RST), 
	.Q(\mem[6][0] ), 
	.D(n93), 
	.CK(REF_CLK_scan__L3_N3));
   SDFFRQX1M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n272), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][7] ), 
	.D(n108), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n281), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][6] ), 
	.D(n107), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n281), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][5] ), 
	.D(n106), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n313), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][4] ), 
	.D(n105), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n271), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][3] ), 
	.D(n104), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n271), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][2] ), 
	.D(n103), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n280), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][1] ), 
	.D(n102), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n280), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[5][0] ), 
	.D(n101), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[3][7]  (.SI(\mem[3][6] ), 
	.SE(n311), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][7] ), 
	.D(n124), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[3][6]  (.SI(\mem[3][5] ), 
	.SE(n270), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][6] ), 
	.D(n123), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[3][5]  (.SI(\mem[3][4] ), 
	.SE(n270), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][5] ), 
	.D(n122), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[3][4]  (.SI(\mem[3][3] ), 
	.SE(n279), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][4] ), 
	.D(n121), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[3][3]  (.SI(\mem[3][2] ), 
	.SE(n279), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][3] ), 
	.D(n120), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[3][2]  (.SI(\mem[3][1] ), 
	.SE(n309), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][2] ), 
	.D(n119), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[3][1]  (.SI(\mem[3][0] ), 
	.SE(n269), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][1] ), 
	.D(n118), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[3][0]  (.SI(\mem[2][7] ), 
	.SE(n269), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[3][0] ), 
	.D(n117), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[2][7]  (.SI(\mem[2][6] ), 
	.SE(n278), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][7] ), 
	.D(n132), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][6]  (.SI(\mem[2][5] ), 
	.SE(n278), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][6] ), 
	.D(n131), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][5]  (.SI(\mem[2][4] ), 
	.SE(n307), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][5] ), 
	.D(n130), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][4]  (.SI(\mem[2][3] ), 
	.SE(n268), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][4] ), 
	.D(n129), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][3]  (.SI(\mem[2][2] ), 
	.SE(n268), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][3] ), 
	.D(n128), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][2]  (.SI(\mem[2][1] ), 
	.SE(n277), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][2] ), 
	.D(n127), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][1]  (.SI(\mem[2][0] ), 
	.SE(n277), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][1] ), 
	.D(n126), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[2][0]  (.SI(\mem[1][7] ), 
	.SE(n305), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[2][0] ), 
	.D(n125), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[1][7]  (.SI(\mem[1][6] ), 
	.SE(n292), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][7] ), 
	.D(n140), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[1][6]  (.SI(\mem[1][5] ), 
	.SE(n289), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][6] ), 
	.D(n139), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[1][5]  (.SI(test_si2), 
	.SE(n267), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][5] ), 
	.D(n138), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[1][4]  (.SI(\mem[1][3] ), 
	.SE(n296), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(test_so1), 
	.D(n137), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[1][3]  (.SI(\mem[1][2] ), 
	.SE(n291), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][3] ), 
	.D(n136), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[1][2]  (.SI(\mem[1][1] ), 
	.SE(n288), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][2] ), 
	.D(n135), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[1][1]  (.SI(\mem[1][0] ), 
	.SE(n300), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][1] ), 
	.D(n134), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[1][0]  (.SI(\mem[0][7] ), 
	.SE(n297), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[1][0] ), 
	.D(n133), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[0][5]  (.SI(\mem[0][4] ), 
	.SE(n299), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][5] ), 
	.D(n146), 
	.CK(W_CLK));
   SDFFRQX1M \mem_reg[0][4]  (.SI(\mem[0][3] ), 
	.SE(n296), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][4] ), 
	.D(n145), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[0][3]  (.SI(\mem[0][2] ), 
	.SE(n292), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][3] ), 
	.D(n144), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[0][2]  (.SI(\mem[0][1] ), 
	.SE(n289), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][2] ), 
	.D(n143), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[0][1]  (.SI(\mem[0][0] ), 
	.SE(n267), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][1] ), 
	.D(n142), 
	.CK(REF_CLK_scan__L3_N4));
   SDFFRQX1M \mem_reg[0][0]  (.SI(test_si1), 
	.SE(n297), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][0] ), 
	.D(n141), 
	.CK(W_CLK));
   CLKINVX2M U66 (.Y(n258), 
	.A(W_ADDR[1]));
   AND3X1M U67 (.Y(n201), 
	.C(W_ADDR[1]), 
	.B(n257), 
	.A(n76));
   AND3X1M U68 (.Y(n197), 
	.C(W_ADDR[1]), 
	.B(n76), 
	.A(W_ADDR[0]));
   AND3X1M U69 (.Y(n199), 
	.C(n81), 
	.B(W_ADDR[0]), 
	.A(W_ADDR[1]));
   AND3X1M U70 (.Y(n200), 
	.C(n81), 
	.B(n257), 
	.A(W_ADDR[1]));
   NOR2BX2M U135 (.Y(n81), 
	.B(W_ADDR[2]), 
	.AN(W_CLKEN));
   AND2X2M U136 (.Y(n76), 
	.B(W_ADDR[2]), 
	.A(W_CLKEN));
   INVX2M U137 (.Y(n257), 
	.A(W_ADDR[0]));
   CLKINVX2M U145 (.Y(n234), 
	.A(n196));
   CLKINVX2M U147 (.Y(n226), 
	.A(n195));
   CLKINVX2M U150 (.Y(n238), 
	.A(n201));
   CLKINVX2M U152 (.Y(n236), 
	.A(n202));
   CLKINVX2M U154 (.Y(n228), 
	.A(n198));
   CLKINVX2M U156 (.Y(n232), 
	.A(n199));
   CLKINVX2M U158 (.Y(n230), 
	.A(n200));
   CLKINVX2M U160 (.Y(n240), 
	.A(n197));
   AND3X2M U162 (.Y(n195), 
	.C(n81), 
	.B(n258), 
	.A(n257));
   AND3X2M U163 (.Y(n196), 
	.C(n76), 
	.B(n258), 
	.A(n257));
   CLKINVX4M U164 (.Y(n219), 
	.A(n221));
   CLKINVX2M U166 (.Y(n222), 
	.A(n224));
   CLKINVX2M U168 (.Y(n256), 
	.A(WR_DATA[0]));
   CLKINVX2M U169 (.Y(n255), 
	.A(WR_DATA[1]));
   CLKINVX2M U170 (.Y(n254), 
	.A(WR_DATA[2]));
   CLKINVX2M U171 (.Y(n253), 
	.A(WR_DATA[3]));
   CLKINVX2M U172 (.Y(n252), 
	.A(WR_DATA[4]));
   CLKINVX2M U173 (.Y(n251), 
	.A(WR_DATA[5]));
   CLKINVX2M U174 (.Y(n250), 
	.A(WR_DATA[6]));
   CLKINVX2M U175 (.Y(n249), 
	.A(WR_DATA[7]));
   OAI2BB2X1M U176 (.Y(n93), 
	.B1(n238), 
	.B0(n256), 
	.A1N(n238), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U177 (.Y(n94), 
	.B1(n238), 
	.B0(n255), 
	.A1N(n238), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U178 (.Y(n95), 
	.B1(n238), 
	.B0(n254), 
	.A1N(n238), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U179 (.Y(n96), 
	.B1(n238), 
	.B0(n253), 
	.A1N(n238), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U180 (.Y(n97), 
	.B1(n238), 
	.B0(n252), 
	.A1N(n238), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U181 (.Y(n98), 
	.B1(n238), 
	.B0(n251), 
	.A1N(n238), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U182 (.Y(n99), 
	.B1(n238), 
	.B0(n250), 
	.A1N(n238), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U183 (.Y(n100), 
	.B1(n238), 
	.B0(n249), 
	.A1N(n238), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U184 (.Y(n101), 
	.B1(n236), 
	.B0(n256), 
	.A1N(n236), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U185 (.Y(n102), 
	.B1(n236), 
	.B0(n255), 
	.A1N(n236), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U186 (.Y(n103), 
	.B1(n236), 
	.B0(n254), 
	.A1N(n236), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U187 (.Y(n104), 
	.B1(n236), 
	.B0(n253), 
	.A1N(n236), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U188 (.Y(n105), 
	.B1(n236), 
	.B0(n252), 
	.A1N(n236), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U189 (.Y(n106), 
	.B1(n236), 
	.B0(n251), 
	.A1N(n236), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U190 (.Y(n107), 
	.B1(n236), 
	.B0(n250), 
	.A1N(n236), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U191 (.Y(n108), 
	.B1(n236), 
	.B0(n249), 
	.A1N(n236), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U192 (.Y(n109), 
	.B1(n234), 
	.B0(n256), 
	.A1N(n234), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U193 (.Y(n110), 
	.B1(n234), 
	.B0(n255), 
	.A1N(n234), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U194 (.Y(n111), 
	.B1(n234), 
	.B0(n254), 
	.A1N(n234), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U195 (.Y(n112), 
	.B1(n234), 
	.B0(n253), 
	.A1N(n234), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U196 (.Y(n113), 
	.B1(n234), 
	.B0(n252), 
	.A1N(n234), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U197 (.Y(n114), 
	.B1(n234), 
	.B0(n251), 
	.A1N(n234), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U198 (.Y(n115), 
	.B1(n234), 
	.B0(n250), 
	.A1N(n234), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U199 (.Y(n116), 
	.B1(n234), 
	.B0(n249), 
	.A1N(n234), 
	.A0N(\mem[4][7] ));
   OAI2BB2X1M U200 (.Y(n117), 
	.B1(n232), 
	.B0(n256), 
	.A1N(n232), 
	.A0N(\mem[3][0] ));
   OAI2BB2X1M U201 (.Y(n118), 
	.B1(n232), 
	.B0(n255), 
	.A1N(n232), 
	.A0N(\mem[3][1] ));
   OAI2BB2X1M U202 (.Y(n119), 
	.B1(n232), 
	.B0(n254), 
	.A1N(n232), 
	.A0N(\mem[3][2] ));
   OAI2BB2X1M U203 (.Y(n120), 
	.B1(n232), 
	.B0(n253), 
	.A1N(n232), 
	.A0N(\mem[3][3] ));
   OAI2BB2X1M U204 (.Y(n121), 
	.B1(n232), 
	.B0(n252), 
	.A1N(n232), 
	.A0N(\mem[3][4] ));
   OAI2BB2X1M U205 (.Y(n122), 
	.B1(n232), 
	.B0(n251), 
	.A1N(n232), 
	.A0N(\mem[3][5] ));
   OAI2BB2X1M U206 (.Y(n123), 
	.B1(n232), 
	.B0(n250), 
	.A1N(n232), 
	.A0N(\mem[3][6] ));
   OAI2BB2X1M U207 (.Y(n124), 
	.B1(n232), 
	.B0(n249), 
	.A1N(n232), 
	.A0N(\mem[3][7] ));
   OAI2BB2X1M U208 (.Y(n125), 
	.B1(n230), 
	.B0(n256), 
	.A1N(n230), 
	.A0N(\mem[2][0] ));
   OAI2BB2X1M U209 (.Y(n126), 
	.B1(n230), 
	.B0(n255), 
	.A1N(n230), 
	.A0N(\mem[2][1] ));
   OAI2BB2X1M U210 (.Y(n127), 
	.B1(n230), 
	.B0(n254), 
	.A1N(n230), 
	.A0N(\mem[2][2] ));
   OAI2BB2X1M U211 (.Y(n128), 
	.B1(n230), 
	.B0(n253), 
	.A1N(n230), 
	.A0N(\mem[2][3] ));
   OAI2BB2X1M U212 (.Y(n129), 
	.B1(n230), 
	.B0(n252), 
	.A1N(n230), 
	.A0N(\mem[2][4] ));
   OAI2BB2X1M U213 (.Y(n130), 
	.B1(n230), 
	.B0(n251), 
	.A1N(n230), 
	.A0N(\mem[2][5] ));
   OAI2BB2X1M U214 (.Y(n131), 
	.B1(n230), 
	.B0(n250), 
	.A1N(n230), 
	.A0N(\mem[2][6] ));
   OAI2BB2X1M U215 (.Y(n132), 
	.B1(n230), 
	.B0(n249), 
	.A1N(n230), 
	.A0N(\mem[2][7] ));
   OAI2BB2X1M U216 (.Y(n133), 
	.B1(n228), 
	.B0(n256), 
	.A1N(n228), 
	.A0N(\mem[1][0] ));
   OAI2BB2X1M U217 (.Y(n134), 
	.B1(n228), 
	.B0(n255), 
	.A1N(n228), 
	.A0N(\mem[1][1] ));
   OAI2BB2X1M U218 (.Y(n135), 
	.B1(n228), 
	.B0(n254), 
	.A1N(n228), 
	.A0N(\mem[1][2] ));
   OAI2BB2X1M U219 (.Y(n136), 
	.B1(n228), 
	.B0(n253), 
	.A1N(n228), 
	.A0N(\mem[1][3] ));
   OAI2BB2X1M U220 (.Y(n137), 
	.B1(n228), 
	.B0(n252), 
	.A1N(n228), 
	.A0N(test_so1));
   OAI2BB2X1M U221 (.Y(n138), 
	.B1(n228), 
	.B0(n251), 
	.A1N(n228), 
	.A0N(\mem[1][5] ));
   OAI2BB2X1M U222 (.Y(n139), 
	.B1(n228), 
	.B0(n250), 
	.A1N(n228), 
	.A0N(\mem[1][6] ));
   OAI2BB2X1M U223 (.Y(n140), 
	.B1(n228), 
	.B0(n249), 
	.A1N(n228), 
	.A0N(\mem[1][7] ));
   OAI2BB2X1M U224 (.Y(n141), 
	.B1(n226), 
	.B0(n256), 
	.A1N(n226), 
	.A0N(\mem[0][0] ));
   OAI2BB2X1M U225 (.Y(n142), 
	.B1(n226), 
	.B0(n255), 
	.A1N(n226), 
	.A0N(\mem[0][1] ));
   OAI2BB2X1M U226 (.Y(n143), 
	.B1(n226), 
	.B0(n254), 
	.A1N(n226), 
	.A0N(\mem[0][2] ));
   OAI2BB2X1M U227 (.Y(n144), 
	.B1(n226), 
	.B0(n253), 
	.A1N(n226), 
	.A0N(\mem[0][3] ));
   OAI2BB2X1M U228 (.Y(n145), 
	.B1(n226), 
	.B0(n252), 
	.A1N(n226), 
	.A0N(\mem[0][4] ));
   OAI2BB2X1M U229 (.Y(n146), 
	.B1(n226), 
	.B0(n251), 
	.A1N(n226), 
	.A0N(\mem[0][5] ));
   OAI2BB2X1M U230 (.Y(n147), 
	.B1(n226), 
	.B0(n250), 
	.A1N(n226), 
	.A0N(\mem[0][6] ));
   OAI2BB2X1M U231 (.Y(n148), 
	.B1(n226), 
	.B0(n249), 
	.A1N(n226), 
	.A0N(\mem[0][7] ));
   OAI2BB2X1M U232 (.Y(n85), 
	.B1(n256), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U233 (.Y(n86), 
	.B1(n255), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U234 (.Y(n87), 
	.B1(n254), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U235 (.Y(n88), 
	.B1(n253), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U236 (.Y(n89), 
	.B1(n252), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U237 (.Y(n90), 
	.B1(n251), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U238 (.Y(n91), 
	.B1(n250), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U239 (.Y(n92), 
	.B1(n249), 
	.B0(n240), 
	.A1N(n240), 
	.A0N(test_so2));
   AND3X2M U240 (.Y(n198), 
	.C(n81), 
	.B(n258), 
	.A(W_ADDR[0]));
   AND3X2M U241 (.Y(n202), 
	.C(W_ADDR[0]), 
	.B(n258), 
	.A(n76));
   MX2X2M U242 (.Y(RD_DATA[6]), 
	.S0(N12), 
	.B(n215), 
	.A(n216));
   MX4X1M U243 (.Y(n216), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][6] ), 
	.C(\mem[2][6] ), 
	.B(\mem[1][6] ), 
	.A(\mem[0][6] ));
   MX4X1M U244 (.Y(n215), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][6] ), 
	.C(\mem[6][6] ), 
	.B(\mem[5][6] ), 
	.A(\mem[4][6] ));
   MX2X2M U245 (.Y(RD_DATA[2]), 
	.S0(N12), 
	.B(n207), 
	.A(n208));
   MX4X1M U246 (.Y(n208), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][2] ), 
	.C(\mem[2][2] ), 
	.B(\mem[1][2] ), 
	.A(\mem[0][2] ));
   MX4X1M U247 (.Y(n207), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][2] ), 
	.C(\mem[6][2] ), 
	.B(\mem[5][2] ), 
	.A(\mem[4][2] ));
   MX2X2M U248 (.Y(RD_DATA[3]), 
	.S0(N12), 
	.B(n209), 
	.A(n210));
   MX4X1M U249 (.Y(n210), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][3] ), 
	.C(\mem[2][3] ), 
	.B(\mem[1][3] ), 
	.A(\mem[0][3] ));
   MX4X1M U250 (.Y(n209), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][3] ), 
	.C(\mem[6][3] ), 
	.B(\mem[5][3] ), 
	.A(\mem[4][3] ));
   MX2X2M U251 (.Y(RD_DATA[4]), 
	.S0(N12), 
	.B(n211), 
	.A(n212));
   MX4X1M U252 (.Y(n212), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][4] ), 
	.C(\mem[2][4] ), 
	.B(test_so1), 
	.A(\mem[0][4] ));
   MX4X1M U253 (.Y(n211), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][4] ), 
	.C(\mem[6][4] ), 
	.B(\mem[5][4] ), 
	.A(\mem[4][4] ));
   MX2X2M U254 (.Y(RD_DATA[0]), 
	.S0(N12), 
	.B(n203), 
	.A(n204));
   MX4X1M U255 (.Y(n204), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][0] ), 
	.C(\mem[2][0] ), 
	.B(\mem[1][0] ), 
	.A(\mem[0][0] ));
   MX4X1M U256 (.Y(n203), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][0] ), 
	.C(\mem[6][0] ), 
	.B(\mem[5][0] ), 
	.A(\mem[4][0] ));
   MX2X2M U257 (.Y(RD_DATA[5]), 
	.S0(N12), 
	.B(n213), 
	.A(n214));
   MX4X1M U258 (.Y(n214), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][5] ), 
	.C(\mem[2][5] ), 
	.B(\mem[1][5] ), 
	.A(\mem[0][5] ));
   MX4X1M U259 (.Y(n213), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][5] ), 
	.C(\mem[6][5] ), 
	.B(\mem[5][5] ), 
	.A(\mem[4][5] ));
   MX2X2M U260 (.Y(RD_DATA[1]), 
	.S0(N12), 
	.B(n205), 
	.A(n206));
   MX4X1M U261 (.Y(n206), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][1] ), 
	.C(\mem[2][1] ), 
	.B(\mem[1][1] ), 
	.A(\mem[0][1] ));
   MX4X1M U262 (.Y(n205), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[7][1] ), 
	.C(\mem[6][1] ), 
	.B(\mem[5][1] ), 
	.A(\mem[4][1] ));
   MX2X2M U263 (.Y(RD_DATA[7]), 
	.S0(N12), 
	.B(n217), 
	.A(n218));
   MX4X1M U264 (.Y(n218), 
	.S1(n222), 
	.S0(n219), 
	.D(\mem[3][7] ), 
	.C(\mem[2][7] ), 
	.B(\mem[1][7] ), 
	.A(\mem[0][7] ));
   MX4X1M U265 (.Y(n217), 
	.S1(n222), 
	.S0(n219), 
	.D(test_so2), 
	.C(\mem[6][7] ), 
	.B(\mem[5][7] ), 
	.A(\mem[4][7] ));
   INVX2M U266 (.Y(n224), 
	.A(N11));
   INVX2M U267 (.Y(n221), 
	.A(N10));
   DLY1X1M U268 (.Y(n262), 
	.A(n293));
   DLY1X1M U269 (.Y(n263), 
	.A(n295));
   DLY1X1M U270 (.Y(n264), 
	.A(n301));
   DLY1X1M U271 (.Y(n265), 
	.A(n303));
   DLY1X1M U272 (.Y(n266), 
	.A(n293));
   DLY1X1M U273 (.Y(n267), 
	.A(n298));
   DLY1X1M U274 (.Y(n268), 
	.A(n306));
   DLY1X1M U275 (.Y(n269), 
	.A(n308));
   DLY1X1M U276 (.Y(n270), 
	.A(n310));
   DLY1X1M U277 (.Y(n271), 
	.A(n312));
   DLY1X1M U278 (.Y(n272), 
	.A(n314));
   DLY1X1M U279 (.Y(n273), 
	.A(n316));
   DLY1X1M U280 (.Y(n274), 
	.A(n318));
   DLY1X1M U281 (.Y(n275), 
	.A(n320));
   DLY1X1M U282 (.Y(n276), 
	.A(n322));
   DLY1X1M U283 (.Y(n277), 
	.A(n305));
   DLY1X1M U284 (.Y(n278), 
	.A(n307));
   DLY1X1M U285 (.Y(n279), 
	.A(n309));
   DLY1X1M U286 (.Y(n280), 
	.A(n311));
   DLY1X1M U287 (.Y(n281), 
	.A(n313));
   DLY1X1M U288 (.Y(n282), 
	.A(n315));
   DLY1X1M U289 (.Y(n283), 
	.A(n317));
   DLY1X1M U290 (.Y(n284), 
	.A(n319));
   DLY1X1M U291 (.Y(n285), 
	.A(n321));
   DLY1X1M U292 (.Y(n286), 
	.A(n323));
   DLY1X1M U293 (.Y(n287), 
	.A(n265));
   DLY1X1M U294 (.Y(n288), 
	.A(n303));
   DLY1X1M U295 (.Y(n289), 
	.A(n265));
   DLY1X1M U296 (.Y(n290), 
	.A(n302));
   DLY1X1M U297 (.Y(n291), 
	.A(n304));
   DLY1X1M U298 (.Y(n292), 
	.A(n266));
   DLY1X1M U299 (.Y(n293), 
	.A(test_se));
   DLY1X1M U300 (.Y(n294), 
	.A(test_se));
   DLY1X1M U301 (.Y(n295), 
	.A(n301));
   DLY1X1M U302 (.Y(n296), 
	.A(n264));
   DLY1X1M U303 (.Y(n297), 
	.A(n264));
   DLY1X1M U304 (.Y(n298), 
	.A(n304));
   DLY1X1M U305 (.Y(n299), 
	.A(n266));
   DLY1X1M U306 (.Y(n300), 
	.A(n302));
   DLY1X1M U307 (.Y(n301), 
	.A(n294));
   DLY1X1M U308 (.Y(n302), 
	.A(n262));
   DLY1X1M U309 (.Y(n303), 
	.A(n294));
   DLY1X1M U310 (.Y(n304), 
	.A(n262));
   DLY1X1M U311 (.Y(n305), 
	.A(n300));
   DLY1X1M U312 (.Y(n306), 
	.A(n295));
   DLY1X1M U313 (.Y(n307), 
	.A(n306));
   DLY1X1M U314 (.Y(n308), 
	.A(n298));
   DLY1X1M U315 (.Y(n309), 
	.A(n308));
   DLY1X1M U316 (.Y(n310), 
	.A(n287));
   DLY1X1M U317 (.Y(n311), 
	.A(n310));
   DLY1X1M U318 (.Y(n312), 
	.A(n290));
   DLY1X1M U319 (.Y(n313), 
	.A(n312));
   DLY1X1M U320 (.Y(n314), 
	.A(n263));
   DLY1X1M U321 (.Y(n315), 
	.A(n314));
   DLY1X1M U322 (.Y(n316), 
	.A(n299));
   DLY1X1M U323 (.Y(n317), 
	.A(n316));
   DLY1X1M U324 (.Y(n318), 
	.A(n288));
   DLY1X1M U325 (.Y(n319), 
	.A(n318));
   DLY1X1M U326 (.Y(n320), 
	.A(n291));
   DLY1X1M U327 (.Y(n321), 
	.A(n320));
   DLY1X1M U328 (.Y(n322), 
	.A(n263));
   DLY1X1M U329 (.Y(n323), 
	.A(n322));
   SDFFRQX1M \mem_reg[0][7]  (.SI(\mem[0][6] ), 
	.SE(n290), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][7] ), 
	.D(n148), 
	.CK(REF_CLK_scan__L3_N2));
   SDFFRQX1M \mem_reg[0][6]  (.SI(\mem[0][5] ), 
	.SE(n287), 
	.RN(FE_OFN0_RST_M_1), 
	.Q(\mem[0][6] ), 
	.D(n147), 
	.CK(REF_CLK_scan__L3_N2));
endmodule

module DATA_SYNC_test_0 (
	CLK, 
	RST, 
	IN, 
	OUT, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [3:0] IN;
   output [3:0] OUT;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire [3:0] Q;

   assign test_so = Q[3] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   DLY1X1M U17 (.Y(n17), 
	.A(test_se));
   DLY1X1M U18 (.Y(n18), 
	.A(n21));
   DLY1X1M U19 (.Y(n19), 
	.A(n20));
   DLY1X1M U20 (.Y(n20), 
	.A(test_se));
   DLY1X1M U21 (.Y(n21), 
	.A(n17));
   DLY1X1M U22 (.Y(n22), 
	.A(n17));
   SDFFSRX1M \Q_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(Q[2]), 
	.SE(n19), 
	.RN(RST), 
	.Q(Q[3]), 
	.D(IN[3]), 
	.CK(CLK));
   SDFFSRX1M \Q_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(Q[1]), 
	.SE(n22), 
	.RN(RST), 
	.Q(Q[2]), 
	.D(IN[2]), 
	.CK(CLK));
   SDFFSRX1M \Q_reg[1]  (.SN(HTIE_LTIEHI_NET), 
	.SI(Q[0]), 
	.SE(n21), 
	.RN(RST), 
	.Q(Q[1]), 
	.D(IN[1]), 
	.CK(CLK));
   SDFFSRX1M \Q_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(OUT[3]), 
	.SE(n20), 
	.RN(RST), 
	.Q(Q[0]), 
	.D(IN[0]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[0]  (.SI(test_si), 
	.SE(n18), 
	.RN(RST), 
	.Q(OUT[0]), 
	.D(Q[0]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[2]  (.SI(OUT[1]), 
	.SE(n19), 
	.RN(RST), 
	.Q(OUT[2]), 
	.D(Q[2]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[1]  (.SI(OUT[0]), 
	.SE(n22), 
	.RN(RST), 
	.Q(OUT[1]), 
	.D(Q[1]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[3]  (.SI(OUT[2]), 
	.SE(n18), 
	.RN(RST), 
	.Q(OUT[3]), 
	.D(Q[3]), 
	.CK(CLK));
endmodule

module DATA_SYNC_test_1 (
	CLK, 
	RST, 
	IN, 
	OUT, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [3:0] IN;
   output [3:0] OUT;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire [3:0] Q;

   assign test_so = Q[3] ;

   SDFFRQX2M \Q_reg[3]  (.SI(Q[2]), 
	.SE(n27), 
	.RN(RST), 
	.Q(Q[3]), 
	.D(IN[3]), 
	.CK(CLK));
   SDFFRQX2M \Q_reg[2]  (.SI(Q[1]), 
	.SE(n30), 
	.RN(RST), 
	.Q(Q[2]), 
	.D(IN[2]), 
	.CK(CLK));
   SDFFRQX2M \Q_reg[1]  (.SI(Q[0]), 
	.SE(n29), 
	.RN(RST), 
	.Q(Q[1]), 
	.D(IN[1]), 
	.CK(CLK));
   SDFFRQX2M \Q_reg[0]  (.SI(OUT[3]), 
	.SE(n28), 
	.RN(RST), 
	.Q(Q[0]), 
	.D(IN[0]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[3]  (.SI(OUT[2]), 
	.SE(n26), 
	.RN(RST), 
	.Q(OUT[3]), 
	.D(Q[3]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[2]  (.SI(OUT[1]), 
	.SE(n27), 
	.RN(RST), 
	.Q(OUT[2]), 
	.D(Q[2]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[1]  (.SI(OUT[0]), 
	.SE(n30), 
	.RN(RST), 
	.Q(OUT[1]), 
	.D(Q[1]), 
	.CK(CLK));
   SDFFRQX1M \OUT_reg[0]  (.SI(test_si), 
	.SE(n26), 
	.RN(RST), 
	.Q(OUT[0]), 
	.D(Q[0]), 
	.CK(CLK));
   DLY1X1M U17 (.Y(n25), 
	.A(test_se));
   DLY1X1M U18 (.Y(n26), 
	.A(n29));
   DLY1X1M U19 (.Y(n27), 
	.A(n28));
   DLY1X1M U20 (.Y(n28), 
	.A(n25));
   DLY1X1M U21 (.Y(n29), 
	.A(n25));
   DLY1X1M U22 (.Y(n30), 
	.A(test_se));
endmodule

module FIFO_WR_test_1 (
	W_CLK, 
	W_RST, 
	W_INC, 
	RD_WR_PTR, 
	W_ADDR, 
	w_gray_out, 
	FULL, 
	test_si, 
	test_se);
   input W_CLK;
   input W_RST;
   input W_INC;
   input [3:0] RD_WR_PTR;
   output [2:0] W_ADDR;
   output [3:0] w_gray_out;
   output FULL;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n3;
   wire n4;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n16;
   wire n19;
   wire n21;
   wire n23;
   wire n33;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND2X1M U3 (.Y(n4), 
	.B(n5), 
	.A(W_ADDR[1]));
   NOR2X2M U14 (.Y(n5), 
	.B(n7), 
	.A(n33));
   INVX2M U15 (.Y(FULL), 
	.A(n8));
   NAND2X2M U16 (.Y(n7), 
	.B(n8), 
	.A(W_INC));
   CLKXOR2X2M U17 (.Y(n12), 
	.B(w_gray_out[3]), 
	.A(RD_WR_PTR[3]));
   CLKXOR2X2M U18 (.Y(n21), 
	.B(W_ADDR[1]), 
	.A(n5));
   XNOR2X2M U19 (.Y(n19), 
	.B(n4), 
	.A(W_ADDR[2]));
   XNOR2X2M U20 (.Y(n23), 
	.B(n7), 
	.A(W_ADDR[0]));
   XNOR2X2M U29 (.Y(n16), 
	.B(n3), 
	.A(N92));
   NAND2BX2M U30 (.Y(n3), 
	.B(W_ADDR[2]), 
	.AN(n4));
   NAND4X2M U31 (.Y(n8), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   XNOR2X2M U32 (.Y(n9), 
	.B(RD_WR_PTR[0]), 
	.A(w_gray_out[0]));
   XNOR2X2M U33 (.Y(n10), 
	.B(RD_WR_PTR[1]), 
	.A(w_gray_out[1]));
   CLKXOR2X2M U34 (.Y(n11), 
	.B(w_gray_out[2]), 
	.A(RD_WR_PTR[2]));
   INVX2M U35 (.Y(n33), 
	.A(W_ADDR[0]));
   CLKXOR2X2M U36 (.Y(N90), 
	.B(W_ADDR[1]), 
	.A(W_ADDR[2]));
   CLKXOR2X2M U37 (.Y(N91), 
	.B(N92), 
	.A(W_ADDR[2]));
   XNOR2X2M U38 (.Y(N89), 
	.B(n33), 
	.A(W_ADDR[1]));
   DLY1X1M U39 (.Y(n36), 
	.A(test_se));
   DLY1X1M U40 (.Y(n37), 
	.A(n40));
   DLY1X1M U41 (.Y(n38), 
	.A(n39));
   SDFFSRX1M \W_PTR_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(W_ADDR[2]), 
	.SE(n38), 
	.RN(W_RST), 
	.Q(N92), 
	.D(n16), 
	.CK(W_CLK));
   SDFFRQX1M \w_gray_out_reg[3]  (.SI(w_gray_out[2]), 
	.SE(n37), 
	.RN(W_RST), 
	.Q(w_gray_out[3]), 
	.D(N92), 
	.CK(W_CLK));
   SDFFRQX1M \w_gray_out_reg[2]  (.SI(w_gray_out[1]), 
	.SE(n37), 
	.RN(W_RST), 
	.Q(w_gray_out[2]), 
	.D(N91), 
	.CK(W_CLK));
   SDFFRQX1M \w_gray_out_reg[1]  (.SI(w_gray_out[0]), 
	.SE(n38), 
	.RN(W_RST), 
	.Q(w_gray_out[1]), 
	.D(N90), 
	.CK(W_CLK));
   SDFFRQX1M \w_gray_out_reg[0]  (.SI(N92), 
	.SE(n41), 
	.RN(W_RST), 
	.Q(w_gray_out[0]), 
	.D(N89), 
	.CK(W_CLK));
   SDFFRQX4M \W_PTR_reg[1]  (.SI(W_ADDR[0]), 
	.SE(n39), 
	.RN(W_RST), 
	.Q(W_ADDR[1]), 
	.D(n21), 
	.CK(W_CLK));
   SDFFRQX4M \W_PTR_reg[0]  (.SI(test_si), 
	.SE(n41), 
	.RN(W_RST), 
	.Q(W_ADDR[0]), 
	.D(n23), 
	.CK(W_CLK));
   SDFFRQX4M \W_PTR_reg[2]  (.SI(W_ADDR[1]), 
	.SE(n40), 
	.RN(W_RST), 
	.Q(W_ADDR[2]), 
	.D(n19), 
	.CK(W_CLK));
   BUFX2M U6 (.Y(n40), 
	.A(n36));
   BUFX2M U7 (.Y(n41), 
	.A(n36));
   BUFX2M U8 (.Y(n39), 
	.A(test_se));
endmodule

module FIFO_RD_test_1 (
	R_CLK, 
	R_RST, 
	R_INC, 
	WR_RD_PTR, 
	R_ADDR, 
	r_gray_out, 
	EMPTY, 
	test_si, 
	test_se, 
	TX_CLK_scan__L3_N1);
   input R_CLK;
   input R_RST;
   input R_INC;
   input [3:0] WR_RD_PTR;
   output [2:0] R_ADDR;
   output [3:0] r_gray_out;
   output EMPTY;
   input test_si;
   input test_se;
   input TX_CLK_scan__L3_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n54;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n1;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \r_gray_out_reg[3]  (.SI(r_gray_out[2]), 
	.SE(n45), 
	.RN(R_RST), 
	.Q(n54), 
	.D(N92), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFRQX1M \r_gray_out_reg[0]  (.SI(n39), 
	.SE(n49), 
	.RN(R_RST), 
	.Q(r_gray_out[0]), 
	.D(N89), 
	.CK(R_CLK));
   SDFFRQX1M \r_gray_out_reg[1]  (.SI(r_gray_out[0]), 
	.SE(n44), 
	.RN(R_RST), 
	.Q(r_gray_out[1]), 
	.D(N90), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFRQX1M \r_gray_out_reg[2]  (.SI(r_gray_out[1]), 
	.SE(n45), 
	.RN(R_RST), 
	.Q(r_gray_out[2]), 
	.D(N91), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFRQX2M \R_PTR_reg[3]  (.SI(n38), 
	.SE(n48), 
	.RN(R_RST), 
	.Q(N92), 
	.D(n26), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFRQX4M \R_PTR_reg[1]  (.SI(n37), 
	.SE(n44), 
	.RN(R_RST), 
	.Q(R_ADDR[1]), 
	.D(n28), 
	.CK(R_CLK));
   CLKINVX1M U12 (.Y(R_ADDR[2]), 
	.A(n1));
   NOR2X2M U24 (.Y(n19), 
	.B(n20), 
	.A(n37));
   XNOR2X2M U25 (.Y(n25), 
	.B(WR_RD_PTR[2]), 
	.A(r_gray_out[2]));
   NAND4X2M U26 (.Y(EMPTY), 
	.D(n25), 
	.C(n24), 
	.B(n23), 
	.A(n22));
   XNOR2X2M U27 (.Y(n22), 
	.B(WR_RD_PTR[1]), 
	.A(r_gray_out[1]));
   XNOR2X2M U28 (.Y(n24), 
	.B(WR_RD_PTR[3]), 
	.A(n54));
   XNOR2X2M U29 (.Y(n23), 
	.B(WR_RD_PTR[0]), 
	.A(r_gray_out[0]));
   INVX2M U30 (.Y(n38), 
	.A(R_ADDR[2]));
   CLKXOR2X2M U31 (.Y(n28), 
	.B(n19), 
	.A(R_ADDR[1]));
   XNOR2X2M U32 (.Y(N90), 
	.B(R_ADDR[1]), 
	.A(n38));
   XNOR2X2M U33 (.Y(n27), 
	.B(n18), 
	.A(R_ADDR[2]));
   XNOR2X2M U34 (.Y(n29), 
	.B(n20), 
	.A(R_ADDR[0]));
   OAI21X2M U35 (.Y(N91), 
	.B0(n17), 
	.A1(n38), 
	.A0(N92));
   NAND2X2M U36 (.Y(n18), 
	.B(n19), 
	.A(R_ADDR[1]));
   NAND2X2M U37 (.Y(n17), 
	.B(n38), 
	.A(N92));
   NAND2X2M U38 (.Y(n20), 
	.B(EMPTY), 
	.A(R_INC));
   OAI211X2M U40 (.Y(n26), 
	.C0(n17), 
	.B0(n16), 
	.A1(n39), 
	.A0(n36));
   NAND3X2M U41 (.Y(n16), 
	.C(R_ADDR[2]), 
	.B(n39), 
	.A(n36));
   INVX2M U42 (.Y(n39), 
	.A(N92));
   INVX2M U43 (.Y(n36), 
	.A(n18));
   XNOR2X2M U44 (.Y(N89), 
	.B(n37), 
	.A(R_ADDR[1]));
   DLY1X1M U45 (.Y(n43), 
	.A(n46));
   DLY1X1M U46 (.Y(n44), 
	.A(n48));
   DLY1X1M U47 (.Y(n45), 
	.A(n47));
   DLY1X1M U48 (.Y(n46), 
	.A(test_se));
   DLY1X1M U49 (.Y(n47), 
	.A(n43));
   DLY1X1M U50 (.Y(n48), 
	.A(n46));
   DLY1X1M U51 (.Y(n49), 
	.A(n43));
   DLY1X1M U52 (.Y(r_gray_out[3]), 
	.A(n54));
   SDFFSRX1M \R_PTR_reg[0]  (.SN(HTIE_LTIEHI_NET), 
	.SI(test_si), 
	.SE(n47), 
	.RN(R_RST), 
	.QN(n37), 
	.Q(R_ADDR[0]), 
	.D(n29), 
	.CK(TX_CLK_scan__L3_N1));
   SDFFSRX1M \R_PTR_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(R_ADDR[1]), 
	.SE(n49), 
	.RN(R_RST), 
	.QN(n1), 
	.D(n27), 
	.CK(R_CLK));
endmodule

module FIFO_DATA_WIDTH8_test_1 (
	WR_DATA, 
	W_INC, 
	W_CLK, 
	W_RST, 
	R_CLK, 
	R_RST, 
	R_INC, 
	RD_DATA, 
	FULL, 
	EMPTY, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	TX_CLK_scan__L3_N1, 
	REF_CLK_scan__L3_N2, 
	REF_CLK_scan__L3_N3, 
	REF_CLK_scan__L3_N4);
   input [7:0] WR_DATA;
   input W_INC;
   input W_CLK;
   input W_RST;
   input R_CLK;
   input R_RST;
   input R_INC;
   output [7:0] RD_DATA;
   output FULL;
   output EMPTY;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input TX_CLK_scan__L3_N1;
   input REF_CLK_scan__L3_N2;
   input REF_CLK_scan__L3_N3;
   input REF_CLK_scan__L3_N4;

   // Internal wires
   wire FE_OFN0_RST_M_1;
   wire _0_net_;
   wire n5;
   wire n7;
   wire n8;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire [2:0] W_ADDR;
   wire [2:0] R_ADDR;
   wire [3:0] r_gray_out;
   wire [3:0] RD_WR_PTR;
   wire [3:0] w_gray_out;
   wire [3:0] WR_RD_PTR;

   assign test_so2 = r_gray_out[3] ;

   CLKBUFX8M FE_OFC0_RST_M_1 (.Y(FE_OFN0_RST_M_1), 
	.A(W_RST));
   NOR2BX2M U4 (.Y(_0_net_), 
	.B(FULL), 
	.AN(W_INC));
   DLY1X1M U8 (.Y(n12), 
	.A(n17));
   DLY1X1M U9 (.Y(n13), 
	.A(n17));
   DLY1X1M U10 (.Y(n14), 
	.A(test_se));
   DLY1X1M U11 (.Y(n15), 
	.A(n14));
   DLY1X1M U12 (.Y(n16), 
	.A(n14));
   DLY1X1M U13 (.Y(n17), 
	.A(n15));
   DLY1X1M U14 (.Y(n18), 
	.A(n15));
   DLY1X1M U15 (.Y(n19), 
	.A(n16));
   DLY1X1M U16 (.Y(n20), 
	.A(n16));
   FIFO_MEM_DATA_WIDTH8_test_1 U0 (.WR_DATA({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.W_CLKEN(_0_net_), 
	.W_ADDR({ W_ADDR[2],
		W_ADDR[1],
		W_ADDR[0] }), 
	.R_ADDR({ R_ADDR[2],
		R_ADDR[1],
		R_ADDR[0] }), 
	.W_CLK(W_CLK), 
	.W_RST(W_RST), 
	.RD_DATA({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si2(test_si2), 
	.test_si1(n7), 
	.test_so2(n5), 
	.test_so1(test_so1), 
	.test_se(n12), 
	.FE_OFN0_RST_M_1(FE_OFN0_RST_M_1), 
	.REF_CLK_scan__L3_N2(REF_CLK_scan__L3_N2), 
	.REF_CLK_scan__L3_N3(REF_CLK_scan__L3_N3), 
	.REF_CLK_scan__L3_N4(REF_CLK_scan__L3_N4));
   DATA_SYNC_test_0 D0 (.CLK(W_CLK), 
	.RST(FE_OFN0_RST_M_1), 
	.IN({ r_gray_out[3],
		r_gray_out[2],
		r_gray_out[1],
		r_gray_out[0] }), 
	.OUT({ RD_WR_PTR[3],
		RD_WR_PTR[2],
		RD_WR_PTR[1],
		RD_WR_PTR[0] }), 
	.test_si(test_si1), 
	.test_so(n8), 
	.test_se(n18));
   DATA_SYNC_test_1 D1 (.CLK(TX_CLK_scan__L3_N1), 
	.RST(R_RST), 
	.IN({ w_gray_out[3],
		w_gray_out[2],
		w_gray_out[1],
		w_gray_out[0] }), 
	.OUT({ WR_RD_PTR[3],
		WR_RD_PTR[2],
		WR_RD_PTR[1],
		WR_RD_PTR[0] }), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(n20));
   FIFO_WR_test_1 U1 (.W_CLK(W_CLK), 
	.W_RST(FE_OFN0_RST_M_1), 
	.W_INC(W_INC), 
	.RD_WR_PTR({ RD_WR_PTR[3],
		RD_WR_PTR[2],
		RD_WR_PTR[1],
		RD_WR_PTR[0] }), 
	.W_ADDR({ W_ADDR[2],
		W_ADDR[1],
		W_ADDR[0] }), 
	.w_gray_out({ w_gray_out[3],
		w_gray_out[2],
		w_gray_out[1],
		w_gray_out[0] }), 
	.FULL(FULL), 
	.test_si(n5), 
	.test_se(n19));
   FIFO_RD_test_1 U2 (.R_CLK(R_CLK), 
	.R_RST(R_RST), 
	.R_INC(R_INC), 
	.WR_RD_PTR({ WR_RD_PTR[3],
		WR_RD_PTR[2],
		WR_RD_PTR[1],
		WR_RD_PTR[0] }), 
	.R_ADDR({ R_ADDR[2],
		R_ADDR[1],
		R_ADDR[0] }), 
	.r_gray_out({ r_gray_out[3],
		r_gray_out[2],
		r_gray_out[1],
		r_gray_out[0] }), 
	.EMPTY(EMPTY), 
	.test_si(w_gray_out[3]), 
	.test_se(n13), 
	.TX_CLK_scan__L3_N1(TX_CLK_scan__L3_N1));
endmodule

module Clock_Divider_0_DW01_inc_0 (
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
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module Clock_Divider_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_CLK_scan__L12_N0, 
	UART_CLK_scan__L6_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_CLK_scan__L12_N0;
   input UART_CLK_scan__L6_N0;

   // Internal wires
   wire FE_PHN8_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire div_clk;
   wire flag;
   wire N9;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N52;
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
   wire n1;
   wire n2;
   wire n3;
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
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire [7:0] counter;

   assign test_so = n3 ;

   DLY4X1M FE_PHC8_div_clk__Exclude_0_NET (.Y(FE_PHN8_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M flag_reg (.SI(FE_PHN8_div_clk__Exclude_0_NET), 
	.SE(n86), 
	.RN(i_rst_n), 
	.Q(flag), 
	.D(n31), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFRQX1M \counter_reg[7]  (.SI(counter[6]), 
	.SE(n87), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(n32), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFRQX1M \counter_reg[5]  (.SI(counter[4]), 
	.SE(n94), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n34), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFRQX1M \counter_reg[0]  (.SI(test_si), 
	.SE(n93), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n39), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFRQX1M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n86), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n38), 
	.CK(UART_CLK_scan__L12_N0));
   AOI21BX2M U5 (.Y(n1), 
	.B0N(n54), 
	.A1(i_div_ratio[2]), 
	.A0(i_div_ratio[1]));
   INVXLM U6 (.Y(n2), 
	.A(flag));
   INVX2M U7 (.Y(n3), 
	.A(n2));
   NOR3X2M U12 (.Y(n28), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   XNOR2X2M U17 (.Y(n74), 
	.B(i_div_ratio[3]), 
	.A(counter[2]));
   XNOR2X2M U18 (.Y(n76), 
	.B(i_div_ratio[4]), 
	.A(counter[3]));
   NOR4X1M U19 (.Y(n29), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   XNOR2X2M U20 (.Y(n77), 
	.B(i_div_ratio[5]), 
	.A(counter[4]));
   NOR3X2M U23 (.Y(N16), 
	.C(n57), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   XNOR2X2M U24 (.Y(n79), 
	.B(i_div_ratio[7]), 
	.A(counter[6]));
   NOR2BX2M U41 (.Y(n71), 
	.B(i_div_ratio[1]), 
	.AN(counter[0]));
   NOR2BX2M U42 (.Y(n72), 
	.B(counter[0]), 
	.AN(i_div_ratio[1]));
   NOR3X2M U43 (.Y(n67), 
	.C(counter[7]), 
	.B(N16), 
	.A(n61));
   NOR2X2M U44 (.Y(n59), 
	.B(N9), 
	.A(n70));
   OR2X2M U45 (.Y(n57), 
	.B(i_div_ratio[5]), 
	.A(n56));
   NAND2BX2M U46 (.Y(n54), 
	.B(N9), 
	.AN(i_div_ratio[2]));
   OR2X2M U47 (.Y(n55), 
	.B(i_div_ratio[3]), 
	.A(n54));
   OR2X2M U48 (.Y(n56), 
	.B(i_div_ratio[4]), 
	.A(n55));
   OAI2BB1XLM U49 (.Y(N13), 
	.B0(n57), 
	.A1N(i_div_ratio[5]), 
	.A0N(n56));
   OAI2BB1XLM U50 (.Y(N12), 
	.B0(n56), 
	.A1N(i_div_ratio[4]), 
	.A0N(n55));
   OAI2BB1XLM U51 (.Y(N11), 
	.B0(n55), 
	.A1N(i_div_ratio[3]), 
	.A0N(n54));
   NOR2BX2M U53 (.Y(n26), 
	.B(n23), 
	.AN(n22));
   AOI2B1X1M U56 (.Y(n22), 
	.B0(n82), 
	.A1N(i_div_ratio[0]), 
	.A0(N17));
   INVX2M U57 (.Y(n82), 
	.A(n25));
   CLKXOR2X2M U58 (.Y(n30), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   NOR2X2M U59 (.Y(n21), 
	.B(n23), 
	.A(n22));
   INVX2M U60 (.Y(N9), 
	.A(i_div_ratio[1]));
   NAND2X2M U61 (.Y(n25), 
	.B(n27), 
	.A(i_div_ratio[0]));
   AO2B2X2M U62 (.Y(n27), 
	.B1(n3), 
	.B0(N17), 
	.A1N(n3), 
	.A0(N52));
   AO22X1M U63 (.Y(n38), 
	.B1(n26), 
	.B0(N24), 
	.A1(n23), 
	.A0(counter[1]));
   AO22X1M U64 (.Y(n37), 
	.B1(n26), 
	.B0(N25), 
	.A1(n23), 
	.A0(counter[2]));
   AO22X1M U65 (.Y(n36), 
	.B1(n26), 
	.B0(N26), 
	.A1(n23), 
	.A0(counter[3]));
   AO22X1M U66 (.Y(n35), 
	.B1(n26), 
	.B0(N27), 
	.A1(n23), 
	.A0(counter[4]));
   AO22X1M U67 (.Y(n34), 
	.B1(n26), 
	.B0(N28), 
	.A1(n23), 
	.A0(counter[5]));
   AO22X1M U68 (.Y(n33), 
	.B1(n26), 
	.B0(N29), 
	.A1(n23), 
	.A0(counter[6]));
   AO22X1M U69 (.Y(n32), 
	.B1(n26), 
	.B0(N30), 
	.A1(n23), 
	.A0(counter[7]));
   AO22X1M U70 (.Y(n39), 
	.B1(n26), 
	.B0(N23), 
	.A1(n23), 
	.A0(counter[0]));
   CLKXOR2X2M U71 (.Y(n31), 
	.B(n24), 
	.A(n3));
   NOR2X2M U72 (.Y(n24), 
	.B(n25), 
	.A(n23));
   INVX2M U73 (.Y(n70), 
	.A(counter[0]));
   OAI2BB1X2M U74 (.Y(n23), 
	.B0(HTIE_LTIEHI_NET), 
	.A1N(n29), 
	.A0N(n28));
   MX2XLM U75 (.Y(o_div_clk), 
	.S0(n83), 
	.B(div_clk), 
	.A(UART_CLK_scan__L6_N0));
   INVX2M U76 (.Y(n83), 
	.A(n23));
   XNOR2X1M U77 (.Y(N14), 
	.B(n57), 
	.A(i_div_ratio[6]));
   OAI21X1M U78 (.Y(n58), 
	.B0(i_div_ratio[7]), 
	.A1(n57), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U79 (.Y(N15), 
	.B(n58), 
	.AN(N16));
   XNOR2X1M U80 (.Y(n69), 
	.B(counter[2]), 
	.A(N11));
   OAI22X1M U81 (.Y(n68), 
	.B1(n1), 
	.B0(n59), 
	.A1(n59), 
	.A0(counter[1]));
   CLKNAND2X2M U82 (.Y(n60), 
	.B(n70), 
	.A(N9));
   AOI22X1M U83 (.Y(n61), 
	.B1(counter[1]), 
	.B0(n60), 
	.A1(n1), 
	.A0(n60));
   CLKXOR2X2M U84 (.Y(n65), 
	.B(counter[3]), 
	.A(N12));
   CLKXOR2X2M U85 (.Y(n64), 
	.B(counter[4]), 
	.A(N13));
   CLKXOR2X2M U86 (.Y(n63), 
	.B(counter[5]), 
	.A(N14));
   CLKXOR2X2M U87 (.Y(n62), 
	.B(counter[6]), 
	.A(N15));
   NOR4X1M U88 (.Y(n66), 
	.D(n62), 
	.C(n63), 
	.B(n64), 
	.A(n65));
   AND4X1M U89 (.Y(N17), 
	.D(n66), 
	.C(n67), 
	.B(n68), 
	.A(n69));
   OAI2B2X1M U90 (.Y(n75), 
	.B1(n71), 
	.B0(counter[1]), 
	.A1N(i_div_ratio[2]), 
	.A0(n71));
   OAI2B2X1M U91 (.Y(n73), 
	.B1(n72), 
	.B0(i_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n72));
   NAND4BX1M U92 (.Y(n81), 
	.D(n73), 
	.C(n74), 
	.B(n75), 
	.AN(counter[7]));
   XNOR2X1M U93 (.Y(n78), 
	.B(counter[5]), 
	.A(i_div_ratio[6]));
   NAND4X1M U94 (.Y(n80), 
	.D(n76), 
	.C(n77), 
	.B(n78), 
	.A(n79));
   NOR2X1M U95 (.Y(N52), 
	.B(n80), 
	.A(n81));
   DLY1X1M U96 (.Y(n86), 
	.A(n92));
   DLY1X1M U97 (.Y(n87), 
	.A(n91));
   DLY1X1M U98 (.Y(n88), 
	.A(test_se));
   DLY1X1M U99 (.Y(n89), 
	.A(n88));
   DLY1X1M U100 (.Y(n90), 
	.A(n88));
   DLY1X1M U101 (.Y(n91), 
	.A(n89));
   DLY1X1M U102 (.Y(n92), 
	.A(n90));
   DLY1X1M U103 (.Y(n93), 
	.A(n90));
   DLY1X1M U104 (.Y(n94), 
	.A(n89));
   Clock_Divider_0_DW01_inc_0 add_40 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24,
		N23 }));
   SDFFSRX1M div_clk_reg (.SN(HTIE_LTIEHI_NET), 
	.SI(counter[7]), 
	.SE(n87), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n30), 
	.CK(i_ref_clk));
   SDFFSRX1M \counter_reg[6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(counter[5]), 
	.SE(n94), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n33), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFSRX1M \counter_reg[4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(counter[3]), 
	.SE(n93), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n35), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFSRX1M \counter_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(counter[2]), 
	.SE(n92), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n36), 
	.CK(UART_CLK_scan__L12_N0));
   SDFFSRX1M \counter_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(counter[1]), 
	.SE(n91), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n37), 
	.CK(UART_CLK_scan__L12_N0));
endmodule

module Clock_Divider_1_DW01_inc_0 (
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
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module Clock_Divider_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_RST_M_2, 
	UART_CLK_scan__L6_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_RST_M_2;
   input UART_CLK_scan__L6_N0;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire div_clk;
   wire flag;
   wire N9;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N52;
   wire n1;
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
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire [7:0] counter;

   assign test_so = flag ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M flag_reg (.SI(div_clk), 
	.SE(n116), 
	.RN(i_rst_n), 
	.Q(flag), 
	.D(n86), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(n110), 
	.RN(FE_OFN2_RST_M_2), 
	.Q(counter[7]), 
	.D(n85), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(n109), 
	.RN(FE_OFN2_RST_M_2), 
	.Q(counter[6]), 
	.D(n84), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(n117), 
	.RN(FE_OFN2_RST_M_2), 
	.Q(counter[5]), 
	.D(n83), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(n116), 
	.RN(FE_OFN2_RST_M_2), 
	.Q(counter[4]), 
	.D(n82), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(n115), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n81), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(n114), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n80), 
	.CK(i_ref_clk));
   SDFFRQX1M div_clk_reg (.SI(counter[7]), 
	.SE(n110), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n87), 
	.CK(i_ref_clk));
   SDFFRQX1M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n109), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n79), 
	.CK(i_ref_clk));
   SDFFRQX1M \counter_reg[0]  (.SI(test_si), 
	.SE(n117), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n78), 
	.CK(i_ref_clk));
   AOI21BX2M U5 (.Y(n1), 
	.B0N(n48), 
	.A1(i_div_ratio[2]), 
	.A0(i_div_ratio[1]));
   NOR3X2M U28 (.Y(n61), 
	.C(counter[7]), 
	.B(N16), 
	.A(n55));
   NOR3X2M U29 (.Y(N16), 
	.C(n51), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NAND2BX2M U30 (.Y(n48), 
	.B(N9), 
	.AN(i_div_ratio[2]));
   NOR2X2M U31 (.Y(n53), 
	.B(N9), 
	.A(n64));
   OR2X2M U32 (.Y(n51), 
	.B(LTIE_LTIELO_NET), 
	.A(n50));
   OR2X2M U33 (.Y(n49), 
	.B(LTIE_LTIELO_NET), 
	.A(n48));
   OR2X2M U34 (.Y(n50), 
	.B(LTIE_LTIELO_NET), 
	.A(n49));
   OAI2BB1XLM U35 (.Y(N13), 
	.B0(n51), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n50));
   OAI2BB1XLM U36 (.Y(N12), 
	.B0(n50), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n49));
   OAI2BB1XLM U37 (.Y(N11), 
	.B0(n49), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n48));
   NOR2BX2M U38 (.Y(n66), 
	.B(counter[0]), 
	.AN(i_div_ratio[1]));
   NOR2BX2M U39 (.Y(n65), 
	.B(i_div_ratio[1]), 
	.AN(counter[0]));
   INVX2M U41 (.Y(N9), 
	.A(i_div_ratio[1]));
   NOR2BX2M U42 (.Y(n91), 
	.B(n94), 
	.AN(n95));
   AOI2B1X1M U43 (.Y(n95), 
	.B0(n76), 
	.A1N(i_div_ratio[0]), 
	.A0(N17));
   INVX2M U44 (.Y(n76), 
	.A(n92));
   CLKXOR2X2M U47 (.Y(n87), 
	.B(div_clk), 
	.A(n96));
   NOR2X2M U48 (.Y(n96), 
	.B(n94), 
	.A(n95));
   NAND2X2M U49 (.Y(n92), 
	.B(n90), 
	.A(i_div_ratio[0]));
   AO2B2X2M U50 (.Y(n90), 
	.B1(flag), 
	.B0(N17), 
	.A1N(flag), 
	.A0(N52));
   AO22X1M U51 (.Y(n79), 
	.B1(n91), 
	.B0(N24), 
	.A1(n94), 
	.A0(counter[1]));
   AO22X1M U52 (.Y(n80), 
	.B1(n91), 
	.B0(N25), 
	.A1(n94), 
	.A0(counter[2]));
   AO22X1M U53 (.Y(n81), 
	.B1(n91), 
	.B0(N26), 
	.A1(n94), 
	.A0(counter[3]));
   AO22X1M U54 (.Y(n82), 
	.B1(n91), 
	.B0(N27), 
	.A1(n94), 
	.A0(counter[4]));
   AO22X1M U55 (.Y(n83), 
	.B1(n91), 
	.B0(N28), 
	.A1(n94), 
	.A0(counter[5]));
   AO22X1M U56 (.Y(n84), 
	.B1(n91), 
	.B0(N29), 
	.A1(n94), 
	.A0(counter[6]));
   AO22X1M U57 (.Y(n85), 
	.B1(n91), 
	.B0(N30), 
	.A1(n94), 
	.A0(counter[7]));
   AO22X1M U58 (.Y(n78), 
	.B1(n91), 
	.B0(N23), 
	.A1(n94), 
	.A0(counter[0]));
   CLKXOR2X2M U59 (.Y(n86), 
	.B(n93), 
	.A(flag));
   NOR2X2M U60 (.Y(n93), 
	.B(n92), 
	.A(n94));
   INVX2M U61 (.Y(n64), 
	.A(counter[0]));
   OAI2BB1X2M U62 (.Y(n94), 
	.B0(HTIE_LTIEHI_NET), 
	.A1N(n88), 
	.A0N(n89));
   NOR4X2M U63 (.Y(n88), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NOR3X2M U64 (.Y(n89), 
	.C(i_div_ratio[2]), 
	.B(LTIE_LTIELO_NET), 
	.A(i_div_ratio[1]));
   MX2XLM U65 (.Y(o_div_clk), 
	.S0(n77), 
	.B(div_clk), 
	.A(UART_CLK_scan__L6_N0));
   INVX2M U66 (.Y(n77), 
	.A(n94));
   XNOR2X1M U67 (.Y(N14), 
	.B(n51), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U68 (.Y(n52), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n51), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U69 (.Y(N15), 
	.B(n52), 
	.AN(N16));
   XNOR2X1M U70 (.Y(n63), 
	.B(counter[2]), 
	.A(N11));
   OAI22X1M U71 (.Y(n62), 
	.B1(n1), 
	.B0(n53), 
	.A1(n53), 
	.A0(counter[1]));
   CLKNAND2X2M U72 (.Y(n54), 
	.B(n64), 
	.A(N9));
   AOI22X1M U73 (.Y(n55), 
	.B1(counter[1]), 
	.B0(n54), 
	.A1(n1), 
	.A0(n54));
   CLKXOR2X2M U74 (.Y(n59), 
	.B(counter[3]), 
	.A(N12));
   CLKXOR2X2M U75 (.Y(n58), 
	.B(counter[4]), 
	.A(N13));
   CLKXOR2X2M U76 (.Y(n57), 
	.B(counter[5]), 
	.A(N14));
   CLKXOR2X2M U77 (.Y(n56), 
	.B(counter[6]), 
	.A(N15));
   NOR4X1M U78 (.Y(n60), 
	.D(n56), 
	.C(n57), 
	.B(n58), 
	.A(n59));
   AND4X1M U79 (.Y(N17), 
	.D(n60), 
	.C(n61), 
	.B(n62), 
	.A(n63));
   OAI2B2X1M U80 (.Y(n69), 
	.B1(n65), 
	.B0(counter[1]), 
	.A1N(i_div_ratio[2]), 
	.A0(n65));
   XNOR2X1M U81 (.Y(n68), 
	.B(counter[2]), 
	.A(LTIE_LTIELO_NET));
   OAI2B2X1M U82 (.Y(n67), 
	.B1(n66), 
	.B0(i_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n66));
   NAND4BX1M U83 (.Y(n75), 
	.D(n67), 
	.C(n68), 
	.B(n69), 
	.AN(counter[7]));
   XNOR2X1M U84 (.Y(n73), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U85 (.Y(n72), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[5]));
   XNOR2X1M U86 (.Y(n71), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[4]));
   XNOR2X1M U87 (.Y(n70), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[3]));
   NAND4X1M U88 (.Y(n74), 
	.D(n70), 
	.C(n71), 
	.B(n72), 
	.A(n73));
   NOR2X1M U89 (.Y(N52), 
	.B(n74), 
	.A(n75));
   DLY1X1M U90 (.Y(n109), 
	.A(n114));
   DLY1X1M U91 (.Y(n110), 
	.A(n115));
   DLY1X1M U92 (.Y(n111), 
	.A(test_se));
   DLY1X1M U93 (.Y(n112), 
	.A(n111));
   DLY1X1M U94 (.Y(n113), 
	.A(n111));
   DLY1X1M U95 (.Y(n114), 
	.A(n113));
   DLY1X1M U96 (.Y(n115), 
	.A(n112));
   DLY1X1M U97 (.Y(n116), 
	.A(n113));
   DLY1X1M U98 (.Y(n117), 
	.A(n112));
   Clock_Divider_1_DW01_inc_0 add_40 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24,
		N23 }));
endmodule

module clk_div_mux (
	IN, 
	div_ratio_rx);
   input [5:0] IN;
   output [7:0] div_ratio_rx;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;

   assign div_ratio_rx[3] = 1'b0 ;
   assign div_ratio_rx[4] = 1'b0 ;
   assign div_ratio_rx[5] = 1'b0 ;
   assign div_ratio_rx[6] = 1'b0 ;
   assign div_ratio_rx[7] = 1'b0 ;

   NOR3X2M U3 (.Y(n2), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(IN[2]));
   NOR3BX2M U4 (.Y(n3), 
	.C(IN[5]), 
	.B(IN[3]), 
	.AN(IN[4]));
   NOR3BX2M U5 (.Y(n1), 
	.C(IN[5]), 
	.B(IN[4]), 
	.AN(IN[3]));
   AND2X2M U6 (.Y(div_ratio_rx[1]), 
	.B(n3), 
	.A(n2));
   AND2X2M U7 (.Y(div_ratio_rx[2]), 
	.B(n2), 
	.A(n1));
   OAI21X2M U8 (.Y(div_ratio_rx[0]), 
	.B0(n2), 
	.A1(n3), 
	.A0(n1));
endmodule

module data_synchronizer_data_width8_test_1 (
	unsync_bus, 
	bus_enable, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_se, 
	RX_CLK_scan__L3_N3);
   input [7:0] unsync_bus;
   input bus_enable;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   input test_se;
   input RX_CLK_scan__L3_N3;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n19;
   wire n20;
   wire pulse_ff;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire n39;
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
   wire n2;
   wire n5;
   wire [1:0] Q;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M enable_pulse_reg (.SI(Q[1]), 
	.SE(n47), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n39), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFRQX1M \Q_reg[0]  (.SI(test_si), 
	.SE(n55), 
	.RN(RST), 
	.Q(Q[0]), 
	.D(bus_enable), 
	.CK(CLK));
   CLKINVX2M U4 (.Y(sync_bus[2]), 
	.A(n22));
   AO22XLM U5 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n39), 
	.A0(unsync_bus[1]));
   AO22XLM U6 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n39), 
	.A0(unsync_bus[2]));
   AO22XLM U7 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n39), 
	.A0(unsync_bus[0]));
   AO22XLM U8 (.Y(n16), 
	.B1(sync_bus[6]), 
	.B0(n1), 
	.A1(n39), 
	.A0(unsync_bus[6]));
   AO22XLM U9 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n39), 
	.A0(unsync_bus[5]));
   CLKINVX2M U34 (.Y(n39), 
	.A(n1));
   NAND2BX2M U38 (.Y(n1), 
	.B(Q[1]), 
	.AN(pulse_ff));
   AO22X1M U39 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n39), 
	.A0(unsync_bus[3]));
   AO22X1M U41 (.Y(n18), 
	.B1(sync_bus[7]), 
	.B0(n1), 
	.A1(n39), 
	.A0(unsync_bus[7]));
   DLY1X1M U44 (.Y(n45), 
	.A(n49));
   DLY1X1M U45 (.Y(n46), 
	.A(n49));
   DLY1X1M U46 (.Y(n47), 
	.A(n51));
   DLY1X1M U47 (.Y(n48), 
	.A(n46));
   DLY1X1M U48 (.Y(n49), 
	.A(test_se));
   DLY1X1M U49 (.Y(n50), 
	.A(n45));
   DLY1X1M U50 (.Y(n51), 
	.A(n45));
   DLY1X1M U51 (.Y(n52), 
	.A(n50));
   DLY1X1M U53 (.Y(n54), 
	.A(n51));
   DLY1X1M U54 (.Y(n55), 
	.A(n46));
   SDFFSRX1M \sync_bus_reg[5]  (.SN(HTIE_LTIEHI_NET), 
	.SI(sync_bus[4]), 
	.SE(n48), 
	.RN(RST), 
	.Q(n20), 
	.D(n14), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFSRX1M \sync_bus_reg[2]  (.SN(HTIE_LTIEHI_NET), 
	.SI(sync_bus[1]), 
	.SE(n54), 
	.RN(RST), 
	.QN(n22), 
	.D(n8), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFSRX1M \sync_bus_reg[6]  (.SN(HTIE_LTIEHI_NET), 
	.SI(sync_bus[5]), 
	.SE(n53), 
	.RN(RST), 
	.Q(n19), 
	.D(n16), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFRQX1M pulse_ff_reg (.SI(enable_pulse), 
	.SE(n48), 
	.RN(RST), 
	.Q(pulse_ff), 
	.D(Q[1]), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFRQX1M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(n54), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFRQX4M \sync_bus_reg[0]  (.SI(pulse_ff), 
	.SE(n52), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFRQX4M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(n55), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFSRX2M \sync_bus_reg[3]  (.SN(HTIE_LTIEHI_NET), 
	.SI(sync_bus[2]), 
	.SE(n52), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFSRX2M \sync_bus_reg[4]  (.SN(HTIE_LTIEHI_NET), 
	.SI(sync_bus[3]), 
	.SE(n47), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(RX_CLK_scan__L3_N3));
   SDFFRQX2M \Q_reg[1]  (.SI(Q[0]), 
	.SE(n53), 
	.RN(RST), 
	.Q(Q[1]), 
	.D(Q[0]), 
	.CK(RX_CLK_scan__L3_N3));
   BUFX2M U10 (.Y(n53), 
	.A(n50));
   INVXLM U11 (.Y(n2), 
	.A(n20));
   INVX2M U12 (.Y(sync_bus[5]), 
	.A(n2));
   AO22XLM U13 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n39), 
	.A0(unsync_bus[4]));
   INVXLM U14 (.Y(n5), 
	.A(n19));
   INVX2M U15 (.Y(sync_bus[6]), 
	.A(n5));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN7_RST;
   wire FE_PHN6_RST;
   wire FE_PHN3_scan_rst;
   wire FE_PHN0_scan_rst;

   DLY4X1M FE_PHC7_RST (.Y(FE_PHN7_RST), 
	.A(FE_PHN6_RST));
   DLY4X1M FE_PHC6_RST (.Y(FE_PHN6_RST), 
	.A(IN_0));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(FE_PHN0_scan_rst));
   DLY4X1M FE_PHC0_scan_rst (.Y(FE_PHN0_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN3_scan_rst), 
	.A(FE_PHN7_RST));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN5_scan_rst;
   wire FE_PHN2_scan_rst;

   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(FE_PHN2_scan_rst));
   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(IN_1));
   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN5_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN4_scan_rst;
   wire FE_PHN1_scan_rst;

   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(FE_PHN1_scan_rst));
   DLY4X1M FE_PHC1_scan_rst (.Y(FE_PHN1_scan_rst), 
	.A(IN_1));
   CLKMX2X4M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN4_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule


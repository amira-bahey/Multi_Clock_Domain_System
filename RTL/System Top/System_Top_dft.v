module system_top_dft #(parameter data_width=8,out_width=16,addr=4)(
input wire REF_CLK,UART_CLK,
input wire RST,
input wire RX_IN,
input wire [2:0] SI,
input wire SE,scan_clk,scan_rst,test_mode,
output wire [2:0]SO,
output wire TX_OUT,
output wire PAR_ERR,STP_ERR  
); 
 
wire [out_width-1:0] ALU_OUT;
wire OUT_Valid,RdData_Valid,RX_D_VLD,EN,CLK_EN,WrEn,RdEn,TX_D_VLD,clk_div_en,Arith_Flag,Logic_Flag,CMP_Flag,Shift_Flag;
wire [data_width-1:0] RdData,RX_P_DATA,WrData,TX_P_DATA,operandA,operandB,RX_OUT;
wire [3:0] ALU_FUN;
wire ALU_CLK,TX_CLK,RX_CLK;
wire SYNC_RST_REF,SYNC_RST_UART;
wire [addr-1:0] Address;
wire [7:0] UART_CONFIG;
wire [7:0] div_ratio,div_ratio_rx;
wire F_EMPTY,busy,F_FULL;
wire [data_width-1:0] F_RdData;
wire sync_en,RD_INC;

wire RST_M_0,RST_M_1,RST_M_2;
wire REF_CLK_scan,UART_CLK_scan,TX_CLK_scan,RX_CLK_scan;


SYS_CTRL #(.data_width(data_width) , .addr(addr) , .out_width(out_width)) U0(
 .CLK(REF_CLK_scan),
 .RST(RST_M_1),
 .ALU_OUT(ALU_OUT),
 .OUT_Valid(OUT_Valid),
 .RdData(RdData),
 .RdData_Valid(RdData_Valid),
 .RX_P_DATA(RX_P_DATA),
 .RX_D_VLD(RX_D_VLD),
 .ALU_FUN(ALU_FUN),
 .EN(EN),
 .CLK_EN(CLK_EN),
 .Address(Address),
 .WrEn(WrEn),
 .RdEn(RdEn),
 .WrData(WrData),
 .TX_P_DATA(TX_P_DATA),
 .TX_D_VLD(TX_D_VLD),
 .clk_div_en(clk_div_en),
 .fifo_full(F_FULL)

);  

Register_File #(.addr(addr),.width(data_width)) U1(
.WrData(WrData),
.Address(Address),
.WrEn(WrEn),
.RdEn(RdEn),
.CLK(REF_CLK_scan),
.RST(RST_M_1),
.RdData(RdData),
.RdData_Valid(RdData_Valid),
.REG0(operandA),
.REG1(operandB),
.REG2(UART_CONFIG),
.REG3(div_ratio)
); 

 ALU #(.data_width(data_width) , .out_width(out_width)) U2(
 .A(operandA),
 .B(operandB),
 .ALU_FUN(ALU_FUN),
 .CLK(ALU_CLK),
 .RST(RST_M_1),
 .En(EN),
 .ALU_OUT(ALU_OUT),
 .ALU_Valid(OUT_Valid),
 .Arith_Flag(Arith_Flag),
 .Logic_Flag(Logic_Flag),
 .CMP_Flag(CMP_Flag),
 .Shift_Flag(Shift_Flag) 
 );

CLK_GATE U3(
.CLK_EN(CLK_EN ||test_mode),
.CLK(REF_CLK_scan),
.GATED_CLK(ALU_CLK)
);

UART #(.width(data_width)) U4(
 .UART_CONFIG(UART_CONFIG),
 .TX_CLK(TX_CLK_scan), 
 .RX_CLK(RX_CLK_scan),
 .RST(RST_M_2),
 .RX_IN(RX_IN),
 .F_EMPTY(F_EMPTY),
 .RdData(F_RdData),
 .TX_OUT(TX_OUT),
 .busy(busy),
 .RX_OUT(RX_OUT),
 .sync_en(sync_en),
 .PAR_ERR(PAR_ERR),
 .STP_ERR(STP_ERR)
);  


RST_SYNC #(.NUM_STAGES(2)) U5(
.RST(RST_M_0),
.CLK(REF_CLK_scan),
.SYNC_RST(SYNC_RST_REF)  
); 

RST_SYNC #(.NUM_STAGES(2)) U6(
.RST(RST_M_0),
.CLK(UART_CLK_scan),
.SYNC_RST(SYNC_RST_UART)  
); 

Pulse_Gen U7(
 .CLK(TX_CLK_scan),
 .RST(RST_M_2),
 .LVL_SIG(busy),
 .Pulse_SIG(RD_INC) 
  
);


FIFO #(.DATA_WIDTH(data_width)) U8(
.WR_DATA(TX_P_DATA),
.W_INC(TX_D_VLD),
.W_CLK(REF_CLK_scan),
.W_RST(RST_M_1),
.R_CLK(TX_CLK_scan),
.R_RST(RST_M_2),
.R_INC(RD_INC),
.RD_DATA(F_RdData),
.FULL(F_FULL),
.EMPTY(F_EMPTY)
);  

Clock_Divider U10(
 .i_ref_clk(UART_CLK_scan),
 .i_rst_n(RST_M_2),
 .i_clk_en(clk_div_en),
 .i_div_ratio(div_ratio),
 .o_div_clk(TX_CLK) 
);

Clock_Divider U11(
 .i_ref_clk(UART_CLK_scan),
 .i_rst_n(RST_M_2),
 .i_clk_en(clk_div_en),
 .i_div_ratio(div_ratio_rx),
 .o_div_clk(RX_CLK) 
);

clk_div_mux U12 (
 .IN(UART_CONFIG[7:2]),
 .div_ratio_rx(div_ratio_rx)
);

data_synchronizer #(.data_width(data_width)) du(
.unsync_bus(RX_OUT),
.bus_enable(sync_en),
.CLK(RX_CLK_scan),
.RST(RST_M_1),
.sync_bus(RX_P_DATA), 
.enable_pulse(RX_D_VLD)
);

mux2X1 M0 (
.IN_0(RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(RST_M_0) 
 );

mux2X1 M1 (
.IN_0(SYNC_RST_REF),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(RST_M_1) 
 );

mux2X1 M2 (
.IN_0(SYNC_RST_UART),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(RST_M_2) 
 );

mux2X1 M3 (
.IN_0(REF_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(REF_CLK_scan) 
 );

mux2X1 M4 (
.IN_0(UART_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(UART_CLK_scan) 
 );

mux2X1 M5 (
.IN_0(TX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(TX_CLK_scan) 
 );

mux2X1 M6 (
.IN_0(RX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(RX_CLK_scan) 
 );

endmodule

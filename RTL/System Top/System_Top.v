module system_top #(parameter data_width=8,out_width=16,addr=4)(
input wire REF_CLK,UART_CLK,
input wire RST,
input wire RX_IN,
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

SYS_CTRL #(.data_width(data_width) , .addr(addr) , .out_width(out_width)) U0(
 .CLK(REF_CLK),
 .RST(SYNC_RST_REF),
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
.CLK(REF_CLK),
.RST(SYNC_RST_REF),
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
 .RST(SYNC_RST_REF),
 .En(EN),
 .ALU_OUT(ALU_OUT),
 .ALU_Valid(OUT_Valid),
 .Arith_Flag(Arith_Flag),
 .Logic_Flag(Logic_Flag),
 .CMP_Flag(CMP_Flag),
 .Shift_Flag(Shift_Flag) 
 );

CLK_GATE U3(
.CLK_EN(CLK_EN),
.CLK(REF_CLK),
.GATED_CLK(ALU_CLK)
);

UART #(.width(data_width)) U4(
 .UART_CONFIG(UART_CONFIG),
 .TX_CLK(TX_CLK), 
 .RX_CLK(RX_CLK),
 .RST(SYNC_RST_UART),
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
.RST(RST),
.CLK(REF_CLK),
.SYNC_RST(SYNC_RST_REF)  
); 

RST_SYNC #(.NUM_STAGES(2)) U6(
.RST(RST),
.CLK(UART_CLK),
.SYNC_RST(SYNC_RST_UART)  
); 

Pulse_Gen U7(
 .CLK(TX_CLK),
 .RST(SYNC_RST_UART),
 .LVL_SIG(busy),
 .Pulse_SIG(RD_INC) 
  
);


FIFO #(.DATA_WIDTH(data_width)) U8(
.WR_DATA(TX_P_DATA),
.W_INC(TX_D_VLD),
.W_CLK(REF_CLK),
.W_RST(SYNC_RST_REF),
.R_CLK(TX_CLK),
.R_RST(SYNC_RST_UART),
.R_INC(RD_INC),
.RD_DATA(F_RdData),
.FULL(F_FULL),
.EMPTY(F_EMPTY)
);  

Clock_Divider U10(
 .i_ref_clk(UART_CLK),
 .i_rst_n(SYNC_RST_UART),
 .i_clk_en(clk_div_en),
 .i_div_ratio(div_ratio),
 .o_div_clk(TX_CLK) 
);

Clock_Divider U11(
 .i_ref_clk(UART_CLK),
 .i_rst_n(SYNC_RST_UART),
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
.CLK(REF_CLK),
.RST(SYNC_RST_REF),
.sync_bus(RX_P_DATA), 
.enable_pulse(RX_D_VLD)
);
endmodule

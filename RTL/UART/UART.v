module UART #(parameter width=8)(
 input wire [7:0] UART_CONFIG,
 input wire TX_CLK, RX_CLK,
 input wire RST,
 input wire RX_IN,
 input wire F_EMPTY,
 input wire [width-1:0] RdData,
 output wire TX_OUT,
 output wire busy,
 output wire [width-1:0] RX_OUT,
 output wire sync_en,
 output wire PAR_ERR,STP_ERR
);  


UART_TX #(.width(width)) dut0(
.P_DATA(RdData),
.DATA_VALID(!F_EMPTY),
.PAR_EN(UART_CONFIG[0]),
.PAR_TYP(UART_CONFIG[1]),
.CLK(TX_CLK),
.RST(RST),
.TX_OUT(TX_OUT),
.busy(busy)

);

UART_RX #(.width(width)) dut1(
.CLK(RX_CLK),
.RST(RST),  
.RX_IN(RX_IN),
.PRESCALE(UART_CONFIG[7:2]),
.PAR_TYP(UART_CONFIG[1]),
.PAR_EN(UART_CONFIG[0]),
.DATA_VALID(sync_en),
.P_DATA(RX_OUT),  
.PAR_ERR(PAR_ERR),
.STP_ERR(STP_ERR)
);

endmodule
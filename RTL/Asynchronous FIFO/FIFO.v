module FIFO #(parameter DATA_WIDTH=8)(
input wire [DATA_WIDTH-1 : 0] WR_DATA,
input wire W_INC,
input wire W_CLK,W_RST,
input wire R_CLK,R_RST,
input wire R_INC,
output wire [DATA_WIDTH-1 : 0] RD_DATA,
output wire FULL,EMPTY
);  

wire [3:0] RD_WR_PTR,WR_RD_PTR,w_gray_out,r_gray_out;
wire [2:0] W_ADDR,R_ADDR;

FIFO_MEM #(.DATA_WIDTH(DATA_WIDTH))U0(
.WR_DATA(WR_DATA),
.W_CLKEN(W_INC & !FULL),
.W_ADDR(W_ADDR),
.R_ADDR(R_ADDR),
.W_CLK(W_CLK),
.W_RST(W_RST),
.RD_DATA(RD_DATA)
);


DATA_SYNC D0(
.CLK(W_CLK),
.RST(W_RST),
.IN(r_gray_out),
.OUT(RD_WR_PTR)
);

DATA_SYNC D1(
.CLK(R_CLK),
.RST(R_RST),
.IN(w_gray_out),
.OUT(WR_RD_PTR)
);

FIFO_WR U1 (
.W_CLK(W_CLK),
.W_RST(W_RST),
.W_INC(W_INC),
.RD_WR_PTR(RD_WR_PTR),
.W_ADDR(W_ADDR),
.w_gray_out(w_gray_out),
.FULL(FULL)
);

FIFO_RD U2 (
.R_CLK(R_CLK),
.R_RST(R_RST),
.R_INC(R_INC),
.WR_RD_PTR(WR_RD_PTR),
.R_ADDR(R_ADDR),
.r_gray_out(r_gray_out),
.EMPTY(EMPTY)
);

endmodule
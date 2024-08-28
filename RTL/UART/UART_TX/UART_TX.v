module UART_TX #(parameter width=8)(
 input wire [width-1:0] P_DATA,
 input wire DATA_VALID,
 input wire PAR_EN,PAR_TYP,
 input wire CLK,RST,
 output reg TX_OUT,
 output wire busy
);

localparam start_bit=1'b0;
localparam stop_bit=1'b1;

wire ser_en,ser_done,ser_data,par_bit;
wire [1:0] mux_sel;
reg mux_out;

serializer #(.data_width(width)) S
(.P_DATA(P_DATA),
 .DATA_VALID(DATA_VALID),
 .ser_en(ser_en),
 .CLK(CLK),
 .RST(RST),
 .ser_done(ser_done),
 .ser_data(ser_data)
);

fsm F
(.DATA_VALID(DATA_VALID), 
 .PAR_EN(PAR_EN),
 .ser_en(ser_en),
 .CLK(CLK),
 .RST(RST),
 .ser_done(ser_done),
 .busy(busy),
 .mux_sel(mux_sel)
);

parity_calc #(.data_width(width)) P
(.P_DATA(P_DATA),
 .DATA_VALID(DATA_VALID),
 .PAR_TYP(PAR_TYP),
 .CLK(CLK),
 .RST(RST),
 .PAR_BIT(par_bit)
);

always@(*)
 begin
    case(mux_sel)
     2'b00 : mux_out=start_bit;
     2'b01 : mux_out=stop_bit;  
     2'b10 : mux_out=ser_data;
     2'b11 : mux_out=par_bit;
    endcase  
 end 

always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    TX_OUT <= 'b0 ;
   end
  else
   begin
    TX_OUT <= mux_out ;
   end 
 end   
 
 endmodule

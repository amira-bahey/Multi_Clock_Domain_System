module clk_div_mux (
 input wire [5:0] IN,
 output reg [7:0] div_ratio_rx
);
always @(*)
 begin
  case(IN)
    'd32 : div_ratio_rx= 1 ;
    'd16 : div_ratio_rx=2 ;
    'd8: div_ratio_rx= 4 ;
     default : div_ratio_rx= 1 ;
  endcase  
 end
endmodule   

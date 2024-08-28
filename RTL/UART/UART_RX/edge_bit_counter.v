module edge_bit_counter(
input wire ENABLE,
input wire PAR_EN,
input wire CLK,RST,
input wire [5:0]PRESCALE,
output reg [3:0] BIT_CNT,
output reg [4:0] EDGE_CNT   
);  

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    BIT_CNT<='b0;
    EDGE_CNT<='b0;
   end   
  else if(ENABLE && (EDGE_CNT<(PRESCALE-1)) )
   begin
    EDGE_CNT<=EDGE_CNT+1;
   end 
  else if (ENABLE && (EDGE_CNT==(PRESCALE-1))) 
   begin
    if(PAR_EN && (BIT_CNT==10))
     begin
      BIT_CNT<='b0;
     end 
    else if(!PAR_EN && (BIT_CNT==9))
     begin
      BIT_CNT<='b0;
     end
    else 
     begin
      BIT_CNT<=BIT_CNT+1;
     end 
    EDGE_CNT<='b0; 
   end
 end
endmodule
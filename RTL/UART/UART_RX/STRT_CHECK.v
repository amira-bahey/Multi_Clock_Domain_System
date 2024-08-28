module STRT_CHECK(
input wire CLK,RST,  
input wire STRT_CHK_EN,
input wire SAMPLED_BIT,
output reg STRT_GLITCH  
);  
 
always @(posedge CLK or negedge RST)
 begin 
  if(!RST)
   begin
    STRT_GLITCH<=1'b0;
   end  
  else if(STRT_CHK_EN)
   begin 
    if(SAMPLED_BIT==0)
     begin
      STRT_GLITCH<=1'b0;
     end 
    else
     begin
      STRT_GLITCH<=1'b1;
     end 
  end  
 end
endmodule

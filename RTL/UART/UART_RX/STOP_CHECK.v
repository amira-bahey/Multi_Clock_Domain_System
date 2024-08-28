module STOP_CHECK(
input wire CLK,RST,  
input wire STP_CHK_EN,
input wire SAMPLED_BIT,
output reg STP_ERR  
);  
 
always @(posedge CLK or negedge RST)
 begin 
  if(!RST)
   begin
    STP_ERR <=1'b0;
   end  
  else if(STP_CHK_EN)
   begin 
    if(SAMPLED_BIT==1)
     begin
      STP_ERR<=1'b0;
     end 
    else
     begin
      STP_ERR<=1'b1;
     end
   end   
 end
endmodule

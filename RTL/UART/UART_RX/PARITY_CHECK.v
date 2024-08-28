module PARITY_CHECK(
input wire CLK,RST,  
input wire PAR_CHK_EN,
input wire SAMPLED_BIT,
input wire PAR_TYP,
input wire [7:0] P_DATA,
output reg PAR_ERR  
);  

wire parity_bit;

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    PAR_ERR<=1'b0;
   end  
  else if (PAR_CHK_EN)
   begin
    if(parity_bit==SAMPLED_BIT)
     begin
      PAR_ERR<=1'b0;
     end  
    else
     begin
      PAR_ERR<=1'b1;
     end 
   end 
 end
 
 assign parity_bit = (PAR_TYP) ? ~(^P_DATA) : (^P_DATA);
 
endmodule



module data_sampling(
input wire CLK,RST,
input wire RX_IN,
input wire [5:0] PRESCALE,
input wire DATA_SAMP_EN,
input wire [4:0] EDGE_CNT,
output reg SAMPLED_BIT
); 
 
reg sample1,sample2,sample3;

always @(posedge CLK or negedge RST)
 begin
 if(!RST)
  begin
   sample1<=0;
   sample2<=0;
   sample3<=0;
  end  
 else if (DATA_SAMP_EN && (PRESCALE==8))
  begin
   if (EDGE_CNT==3)
    begin
     sample1<=RX_IN;
    end 
   else if (EDGE_CNT==4)
    begin
     sample2<=RX_IN;
    end  
   else if (EDGE_CNT==5)
    begin
     sample3<=RX_IN;
    end   
  end  
 else if (DATA_SAMP_EN && (PRESCALE==16))
  begin
   if (EDGE_CNT==7)
    begin
     sample1<=RX_IN;
    end 
   else if (EDGE_CNT==8)
    begin
     sample2<=RX_IN;
    end  
   else if (EDGE_CNT==9)
    begin
     sample3<=RX_IN;
    end   
  end   
 else if (DATA_SAMP_EN && (PRESCALE==32))
  begin
   if (EDGE_CNT==15)
    begin
     sample1<=RX_IN;
    end 
   else if (EDGE_CNT==16)
    begin
     sample2<=RX_IN;
    end  
   else if (EDGE_CNT==17)
    begin
     sample3<=RX_IN;
    end   
  end    
 end
 
always @(*)
 begin
  SAMPLED_BIT= (sample1&sample2) | (sample2&sample3)|(sample1&sample3);
 end
endmodule

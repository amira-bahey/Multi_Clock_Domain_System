module RST_SYNC #(parameter NUM_STAGES=2)(
input wire RST,CLK,
output reg SYNC_RST  
); 
 
reg [NUM_STAGES-1:0] Q;
integer i;

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    Q<='b0; 
    SYNC_RST <=0;
   end 
  else 
   begin
    Q[0]<='b1;
    for(i=1;i<NUM_STAGES;i=i+1)
     begin
      Q[i]<=Q[i-1];  
     end  
    SYNC_RST <=Q[NUM_STAGES-1];
   end 
 end
endmodule 
   
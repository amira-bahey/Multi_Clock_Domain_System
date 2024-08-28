module FIFO_MEM #(parameter DATA_WIDTH=8)(
input wire [DATA_WIDTH-1 : 0] WR_DATA,
input wire W_CLKEN,
input wire [2:0] W_ADDR,
input wire [2:0] R_ADDR,
input wire W_CLK,W_RST,
output wire [DATA_WIDTH-1 : 0] RD_DATA  
);  

reg [DATA_WIDTH-1 : 0] mem [0:7]; 
integer i;

always @(posedge W_CLK or negedge W_RST)
 begin
  if (!W_RST)
   begin  
    for (i=0 ; i<8;i=i+1)
     begin
      mem[i]<='b0; 
     end
   end 
  else if (W_CLKEN)
   begin  
    mem[W_ADDR]<= WR_DATA;
   end    
 end
 
 assign RD_DATA= mem[R_ADDR]; 
endmodule 
    
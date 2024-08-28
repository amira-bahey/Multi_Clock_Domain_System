module serializer #(parameter data_width=8)
(input wire [data_width-1:0] P_DATA,
 input wire DATA_VALID,
 input wire ser_en,
 input wire CLK,RST,
 output reg ser_data,
 output wire ser_done
);

reg [3:0] counter;
reg [data_width-1:0] mem;

always@(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    mem<='b0;
    ser_data<=1'b0;
    counter<=data_width;
   end 
  else if(ser_en && counter!=0)
   begin
    ser_data<=mem[counter-1];
    counter<=counter-1;
   end   
  else if(DATA_VALID)
   begin
    mem<=P_DATA;
   end 
  else  
   begin
    counter<=data_width;
   end 
 end
 assign   ser_done=(counter==0)?1:0;
endmodule    

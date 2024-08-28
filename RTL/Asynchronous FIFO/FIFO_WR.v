module FIFO_WR (
 input wire W_CLK,W_RST,
 input wire W_INC,
 input wire [3:0] RD_WR_PTR,
 output wire [2:0] W_ADDR,
 output reg [3:0] w_gray_out,
 output wire FULL  
 );
  
wire full_flag_condition;
reg [3:0] W_PTR;

always @(posedge W_CLK or negedge W_RST)
 begin
  if(!W_RST)
   begin
    W_PTR<='b0;
   end 
  else if(!FULL && W_INC)
   begin
    W_PTR<=W_PTR+1;
   end  
 end

always@(posedge W_CLK or negedge W_RST)
 begin
  if(!W_RST)
   begin
    w_gray_out=4'b0000;
   end  
  else 
   begin 
    case(W_PTR)
     4'b0000 : w_gray_out=4'b0000;
     4'b0001 : w_gray_out=4'b0001;
     4'b0010 : w_gray_out=4'b0011;
     4'b0011 : w_gray_out=4'b0010;
     4'b0100 : w_gray_out=4'b0110;
     4'b0101 : w_gray_out=4'b0111;
     4'b0110 : w_gray_out=4'b0101;
     4'b0111 : w_gray_out=4'b0100;
     4'b1000 : w_gray_out=4'b1100;
     4'b1001 : w_gray_out=4'b1101;
     4'b1010 : w_gray_out=4'b1111;
     4'b1011 : w_gray_out=4'b1110;
     4'b1100 : w_gray_out=4'b1010;
     4'b1101 : w_gray_out=4'b1011;
     4'b1110 : w_gray_out=4'b1001;
     4'b1111 : w_gray_out=4'b1000;
   endcase 
  end   
 end
assign W_ADDR=W_PTR;
assign full_flag_condition= ((w_gray_out[1:0]==RD_WR_PTR[1:0]) && (w_gray_out[3]!=RD_WR_PTR[3]) && (w_gray_out[2]!=RD_WR_PTR[2]) );
assign FULL=(full_flag_condition)?1:0; 
endmodule   
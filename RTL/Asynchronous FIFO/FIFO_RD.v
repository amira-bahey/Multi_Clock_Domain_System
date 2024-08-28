module FIFO_RD (
 input wire R_CLK,R_RST,
 input wire R_INC,
 input wire [3:0] WR_RD_PTR,
 output wire [2:0] R_ADDR,
 output reg [3:0] r_gray_out,
 output wire EMPTY  
 );
 
reg [3:0] R_PTR;
wire empty_flag_condition;
  
always @(posedge R_CLK or negedge R_RST)
 begin
  if(!R_RST)
   begin
    R_PTR<='b0;
   end 
  else if(!EMPTY && R_INC)
   begin
    R_PTR<=R_PTR+1;
   end  
 end
always@(posedge R_CLK or negedge R_RST)
 begin
  if(!R_RST)
   begin
    r_gray_out=4'b0000;
   end 
  else
   begin 
    case(R_PTR)
     4'b0000 : r_gray_out=4'b0000;
     4'b0001 : r_gray_out=4'b0001;
     4'b0010 : r_gray_out=4'b0011;
     4'b0011 : r_gray_out=4'b0010;
     4'b0100 : r_gray_out=4'b0110;
     4'b0101 : r_gray_out=4'b0111;
     4'b0110 : r_gray_out=4'b0101;
     4'b0111 : r_gray_out=4'b0100;
     4'b1000 : r_gray_out=4'b1100;
     4'b1001 : r_gray_out=4'b1101;
     4'b1010 : r_gray_out=4'b1111;
     4'b1011 : r_gray_out=4'b1110;
     4'b1100 : r_gray_out=4'b1010;
     4'b1101 : r_gray_out=4'b1011;
     4'b1110 : r_gray_out=4'b1001;
     4'b1111 : r_gray_out=4'b1000;
    endcase
   end   
 end

assign R_ADDR=R_PTR; 
assign empty_flag_condition= (r_gray_out[3:0]==WR_RD_PTR[3:0]);
assign EMPTY=(empty_flag_condition)?1:0; 
endmodule   

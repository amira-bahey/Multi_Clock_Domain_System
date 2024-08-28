module ALU #(parameter data_width=8 , out_width=16)(
 input wire [data_width-1:0] A,B,
 input wire [3:0] ALU_FUN,
 input wire CLK,RST,
 input wire En,
 output reg [out_width-1:0] ALU_OUT,
 output reg ALU_Valid,
 output reg Arith_Flag,Logic_Flag,CMP_Flag,Shift_Flag );
 
 always@(posedge CLK or negedge RST)
  begin
   if (!RST)
    begin
      ALU_OUT <='b0;
      ALU_Valid<='b0;
    end 
   else if(En)
    begin 
   case(ALU_FUN)
    4'b0000 : begin
               ALU_OUT <=A+B;
              end
    4'b0001 : begin
               ALU_OUT <=A-B;
              end          
    4'b0010 : begin
               ALU_OUT <=A*B;
              end
    4'b0011 : begin
               ALU_OUT <=A/B;
              end 
    4'b0100 : begin
               ALU_OUT <=A&B;
              end  
    4'b0101 : begin
               ALU_OUT <=A|B;
              end                           
    4'b0110 : begin
               ALU_OUT <=~(A&B);
              end
    4'b0111 : begin
               ALU_OUT <=~(A|B);
              end
    4'b1000 : begin
               ALU_OUT <=A^B;
              end
    4'b1001 : begin
               ALU_OUT <=A~^B;
              end          
    4'b1010 : begin
               if(A==B)
                begin
                 ALU_OUT <=16'd1; 
                end 
               else
                begin
                 ALU_OUT <=16'd0;  
                end 
              end
    4'b1011 : begin
               if(A>B)
                begin
                 ALU_OUT <=16'd2; 
                end 
               else
                begin
                 ALU_OUT <=16'd0;  
                end 
              end           
    4'b1100 : begin
               if(A<B)
                begin
                 ALU_OUT <=16'd3; 
                end 
               else
                begin
                 ALU_OUT <=16'd0;  
                end 
              end
    4'b1101 : begin
               ALU_OUT <=A>>1;
              end
    4'b1110 : begin
               ALU_OUT <=A<<1;
              end   
    default : begin
               ALU_OUT <=16'd0;
              end                      
   endcase 
    ALU_Valid<=1;
    end
   else
    begin
     ALU_Valid<=0;
    end   
  end 
  
 always@(*)
  begin
   case(ALU_FUN)
    4'b0000 : begin
               Arith_Flag=1'b1;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0; 
              end
    4'b0001 : begin
               Arith_Flag=1'b1;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end          
    4'b0010 : begin
               Arith_Flag=1'b1;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end
    4'b0011 : begin
               Arith_Flag=1'b1;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end 
    4'b0100 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b1;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end  
    4'b0101 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b1;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end                           
    4'b0110 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b1;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end
    4'b0111 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b1;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end
    4'b1000 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b1;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end
    4'b1001 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b1;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end          
    4'b1010 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b0;
               CMP_Flag=1'b1;
               Shift_Flag=1'b0;
              end
    4'b1011 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b0;
               CMP_Flag=1'b1;
               Shift_Flag=1'b0;
              end           
    4'b1100 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b0;
               CMP_Flag=1'b1;
               Shift_Flag=1'b0;
              end
    4'b1101 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b1;
              end
    4'b1110 : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b1;
              end   
    default : begin
               Arith_Flag=1'b0;
               Logic_Flag=1'b0;
               CMP_Flag=1'b0;
               Shift_Flag=1'b0;
              end                      
   endcase   
  end 
endmodule 
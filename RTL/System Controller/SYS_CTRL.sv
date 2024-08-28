module SYS_CTRL #(parameter data_width=8 , parameter addr=4 ,parameter out_width=16)(
 input wire CLK,RST,
 input wire [out_width-1:0] ALU_OUT,
 input wire OUT_Valid,
 input wire [data_width-1:0] RdData,
 input wire RdData_Valid,
 input wire [data_width-1:0] RX_P_DATA,
 input wire RX_D_VLD,
 input wire fifo_full,
 output reg [3:0] ALU_FUN,
 output reg EN,
 output reg CLK_EN,
 output reg [addr-1:0] Address,
 output reg WrEn,RdEn,
 output reg [data_width-1:0] WrData,
 output reg [data_width-1:0] TX_P_DATA,
 output reg TX_D_VLD,
 output reg clk_div_en

);  


reg [out_width-1:0] ALU_OUT_reg;
reg [addr-1:0] Address_reg; 
reg alu_flag , address_flag;

/*localparam [3:0] idle='b0 , write_addr='b1 , read_addr='b10 , first_operand='b11 , alu_fun='b100 ,write_data='b101 , RF_fifo_write= 'b110 
                         ,second_operand='b111 ,alu_fifo= 'b1000 , alu_fifo_1st='b1001 , alu_fifo_2nd='b1010 ;

reg [3:0] current_state , next_state;*/

typedef enum {
      idle, write_addr, read_addr, first_operand, alu_fun,write_data, RF_fifo_write
                         ,second_operand ,alu_fifo, alu_fifo_1st, alu_fifo_2nd
} state_;

state_ current_state , next_state;

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    current_state<=idle;
   end 
  else
   begin
    current_state<=next_state;
   end 
 end
//next state logic
always @(*) 
 begin
  case (current_state)
   idle : begin
           if(RX_D_VLD)
            begin 
             case(RX_P_DATA)
              'hAA: begin
                     next_state=write_addr ;
                    end
              'hBB: begin
                     next_state=read_addr ;
                    end   
              'hCC: begin
                     next_state=first_operand;
                    end   
              'hDD: begin
                     next_state= alu_fun ;
                    end
           default: begin
                     next_state=idle;
                    end                  
             endcase  
            end
          else 
           begin
            next_state=idle;
           end  
         end 
   write_addr : begin
                 if(RX_D_VLD)
                  begin 
                   next_state=write_data;
                  end
                 else
                  begin
                   next_state=write_addr;
                  end 
                end 
   write_data : begin
                 if(RX_D_VLD)
                  begin 
                   next_state=idle;
                  end
                 else 
                  begin
                   next_state=write_data;
                  end  
                end     
   read_addr : begin
                 if(RX_D_VLD)
                  begin 
                   next_state=RF_fifo_write;
                  end
                 else
                  begin
                   next_state=read_addr;
                  end 
                end              
                
   RF_fifo_write : begin
                    if(RX_D_VLD)
                     begin 
                      next_state=idle;  
                     end
                    else 
                     begin
                      next_state=RF_fifo_write;
                     end  
                   end 
  first_operand : begin
                   if(RX_D_VLD)
                    begin 
                     next_state=second_operand;
                    end
                   else
                    begin
                     next_state=first_operand;
                    end 
                  end             
 second_operand : begin
                   if(RX_D_VLD)
                    begin 
                     next_state=alu_fun;
                    end
                   else
                    begin
                     next_state=second_operand;
                    end 
                  end      
         alu_fun : begin
                   if(RX_D_VLD)
                    begin 
                     next_state=alu_fifo;
                    end
                   else
                    begin
                     next_state=alu_fun;
                    end 
                  end 
                  
         alu_fifo : begin
                      if(OUT_Valid)
                     begin 
                      next_state=alu_fifo_1st;  
                     end
                    else 
                     begin
                      next_state=alu_fifo;
                     end  
                   end 
         alu_fifo_1st : begin
                         next_state=alu_fifo_2nd;  
                        end           
         alu_fifo_2nd : begin
                         next_state=idle;  
                        end      
              default : begin
                         next_state=idle;  
                        end                               
                               
  endcase
 end
 
//output logic
always @(*) 
 begin
  ALU_FUN=4'b0;
  EN=0;
  CLK_EN=0;
  Address='b0;
  WrEn=0;
  RdEn=0;
  WrData='b0;
  TX_P_DATA='b0;
  TX_D_VLD='b0;
  clk_div_en='b1; 
  address_flag=0;
  alu_flag=0; 
  case (current_state)
   idle : begin
           ALU_FUN=4'b0;
           EN=0;
           CLK_EN=0;
           Address='b0;
           WrEn=0;
           RdEn=0;
           WrData='b0;
           TX_P_DATA='b0;
           TX_D_VLD='b0;
           clk_div_en='b1; 
           address_flag=0;
           alu_flag=0;
          end
   write_addr : begin
                 if(RX_D_VLD)
                    begin 
                     address_flag=1;
                    end
                 else
                  begin
                   address_flag=0;
                  end               
                end 
   write_data : begin
                 if(RX_D_VLD)
                    begin 
                     Address=Address_reg;
                     WrData=RX_P_DATA;
                     WrEn=1;
                    end
                 else
                  begin
                   Address=0; 
                   WrData=0;
                   WrEn=0;
                  end       
                end  
   read_addr : begin
                if(RX_D_VLD)
                    begin 
                     Address=RX_P_DATA[3:0];
                     RdEn=1;
                    end
                 else
                  begin
                   Address=0;
                   RdEn=0;
                  end              
               end   
   RF_fifo_write : begin
                 if(!fifo_full && RdData_Valid)
                  begin
                   TX_P_DATA=RdData;
                   TX_D_VLD=1;
                  end 
                 else 
                  begin 
                   TX_D_VLD=0;
                  end  
                end  
                                                       
   first_operand : begin
                   if(RX_D_VLD)
                    begin 
                     Address='b0;
                     WrData=RX_P_DATA;
                     WrEn=1;
                    end
                else
                  begin
                   Address='b0; 
                   WrData=0;
                   WrEn=0;
                   
                  end           
                    
                   end        
   second_operand : begin
                    if(RX_D_VLD)
                    begin 
                     Address='b1;
                     WrData=RX_P_DATA;
                     WrEn=1;
                    end
                else
                  begin
                   Address='b1; 
                   WrData=0;
                   WrEn=0;
                  end          
                   end    
   alu_fun : begin
              CLK_EN=1;
              if(RX_D_VLD)
                begin 
                 EN=1;
                 ALU_FUN=RX_P_DATA[3:0];    
                end
               else
                begin
                 EN=0;
                 ALU_FUN=0;
                end          
             end 
    alu_fifo : begin
                CLK_EN=1;
                if(OUT_Valid)
                  begin
                   alu_flag=1;
                  end 
                 else 
                  begin
                   alu_flag=0;
                  end       
               end 
  alu_fifo_1st : begin
                  if(!fifo_full)
                  begin
                   TX_P_DATA=ALU_OUT_reg[data_width-1:0];
                   TX_D_VLD=1;
                  end 
                 else 
                  begin
                   TX_P_DATA=0;
                   TX_D_VLD=0;
                  end          
                 end           
 alu_fifo_2nd : begin
                 if(!fifo_full)
                  begin
                   TX_P_DATA=ALU_OUT_reg[out_width-1:data_width];
                   TX_D_VLD=1;
                  end 
                 else 
                  begin
                   TX_P_DATA='b0;
                   TX_D_VLD=0;
                  end         
                end                       
  
        default : begin
                   ALU_FUN=4'b0;
                   EN=0;
                   CLK_EN=0;
                   Address='b0;
                   WrEn=0;
                   RdEn=0;
                   WrData='b0;
                   TX_P_DATA='b0;
                   TX_D_VLD='b0;
                   clk_div_en='b1; 
                   alu_flag=0;
                   address_flag=0;
                  end                                                       
  endcase 
  
 end 
 
 always @(posedge CLK or negedge RST)
  begin
   if(!RST)
    begin
     ALU_OUT_reg<='b0;
    end
   else if(alu_flag)
    begin
     ALU_OUT_reg<=ALU_OUT;
    end 
   else
    begin
     ALU_OUT_reg<='b0;
    end  
  end  
  
 always @(posedge CLK or negedge RST)
  begin
   if(!RST)
    begin
     Address_reg<='b0;
    end
   else if(address_flag)
    begin
     Address_reg<=RX_P_DATA[3:0];
    end 
   else
    begin
     Address_reg<='b0;
    end  
  end   
 
endmodule 
   

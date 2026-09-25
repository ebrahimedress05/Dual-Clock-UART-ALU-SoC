module serializer (
    input wire [7:0] P_DATA ,
    input wire ser_en ,
    input wire RST ,
    input wire CLK ,
    input wire Data_Valid ,
    input wire Busy ,
    output reg ser_data ,
    output reg ser_done
);
  reg [7:0] shift_register ;
  reg [2:0] count ;
  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        shift_register <= 8'b0 ;
        count <= 3'b0 ;
		ser_data <= 1'b0 ;
    end

    else if (Data_Valid && !Busy) begin
        shift_register <= P_DATA ;
    end

    else if (ser_en) begin  
        shift_register <= shift_register >> 1 ; 
		ser_data <= shift_register[0] ;
        count <= count + 1'b1 ; 
        end  
    
    else begin
        count <= 3'b0 ;        
        end          
  end
  
  always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        ser_done <= 1'b0 ;
    end

    else begin
        ser_done <= (count == 3'b111) ? 1 : 0 ;        
        end          
  end  

endmodule
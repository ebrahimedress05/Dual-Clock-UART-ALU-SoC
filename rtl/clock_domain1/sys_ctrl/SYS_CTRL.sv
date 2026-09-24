module SYS_CTRL #(parameter OPER_WIDTH = 8 , ALU_OUT_WIDTH = OPER_WIDTH*2 , Address_width = 4) (
    input wire [ALU_OUT_WIDTH-1:0] ALU_OUT ,
    input wire OUT_Valid ,
    input wire [OPER_WIDTH-1:0] RX_P_Data ,
    input wire RX_D_VLD ,
    input wire [OPER_WIDTH-1:0] RdData ,
    input wire RdData_Valid ,
    input wire FIFO_FULL ,
    input wire CLK ,
    input wire RST ,
    output reg ALU_EN ,
    output reg [3:0] ALU_FUN ,
    output reg CLK_EN ,
    output reg [Address_width-1:0] Address ,
    output reg WrEN ,
    output reg RdEN ,
    output reg [OPER_WIDTH-1:0] WrData ,
    output reg [OPER_WIDTH-1:0] TX_P_DATA ,
    output reg TX_D_VLD ,
    output reg clk_div_en 
);
    // Internal registers
    reg [Address_width-1:0] internal_address ;
    reg [3:0] internal_ALU_FUN ;
    reg [ALU_OUT_WIDTH-1:0] ALU_OUT_registerd ;

    typedef enum bit [3:0] {
         IDLE = 4'b0000 ,
         wait_address = 4'b0001 ,
         write_data = 4'b0011 ,
         read_data = 4'b0010 ,
         wait_read_data = 4'b0110 ,
         send_read_data = 4'b0111 ,
         write_operand_A = 4'b0101 ,
         write_operand_B = 4'b0100 ,
         alu_with_operand = 4'b1100 ,
         wait_alu_with_operand_1 = 4'b1101 ,
         send_alu_with_operand = 4'b1111 ,
         wait_alu_with_operand_2 = 4'b1110 ,         
         alu_without_operand = 4'b1010 ,
         wait_alu_without_operand_1 = 4'b1011 ,
         send_alu_without_operand = 4'b1001 ,
         wait_alu_without_operand_2 = 4'b1000        
    } state_e;

  state_e current_state, next_state ;  

  // logic of internal address
  always @(posedge CLK or negedge RST) begin
    if(!RST) begin
        internal_address <= 'b0 ;
    end
    else if((current_state == wait_address || current_state == read_data ) && RX_D_VLD == 1) begin
        internal_address <= RX_P_Data ;
    end 
  end  

  // logic of ALU_FUN
  always @(posedge CLK or negedge RST) begin
    if(!RST) begin
        internal_ALU_FUN <= 'b0 ;
    end
    else if((current_state == alu_with_operand || current_state == alu_without_operand ) && RX_D_VLD == 1) begin
        internal_ALU_FUN <= RX_P_Data ;
    end 
  end     

  // logic of ALU_OUT_registerd
  always @(posedge CLK or negedge RST) begin
    if(!RST) begin
        ALU_OUT_registerd <= 0 ;
    end
    else if (OUT_Valid) begin
        ALU_OUT_registerd <= ALU_OUT ;
    end
  end      

  // state transition 
  always @(posedge CLK or negedge RST) begin
    if(!RST) begin
        current_state <= IDLE ;
    end
    else begin
        current_state <= next_state ;
    end
  end

  // next_state and output logic
  always @(*) begin
    // default values
    ALU_EN = 'b0 ;
    ALU_FUN = 'b0 ;
    CLK_EN = 'b0 ;
    Address = 'b0 ;
    WrEN = 'b0 ;
    RdEN = 'b0 ;
    WrData = 'b0 ;
    TX_P_DATA = 'b0 ;
    TX_D_VLD = 'b0 ;
    clk_div_en = 'b1 ;

    case (current_state)
    // IDLE operation
    IDLE  :  begin
        if(RX_D_VLD == 1) begin
            if (RX_P_Data == 'hAA) begin
                next_state = wait_address ;
            end
            else if (RX_P_Data == 'hBB) begin
                next_state = read_data ;
            end
            else if (RX_P_Data == 'hCC) begin
                next_state = write_operand_A ;
            end
            else if (RX_P_Data == 'hDD) begin
                next_state = alu_without_operand ;
            end
            else begin
                next_state = IDLE ;
            end
        end
        else begin
            next_state = IDLE ;
        end
    end

    // write operation
    wait_address  :  begin
        if (RX_D_VLD == 1) begin
            next_state = write_data ;
        end
        else begin
            next_state = wait_address ;
        end
    end 

    write_data  :  begin
        if (RX_D_VLD == 1) begin
            WrEN = 'b1 ;
            WrData = RX_P_Data ;
            Address = internal_address ;
            next_state = IDLE ;
        end
        else begin
            next_state = write_data ;
        end
    end


    // read operation
    read_data  :  begin
        if (RX_D_VLD == 1) begin
            next_state = wait_read_data ;
        end
        else begin
            next_state = read_data ;
        end
    end

    wait_read_data  :  begin
        if (FIFO_FULL == 0) begin
            RdEN = 'b1 ;
            Address = internal_address ;
            next_state = send_read_data ;
        end
        else begin
            next_state = wait_read_data ;
        end
    end    

    send_read_data  :  begin
        if (RdData_Valid == 1) begin
            TX_P_DATA = RdData ;
            TX_D_VLD = 'b1 ;
            next_state = IDLE ;
        end
        else begin
            next_state = send_read_data ;
        end
    end

    // alu with operands operation
    write_operand_A  :  begin
        if (RX_D_VLD == 1) begin
            WrEN = 'b1 ;
            WrData = RX_P_Data ;
            Address = 'h00 ;
            next_state = write_operand_B ;
        end
        else begin
            next_state = write_operand_A ;
        end
    end

    write_operand_B  :  begin
        if (RX_D_VLD == 1) begin
            WrEN = 'b1 ;
            WrData = RX_P_Data ;
            Address = 'h01 ;
            next_state = alu_with_operand ;
        end
        else begin
            next_state = write_operand_B ;
        end
    end 

    alu_with_operand  :  begin
        if (RX_D_VLD == 1) begin
            next_state = wait_alu_with_operand_1 ;
        end
        else begin
            next_state = alu_with_operand ;
        end
    end            
    
    wait_alu_with_operand_1  :  begin
        if (FIFO_FULL == 0) begin
            ALU_EN = 'b1 ;
            ALU_FUN = internal_ALU_FUN ;
            CLK_EN = 'b1 ;
            next_state = send_alu_with_operand ;
        end
        else begin
            next_state = wait_alu_with_operand_1 ;
        end
    end   

    send_alu_with_operand  :  begin
        ALU_EN = 'b1 ;
        ALU_FUN = internal_ALU_FUN ;
        CLK_EN = 'b1 ;
        if (OUT_Valid == 1) begin
            TX_P_DATA = ALU_OUT[OPER_WIDTH-1:0] ;
            TX_D_VLD = 'b1 ;
            next_state = wait_alu_with_operand_2 ;
        end
        else begin
            next_state = send_alu_with_operand ;
        end
    end 

    wait_alu_with_operand_2  :  begin
        if (FIFO_FULL == 0) begin
            TX_P_DATA = ALU_OUT_registerd[ALU_OUT_WIDTH-1:OPER_WIDTH] ;
            TX_D_VLD = 'b1 ;
            next_state = IDLE ;
        end
        else begin
            next_state = wait_alu_with_operand_2 ;
        end
    end   

    // alu without operands operation
    alu_without_operand  :  begin
        if (RX_D_VLD == 1) begin
            next_state = wait_alu_without_operand_1 ;
        end
        else begin
            next_state = alu_without_operand ;
        end
    end

    wait_alu_without_operand_1  :  begin
        if (FIFO_FULL == 0) begin
            ALU_EN = 'b1 ;
            ALU_FUN = internal_ALU_FUN ;
            CLK_EN = 'b1 ;
            next_state = send_alu_without_operand ;
        end
        else begin
            next_state = wait_alu_without_operand_1 ;
        end
    end   

    send_alu_without_operand  :  begin
        ALU_EN = 'b1 ;
        ALU_FUN = internal_ALU_FUN ;
        CLK_EN = 'b1 ;
        if (OUT_Valid == 1) begin
            TX_P_DATA = ALU_OUT[OPER_WIDTH-1:0] ;
            TX_D_VLD = 'b1 ;
            next_state = wait_alu_without_operand_2 ;
        end
        else begin
            next_state = send_alu_without_operand ;
        end
    end

    wait_alu_without_operand_2  :  begin
        if (FIFO_FULL == 0) begin
            TX_P_DATA = ALU_OUT_registerd[ALU_OUT_WIDTH-1:OPER_WIDTH] ;
            TX_D_VLD = 'b1 ;
            next_state = IDLE ;
        end
        else begin
            next_state = wait_alu_without_operand_2 ;
        end
    end   
       
    default: begin
        next_state = IDLE ;
        ALU_EN = 'b0 ;
        ALU_FUN = 'b0 ;
        CLK_EN = 'b0 ;
        Address = 'b0 ;
        WrEN = 'b0 ;
        RdEN = 'b0 ;
        WrData = 'b0 ;
        TX_P_DATA = 'b0 ;
        TX_D_VLD = 'b0 ;
        clk_div_en = 'b0 ;
    end
    
    endcase
  end

endmodule
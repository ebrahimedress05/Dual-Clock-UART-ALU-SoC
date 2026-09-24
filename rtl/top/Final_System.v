module Final_System #(
    parameter BUS_WIDTH = 8 ,
    parameter NUM_STAGES = 2 ,
    parameter Address_width = 4 ,
    parameter memory_depth = 16 ,
    parameter FIFO_depth = 8
    )(
    input wire RX_IN ,
    input wire REF_CLK ,
    input wire UART_CLK ,
    input wire RST ,
    output wire TX_OUT ,
    output wire parity_error ,
    output wire stop_error
);
    
    // internal wires
    wire SYNC_RST_1 ;
    wire SYNC_RST_2 ;
    wire CLK_TX ;
    wire CLK_RX ;
    wire CLK_ALU ;
    wire [BUS_WIDTH-1:0] REG0 ;   
    wire [BUS_WIDTH-1:0] REG1 ; 
    wire [BUS_WIDTH-1:0] REG2 ;
    wire [BUS_WIDTH-1:0] REG3 ;
    wire [BUS_WIDTH-1:0] P_DATA_RX ;
    wire data_valid_RX ;
    wire [BUS_WIDTH-1:0] SYNC_P_DATA ;
    wire SYNC_Valid ;
    wire [BUS_WIDTH-1:0] WrData ;
    wire [Address_width-1:0]Address ;
    wire WrEn ;
    wire RdEN ;
    wire [BUS_WIDTH-1:0] RdData ;
    wire ALU_EN ;
    wire [3:0] ALU_FUN ;
    wire ALU_OUT_Valid ;
    wire [(BUS_WIDTH*2)-1:0] ALU_OUT ;
    wire CLK_EN ;
    wire W_full ;
    wire W_inc ;
    wire [BUS_WIDTH-1:0] W_data ;
    wire clk_div_en ;
    wire [7:0] Div_Ratio_RX ;
    wire [BUS_WIDTH-1:0] R_data ;
    wire R_inc ;
    wire Busy ;
    wire R_empty ;
    wire Data_Valid_TX ;

    // RST_SYNC_Domain_1
    RST_SYNC #(
    .NUM_STAGES(NUM_STAGES)
    ) RST_SYNC_1 (
    .RST(RST) ,
    .CLK(REF_CLK) ,
    .SYNC_RST(SYNC_RST_1)
    );

    // RST_SYNC_Domain_2
    RST_SYNC #(
    .NUM_STAGES(NUM_STAGES)
    ) RST_SYNC_2 (
    .RST(RST) ,
    .CLK(UART_CLK) ,
    .SYNC_RST(SYNC_RST_2)
    );    

    // UART_RX module
    UART_RX UART_RX (
    .RX_IN(RX_IN) ,
    .prescale(REG2[7:2]) ,
    .PAR_EN(REG2[0]) ,
    .PAR_TYP(REG2[1]) ,
    .CLK(CLK_RX) ,
    .RST(SYNC_RST_2) ,
    .P_DATA(P_DATA_RX) ,
    .parity_error(parity_error) ,
    .stop_error(stop_error) , 
    .data_valid(data_valid_RX)                        
    );
    
    // DATA_SYNC module
    DATA_SYNC #(
    .BUS_WIDTH(BUS_WIDTH),
    .NUM_STAGES(NUM_STAGES)
    ) DATA_SYNC (
    .unsync_bus(P_DATA_RX) ,
    .bus_enable(data_valid_RX) ,
    .CLK(REF_CLK) ,
    .RST(SYNC_RST_1) ,
    .sync_bus(SYNC_P_DATA) ,
    .enable_pulse(SYNC_Valid)
    );
    
    // system control module 
    SYS_CTRL #(
    .OPER_WIDTH(BUS_WIDTH) ,
    .ALU_OUT_WIDTH(BUS_WIDTH*2) ,
    .Address_width(Address_width)
    ) SYS_CTRL (
    .ALU_OUT(ALU_OUT) ,
    .OUT_Valid(ALU_OUT_Valid) ,
    .RX_P_Data(SYNC_P_DATA) ,
    .RX_D_VLD(SYNC_Valid) ,
    .RdData(RdData) ,
    .RdData_Valid(RdData_Valid) ,
    .FIFO_FULL(W_full) ,
    .CLK(REF_CLK) ,
    .RST(SYNC_RST_1) ,
    .ALU_EN(ALU_EN) ,
    .ALU_FUN(ALU_FUN) ,
    .CLK_EN(CLK_EN) ,
    .Address(Address) ,
    .WrEN(WrEn) ,
    .RdEN(RdEN) ,
    .WrData(WrData) ,
    .TX_P_DATA(W_data) ,
    .TX_D_VLD(W_inc) ,
    .clk_div_en(clk_div_en) 
    );

    // regfile module
    regfile #(
    .Address_width(Address_width) ,
    .Data_width(BUS_WIDTH) ,
    .depth(memory_depth)
    ) regfile (
    .WrData(WrData) ,
    .Address(Address) ,
    .WrEn(WrEn) ,
    .RdEN(RdEN) ,
    .CLK(REF_CLK) ,
    .RST(SYNC_RST_1) ,
    .RdData(RdData) ,
    .RdData_Valid(RdData_Valid) ,
    .REG0(REG0) ,
    .REG1(REG1) ,
    .REG2(REG2) ,
    .REG3(REG3) 
    );
    
    // ALU module
    ALU #(
    .OPER_WIDTH(BUS_WIDTH) ,
    .OUT_WIDTH(BUS_WIDTH*2)
    ) ALU (
    .A(REG0) ,
    .B(REG1) ,
    .EN(ALU_EN) ,
    .ALU_FUN(ALU_FUN) ,
    .CLK(CLK_ALU) ,
    .RST(SYNC_RST_1) ,
    .ALU_OUT(ALU_OUT) ,
    .OUT_VALID(ALU_OUT_Valid) 
    );    

    // clock gate module
    CLK_GATE CLK_GATE (
    .CLK_EN(CLK_EN) ,
    .CLK(REF_CLK) , 
    .GATED_CLK(CLK_ALU)                        
    );
    
    // ASYNC_FIFO module
    ASYNC_FIFO #(
    .data_width(BUS_WIDTH) ,
    .depth(FIFO_depth) ,
    .addr_width(Address_width) ,
    .NUM_STAGES(NUM_STAGES) 
    ) ASYNC_FIFO (
    .W_data(W_data) ,
    .W_inc(W_inc) ,
    .R_inc(R_inc) ,
    .W_CLK(REF_CLK) ,
    .W_RST(SYNC_RST_1) ,
    .R_CLK(CLK_TX) ,
    .R_RST(SYNC_RST_2) ,    
    .R_data(R_data) ,
    .W_full(W_full) ,
    .R_empty(R_empty)
    );

    // UART_TX module
    UART_TX UART_TX (
    .P_DATA(R_data) ,
    .Data_Valid(Data_Valid_TX) , 
    .PAR_EN(REG2[0]) ,
    .PAR_TYP(REG2[1]) ,
    .CLK(CLK_TX) ,
    .RST(SYNC_RST_2) ,
    .TX_OUT(TX_OUT) ,
    .Busy(Busy)
    );

    NOT NOT(
    .X(R_empty) ,
    .Y(Data_Valid_TX)
    );

    // PULSE_GEN module
    PULSE_GEN PULSE_GEN (
    .LVL_SIG(Busy) ,
    .RST(SYNC_RST_2) ,
    .CLK(CLK_TX) ,
    .PULSE_SIG(R_inc)
    );
    
    // clk_divider for RX
    ClkDiv ClkDiv_RX (
    .i_ref_clk(UART_CLK) ,
    .i_rst_n(SYNC_RST_2) ,
    .i_clk_en(clk_div_en) ,
    .i_div_ratio(Div_Ratio_RX) ,
    .o_div_clk(CLK_RX)
    ); 


    // clk_divider for RX
    ClkDiv ClkDiv_TX (
    .i_ref_clk(UART_CLK) ,
    .i_rst_n(SYNC_RST_2) ,
    .i_clk_en(clk_div_en) ,
    .i_div_ratio(REG3) ,
    .o_div_clk(CLK_TX)
    );    

    Clk_Div_Mux Clk_Div_Mux (
    .prescale(REG2[7:2]) ,
    .Div_Ratio(Div_Ratio_RX) 
);

endmodule
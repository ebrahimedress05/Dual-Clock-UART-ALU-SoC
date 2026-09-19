module DATA_SYNC #(parameter BUS_WIDTH = 8 , NUM_STAGES = 2)(
    input wire [BUS_WIDTH-1:0] unsync_bus ,
    input wire bus_enable ,
    input wire CLK ,
    input wire RST ,
    output reg [BUS_WIDTH-1:0] sync_bus ,
    output reg enable_pulse
);
    reg [NUM_STAGES-1:0] MULTI_FLIP_FLOP ;
    reg pulse ;
    wire pulse_gen ;

    assign pulse_gen = MULTI_FLIP_FLOP[0] & ~ pulse ;

    // syncronizer logic
    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            MULTI_FLIP_FLOP <= 0 ;
            pulse <= 0 ;
        end
        else begin
            {MULTI_FLIP_FLOP[NUM_STAGES-1:0] , pulse} <= {bus_enable , MULTI_FLIP_FLOP[NUM_STAGES-1:0]} ;
        end
    end

    // data_bus logic
    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            sync_bus <= 0 ;
        end
        else if(pulse_gen) begin
            sync_bus <= unsync_bus ;            
        end
    end


    // pulse_enable logic 
    always @(posedge CLK or negedge RST) begin
        if(!RST) begin
            enable_pulse <= 0 ;
        end
        else begin
            enable_pulse <= pulse_gen ;            
        end        
    end
endmodule
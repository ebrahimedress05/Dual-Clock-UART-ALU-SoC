module RST_SYNC #(parameter NUM_STAGES = 2) (
    input wire RST ,
    input wire CLK ,
    output wire SYNC_RST
);
    reg [NUM_STAGES-1:0] synchronizer ;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            synchronizer <= 0 ;
        end
        else begin
            synchronizer <= {1'b1 , synchronizer[NUM_STAGES-1:1]} ;
        end
    end

    assign SYNC_RST = synchronizer[0] ;
endmodule
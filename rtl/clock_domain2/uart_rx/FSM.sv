module FSM (
    input wire RX_IN ,
    input wire PAR_EN ,
    input wire [5:0] edge_cnt ,
    input wire [3:0] bit_cnt ,
    input wire par_err ,
    input wire strt_glitch ,
    input wire stp_err ,
    input wire [5:0] prescale ,
    input wire CLK ,
    input wire RST ,
    output reg dat_samp_en ,
    output reg enable ,
    output reg deser_en ,
    output reg par_chk_en ,
    output reg strt_chk_en ,
    output reg stp_chk_en ,     
    output reg data_valid       
);
    typedef enum bit [3:0] {
         IDLE = 4'b0000 ,
         start = 4'b0001 ,
         strt_check = 4'b0010 ,
         data = 4'b0011 ,
         parity = 4'b0100 ,
         parity_check = 4'b0101 ,
         stop = 4'b0110 ,
         stop_check = 4'b0111 ,
         check = 4'b1000     
  } state_e;

    state_e current_state, next_state ;

    // state transition
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state <= IDLE ;
        end
        else begin
            current_state <= next_state ;
        end
    end

    // next_state and output logic
    always @(*) begin
        dat_samp_en = 0 ;
        enable = 0 ;
        deser_en = 0 ;
        par_chk_en = 0 ;
        strt_chk_en = 0 ;
        stp_chk_en = 0 ; 
        data_valid = 0 ;
        case (current_state)
        IDLE  : begin
            if (RX_IN == 0) begin
                next_state = start ;
                enable = 1 ;
                dat_samp_en = 1 ;
            end
            else begin
                next_state = IDLE ;
            end
        end

        start  : begin
            enable = 1 ;
            dat_samp_en = 1 ;
            if (bit_cnt == 0 && edge_cnt == ((prescale >> 1) + 2)) begin
                next_state = strt_check ;
            end
            else begin
                next_state = start ;
            end            
        end

        strt_check  : begin
            if (strt_glitch == 1) begin
                next_state = IDLE ;
            end
            else if (bit_cnt == 0 && edge_cnt == prescale) begin
                next_state = data ;
                enable = 1 ;
                dat_samp_en = 1 ;
            end 
            else begin
                next_state = strt_check ;
                enable = 1 ;
                dat_samp_en = 1 ; 
                strt_chk_en = 1 ;                               
            end
        end

        data  : begin
            if (bit_cnt == 8 && edge_cnt == prescale) begin
                enable = 1 ;
                dat_samp_en = 1 ;
                if (PAR_EN) begin
                    next_state = parity ;
                end 
                else begin
                    next_state = stop ;
                end               
            end
            else if (edge_cnt == ((prescale >> 1) + 2)) begin
                next_state = data ;
                enable = 1 ;
                dat_samp_en = 1 ;
                deser_en = 1 ;                
            end
            else begin
                next_state = data ;
                enable = 1 ;
                dat_samp_en = 1 ;                
            end
        end 

        parity  : begin
            if (bit_cnt == 9 && edge_cnt == ((prescale >> 1) + 2)) begin
                next_state = parity_check ;
                enable = 1 ;
                dat_samp_en = 1 ;
                par_chk_en = 1 ;                
            end
            else begin
                next_state = parity ;
                enable = 1 ;
                dat_samp_en = 1 ;                
            end
        end

        parity_check  : begin
            if (bit_cnt == 9 && edge_cnt == prescale) begin
                next_state = stop ;
                enable = 1 ;
                dat_samp_en = 1 ;
            end 
            else begin
                next_state = parity_check ;
                enable = 1 ;
                dat_samp_en = 1 ;
                par_chk_en = 1 ;                                
            end
        end

        stop  : begin
            if (bit_cnt == (9 + PAR_EN) && edge_cnt == ((prescale >> 1) + 2)) begin
                next_state = stop_check ;
                enable = 1 ;
                dat_samp_en = 1 ;
                stp_chk_en = 1 ;                                                
            end
            else begin
                next_state = stop ;
                enable = 1 ;
                dat_samp_en = 1 ;                
            end
        end

        stop_check  : begin
            if (bit_cnt == (9 + PAR_EN) && edge_cnt == prescale) begin
                next_state = check ;
            end 
            else begin
                next_state = stop_check ;
                enable = 1 ;
                dat_samp_en = 1 ;
                stp_chk_en = 1 ;                                
            end
        end

        check  : begin           
            if (stp_err == 0 && (!par_err || !PAR_EN)) begin
                data_valid = 1 ;
                if (RX_IN == 0) begin
                    next_state = start ;
                    enable = 1 ;
                    dat_samp_en = 1 ;
                end
                else begin
                    next_state = IDLE ;
                end
            end 
            else begin
                next_state = IDLE ;                               
            end
        end

        default: begin
            next_state = IDLE ;
            dat_samp_en = 0 ;
            enable = 0 ;
            deser_en = 0 ;
            par_chk_en = 0 ;
            strt_chk_en = 0 ;
            stp_chk_en = 0 ; 
            data_valid = 0 ;
        end 
        endcase
    end
endmodule
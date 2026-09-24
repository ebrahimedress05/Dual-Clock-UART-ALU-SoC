module UART_RX (
    input wire RX_IN ,
    input wire [5:0] prescale ,
    input wire PAR_EN ,
    input wire PAR_TYP ,
    input wire CLK ,
    input wire RST ,
    output wire [7:0] P_DATA ,
    output wire parity_error ,
    output wire stop_error , 
    output wire data_valid                        
);
    wire [5:0] edge_cnt ;
    wire [3:0] bit_cnt ;
    wire strt_glitch ;
    wire dat_samp_en ;
    wire enable ;
    wire par_chk_en ;
    wire deser_en ;
    wire strt_chk_en ;
    wire stp_chk_en ;
    wire sampled_bit ;
    
    
FSM_RX FSM_RX (.RX_IN(RX_IN) , .PAR_EN(PAR_EN) , .edge_cnt(edge_cnt) , .bit_cnt(bit_cnt) , .par_err(parity_error) ,
.strt_glitch(strt_glitch) , .stp_err(stop_error) , .prescale(prescale) , .CLK(CLK) ,
.RST(RST) , .dat_samp_en(dat_samp_en) , .enable(enable) , .deser_en(deser_en) ,
.par_chk_en(par_chk_en) , .strt_chk_en(strt_chk_en) , .stp_chk_en(stp_chk_en) ,
.data_valid(data_valid)) ;

data_sampling data_sampling (.RX_IN(RX_IN) , .prescale(prescale) , .edge_cnt(edge_cnt) , .CLK(CLK) ,
.RST(RST) , .dat_samp_en(dat_samp_en), .sampled_bit(sampled_bit)) ;

deserializer deserializer (.deser_en(deser_en) , .sampled_bit(sampled_bit) ,
.bit_cnt(bit_cnt) , .CLK(CLK) , .RST(RST) , .P_DATA(P_DATA));

edge_bit_counter edge_bit_counter (.enable(enable) , .CLK(CLK) , .RST(RST) , .prescale(prescale) , 
.edge_cnt(edge_cnt) , .bit_cnt(bit_cnt)) ;

parity_check parity_check (.par_chk_en(par_chk_en) , .sampled_bit(sampled_bit) , .PAR_TYP(PAR_TYP) ,
.P_DATA(P_DATA) , .CLK(CLK) , .RST(RST) , .par_err(parity_error));

stop_check stop_check (.stp_chk_en(stp_chk_en) , .sampled_bit(sampled_bit) , .CLK(CLK) ,
.RST(RST) , .stp_err(stop_error)) ;

strt_check strt_check (.strt_chk_en(strt_chk_en) , .sampled_bit(sampled_bit) , .CLK(CLK) ,
.RST(RST) , .strt_glitch(strt_glitch)) ;

endmodule
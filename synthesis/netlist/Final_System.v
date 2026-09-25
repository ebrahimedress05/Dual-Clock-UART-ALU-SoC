/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Sep 26 04:31:47 2026
/////////////////////////////////////////////////////////////


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \synchronizer[1] ;

  DFFRQX2M \synchronizer_reg[0]  ( .D(\synchronizer[1] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \synchronizer_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \synchronizer[1] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \synchronizer[1] ;

  DFFRQX2M \synchronizer_reg[0]  ( .D(\synchronizer[1] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \synchronizer_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \synchronizer[1] ) );
endmodule


module FSM_RX ( RX_IN, PAR_EN, edge_cnt, bit_cnt, par_err, strt_glitch, 
        stp_err, prescale, CLK, RST, dat_samp_en, enable, deser_en, par_chk_en, 
        strt_chk_en, stp_chk_en, data_valid );
  input [5:0] edge_cnt;
  input [3:0] bit_cnt;
  input [5:0] prescale;
  input RX_IN, PAR_EN, par_err, strt_glitch, stp_err, CLK, RST;
  output dat_samp_en, enable, deser_en, par_chk_en, strt_chk_en, stp_chk_en,
         data_valid;
  wire   N57, N58, N59, N60, N61, N62, N100, N101, N105, \r94/carry[4] ,
         \r94/carry[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign N57 = prescale[1];
  assign N101 = PAR_EN;

  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  NOR3BX4M U3 ( .AN(n36), .B(strt_glitch), .C(current_state[2]), .Y(n6) );
  NOR3X2M U4 ( .A(current_state[0]), .B(current_state[3]), .C(n40), .Y(n36) );
  NOR4X2M U5 ( .A(n35), .B(current_state[1]), .C(current_state[2]), .D(
        current_state[3]), .Y(n19) );
  NOR3XLM U6 ( .A(n34), .B(n6), .C(n19), .Y(n33) );
  NOR3X2M U7 ( .A(n2), .B(n4), .C(n3), .Y(N105) );
  NOR3X2M U8 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n27) );
  AOI22XLM U9 ( .A0(n19), .A1(n20), .B0(n21), .B1(n22), .Y(n14) );
  NOR4BXLM U10 ( .AN(n16), .B(n6), .C(n17), .D(n18), .Y(n15) );
  INVX2M U11 ( .A(bit_cnt[2]), .Y(n5) );
  INVX2M U12 ( .A(prescale[2]), .Y(N58) );
  BUFX2M U13 ( .A(enable), .Y(dat_samp_en) );
  NAND3X2M U14 ( .A(n13), .B(n26), .C(n33), .Y(enable) );
  AND2X1M U15 ( .A(\r94/carry[4] ), .B(prescale[5]), .Y(N62) );
  CLKXOR2X2M U16 ( .A(prescale[5]), .B(\r94/carry[4] ), .Y(N61) );
  AND2X1M U17 ( .A(\r94/carry[3] ), .B(prescale[4]), .Y(\r94/carry[4] ) );
  CLKXOR2X2M U18 ( .A(prescale[4]), .B(\r94/carry[3] ), .Y(N60) );
  AND2X1M U19 ( .A(prescale[2]), .B(prescale[3]), .Y(\r94/carry[3] ) );
  CLKXOR2X2M U20 ( .A(prescale[3]), .B(prescale[2]), .Y(N59) );
  CLKINVX1M U21 ( .A(N101), .Y(N100) );
  CLKNAND2X2M U22 ( .A(n5), .B(bit_cnt[3]), .Y(n4) );
  CLKXOR2X2M U23 ( .A(N101), .B(bit_cnt[1]), .Y(n3) );
  CLKXOR2X2M U24 ( .A(N100), .B(bit_cnt[0]), .Y(n2) );
  NOR2BX1M U25 ( .AN(n6), .B(n7), .Y(strt_chk_en) );
  CLKINVX1M U26 ( .A(n8), .Y(stp_chk_en) );
  NOR3BX1M U27 ( .AN(N105), .B(n9), .C(n10), .Y(next_state[3]) );
  OAI21X1M U28 ( .A0(n11), .A1(n12), .B0(n13), .Y(next_state[2]) );
  OAI211X1M U29 ( .A0(N101), .A1(n11), .B0(n14), .C0(n15), .Y(next_state[1])
         );
  NAND4BX1M U30 ( .AN(par_chk_en), .B(n8), .C(n16), .D(n23), .Y(next_state[0])
         );
  AOI221XLM U31 ( .A0(n19), .A1(n24), .B0(n7), .B1(n6), .C0(n25), .Y(n23) );
  CLKINVX1M U32 ( .A(n26), .Y(n25) );
  NOR3BX1M U33 ( .AN(n27), .B(bit_cnt[3]), .C(n10), .Y(n7) );
  CLKINVX1M U34 ( .A(n20), .Y(n24) );
  NOR3BX1M U35 ( .AN(n27), .B(bit_cnt[3]), .C(n28), .Y(n20) );
  AOI31X1M U36 ( .A0(N105), .A1(n17), .A2(n29), .B0(n18), .Y(n8) );
  CLKINVX1M U37 ( .A(n28), .Y(n29) );
  OAI32X1M U38 ( .A0(n30), .A1(n28), .A2(n31), .B0(n21), .B1(n32), .Y(
        par_chk_en) );
  NOR2X1M U39 ( .A(n30), .B(n10), .Y(n21) );
  NAND4BBX1M U40 ( .AN(bit_cnt[1]), .BN(bit_cnt[2]), .C(bit_cnt[0]), .D(
        bit_cnt[3]), .Y(n30) );
  NAND3BX1M U41 ( .AN(RX_IN), .B(n37), .C(n38), .Y(n26) );
  NOR3X1M U42 ( .A(current_state[0]), .B(current_state[2]), .C(
        current_state[1]), .Y(n38) );
  OAI2B1X1M U43 ( .A1N(n39), .A0(stp_err), .B0(current_state[3]), .Y(n37) );
  NOR4BX1M U44 ( .AN(n31), .B(n22), .C(n18), .D(n17), .Y(n13) );
  AND2X1M U45 ( .A(n36), .B(current_state[2]), .Y(n17) );
  AOI21X1M U46 ( .A0(n41), .A1(N105), .B0(n9), .Y(n18) );
  CLKNAND2X2M U47 ( .A(n42), .B(current_state[2]), .Y(n9) );
  CLKINVX1M U48 ( .A(n32), .Y(n22) );
  CLKNAND2X2M U49 ( .A(n43), .B(current_state[0]), .Y(n32) );
  CLKNAND2X2M U50 ( .A(n43), .B(n35), .Y(n31) );
  NOR3X1M U51 ( .A(current_state[1]), .B(current_state[3]), .C(n44), .Y(n43)
         );
  NOR2X1M U52 ( .A(n28), .B(n16), .Y(deser_en) );
  CLKNAND2X2M U53 ( .A(n34), .B(n12), .Y(n16) );
  NAND3X1M U54 ( .A(n41), .B(n27), .C(bit_cnt[3]), .Y(n12) );
  CLKINVX1M U55 ( .A(n10), .Y(n41) );
  NAND4X1M U56 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n10) );
  NOR3X1M U57 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  CLKXOR2X2M U58 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n51) );
  CLKXOR2X2M U59 ( .A(N57), .B(edge_cnt[1]), .Y(n50) );
  CLKXOR2X2M U60 ( .A(prescale[0]), .B(edge_cnt[0]), .Y(n49) );
  XNOR2X1M U61 ( .A(edge_cnt[2]), .B(prescale[2]), .Y(n47) );
  XNOR2X1M U62 ( .A(edge_cnt[3]), .B(prescale[3]), .Y(n46) );
  XNOR2X1M U63 ( .A(edge_cnt[5]), .B(prescale[5]), .Y(n45) );
  CLKINVX1M U64 ( .A(n11), .Y(n34) );
  CLKNAND2X2M U65 ( .A(n42), .B(n44), .Y(n11) );
  CLKINVX1M U66 ( .A(current_state[2]), .Y(n44) );
  NOR3X1M U67 ( .A(n40), .B(current_state[3]), .C(n35), .Y(n42) );
  CLKINVX1M U68 ( .A(current_state[1]), .Y(n40) );
  NAND4X1M U69 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n28) );
  NOR3X1M U70 ( .A(n56), .B(n57), .C(n58), .Y(n55) );
  CLKXOR2X2M U71 ( .A(edge_cnt[4]), .B(N61), .Y(n58) );
  CLKXOR2X2M U72 ( .A(edge_cnt[1]), .B(N58), .Y(n57) );
  CLKXOR2X2M U73 ( .A(edge_cnt[0]), .B(N57), .Y(n56) );
  XNOR2X1M U74 ( .A(edge_cnt[2]), .B(N59), .Y(n54) );
  XNOR2X1M U75 ( .A(edge_cnt[3]), .B(N60), .Y(n53) );
  XNOR2X1M U76 ( .A(edge_cnt[5]), .B(N62), .Y(n52) );
  NOR4X1M U77 ( .A(n59), .B(current_state[1]), .C(stp_err), .D(
        current_state[2]), .Y(data_valid) );
  NAND3X1M U78 ( .A(n39), .B(n35), .C(current_state[3]), .Y(n59) );
  CLKINVX1M U79 ( .A(current_state[0]), .Y(n35) );
  CLKNAND2X2M U80 ( .A(par_err), .B(N101), .Y(n39) );
endmodule


module data_sampling ( RX_IN, prescale, edge_cnt, CLK, RST, dat_samp_en, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, CLK, RST, dat_samp_en;
  output sampled_bit;
  wire   bit_1, bit_2, bit_3, N6, N7, N8, N9, N10, N11, N12, N15, N16, N17,
         N18, N19, n23, n24, \add_28/carry[4] , \add_28/carry[3] ,
         \add_28/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36;

  DFFRQX2M bit_3_reg ( .D(n36), .CK(CLK), .RN(RST), .Q(bit_3) );
  DFFRQX2M bit_2_reg ( .D(n23), .CK(CLK), .RN(RST), .Q(bit_2) );
  DFFRQX2M bit_1_reg ( .D(n24), .CK(CLK), .RN(RST), .Q(bit_1) );
  NOR4X2M U3 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N12) );
  MXI2XLM U4 ( .A(n30), .B(n13), .S0(N12), .Y(n24) );
  NOR4XLM U5 ( .A(n15), .B(n16), .C(N12), .D(n17), .Y(n14) );
  OR2X2M U6 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  ADDHX1M U7 ( .A(prescale[4]), .B(\add_28/carry[3] ), .CO(\add_28/carry[4] ), 
        .S(N17) );
  ADDHX1M U8 ( .A(prescale[3]), .B(\add_28/carry[2] ), .CO(\add_28/carry[3] ), 
        .S(N16) );
  ADDHX1M U9 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_28/carry[2] ), .S(
        N15) );
  ADDHX1M U10 ( .A(prescale[5]), .B(\add_28/carry[4] ), .CO(N19), .S(N18) );
  CLKINVX1M U11 ( .A(prescale[1]), .Y(N6) );
  OAI2BB1X1M U12 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n1), .Y(N7) );
  OR2X1M U13 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U14 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N8) );
  XNOR2X1M U15 ( .A(prescale[4]), .B(n2), .Y(N9) );
  NOR3X1M U16 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N11) );
  OAI21X1M U17 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U18 ( .AN(N11), .B(n3), .Y(N10) );
  NOR2BX1M U19 ( .AN(edge_cnt[0]), .B(N6), .Y(n4) );
  OAI2B2X1M U20 ( .A1N(N7), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n7) );
  NOR2BX1M U21 ( .AN(N6), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U22 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N7), .B1(n5), .Y(n6) );
  NAND4BBX1M U23 ( .AN(N11), .BN(edge_cnt[5]), .C(n7), .D(n6), .Y(n11) );
  CLKXOR2X2M U24 ( .A(N10), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U25 ( .A(N8), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U26 ( .A(N9), .B(edge_cnt[3]), .Y(n8) );
  ADDFX1M U27 ( .A(bit_2), .B(bit_3), .CI(bit_1), .CO(sampled_bit) );
  MXI2X1M U28 ( .A(n12), .B(n13), .S0(n14), .Y(n36) );
  NOR4X1M U29 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  CLKNAND2X2M U30 ( .A(n22), .B(n25), .Y(n16) );
  XNOR2X1M U31 ( .A(edge_cnt[0]), .B(N6), .Y(n25) );
  XNOR2X1M U32 ( .A(edge_cnt[1]), .B(N15), .Y(n22) );
  NAND4X1M U33 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n15) );
  XNOR2X1M U34 ( .A(edge_cnt[2]), .B(N16), .Y(n29) );
  XNOR2X1M U35 ( .A(edge_cnt[3]), .B(N17), .Y(n28) );
  XNOR2X1M U36 ( .A(edge_cnt[4]), .B(N18), .Y(n27) );
  XNOR2X1M U37 ( .A(edge_cnt[5]), .B(N19), .Y(n26) );
  CLKNAND2X2M U38 ( .A(dat_samp_en), .B(bit_3), .Y(n12) );
  CLKNAND2X2M U39 ( .A(dat_samp_en), .B(bit_1), .Y(n30) );
  MXI2X1M U40 ( .A(n31), .B(n13), .S0(n32), .Y(n23) );
  NOR3X1M U41 ( .A(n33), .B(n20), .C(n21), .Y(n32) );
  CLKXOR2X2M U42 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n21) );
  NAND3BX1M U43 ( .AN(edge_cnt[5]), .B(n34), .C(n35), .Y(n20) );
  XNOR2X1M U44 ( .A(edge_cnt[0]), .B(prescale[1]), .Y(n35) );
  XNOR2X1M U45 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n34) );
  OR3X1M U46 ( .A(n18), .B(N12), .C(n19), .Y(n33) );
  CLKXOR2X2M U47 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n19) );
  CLKXOR2X2M U48 ( .A(edge_cnt[4]), .B(prescale[5]), .Y(n18) );
  CLKNAND2X2M U49 ( .A(dat_samp_en), .B(RX_IN), .Y(n13) );
  CLKNAND2X2M U50 ( .A(dat_samp_en), .B(bit_2), .Y(n31) );
endmodule


module deserializer ( deser_en, sampled_bit, bit_cnt, CLK, RST, P_DATA );
  input [3:0] bit_cnt;
  output [7:0] P_DATA;
  input deser_en, sampled_bit, CLK, RST;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n1, n2, n3, n4;

  DFFRQX2M \P_DATA_reg[5]  ( .D(n22), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n23), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n18), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n21), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n20), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  INVX2M U3 ( .A(sampled_bit), .Y(n4) );
  NOR4BX1M U4 ( .AN(deser_en), .B(n3), .C(bit_cnt[2]), .D(bit_cnt[3]), .Y(n8)
         );
  OAI2BB2X1M U5 ( .B0(n4), .B1(n7), .A0N(P_DATA[1]), .A1N(n7), .Y(n18) );
  NAND2X2M U6 ( .A(n8), .B(n2), .Y(n7) );
  OAI2BB2X1M U7 ( .B0(n4), .B1(n9), .A0N(P_DATA[2]), .A1N(n9), .Y(n19) );
  NAND2X2M U8 ( .A(n8), .B(bit_cnt[0]), .Y(n9) );
  OAI2BB2X1M U9 ( .B0(n4), .B1(n10), .A0N(P_DATA[3]), .A1N(n10), .Y(n20) );
  NAND3X2M U10 ( .A(n2), .B(n3), .C(n1), .Y(n10) );
  OAI2BB2X1M U11 ( .B0(n4), .B1(n11), .A0N(P_DATA[4]), .A1N(n11), .Y(n21) );
  NAND3X2M U12 ( .A(bit_cnt[0]), .B(n3), .C(n1), .Y(n11) );
  OAI2BB2X1M U13 ( .B0(n4), .B1(n12), .A0N(P_DATA[5]), .A1N(n12), .Y(n22) );
  NAND3X2M U14 ( .A(bit_cnt[1]), .B(n2), .C(n1), .Y(n12) );
  OAI2BB2X1M U15 ( .B0(n4), .B1(n13), .A0N(P_DATA[6]), .A1N(n13), .Y(n23) );
  NAND3X2M U16 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n1), .Y(n13) );
  OAI2BB2X1M U17 ( .B0(n4), .B1(n15), .A0N(P_DATA[7]), .A1N(n15), .Y(n24) );
  NAND4XLM U18 ( .A(bit_cnt[3]), .B(deser_en), .C(n16), .D(n2), .Y(n15) );
  NOR2X2M U19 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n16) );
  OAI2BB2X1M U20 ( .B0(n5), .B1(n4), .A0N(P_DATA[0]), .A1N(n5), .Y(n17) );
  NAND4XLM U21 ( .A(deser_en), .B(bit_cnt[0]), .C(n6), .D(n3), .Y(n5) );
  NOR2X2M U22 ( .A(bit_cnt[3]), .B(bit_cnt[2]), .Y(n6) );
  INVX2M U23 ( .A(n14), .Y(n1) );
  NAND3BXLM U24 ( .AN(bit_cnt[3]), .B(deser_en), .C(bit_cnt[2]), .Y(n14) );
  INVX2M U25 ( .A(bit_cnt[1]), .Y(n3) );
  INVX2M U26 ( .A(bit_cnt[0]), .Y(n2) );
endmodule


module edge_bit_counter ( enable, CLK, RST, prescale, edge_cnt, bit_cnt );
  input [5:0] prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input enable, CLK, RST;
  wire   N4, N5, N8, N9, N10, N11, N13, N14, N15, N16, N17, N18, n7, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, \add_19_aco/carry[5] ,
         \add_19_aco/carry[4] , \add_19_aco/carry[3] , \add_19_aco/carry[2] ,
         n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35;

  DFFRQX2M \edge_cnt_reg[5]  ( .D(N18), .CK(CLK), .RN(n9), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N16), .CK(CLK), .RN(n9), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N15), .CK(CLK), .RN(n9), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N17), .CK(CLK), .RN(n9), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N13), .CK(CLK), .RN(n9), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N14), .CK(CLK), .RN(n9), .Q(edge_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n30), .CK(CLK), .RN(n9), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n21), .CK(CLK), .RN(n9), .Q(bit_cnt[0]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n20), .CK(CLK), .RN(n9), .Q(bit_cnt[1]) );
  DFFRX2M \bit_cnt_reg[3]  ( .D(n19), .CK(CLK), .RN(n9), .Q(bit_cnt[3]), .QN(
        n7) );
  AND2X2M U3 ( .A(edge_cnt[0]), .B(N5), .Y(n1) );
  AND2X2M U4 ( .A(edge_cnt[1]), .B(N5), .Y(n2) );
  AND2X2M U5 ( .A(N5), .B(edge_cnt[5]), .Y(n3) );
  AND2X2M U6 ( .A(edge_cnt[2]), .B(N5), .Y(n4) );
  AND2X2M U7 ( .A(edge_cnt[3]), .B(N5), .Y(n5) );
  AND2X2M U8 ( .A(edge_cnt[4]), .B(N5), .Y(n6) );
  INVX2M U9 ( .A(enable), .Y(n32) );
  INVX2M U10 ( .A(n10), .Y(n9) );
  INVX2M U11 ( .A(RST), .Y(n10) );
  NOR3X2M U12 ( .A(n32), .B(n18), .C(n33), .Y(n14) );
  NOR2X2M U13 ( .A(n32), .B(N4), .Y(n18) );
  AOI21X2M U14 ( .A0(n33), .A1(enable), .B0(n18), .Y(n17) );
  NOR2X2M U15 ( .A(n1), .B(n32), .Y(N13) );
  NOR2BX2M U16 ( .AN(N8), .B(n32), .Y(N14) );
  NOR2BX2M U17 ( .AN(N9), .B(n32), .Y(N15) );
  NOR2BX2M U18 ( .AN(N10), .B(n32), .Y(N16) );
  NOR2BX2M U19 ( .AN(N11), .B(n32), .Y(N17) );
  CLKINVX1M U20 ( .A(N4), .Y(N5) );
  INVX2M U21 ( .A(n16), .Y(n30) );
  AOI32X1M U22 ( .A0(bit_cnt[1]), .A1(n35), .A2(n14), .B0(n15), .B1(bit_cnt[2]), .Y(n16) );
  OAI21X2M U23 ( .A0(bit_cnt[1]), .A1(n32), .B0(n17), .Y(n15) );
  OAI2BB2X1M U24 ( .B0(n17), .B1(n34), .A0N(n34), .A1N(n14), .Y(n20) );
  INVX2M U25 ( .A(bit_cnt[1]), .Y(n34) );
  OAI21X2M U26 ( .A0(n12), .A1(n7), .B0(n13), .Y(n19) );
  NAND4X2M U27 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n14), .D(n7), .Y(n13) );
  AOI21X2M U28 ( .A0(enable), .A1(n35), .B0(n15), .Y(n12) );
  NOR2X2M U29 ( .A(n8), .B(n32), .Y(N18) );
  XNOR2X2M U30 ( .A(\add_19_aco/carry[5] ), .B(n3), .Y(n8) );
  OAI32X1M U31 ( .A0(n32), .A1(bit_cnt[0]), .A2(n18), .B0(n33), .B1(n31), .Y(
        n21) );
  INVX2M U32 ( .A(n18), .Y(n31) );
  ADDHX1M U33 ( .A(n2), .B(n1), .CO(\add_19_aco/carry[2] ), .S(N8) );
  ADDHX1M U34 ( .A(n4), .B(\add_19_aco/carry[2] ), .CO(\add_19_aco/carry[3] ), 
        .S(N9) );
  ADDHX1M U35 ( .A(n5), .B(\add_19_aco/carry[3] ), .CO(\add_19_aco/carry[4] ), 
        .S(N10) );
  ADDHX1M U36 ( .A(n6), .B(\add_19_aco/carry[4] ), .CO(\add_19_aco/carry[5] ), 
        .S(N11) );
  INVX2M U37 ( .A(bit_cnt[0]), .Y(n33) );
  INVX2M U38 ( .A(bit_cnt[2]), .Y(n35) );
  NOR2BX1M U39 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n11) );
  OAI2B2X1M U40 ( .A1N(prescale[1]), .A0(n11), .B0(edge_cnt[1]), .B1(n11), .Y(
        n25) );
  NOR2BX1M U41 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n22) );
  OAI2B2X1M U42 ( .A1N(edge_cnt[1]), .A0(n22), .B0(prescale[1]), .B1(n22), .Y(
        n24) );
  XNOR2X1M U43 ( .A(prescale[5]), .B(edge_cnt[5]), .Y(n23) );
  NAND3X1M U44 ( .A(n25), .B(n24), .C(n23), .Y(n29) );
  CLKXOR2X2M U45 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n28) );
  CLKXOR2X2M U46 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n27) );
  CLKXOR2X2M U47 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n26) );
  NOR4X1M U48 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N4) );
endmodule


module parity_check ( par_chk_en, sampled_bit, PAR_TYP, P_DATA, CLK, RST, 
        par_err );
  input [7:0] P_DATA;
  input par_chk_en, sampled_bit, PAR_TYP, CLK, RST;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_err) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U5 ( .A(par_chk_en), .Y(n2) );
  XNOR2X2M U6 ( .A(P_DATA[2]), .B(PAR_TYP), .Y(n5) );
  XOR3XLM U7 ( .A(P_DATA[6]), .B(P_DATA[5]), .C(n6), .Y(n4) );
  XNOR2X2M U8 ( .A(sampled_bit), .B(P_DATA[7]), .Y(n6) );
  XOR3XLM U9 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U10 ( .A(P_DATA[4]), .B(P_DATA[3]), .Y(n7) );
endmodule


module stop_check ( stp_chk_en, sampled_bit, CLK, RST, stp_err );
  input stp_chk_en, sampled_bit, CLK, RST;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module strt_check ( strt_chk_en, sampled_bit, CLK, RST, strt_glitch );
  input strt_chk_en, sampled_bit, CLK, RST;
  output strt_glitch;
  wire   N4;

  DFFRQX2M strt_glitch_reg ( .D(N4), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  AND2X2M U3 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module UART_RX ( RX_IN, prescale, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        parity_error, stop_error, data_valid );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output parity_error, stop_error, data_valid;
  wire   strt_glitch, dat_samp_en, enable, deser_en, par_chk_en, strt_chk_en,
         stp_chk_en, sampled_bit, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  FSM_RX FSM_RX ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .edge_cnt(edge_cnt), 
        .bit_cnt(bit_cnt), .par_err(parity_error), .strt_glitch(strt_glitch), 
        .stp_err(stop_error), .prescale(prescale), .CLK(CLK), .RST(n1), 
        .dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .data_valid(data_valid) );
  data_sampling data_sampling ( .RX_IN(RX_IN), .prescale(prescale), .edge_cnt(
        edge_cnt), .CLK(CLK), .RST(n1), .dat_samp_en(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  deserializer deserializer ( .deser_en(deser_en), .sampled_bit(sampled_bit), 
        .bit_cnt(bit_cnt), .CLK(CLK), .RST(n1), .P_DATA(P_DATA) );
  edge_bit_counter edge_bit_counter ( .enable(enable), .CLK(CLK), .RST(n1), 
        .prescale(prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt) );
  parity_check parity_check ( .par_chk_en(par_chk_en), .sampled_bit(
        sampled_bit), .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .CLK(CLK), .RST(n1), 
        .par_err(parity_error) );
  stop_check stop_check ( .stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), 
        .CLK(CLK), .RST(n1), .stp_err(stop_error) );
  strt_check strt_check ( .strt_chk_en(strt_chk_en), .sampled_bit(sampled_bit), 
        .CLK(CLK), .RST(n1), .strt_glitch(strt_glitch) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 ( unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [1:0] MULTI_FLIP_FLOP;

  DFFRQX2M pulse_reg ( .D(MULTI_FLIP_FLOP[0]), .CK(CLK), .RN(n10), .Q(pulse)
         );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[0]  ( .D(MULTI_FLIP_FLOP[1]), .CK(CLK), .RN(
        n10), .Q(MULTI_FLIP_FLOP[0]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(n10), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(n10), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(n10), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(n10), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(n10), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(n10), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(n10), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(n10), .Q(sync_bus[4]) );
  DFFRQX2M enable_pulse_reg ( .D(n12), .CK(CLK), .RN(n10), .Q(enable_pulse) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[1]  ( .D(bus_enable), .CK(CLK), .RN(n10), .Q(
        MULTI_FLIP_FLOP[1]) );
  NAND2BX2M U3 ( .AN(pulse), .B(MULTI_FLIP_FLOP[0]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n12) );
  INVX4M U5 ( .A(n11), .Y(n10) );
  INVX2M U6 ( .A(RST), .Y(n11) );
  AO22X1M U7 ( .A0(unsync_bus[4]), .A1(n12), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U8 ( .A0(unsync_bus[2]), .A1(n12), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U9 ( .A0(unsync_bus[6]), .A1(n12), .B0(sync_bus[6]), .B1(n1), .Y(n8)
         );
  AO22X1M U10 ( .A0(unsync_bus[1]), .A1(n12), .B0(sync_bus[1]), .B1(n1), .Y(n3) );
  AO22X1M U11 ( .A0(unsync_bus[5]), .A1(n12), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U12 ( .A0(unsync_bus[0]), .A1(n12), .B0(sync_bus[0]), .B1(n1), .Y(n2) );
  AO22X1M U13 ( .A0(unsync_bus[3]), .A1(n12), .B0(sync_bus[3]), .B1(n1), .Y(n5) );
  AO22X1M U14 ( .A0(unsync_bus[7]), .A1(n12), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module SYS_CTRL_OPER_WIDTH8_ALU_OUT_WIDTH16_Address_width4 ( ALU_OUT, 
        OUT_Valid, RX_P_Data, RX_D_VLD, RdData, RdData_Valid, FIFO_FULL, CLK, 
        RST, ALU_EN, ALU_FUN, CLK_EN, Address, WrEN, RdEN, WrData, TX_P_DATA, 
        TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL, CLK, RST;
  output ALU_EN, CLK_EN, WrEN, RdEN, TX_D_VLD, clk_div_en;
  wire   n1, n2, n3, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n26, n27, n29, n30, n32, n34, n36, n37,
         n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n49, n50, n55, n62,
         n68, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n82, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n25, n28, n31, n33, n35, n51, n52, n53, n54, n56,
         n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n69, n81, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n109;
  wire   [3:0] current_state;
  wire   [15:8] ALU_OUT_registerd;
  wire   [3:0] next_state;

  DFFRQX2M \ALU_OUT_registerd_reg[15]  ( .D(n100), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[15]) );
  DFFRQX2M \ALU_OUT_registerd_reg[14]  ( .D(n99), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[14]) );
  DFFRQX2M \ALU_OUT_registerd_reg[13]  ( .D(n98), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[13]) );
  DFFRQX2M \ALU_OUT_registerd_reg[12]  ( .D(n97), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[12]) );
  DFFRQX2M \ALU_OUT_registerd_reg[11]  ( .D(n96), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[11]) );
  DFFRQX2M \ALU_OUT_registerd_reg[10]  ( .D(n95), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[10]) );
  DFFRQX2M \ALU_OUT_registerd_reg[9]  ( .D(n94), .CK(CLK), .RN(n33), .Q(
        ALU_OUT_registerd[9]) );
  DFFRQX2M \ALU_OUT_registerd_reg[8]  ( .D(n93), .CK(CLK), .RN(n31), .Q(
        ALU_OUT_registerd[8]) );
  DFFRX1M \internal_address_reg[2]  ( .D(n102), .CK(CLK), .RN(n31), .QN(n69)
         );
  DFFRX1M \internal_address_reg[3]  ( .D(n103), .CK(CLK), .RN(n31), .QN(n81)
         );
  DFFRX1M \internal_ALU_FUN_reg[1]  ( .D(n105), .CK(CLK), .RN(n31), .QN(n84)
         );
  DFFRX1M \internal_ALU_FUN_reg[2]  ( .D(n106), .CK(CLK), .RN(n31), .QN(n85)
         );
  DFFRX1M \internal_ALU_FUN_reg[3]  ( .D(n107), .CK(CLK), .RN(n31), .QN(n86)
         );
  DFFRX1M \internal_address_reg[1]  ( .D(n101), .CK(CLK), .RN(n31), .QN(n67)
         );
  DFFRX1M \internal_address_reg[0]  ( .D(n104), .CK(CLK), .RN(n31), .QN(n83)
         );
  DFFRX1M \internal_ALU_FUN_reg[0]  ( .D(n108), .CK(CLK), .RN(n31), .QN(n87)
         );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n31), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n31), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n31), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(n31), .Q(
        current_state[3]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  OAI21X2M U5 ( .A0(n82), .A1(n83), .B0(n7), .Y(Address[0]) );
  NOR2X2M U6 ( .A(n82), .B(n67), .Y(Address[1]) );
  NOR2X2M U7 ( .A(n82), .B(n69), .Y(Address[2]) );
  OAI21X2M U8 ( .A0(FIFO_FULL), .A1(n3), .B0(n59), .Y(ALU_EN) );
  NOR2X2M U9 ( .A(n52), .B(n87), .Y(ALU_FUN[0]) );
  NOR2X4M U10 ( .A(n52), .B(n85), .Y(ALU_FUN[2]) );
  NOR2X2M U11 ( .A(n82), .B(n81), .Y(Address[3]) );
  AOI2B1X2M U12 ( .A1N(n37), .A0(RX_D_VLD), .B0(RdEN), .Y(n82) );
  NOR2X2M U13 ( .A(n64), .B(current_state[3]), .Y(n15) );
  NOR2X2M U14 ( .A(n66), .B(current_state[0]), .Y(n13) );
  AOI32X1M U15 ( .A0(n13), .A1(current_state[2]), .A2(current_state[3]), .B0(
        n16), .B1(n63), .Y(n6) );
  INVX2M U16 ( .A(ALU_EN), .Y(n52) );
  INVX2M U17 ( .A(n41), .Y(n59) );
  BUFX2M U18 ( .A(n72), .Y(n28) );
  NOR2X2M U19 ( .A(n53), .B(n59), .Y(n72) );
  INVX2M U20 ( .A(WrEN), .Y(n54) );
  INVX2M U21 ( .A(n50), .Y(n56) );
  INVX2M U22 ( .A(n55), .Y(n58) );
  INVX4M U23 ( .A(n35), .Y(n31) );
  INVX2M U24 ( .A(n35), .Y(n33) );
  CLKINVX1M U25 ( .A(FIFO_FULL), .Y(n51) );
  NAND3X2M U26 ( .A(n15), .B(n51), .C(n13), .Y(n38) );
  NOR2X2M U27 ( .A(n52), .B(n84), .Y(ALU_FUN[1]) );
  NOR2X2M U28 ( .A(n52), .B(n86), .Y(ALU_FUN[3]) );
  OR3X2M U29 ( .A(n25), .B(n70), .C(n28), .Y(TX_D_VLD) );
  BUFX2M U30 ( .A(n73), .Y(n25) );
  NOR2XLM U31 ( .A(n6), .B(FIFO_FULL), .Y(n73) );
  NOR2X2M U32 ( .A(n60), .B(n32), .Y(n3) );
  INVX2M U33 ( .A(n47), .Y(n61) );
  NAND4BX1M U34 ( .AN(n9), .B(n10), .C(n11), .D(n12), .Y(next_state[2]) );
  AOI221XLM U35 ( .A0(n13), .A1(n14), .B0(n15), .B1(n16), .C0(n17), .Y(n12) );
  NAND4BX1M U36 ( .AN(n1), .B(n2), .C(n3), .D(n59), .Y(next_state[3]) );
  OAI211X2M U37 ( .A0(n51), .A1(n6), .B0(n7), .C0(n8), .Y(n1) );
  INVX2M U38 ( .A(n45), .Y(n60) );
  OAI22X1M U39 ( .A0(n64), .A1(n23), .B0(n68), .B1(n47), .Y(n41) );
  NOR2X4M U40 ( .A(n109), .B(n2), .Y(n50) );
  OAI21X2M U41 ( .A0(n48), .A1(n109), .B0(n7), .Y(WrEN) );
  NOR2X2M U42 ( .A(n54), .B(n92), .Y(WrData[0]) );
  NOR2X2M U43 ( .A(n54), .B(n91), .Y(WrData[1]) );
  NOR2X2M U44 ( .A(n54), .B(n90), .Y(WrData[2]) );
  NOR2X2M U45 ( .A(n54), .B(n89), .Y(WrData[3]) );
  NOR2X2M U46 ( .A(n54), .B(n88), .Y(WrData[5]) );
  NOR2X2M U47 ( .A(n57), .B(n68), .Y(n21) );
  NOR2BX2M U48 ( .AN(n11), .B(n21), .Y(n2) );
  OAI22X1M U49 ( .A0(n92), .A1(n56), .B0(n50), .B1(n87), .Y(n108) );
  OAI22X1M U50 ( .A0(n89), .A1(n56), .B0(n50), .B1(n86), .Y(n107) );
  OAI22X1M U51 ( .A0(n90), .A1(n56), .B0(n50), .B1(n85), .Y(n106) );
  OAI22X1M U52 ( .A0(n91), .A1(n56), .B0(n50), .B1(n84), .Y(n105) );
  INVX2M U53 ( .A(n13), .Y(n57) );
  NAND2X2M U54 ( .A(n61), .B(n15), .Y(n10) );
  INVX2M U55 ( .A(OUT_Valid), .Y(n53) );
  AND2X2M U56 ( .A(n37), .B(n10), .Y(n48) );
  OAI21X2M U57 ( .A0(n61), .A1(n13), .B0(n14), .Y(n55) );
  NOR2X2M U58 ( .A(n65), .B(n109), .Y(n14) );
  NOR3X2M U59 ( .A(n91), .B(n27), .C(n88), .Y(n30) );
  OAI22X1M U60 ( .A0(n58), .A1(n83), .B0(n92), .B1(n55), .Y(n104) );
  OAI22X1M U61 ( .A0(n58), .A1(n67), .B0(n91), .B1(n55), .Y(n101) );
  OAI22X1M U62 ( .A0(n58), .A1(n81), .B0(n89), .B1(n55), .Y(n103) );
  OAI22X1M U63 ( .A0(n58), .A1(n69), .B0(n90), .B1(n55), .Y(n102) );
  INVX2M U64 ( .A(n62), .Y(n65) );
  INVX2M U65 ( .A(RST), .Y(n35) );
  INVX2M U66 ( .A(n38), .Y(RdEN) );
  NAND3X2M U67 ( .A(current_state[3]), .B(current_state[0]), .C(
        current_state[1]), .Y(n23) );
  NAND3X2M U68 ( .A(current_state[3]), .B(current_state[2]), .C(n61), .Y(n45)
         );
  NAND2X2M U69 ( .A(current_state[0]), .B(n66), .Y(n47) );
  NOR2X2M U70 ( .A(n23), .B(current_state[2]), .Y(n32) );
  AOI2B1X1M U71 ( .A1N(n22), .A0(n23), .B0(n64), .Y(n9) );
  AOI21X2M U72 ( .A0(current_state[3]), .A1(n51), .B0(n57), .Y(n22) );
  NAND2X2M U73 ( .A(n18), .B(n19), .Y(next_state[1]) );
  AOI221XLM U74 ( .A0(n32), .A1(FIFO_FULL), .B0(n60), .B1(n51), .C0(n34), .Y(
        n18) );
  NOR4BBX1M U75 ( .AN(n20), .BN(n8), .C(n9), .D(n21), .Y(n19) );
  OAI222X1M U76 ( .A0(n65), .A1(n57), .B0(RdData_Valid), .B1(n36), .C0(
        RX_D_VLD), .C1(n37), .Y(n34) );
  NAND4BX1M U77 ( .AN(n32), .B(n38), .C(n39), .D(n40), .Y(next_state[0]) );
  AOI211X2M U78 ( .A0(n41), .A1(n53), .B0(n43), .C0(n17), .Y(n40) );
  AOI31X2M U79 ( .A0(n30), .A1(n92), .A2(n49), .B0(n50), .Y(n39) );
  OAI22X1M U80 ( .A0(n47), .A1(n65), .B0(RX_D_VLD), .B1(n48), .Y(n43) );
  INVX2M U81 ( .A(current_state[1]), .Y(n66) );
  INVX2M U82 ( .A(n68), .Y(n63) );
  OAI2BB1X2M U83 ( .A0N(RdData[0]), .A1N(n70), .B0(n80), .Y(TX_P_DATA[0]) );
  AOI22X1M U84 ( .A0(ALU_OUT[0]), .A1(n28), .B0(n25), .B1(ALU_OUT_registerd[8]), .Y(n80) );
  OAI2BB1X2M U85 ( .A0N(RdData[1]), .A1N(n70), .B0(n79), .Y(TX_P_DATA[1]) );
  AOI22X1M U86 ( .A0(ALU_OUT[1]), .A1(n28), .B0(n25), .B1(ALU_OUT_registerd[9]), .Y(n79) );
  OAI2BB1X2M U87 ( .A0N(RdData[2]), .A1N(n70), .B0(n78), .Y(TX_P_DATA[2]) );
  AOI22X1M U88 ( .A0(ALU_OUT[2]), .A1(n28), .B0(n25), .B1(
        ALU_OUT_registerd[10]), .Y(n78) );
  OAI2BB1X2M U89 ( .A0N(RdData[3]), .A1N(n70), .B0(n77), .Y(TX_P_DATA[3]) );
  AOI22X1M U90 ( .A0(ALU_OUT[3]), .A1(n28), .B0(n25), .B1(
        ALU_OUT_registerd[11]), .Y(n77) );
  OAI2BB1X2M U91 ( .A0N(RdData[4]), .A1N(n70), .B0(n76), .Y(TX_P_DATA[4]) );
  AOI22X1M U92 ( .A0(ALU_OUT[4]), .A1(n28), .B0(n25), .B1(
        ALU_OUT_registerd[12]), .Y(n76) );
  OAI2BB1X2M U93 ( .A0N(RdData[5]), .A1N(n70), .B0(n75), .Y(TX_P_DATA[5]) );
  AOI22X1M U94 ( .A0(ALU_OUT[5]), .A1(n28), .B0(n25), .B1(
        ALU_OUT_registerd[13]), .Y(n75) );
  OAI2BB1X2M U95 ( .A0N(RdData[6]), .A1N(n70), .B0(n74), .Y(TX_P_DATA[6]) );
  AOI22X1M U96 ( .A0(ALU_OUT[6]), .A1(n28), .B0(n25), .B1(
        ALU_OUT_registerd[14]), .Y(n74) );
  OAI2BB1X2M U97 ( .A0N(RdData[7]), .A1N(n70), .B0(n71), .Y(TX_P_DATA[7]) );
  AOI22X1M U98 ( .A0(ALU_OUT[7]), .A1(n28), .B0(n25), .B1(
        ALU_OUT_registerd[15]), .Y(n71) );
  NOR2BX4M U99 ( .AN(RdData_Valid), .B(n36), .Y(n70) );
  NAND3X2M U100 ( .A(current_state[0]), .B(n15), .C(current_state[1]), .Y(n36)
         );
  NAND2X2M U101 ( .A(current_state[3]), .B(n64), .Y(n68) );
  INVX2M U102 ( .A(current_state[2]), .Y(n64) );
  NOR2X2M U103 ( .A(current_state[0]), .B(current_state[1]), .Y(n16) );
  NAND3X2M U104 ( .A(n15), .B(n16), .C(RX_D_VLD), .Y(n7) );
  NAND3X2M U105 ( .A(current_state[1]), .B(current_state[0]), .C(n62), .Y(n37)
         );
  NOR2X2M U106 ( .A(current_state[2]), .B(current_state[3]), .Y(n62) );
  NOR2BX2M U107 ( .AN(RX_P_Data[4]), .B(n54), .Y(WrData[4]) );
  NOR2BX2M U108 ( .AN(RX_P_Data[7]), .B(n54), .Y(WrData[7]) );
  INVX2M U109 ( .A(RX_D_VLD), .Y(n109) );
  NAND4X2M U110 ( .A(RX_P_Data[7]), .B(RX_P_Data[3]), .C(n14), .D(n16), .Y(n27) );
  INVX2M U111 ( .A(RX_P_Data[0]), .Y(n92) );
  AOI32X1M U112 ( .A0(n29), .A1(RX_P_Data[4]), .A2(n30), .B0(n61), .B1(n14), 
        .Y(n20) );
  NOR3X2M U113 ( .A(RX_P_Data[2]), .B(RX_P_Data[6]), .C(n92), .Y(n29) );
  OAI211X2M U114 ( .A0(RdData_Valid), .A1(n36), .B0(n44), .C0(n45), .Y(n17) );
  NAND4BX1M U115 ( .AN(n27), .B(RX_P_Data[2]), .C(RX_P_Data[6]), .D(n46), .Y(
        n44) );
  NOR4X1M U116 ( .A(RX_P_Data[5]), .B(RX_P_Data[4]), .C(RX_P_Data[1]), .D(
        RX_P_Data[0]), .Y(n46) );
  NAND4X2M U117 ( .A(RX_P_Data[4]), .B(RX_P_Data[2]), .C(RX_P_Data[6]), .D(n26), .Y(n8) );
  NOR4X1M U118 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n27), .D(n92), .Y(n26)
         );
  INVX2M U119 ( .A(RX_P_Data[1]), .Y(n91) );
  NAND3X2M U120 ( .A(n16), .B(current_state[2]), .C(current_state[3]), .Y(n11)
         );
  AND2X2M U121 ( .A(RX_P_Data[6]), .B(WrEN), .Y(WrData[6]) );
  INVX2M U122 ( .A(RX_P_Data[5]), .Y(n88) );
  NOR3X2M U123 ( .A(RX_P_Data[2]), .B(RX_P_Data[6]), .C(RX_P_Data[4]), .Y(n49)
         );
  INVX2M U124 ( .A(RX_P_Data[2]), .Y(n90) );
  INVX2M U125 ( .A(RX_P_Data[3]), .Y(n89) );
  AO22X1M U126 ( .A0(n53), .A1(ALU_OUT_registerd[8]), .B0(OUT_Valid), .B1(
        ALU_OUT[8]), .Y(n93) );
  AO22X1M U127 ( .A0(n53), .A1(ALU_OUT_registerd[9]), .B0(ALU_OUT[9]), .B1(
        OUT_Valid), .Y(n94) );
  AO22X1M U128 ( .A0(n53), .A1(ALU_OUT_registerd[10]), .B0(ALU_OUT[10]), .B1(
        OUT_Valid), .Y(n95) );
  AO22X1M U129 ( .A0(n53), .A1(ALU_OUT_registerd[11]), .B0(ALU_OUT[11]), .B1(
        OUT_Valid), .Y(n96) );
  AO22X1M U130 ( .A0(n53), .A1(ALU_OUT_registerd[12]), .B0(ALU_OUT[12]), .B1(
        OUT_Valid), .Y(n97) );
  AO22X1M U131 ( .A0(n53), .A1(ALU_OUT_registerd[13]), .B0(ALU_OUT[13]), .B1(
        OUT_Valid), .Y(n98) );
  AO22X1M U132 ( .A0(n53), .A1(ALU_OUT_registerd[14]), .B0(ALU_OUT[14]), .B1(
        OUT_Valid), .Y(n99) );
  AO22X1M U133 ( .A0(n53), .A1(ALU_OUT_registerd[15]), .B0(ALU_OUT[15]), .B1(
        OUT_Valid), .Y(n100) );
  BUFX2M U134 ( .A(ALU_EN), .Y(CLK_EN) );
endmodule


module regfile_Address_width4_Data_width8_depth16 ( WrData, Address, WrEn, 
        RdEN, CLK, RST, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEN, CLK, RST;
  output RdData_Valid;
  wire   N10, N11, N12, N13, \Reg_file[4][7] , \Reg_file[4][6] ,
         \Reg_file[4][5] , \Reg_file[4][4] , \Reg_file[4][3] ,
         \Reg_file[4][2] , \Reg_file[4][1] , \Reg_file[4][0] ,
         \Reg_file[5][7] , \Reg_file[5][6] , \Reg_file[5][5] ,
         \Reg_file[5][4] , \Reg_file[5][3] , \Reg_file[5][2] ,
         \Reg_file[5][1] , \Reg_file[5][0] , \Reg_file[6][7] ,
         \Reg_file[6][6] , \Reg_file[6][5] , \Reg_file[6][4] ,
         \Reg_file[6][3] , \Reg_file[6][2] , \Reg_file[6][1] ,
         \Reg_file[6][0] , \Reg_file[7][7] , \Reg_file[7][6] ,
         \Reg_file[7][5] , \Reg_file[7][4] , \Reg_file[7][3] ,
         \Reg_file[7][2] , \Reg_file[7][1] , \Reg_file[7][0] ,
         \Reg_file[8][7] , \Reg_file[8][6] , \Reg_file[8][5] ,
         \Reg_file[8][4] , \Reg_file[8][3] , \Reg_file[8][2] ,
         \Reg_file[8][1] , \Reg_file[8][0] , \Reg_file[9][7] ,
         \Reg_file[9][6] , \Reg_file[9][5] , \Reg_file[9][4] ,
         \Reg_file[9][3] , \Reg_file[9][2] , \Reg_file[9][1] ,
         \Reg_file[9][0] , \Reg_file[10][7] , \Reg_file[10][6] ,
         \Reg_file[10][5] , \Reg_file[10][4] , \Reg_file[10][3] ,
         \Reg_file[10][2] , \Reg_file[10][1] , \Reg_file[10][0] ,
         \Reg_file[11][7] , \Reg_file[11][6] , \Reg_file[11][5] ,
         \Reg_file[11][4] , \Reg_file[11][3] , \Reg_file[11][2] ,
         \Reg_file[11][1] , \Reg_file[11][0] , \Reg_file[12][7] ,
         \Reg_file[12][6] , \Reg_file[12][5] , \Reg_file[12][4] ,
         \Reg_file[12][3] , \Reg_file[12][2] , \Reg_file[12][1] ,
         \Reg_file[12][0] , \Reg_file[13][7] , \Reg_file[13][6] ,
         \Reg_file[13][5] , \Reg_file[13][4] , \Reg_file[13][3] ,
         \Reg_file[13][2] , \Reg_file[13][1] , \Reg_file[13][0] ,
         \Reg_file[14][7] , \Reg_file[14][6] , \Reg_file[14][5] ,
         \Reg_file[14][4] , \Reg_file[14][3] , \Reg_file[14][2] ,
         \Reg_file[14][1] , \Reg_file[14][0] , \Reg_file[15][7] ,
         \Reg_file[15][6] , \Reg_file[15][5] , \Reg_file[15][4] ,
         \Reg_file[15][3] , \Reg_file[15][2] , \Reg_file[15][1] ,
         \Reg_file[15][0] , N19, N20, N21, N22, N23, N24, N25, N26, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFRQX2M \RdData_reg[7]  ( .D(n48), .CK(CLK), .RN(n300), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n47), .CK(CLK), .RN(n300), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n46), .CK(CLK), .RN(n300), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n45), .CK(CLK), .RN(n300), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n44), .CK(CLK), .RN(n300), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n43), .CK(CLK), .RN(n300), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n42), .CK(CLK), .RN(n300), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n41), .CK(CLK), .RN(n305), .Q(RdData[0]) );
  DFFRQX2M \Reg_file_reg[5][7]  ( .D(n136), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][7] ) );
  DFFRQX2M \Reg_file_reg[5][6]  ( .D(n135), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][6] ) );
  DFFRQX2M \Reg_file_reg[5][5]  ( .D(n134), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][5] ) );
  DFFRQX2M \Reg_file_reg[5][4]  ( .D(n133), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][4] ) );
  DFFRQX2M \Reg_file_reg[5][3]  ( .D(n132), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][3] ) );
  DFFRQX2M \Reg_file_reg[5][2]  ( .D(n131), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][2] ) );
  DFFRQX2M \Reg_file_reg[5][1]  ( .D(n130), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][1] ) );
  DFFRQX2M \Reg_file_reg[5][0]  ( .D(n129), .CK(CLK), .RN(n307), .Q(
        \Reg_file[5][0] ) );
  DFFRQX2M \Reg_file_reg[7][7]  ( .D(n120), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][7] ) );
  DFFRQX2M \Reg_file_reg[7][6]  ( .D(n119), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][6] ) );
  DFFRQX2M \Reg_file_reg[7][5]  ( .D(n118), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][5] ) );
  DFFRQX2M \Reg_file_reg[7][4]  ( .D(n117), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][4] ) );
  DFFRQX2M \Reg_file_reg[7][3]  ( .D(n116), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][3] ) );
  DFFRQX2M \Reg_file_reg[7][2]  ( .D(n115), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][2] ) );
  DFFRQX2M \Reg_file_reg[7][1]  ( .D(n114), .CK(CLK), .RN(n306), .Q(
        \Reg_file[7][1] ) );
  DFFRQX2M \Reg_file_reg[7][0]  ( .D(n113), .CK(CLK), .RN(n305), .Q(
        \Reg_file[7][0] ) );
  DFFRQX2M \Reg_file_reg[9][7]  ( .D(n104), .CK(CLK), .RN(n305), .Q(
        \Reg_file[9][7] ) );
  DFFRQX2M \Reg_file_reg[9][6]  ( .D(n103), .CK(CLK), .RN(n305), .Q(
        \Reg_file[9][6] ) );
  DFFRQX2M \Reg_file_reg[9][5]  ( .D(n102), .CK(CLK), .RN(n305), .Q(
        \Reg_file[9][5] ) );
  DFFRQX2M \Reg_file_reg[9][4]  ( .D(n101), .CK(CLK), .RN(n304), .Q(
        \Reg_file[9][4] ) );
  DFFRQX2M \Reg_file_reg[9][3]  ( .D(n100), .CK(CLK), .RN(n304), .Q(
        \Reg_file[9][3] ) );
  DFFRQX2M \Reg_file_reg[9][2]  ( .D(n99), .CK(CLK), .RN(n304), .Q(
        \Reg_file[9][2] ) );
  DFFRQX2M \Reg_file_reg[9][1]  ( .D(n98), .CK(CLK), .RN(n304), .Q(
        \Reg_file[9][1] ) );
  DFFRQX2M \Reg_file_reg[9][0]  ( .D(n97), .CK(CLK), .RN(n304), .Q(
        \Reg_file[9][0] ) );
  DFFRQX2M \Reg_file_reg[11][7]  ( .D(n88), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][7] ) );
  DFFRQX2M \Reg_file_reg[11][6]  ( .D(n87), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][6] ) );
  DFFRQX2M \Reg_file_reg[11][5]  ( .D(n86), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][5] ) );
  DFFRQX2M \Reg_file_reg[11][4]  ( .D(n85), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][4] ) );
  DFFRQX2M \Reg_file_reg[11][3]  ( .D(n84), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][3] ) );
  DFFRQX2M \Reg_file_reg[11][2]  ( .D(n83), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][2] ) );
  DFFRQX2M \Reg_file_reg[11][1]  ( .D(n82), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][1] ) );
  DFFRQX2M \Reg_file_reg[11][0]  ( .D(n81), .CK(CLK), .RN(n303), .Q(
        \Reg_file[11][0] ) );
  DFFRQX2M \Reg_file_reg[13][7]  ( .D(n72), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][7] ) );
  DFFRQX2M \Reg_file_reg[13][6]  ( .D(n71), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][6] ) );
  DFFRQX2M \Reg_file_reg[13][5]  ( .D(n70), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][5] ) );
  DFFRQX2M \Reg_file_reg[13][4]  ( .D(n69), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][4] ) );
  DFFRQX2M \Reg_file_reg[13][3]  ( .D(n68), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][3] ) );
  DFFRQX2M \Reg_file_reg[13][2]  ( .D(n67), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][2] ) );
  DFFRQX2M \Reg_file_reg[13][1]  ( .D(n66), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][1] ) );
  DFFRQX2M \Reg_file_reg[13][0]  ( .D(n65), .CK(CLK), .RN(n302), .Q(
        \Reg_file[13][0] ) );
  DFFRQX2M \Reg_file_reg[15][7]  ( .D(n56), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][7] ) );
  DFFRQX2M \Reg_file_reg[15][6]  ( .D(n55), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][6] ) );
  DFFRQX2M \Reg_file_reg[15][5]  ( .D(n54), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][5] ) );
  DFFRQX2M \Reg_file_reg[15][4]  ( .D(n53), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][4] ) );
  DFFRQX2M \Reg_file_reg[15][3]  ( .D(n52), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][3] ) );
  DFFRQX2M \Reg_file_reg[15][2]  ( .D(n51), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][2] ) );
  DFFRQX2M \Reg_file_reg[15][1]  ( .D(n50), .CK(CLK), .RN(n300), .Q(
        \Reg_file[15][1] ) );
  DFFRQX2M \Reg_file_reg[15][0]  ( .D(n49), .CK(CLK), .RN(n301), .Q(
        \Reg_file[15][0] ) );
  DFFRQX2M \Reg_file_reg[4][7]  ( .D(n144), .CK(CLK), .RN(n308), .Q(
        \Reg_file[4][7] ) );
  DFFRQX2M \Reg_file_reg[4][6]  ( .D(n143), .CK(CLK), .RN(n308), .Q(
        \Reg_file[4][6] ) );
  DFFRQX2M \Reg_file_reg[4][5]  ( .D(n142), .CK(CLK), .RN(n308), .Q(
        \Reg_file[4][5] ) );
  DFFRQX2M \Reg_file_reg[4][4]  ( .D(n141), .CK(CLK), .RN(n308), .Q(
        \Reg_file[4][4] ) );
  DFFRQX2M \Reg_file_reg[4][3]  ( .D(n140), .CK(CLK), .RN(n308), .Q(
        \Reg_file[4][3] ) );
  DFFRQX2M \Reg_file_reg[4][2]  ( .D(n139), .CK(CLK), .RN(n307), .Q(
        \Reg_file[4][2] ) );
  DFFRQX2M \Reg_file_reg[4][1]  ( .D(n138), .CK(CLK), .RN(n307), .Q(
        \Reg_file[4][1] ) );
  DFFRQX2M \Reg_file_reg[4][0]  ( .D(n137), .CK(CLK), .RN(n307), .Q(
        \Reg_file[4][0] ) );
  DFFRQX2M \Reg_file_reg[6][7]  ( .D(n128), .CK(CLK), .RN(n307), .Q(
        \Reg_file[6][7] ) );
  DFFRQX2M \Reg_file_reg[6][6]  ( .D(n127), .CK(CLK), .RN(n307), .Q(
        \Reg_file[6][6] ) );
  DFFRQX2M \Reg_file_reg[6][5]  ( .D(n126), .CK(CLK), .RN(n306), .Q(
        \Reg_file[6][5] ) );
  DFFRQX2M \Reg_file_reg[6][4]  ( .D(n125), .CK(CLK), .RN(n306), .Q(
        \Reg_file[6][4] ) );
  DFFRQX2M \Reg_file_reg[6][3]  ( .D(n124), .CK(CLK), .RN(n306), .Q(
        \Reg_file[6][3] ) );
  DFFRQX2M \Reg_file_reg[6][2]  ( .D(n123), .CK(CLK), .RN(n306), .Q(
        \Reg_file[6][2] ) );
  DFFRQX2M \Reg_file_reg[6][1]  ( .D(n122), .CK(CLK), .RN(n306), .Q(
        \Reg_file[6][1] ) );
  DFFRQX2M \Reg_file_reg[6][0]  ( .D(n121), .CK(CLK), .RN(n306), .Q(
        \Reg_file[6][0] ) );
  DFFRQX2M \Reg_file_reg[8][7]  ( .D(n112), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][7] ) );
  DFFRQX2M \Reg_file_reg[8][6]  ( .D(n111), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][6] ) );
  DFFRQX2M \Reg_file_reg[8][5]  ( .D(n110), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][5] ) );
  DFFRQX2M \Reg_file_reg[8][4]  ( .D(n109), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][4] ) );
  DFFRQX2M \Reg_file_reg[8][3]  ( .D(n108), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][3] ) );
  DFFRQX2M \Reg_file_reg[8][2]  ( .D(n107), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][2] ) );
  DFFRQX2M \Reg_file_reg[8][1]  ( .D(n106), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][1] ) );
  DFFRQX2M \Reg_file_reg[8][0]  ( .D(n105), .CK(CLK), .RN(n305), .Q(
        \Reg_file[8][0] ) );
  DFFRQX2M \Reg_file_reg[10][7]  ( .D(n96), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][7] ) );
  DFFRQX2M \Reg_file_reg[10][6]  ( .D(n95), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][6] ) );
  DFFRQX2M \Reg_file_reg[10][5]  ( .D(n94), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][5] ) );
  DFFRQX2M \Reg_file_reg[10][4]  ( .D(n93), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][4] ) );
  DFFRQX2M \Reg_file_reg[10][3]  ( .D(n92), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][3] ) );
  DFFRQX2M \Reg_file_reg[10][2]  ( .D(n91), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][2] ) );
  DFFRQX2M \Reg_file_reg[10][1]  ( .D(n90), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][1] ) );
  DFFRQX2M \Reg_file_reg[10][0]  ( .D(n89), .CK(CLK), .RN(n304), .Q(
        \Reg_file[10][0] ) );
  DFFRQX2M \Reg_file_reg[12][7]  ( .D(n80), .CK(CLK), .RN(n303), .Q(
        \Reg_file[12][7] ) );
  DFFRQX2M \Reg_file_reg[12][6]  ( .D(n79), .CK(CLK), .RN(n303), .Q(
        \Reg_file[12][6] ) );
  DFFRQX2M \Reg_file_reg[12][5]  ( .D(n78), .CK(CLK), .RN(n303), .Q(
        \Reg_file[12][5] ) );
  DFFRQX2M \Reg_file_reg[12][4]  ( .D(n77), .CK(CLK), .RN(n303), .Q(
        \Reg_file[12][4] ) );
  DFFRQX2M \Reg_file_reg[12][3]  ( .D(n76), .CK(CLK), .RN(n303), .Q(
        \Reg_file[12][3] ) );
  DFFRQX2M \Reg_file_reg[12][2]  ( .D(n75), .CK(CLK), .RN(n302), .Q(
        \Reg_file[12][2] ) );
  DFFRQX2M \Reg_file_reg[12][1]  ( .D(n74), .CK(CLK), .RN(n302), .Q(
        \Reg_file[12][1] ) );
  DFFRQX2M \Reg_file_reg[12][0]  ( .D(n73), .CK(CLK), .RN(n302), .Q(
        \Reg_file[12][0] ) );
  DFFRQX2M \Reg_file_reg[14][7]  ( .D(n64), .CK(CLK), .RN(n302), .Q(
        \Reg_file[14][7] ) );
  DFFRQX2M \Reg_file_reg[14][6]  ( .D(n63), .CK(CLK), .RN(n302), .Q(
        \Reg_file[14][6] ) );
  DFFRQX2M \Reg_file_reg[14][5]  ( .D(n62), .CK(CLK), .RN(n301), .Q(
        \Reg_file[14][5] ) );
  DFFRQX2M \Reg_file_reg[14][4]  ( .D(n61), .CK(CLK), .RN(n301), .Q(
        \Reg_file[14][4] ) );
  DFFRQX2M \Reg_file_reg[14][3]  ( .D(n60), .CK(CLK), .RN(n301), .Q(
        \Reg_file[14][3] ) );
  DFFRQX2M \Reg_file_reg[14][2]  ( .D(n59), .CK(CLK), .RN(n301), .Q(
        \Reg_file[14][2] ) );
  DFFRQX2M \Reg_file_reg[14][1]  ( .D(n58), .CK(CLK), .RN(n301), .Q(
        \Reg_file[14][1] ) );
  DFFRQX2M \Reg_file_reg[14][0]  ( .D(n57), .CK(CLK), .RN(n301), .Q(
        \Reg_file[14][0] ) );
  DFFSQX2M \Reg_file_reg[3][5]  ( .D(n150), .CK(CLK), .SN(n300), .Q(REG3[5])
         );
  DFFRQX2M \Reg_file_reg[2][1]  ( .D(n154), .CK(CLK), .RN(n308), .Q(REG2[1])
         );
  DFFSQX2M \Reg_file_reg[2][0]  ( .D(n153), .CK(CLK), .SN(n300), .Q(REG2[0])
         );
  DFFRQX2M \Reg_file_reg[3][1]  ( .D(n146), .CK(CLK), .RN(n308), .Q(REG3[1])
         );
  DFFRQX2M \Reg_file_reg[3][3]  ( .D(n148), .CK(CLK), .RN(n308), .Q(REG3[3])
         );
  DFFRQX2M \Reg_file_reg[3][2]  ( .D(n147), .CK(CLK), .RN(n308), .Q(REG3[2])
         );
  DFFRQX2M \Reg_file_reg[3][6]  ( .D(n151), .CK(CLK), .RN(n308), .Q(REG3[6])
         );
  DFFRQX2M \Reg_file_reg[3][4]  ( .D(n149), .CK(CLK), .RN(n308), .Q(REG3[4])
         );
  DFFRQX2M \Reg_file_reg[3][7]  ( .D(n152), .CK(CLK), .RN(n308), .Q(REG3[7])
         );
  DFFRQX2M \Reg_file_reg[3][0]  ( .D(n145), .CK(CLK), .RN(n308), .Q(REG3[0])
         );
  DFFSQX4M \Reg_file_reg[2][7]  ( .D(n160), .CK(CLK), .SN(n300), .Q(REG2[7])
         );
  DFFRQX2M \Reg_file_reg[2][2]  ( .D(n155), .CK(CLK), .RN(n309), .Q(REG2[2])
         );
  DFFRQX4M \Reg_file_reg[2][4]  ( .D(n157), .CK(CLK), .RN(n309), .Q(REG2[4])
         );
  DFFRQX4M \Reg_file_reg[2][3]  ( .D(n156), .CK(CLK), .RN(n309), .Q(REG2[3])
         );
  DFFRQX4M \Reg_file_reg[2][5]  ( .D(n158), .CK(CLK), .RN(n309), .Q(REG2[5])
         );
  DFFRQX4M \Reg_file_reg[2][6]  ( .D(n159), .CK(CLK), .RN(n309), .Q(REG2[6])
         );
  DFFRQX2M RdData_Valid_reg ( .D(n315), .CK(CLK), .RN(n300), .Q(RdData_Valid)
         );
  DFFRQX2M \Reg_file_reg[0][1]  ( .D(n170), .CK(CLK), .RN(n310), .Q(REG0[1])
         );
  DFFRQX2M \Reg_file_reg[0][0]  ( .D(n169), .CK(CLK), .RN(n310), .Q(REG0[0])
         );
  DFFRQX2M \Reg_file_reg[0][2]  ( .D(n171), .CK(CLK), .RN(n310), .Q(REG0[2])
         );
  DFFRQX2M \Reg_file_reg[0][3]  ( .D(n172), .CK(CLK), .RN(n310), .Q(REG0[3])
         );
  DFFRQX2M \Reg_file_reg[0][4]  ( .D(n173), .CK(CLK), .RN(n310), .Q(REG0[4])
         );
  DFFRQX2M \Reg_file_reg[0][5]  ( .D(n174), .CK(CLK), .RN(n310), .Q(REG0[5])
         );
  DFFRQX2M \Reg_file_reg[0][6]  ( .D(n175), .CK(CLK), .RN(n310), .Q(REG0[6])
         );
  DFFRQX4M \Reg_file_reg[1][7]  ( .D(n168), .CK(CLK), .RN(n309), .Q(REG1[7])
         );
  DFFRQX2M \Reg_file_reg[1][3]  ( .D(n164), .CK(CLK), .RN(n309), .Q(REG1[3])
         );
  DFFRQX2M \Reg_file_reg[1][2]  ( .D(n163), .CK(CLK), .RN(n309), .Q(REG1[2])
         );
  DFFRQX2M \Reg_file_reg[1][1]  ( .D(n162), .CK(CLK), .RN(n309), .Q(REG1[1])
         );
  DFFRQX2M \Reg_file_reg[1][6]  ( .D(n167), .CK(CLK), .RN(n309), .Q(REG1[6])
         );
  DFFRQX4M \Reg_file_reg[1][4]  ( .D(n165), .CK(CLK), .RN(n309), .Q(REG1[4])
         );
  DFFRQX2M \Reg_file_reg[0][7]  ( .D(n176), .CK(CLK), .RN(n300), .Q(REG0[7])
         );
  DFFRQX4M \Reg_file_reg[1][5]  ( .D(n166), .CK(CLK), .RN(n309), .Q(REG1[5])
         );
  DFFRQX4M \Reg_file_reg[1][0]  ( .D(n161), .CK(CLK), .RN(n309), .Q(REG1[0])
         );
  NAND2X2M U3 ( .A(N13), .B(n314), .Y(n249) );
  AOI21XLM U4 ( .A0(n254), .A1(n253), .B0(n252), .Y(n267) );
  NOR2X2M U5 ( .A(n314), .B(n270), .Y(n15) );
  NOR2BX2M U6 ( .AN(n39), .B(N10), .Y(n33) );
  NOR2BX2M U7 ( .AN(n27), .B(N10), .Y(n18) );
  NOR2X2M U8 ( .A(n314), .B(N11), .Y(n20) );
  NOR2X2M U9 ( .A(n270), .B(N12), .Y(n23) );
  NOR2X2M U10 ( .A(N11), .B(N12), .Y(n26) );
  NAND2BX2M U11 ( .AN(WrEn), .B(RdEN), .Y(n13) );
  AOI22XLM U12 ( .A0(REG0[1]), .A1(n283), .B0(REG1[1]), .B1(n280), .Y(n181) );
  AOI22XLM U13 ( .A0(REG0[4]), .A1(n282), .B0(REG1[4]), .B1(n279), .Y(n217) );
  AOI22XLM U14 ( .A0(REG0[5]), .A1(n282), .B0(REG1[5]), .B1(n279), .Y(n229) );
  AOI22XLM U15 ( .A0(REG0[6]), .A1(n281), .B0(REG1[6]), .B1(n278), .Y(n241) );
  AOI22XLM U16 ( .A0(REG0[7]), .A1(n281), .B0(REG1[7]), .B1(n278), .Y(n256) );
  AOI22XLM U17 ( .A0(REG0[0]), .A1(n283), .B0(REG1[0]), .B1(n280), .Y(n5) );
  AOI22XLM U18 ( .A0(REG0[2]), .A1(n283), .B0(REG1[2]), .B1(n280), .Y(n193) );
  AOI22XLM U19 ( .A0(REG0[3]), .A1(n282), .B0(REG1[3]), .B1(n279), .Y(n205) );
  OAI2BB2XLM U20 ( .B0(n322), .B1(n285), .A0N(REG1[0]), .A1N(n285), .Y(n161)
         );
  OAI2BB2XLM U21 ( .B0(n321), .B1(n285), .A0N(REG1[1]), .A1N(n285), .Y(n162)
         );
  OAI2BB2XLM U22 ( .B0(n320), .B1(n285), .A0N(REG1[2]), .A1N(n285), .Y(n163)
         );
  OAI2BB2XLM U23 ( .B0(n319), .B1(n285), .A0N(REG1[3]), .A1N(n285), .Y(n164)
         );
  OAI2BB2XLM U24 ( .B0(n318), .B1(n285), .A0N(REG1[4]), .A1N(n285), .Y(n165)
         );
  OAI2BB2XLM U25 ( .B0(n317), .B1(n285), .A0N(REG1[5]), .A1N(n285), .Y(n166)
         );
  OAI2BB2XLM U26 ( .B0(n323), .B1(n285), .A0N(REG1[6]), .A1N(n285), .Y(n167)
         );
  OAI2BB2XLM U27 ( .B0(n323), .B1(n284), .A0N(REG0[6]), .A1N(n284), .Y(n175)
         );
  OAI2BB2XLM U28 ( .B0(n316), .B1(n284), .A0N(REG0[7]), .A1N(n284), .Y(n176)
         );
  INVX4M U29 ( .A(WrData[4]), .Y(n318) );
  INVX4M U30 ( .A(WrData[7]), .Y(n316) );
  INVX4M U31 ( .A(WrData[6]), .Y(n323) );
  BUFX2M U32 ( .A(n30), .Y(n291) );
  BUFX2M U33 ( .A(n14), .Y(n299) );
  BUFX2M U34 ( .A(n258), .Y(n274) );
  BUFX2M U35 ( .A(n258), .Y(n273) );
  BUFX2M U36 ( .A(n258), .Y(n272) );
  NAND2X2M U37 ( .A(n31), .B(n15), .Y(n30) );
  BUFX2M U38 ( .A(n34), .Y(n289) );
  BUFX2M U39 ( .A(n35), .Y(n288) );
  BUFX2M U40 ( .A(n37), .Y(n286) );
  BUFX2M U41 ( .A(n32), .Y(n290) );
  NAND2X2M U42 ( .A(n15), .B(n16), .Y(n14) );
  BUFX2M U43 ( .A(n21), .Y(n296) );
  BUFX2M U44 ( .A(n24), .Y(n294) );
  BUFX2M U45 ( .A(n28), .Y(n292) );
  BUFX2M U46 ( .A(n17), .Y(n298) );
  BUFX2M U47 ( .A(n19), .Y(n297) );
  BUFX2M U48 ( .A(n22), .Y(n295) );
  BUFX2M U49 ( .A(n25), .Y(n293) );
  BUFX2M U50 ( .A(n261), .Y(n283) );
  BUFX2M U51 ( .A(n259), .Y(n277) );
  BUFX2M U52 ( .A(n261), .Y(n282) );
  BUFX2M U53 ( .A(n259), .Y(n276) );
  BUFX2M U54 ( .A(n260), .Y(n280) );
  BUFX2M U55 ( .A(n260), .Y(n279) );
  BUFX2M U56 ( .A(n261), .Y(n281) );
  BUFX2M U57 ( .A(n259), .Y(n275) );
  BUFX2M U58 ( .A(n260), .Y(n278) );
  NOR2BX2M U59 ( .AN(n39), .B(n271), .Y(n31) );
  BUFX4M U60 ( .A(n36), .Y(n287) );
  NAND2X2M U61 ( .A(n31), .B(n23), .Y(n36) );
  BUFX4M U62 ( .A(n38), .Y(n285) );
  NAND2X2M U63 ( .A(n31), .B(n26), .Y(n38) );
  BUFX4M U64 ( .A(n40), .Y(n284) );
  NAND2X2M U65 ( .A(n33), .B(n26), .Y(n40) );
  NAND2X2M U66 ( .A(n33), .B(n15), .Y(n32) );
  NAND2X2M U67 ( .A(n31), .B(n20), .Y(n34) );
  NAND2X2M U68 ( .A(n33), .B(n20), .Y(n35) );
  NAND2X2M U69 ( .A(n33), .B(n23), .Y(n37) );
  NOR2BX2M U70 ( .AN(n27), .B(n271), .Y(n16) );
  NAND2X2M U71 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U72 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U73 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U74 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U75 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U76 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U77 ( .A(n26), .B(n18), .Y(n28) );
  INVX2M U78 ( .A(n13), .Y(n315) );
  BUFX4M U79 ( .A(n311), .Y(n301) );
  BUFX4M U80 ( .A(n313), .Y(n302) );
  BUFX4M U81 ( .A(n313), .Y(n303) );
  BUFX4M U82 ( .A(n311), .Y(n304) );
  BUFX4M U83 ( .A(n313), .Y(n305) );
  BUFX4M U84 ( .A(n312), .Y(n306) );
  BUFX4M U85 ( .A(n311), .Y(n307) );
  BUFX4M U86 ( .A(n311), .Y(n308) );
  BUFX4M U87 ( .A(n312), .Y(n309) );
  BUFX2M U88 ( .A(n313), .Y(n310) );
  INVX2M U89 ( .A(N10), .Y(n271) );
  INVX2M U90 ( .A(N11), .Y(n270) );
  INVX2M U91 ( .A(N13), .Y(n269) );
  NOR2BX2M U92 ( .AN(n29), .B(N13), .Y(n39) );
  NOR2BX2M U93 ( .AN(WrEn), .B(RdEN), .Y(n29) );
  INVX2M U94 ( .A(N12), .Y(n314) );
  AND2X2M U95 ( .A(N13), .B(n29), .Y(n27) );
  BUFX4M U96 ( .A(n312), .Y(n300) );
  BUFX2M U97 ( .A(n311), .Y(n312) );
  BUFX2M U98 ( .A(n313), .Y(n311) );
  INVX4M U99 ( .A(WrData[0]), .Y(n322) );
  INVX4M U100 ( .A(WrData[1]), .Y(n321) );
  INVX4M U101 ( .A(WrData[2]), .Y(n320) );
  INVX4M U102 ( .A(WrData[3]), .Y(n319) );
  INVX4M U103 ( .A(WrData[5]), .Y(n317) );
  BUFX2M U104 ( .A(RST), .Y(n313) );
  AO22X1M U105 ( .A0(N26), .A1(n315), .B0(RdData[0]), .B1(n13), .Y(n41) );
  AO22X1M U106 ( .A0(N25), .A1(n315), .B0(RdData[1]), .B1(n13), .Y(n42) );
  AO22X1M U107 ( .A0(N24), .A1(n315), .B0(RdData[2]), .B1(n13), .Y(n43) );
  AO22X1M U108 ( .A0(N23), .A1(n315), .B0(RdData[3]), .B1(n13), .Y(n44) );
  AO22X1M U109 ( .A0(N22), .A1(n315), .B0(RdData[4]), .B1(n13), .Y(n45) );
  AO22X1M U110 ( .A0(N21), .A1(n315), .B0(RdData[5]), .B1(n13), .Y(n46) );
  AO22X1M U111 ( .A0(N20), .A1(n315), .B0(RdData[6]), .B1(n13), .Y(n47) );
  AO22X1M U112 ( .A0(N19), .A1(n315), .B0(RdData[7]), .B1(n13), .Y(n48) );
  OAI2BB2X1M U113 ( .B0(n322), .B1(n291), .A0N(\Reg_file[7][0] ), .A1N(n291), 
        .Y(n113) );
  OAI2BB2X1M U114 ( .B0(n321), .B1(n291), .A0N(\Reg_file[7][1] ), .A1N(n291), 
        .Y(n114) );
  OAI2BB2X1M U115 ( .B0(n320), .B1(n30), .A0N(\Reg_file[7][2] ), .A1N(n291), 
        .Y(n115) );
  OAI2BB2X1M U116 ( .B0(n319), .B1(n30), .A0N(\Reg_file[7][3] ), .A1N(n291), 
        .Y(n116) );
  OAI2BB2X1M U117 ( .B0(n317), .B1(n30), .A0N(\Reg_file[7][5] ), .A1N(n291), 
        .Y(n118) );
  OAI2BB2X1M U118 ( .B0(n322), .B1(n290), .A0N(\Reg_file[6][0] ), .A1N(n290), 
        .Y(n121) );
  OAI2BB2X1M U119 ( .B0(n321), .B1(n290), .A0N(\Reg_file[6][1] ), .A1N(n290), 
        .Y(n122) );
  OAI2BB2X1M U120 ( .B0(n320), .B1(n32), .A0N(\Reg_file[6][2] ), .A1N(n290), 
        .Y(n123) );
  OAI2BB2X1M U121 ( .B0(n319), .B1(n32), .A0N(\Reg_file[6][3] ), .A1N(n290), 
        .Y(n124) );
  OAI2BB2X1M U122 ( .B0(n317), .B1(n32), .A0N(\Reg_file[6][5] ), .A1N(n290), 
        .Y(n126) );
  OAI2BB2X1M U123 ( .B0(n322), .B1(n289), .A0N(\Reg_file[5][0] ), .A1N(n289), 
        .Y(n129) );
  OAI2BB2X1M U124 ( .B0(n321), .B1(n289), .A0N(\Reg_file[5][1] ), .A1N(n289), 
        .Y(n130) );
  OAI2BB2X1M U125 ( .B0(n320), .B1(n34), .A0N(\Reg_file[5][2] ), .A1N(n289), 
        .Y(n131) );
  OAI2BB2X1M U126 ( .B0(n319), .B1(n34), .A0N(\Reg_file[5][3] ), .A1N(n289), 
        .Y(n132) );
  OAI2BB2X1M U127 ( .B0(n317), .B1(n34), .A0N(\Reg_file[5][5] ), .A1N(n289), 
        .Y(n134) );
  OAI2BB2X1M U128 ( .B0(n322), .B1(n288), .A0N(\Reg_file[4][0] ), .A1N(n288), 
        .Y(n137) );
  OAI2BB2X1M U129 ( .B0(n321), .B1(n288), .A0N(\Reg_file[4][1] ), .A1N(n288), 
        .Y(n138) );
  OAI2BB2X1M U130 ( .B0(n320), .B1(n35), .A0N(\Reg_file[4][2] ), .A1N(n288), 
        .Y(n139) );
  OAI2BB2X1M U131 ( .B0(n319), .B1(n35), .A0N(\Reg_file[4][3] ), .A1N(n288), 
        .Y(n140) );
  OAI2BB2X1M U132 ( .B0(n317), .B1(n35), .A0N(\Reg_file[4][5] ), .A1N(n288), 
        .Y(n142) );
  OAI2BB2X1M U133 ( .B0(n322), .B1(n287), .A0N(REG3[0]), .A1N(n287), .Y(n145)
         );
  OAI2BB2X1M U134 ( .B0(n321), .B1(n287), .A0N(REG3[1]), .A1N(n287), .Y(n146)
         );
  OAI2BB2X1M U135 ( .B0(n320), .B1(n287), .A0N(REG3[2]), .A1N(n287), .Y(n147)
         );
  OAI2BB2X1M U136 ( .B0(n319), .B1(n287), .A0N(REG3[3]), .A1N(n287), .Y(n148)
         );
  OAI2BB2X1M U137 ( .B0(n321), .B1(n37), .A0N(REG2[1]), .A1N(n286), .Y(n154)
         );
  OAI2BB2X1M U138 ( .B0(n320), .B1(n37), .A0N(REG2[2]), .A1N(n286), .Y(n155)
         );
  OAI2BB2X1M U139 ( .B0(n319), .B1(n286), .A0N(REG2[3]), .A1N(n286), .Y(n156)
         );
  OAI2BB2X1M U140 ( .B0(n317), .B1(n286), .A0N(REG2[5]), .A1N(n286), .Y(n158)
         );
  OAI2BB2X1M U141 ( .B0(n322), .B1(n284), .A0N(REG0[0]), .A1N(n284), .Y(n169)
         );
  OAI2BB2X1M U142 ( .B0(n321), .B1(n284), .A0N(REG0[1]), .A1N(n284), .Y(n170)
         );
  OAI2BB2X1M U143 ( .B0(n320), .B1(n284), .A0N(REG0[2]), .A1N(n284), .Y(n171)
         );
  OAI2BB2X1M U144 ( .B0(n319), .B1(n284), .A0N(REG0[3]), .A1N(n284), .Y(n172)
         );
  OAI2BB2X1M U145 ( .B0(n317), .B1(n284), .A0N(REG0[5]), .A1N(n284), .Y(n174)
         );
  OAI2BB2X1M U146 ( .B0(n318), .B1(n291), .A0N(\Reg_file[7][4] ), .A1N(n291), 
        .Y(n117) );
  OAI2BB2X1M U147 ( .B0(n323), .B1(n30), .A0N(\Reg_file[7][6] ), .A1N(n291), 
        .Y(n119) );
  OAI2BB2X1M U148 ( .B0(n316), .B1(n291), .A0N(\Reg_file[7][7] ), .A1N(n291), 
        .Y(n120) );
  OAI2BB2X1M U149 ( .B0(n318), .B1(n290), .A0N(\Reg_file[6][4] ), .A1N(n290), 
        .Y(n125) );
  OAI2BB2X1M U150 ( .B0(n323), .B1(n32), .A0N(\Reg_file[6][6] ), .A1N(n290), 
        .Y(n127) );
  OAI2BB2X1M U151 ( .B0(n316), .B1(n290), .A0N(\Reg_file[6][7] ), .A1N(n290), 
        .Y(n128) );
  OAI2BB2X1M U152 ( .B0(n318), .B1(n289), .A0N(\Reg_file[5][4] ), .A1N(n289), 
        .Y(n133) );
  OAI2BB2X1M U153 ( .B0(n323), .B1(n34), .A0N(\Reg_file[5][6] ), .A1N(n289), 
        .Y(n135) );
  OAI2BB2X1M U154 ( .B0(n316), .B1(n289), .A0N(\Reg_file[5][7] ), .A1N(n289), 
        .Y(n136) );
  OAI2BB2X1M U155 ( .B0(n318), .B1(n288), .A0N(\Reg_file[4][4] ), .A1N(n288), 
        .Y(n141) );
  OAI2BB2X1M U156 ( .B0(n323), .B1(n35), .A0N(\Reg_file[4][6] ), .A1N(n288), 
        .Y(n143) );
  OAI2BB2X1M U157 ( .B0(n316), .B1(n288), .A0N(\Reg_file[4][7] ), .A1N(n288), 
        .Y(n144) );
  OAI2BB2X1M U158 ( .B0(n318), .B1(n286), .A0N(REG2[4]), .A1N(n286), .Y(n157)
         );
  OAI2BB2X1M U159 ( .B0(n323), .B1(n37), .A0N(REG2[6]), .A1N(n286), .Y(n159)
         );
  OAI2BB2X1M U160 ( .B0(n318), .B1(n287), .A0N(REG3[4]), .A1N(n287), .Y(n149)
         );
  OAI2BB2X1M U161 ( .B0(n323), .B1(n287), .A0N(REG3[6]), .A1N(n287), .Y(n151)
         );
  OAI2BB2X1M U162 ( .B0(n316), .B1(n287), .A0N(REG3[7]), .A1N(n287), .Y(n152)
         );
  OAI2BB2X1M U163 ( .B0(n316), .B1(n285), .A0N(REG1[7]), .A1N(n285), .Y(n168)
         );
  OAI2BB2X1M U164 ( .B0(n318), .B1(n284), .A0N(REG0[4]), .A1N(n284), .Y(n173)
         );
  OAI2BB2X1M U165 ( .B0(n317), .B1(n287), .A0N(REG3[5]), .A1N(n287), .Y(n150)
         );
  OAI2BB2X1M U166 ( .B0(n322), .B1(n286), .A0N(REG2[0]), .A1N(n286), .Y(n153)
         );
  OAI2BB2X1M U167 ( .B0(n316), .B1(n37), .A0N(REG2[7]), .A1N(n286), .Y(n160)
         );
  OAI2BB2X1M U168 ( .B0(n299), .B1(n322), .A0N(\Reg_file[15][0] ), .A1N(n299), 
        .Y(n49) );
  OAI2BB2X1M U169 ( .B0(n14), .B1(n321), .A0N(\Reg_file[15][1] ), .A1N(n299), 
        .Y(n50) );
  OAI2BB2X1M U170 ( .B0(n14), .B1(n320), .A0N(\Reg_file[15][2] ), .A1N(n299), 
        .Y(n51) );
  OAI2BB2X1M U171 ( .B0(n14), .B1(n319), .A0N(\Reg_file[15][3] ), .A1N(n299), 
        .Y(n52) );
  OAI2BB2X1M U172 ( .B0(n14), .B1(n317), .A0N(\Reg_file[15][5] ), .A1N(n299), 
        .Y(n54) );
  OAI2BB2X1M U173 ( .B0(n322), .B1(n298), .A0N(\Reg_file[14][0] ), .A1N(n298), 
        .Y(n57) );
  OAI2BB2X1M U174 ( .B0(n321), .B1(n17), .A0N(\Reg_file[14][1] ), .A1N(n298), 
        .Y(n58) );
  OAI2BB2X1M U175 ( .B0(n320), .B1(n17), .A0N(\Reg_file[14][2] ), .A1N(n298), 
        .Y(n59) );
  OAI2BB2X1M U176 ( .B0(n319), .B1(n17), .A0N(\Reg_file[14][3] ), .A1N(n298), 
        .Y(n60) );
  OAI2BB2X1M U177 ( .B0(n317), .B1(n17), .A0N(\Reg_file[14][5] ), .A1N(n298), 
        .Y(n62) );
  OAI2BB2X1M U178 ( .B0(n322), .B1(n297), .A0N(\Reg_file[13][0] ), .A1N(n297), 
        .Y(n65) );
  OAI2BB2X1M U179 ( .B0(n321), .B1(n19), .A0N(\Reg_file[13][1] ), .A1N(n297), 
        .Y(n66) );
  OAI2BB2X1M U180 ( .B0(n320), .B1(n19), .A0N(\Reg_file[13][2] ), .A1N(n297), 
        .Y(n67) );
  OAI2BB2X1M U181 ( .B0(n319), .B1(n19), .A0N(\Reg_file[13][3] ), .A1N(n297), 
        .Y(n68) );
  OAI2BB2X1M U182 ( .B0(n317), .B1(n19), .A0N(\Reg_file[13][5] ), .A1N(n297), 
        .Y(n70) );
  OAI2BB2X1M U183 ( .B0(n322), .B1(n296), .A0N(\Reg_file[12][0] ), .A1N(n296), 
        .Y(n73) );
  OAI2BB2X1M U184 ( .B0(n321), .B1(n21), .A0N(\Reg_file[12][1] ), .A1N(n296), 
        .Y(n74) );
  OAI2BB2X1M U185 ( .B0(n320), .B1(n21), .A0N(\Reg_file[12][2] ), .A1N(n296), 
        .Y(n75) );
  OAI2BB2X1M U186 ( .B0(n319), .B1(n21), .A0N(\Reg_file[12][3] ), .A1N(n296), 
        .Y(n76) );
  OAI2BB2X1M U187 ( .B0(n317), .B1(n21), .A0N(\Reg_file[12][5] ), .A1N(n296), 
        .Y(n78) );
  OAI2BB2X1M U188 ( .B0(n322), .B1(n295), .A0N(\Reg_file[11][0] ), .A1N(n295), 
        .Y(n81) );
  OAI2BB2X1M U189 ( .B0(n321), .B1(n22), .A0N(\Reg_file[11][1] ), .A1N(n295), 
        .Y(n82) );
  OAI2BB2X1M U190 ( .B0(n320), .B1(n22), .A0N(\Reg_file[11][2] ), .A1N(n295), 
        .Y(n83) );
  OAI2BB2X1M U191 ( .B0(n319), .B1(n22), .A0N(\Reg_file[11][3] ), .A1N(n295), 
        .Y(n84) );
  OAI2BB2X1M U192 ( .B0(n317), .B1(n22), .A0N(\Reg_file[11][5] ), .A1N(n295), 
        .Y(n86) );
  OAI2BB2X1M U193 ( .B0(n322), .B1(n294), .A0N(\Reg_file[10][0] ), .A1N(n294), 
        .Y(n89) );
  OAI2BB2X1M U194 ( .B0(n321), .B1(n24), .A0N(\Reg_file[10][1] ), .A1N(n294), 
        .Y(n90) );
  OAI2BB2X1M U195 ( .B0(n320), .B1(n24), .A0N(\Reg_file[10][2] ), .A1N(n294), 
        .Y(n91) );
  OAI2BB2X1M U196 ( .B0(n319), .B1(n24), .A0N(\Reg_file[10][3] ), .A1N(n294), 
        .Y(n92) );
  OAI2BB2X1M U197 ( .B0(n317), .B1(n24), .A0N(\Reg_file[10][5] ), .A1N(n294), 
        .Y(n94) );
  OAI2BB2X1M U198 ( .B0(n322), .B1(n293), .A0N(\Reg_file[9][0] ), .A1N(n293), 
        .Y(n97) );
  OAI2BB2X1M U199 ( .B0(n321), .B1(n25), .A0N(\Reg_file[9][1] ), .A1N(n293), 
        .Y(n98) );
  OAI2BB2X1M U200 ( .B0(n320), .B1(n25), .A0N(\Reg_file[9][2] ), .A1N(n293), 
        .Y(n99) );
  OAI2BB2X1M U201 ( .B0(n319), .B1(n25), .A0N(\Reg_file[9][3] ), .A1N(n293), 
        .Y(n100) );
  OAI2BB2X1M U202 ( .B0(n317), .B1(n25), .A0N(\Reg_file[9][5] ), .A1N(n293), 
        .Y(n102) );
  OAI2BB2X1M U203 ( .B0(n322), .B1(n292), .A0N(\Reg_file[8][0] ), .A1N(n292), 
        .Y(n105) );
  OAI2BB2X1M U204 ( .B0(n321), .B1(n28), .A0N(\Reg_file[8][1] ), .A1N(n292), 
        .Y(n106) );
  OAI2BB2X1M U205 ( .B0(n320), .B1(n28), .A0N(\Reg_file[8][2] ), .A1N(n292), 
        .Y(n107) );
  OAI2BB2X1M U206 ( .B0(n319), .B1(n28), .A0N(\Reg_file[8][3] ), .A1N(n292), 
        .Y(n108) );
  OAI2BB2X1M U207 ( .B0(n317), .B1(n28), .A0N(\Reg_file[8][5] ), .A1N(n292), 
        .Y(n110) );
  OAI2BB2X1M U208 ( .B0(n318), .B1(n298), .A0N(\Reg_file[14][4] ), .A1N(n298), 
        .Y(n61) );
  OAI2BB2X1M U209 ( .B0(n323), .B1(n17), .A0N(\Reg_file[14][6] ), .A1N(n298), 
        .Y(n63) );
  OAI2BB2X1M U210 ( .B0(n316), .B1(n17), .A0N(\Reg_file[14][7] ), .A1N(n298), 
        .Y(n64) );
  OAI2BB2X1M U211 ( .B0(n318), .B1(n297), .A0N(\Reg_file[13][4] ), .A1N(n297), 
        .Y(n69) );
  OAI2BB2X1M U212 ( .B0(n323), .B1(n19), .A0N(\Reg_file[13][6] ), .A1N(n297), 
        .Y(n71) );
  OAI2BB2X1M U213 ( .B0(n316), .B1(n19), .A0N(\Reg_file[13][7] ), .A1N(n297), 
        .Y(n72) );
  OAI2BB2X1M U214 ( .B0(n318), .B1(n296), .A0N(\Reg_file[12][4] ), .A1N(n296), 
        .Y(n77) );
  OAI2BB2X1M U215 ( .B0(n323), .B1(n21), .A0N(\Reg_file[12][6] ), .A1N(n296), 
        .Y(n79) );
  OAI2BB2X1M U216 ( .B0(n316), .B1(n21), .A0N(\Reg_file[12][7] ), .A1N(n296), 
        .Y(n80) );
  OAI2BB2X1M U217 ( .B0(n318), .B1(n295), .A0N(\Reg_file[11][4] ), .A1N(n295), 
        .Y(n85) );
  OAI2BB2X1M U218 ( .B0(n323), .B1(n22), .A0N(\Reg_file[11][6] ), .A1N(n295), 
        .Y(n87) );
  OAI2BB2X1M U219 ( .B0(n316), .B1(n22), .A0N(\Reg_file[11][7] ), .A1N(n295), 
        .Y(n88) );
  OAI2BB2X1M U220 ( .B0(n318), .B1(n294), .A0N(\Reg_file[10][4] ), .A1N(n294), 
        .Y(n93) );
  OAI2BB2X1M U221 ( .B0(n323), .B1(n24), .A0N(\Reg_file[10][6] ), .A1N(n294), 
        .Y(n95) );
  OAI2BB2X1M U222 ( .B0(n316), .B1(n24), .A0N(\Reg_file[10][7] ), .A1N(n294), 
        .Y(n96) );
  OAI2BB2X1M U223 ( .B0(n318), .B1(n293), .A0N(\Reg_file[9][4] ), .A1N(n293), 
        .Y(n101) );
  OAI2BB2X1M U224 ( .B0(n323), .B1(n25), .A0N(\Reg_file[9][6] ), .A1N(n293), 
        .Y(n103) );
  OAI2BB2X1M U225 ( .B0(n316), .B1(n25), .A0N(\Reg_file[9][7] ), .A1N(n293), 
        .Y(n104) );
  OAI2BB2X1M U226 ( .B0(n318), .B1(n292), .A0N(\Reg_file[8][4] ), .A1N(n292), 
        .Y(n109) );
  OAI2BB2X1M U227 ( .B0(n323), .B1(n28), .A0N(\Reg_file[8][6] ), .A1N(n292), 
        .Y(n111) );
  OAI2BB2X1M U228 ( .B0(n316), .B1(n28), .A0N(\Reg_file[8][7] ), .A1N(n292), 
        .Y(n112) );
  OAI2BB2X1M U229 ( .B0(n299), .B1(n318), .A0N(\Reg_file[15][4] ), .A1N(n299), 
        .Y(n53) );
  OAI2BB2X1M U230 ( .B0(n14), .B1(n316), .A0N(\Reg_file[15][7] ), .A1N(n299), 
        .Y(n56) );
  OAI2BB2X1M U231 ( .B0(n14), .B1(n323), .A0N(\Reg_file[15][6] ), .A1N(n299), 
        .Y(n55) );
  NOR2X1M U232 ( .A(n270), .B(N10), .Y(n259) );
  NOR2X1M U233 ( .A(n270), .B(n271), .Y(n258) );
  AOI22X1M U234 ( .A0(\Reg_file[10][0] ), .A1(n277), .B0(\Reg_file[11][0] ), 
        .B1(n274), .Y(n2) );
  NOR2X1M U235 ( .A(N10), .B(N11), .Y(n261) );
  NOR2X1M U236 ( .A(n271), .B(N11), .Y(n260) );
  AOI22X1M U237 ( .A0(\Reg_file[8][0] ), .A1(n283), .B0(\Reg_file[9][0] ), 
        .B1(n280), .Y(n1) );
  AOI21X1M U238 ( .A0(n2), .A1(n1), .B0(n249), .Y(n12) );
  AOI22X1M U239 ( .A0(\Reg_file[14][0] ), .A1(n277), .B0(\Reg_file[15][0] ), 
        .B1(n274), .Y(n4) );
  AOI22X1M U240 ( .A0(\Reg_file[12][0] ), .A1(n283), .B0(\Reg_file[13][0] ), 
        .B1(n280), .Y(n3) );
  CLKNAND2X2M U241 ( .A(N13), .B(N12), .Y(n252) );
  AOI21X1M U242 ( .A0(n4), .A1(n3), .B0(n252), .Y(n11) );
  AOI22X1M U243 ( .A0(REG2[0]), .A1(n277), .B0(REG3[0]), .B1(n274), .Y(n6) );
  CLKNAND2X2M U244 ( .A(n314), .B(n269), .Y(n255) );
  AOI21X1M U245 ( .A0(n6), .A1(n5), .B0(n255), .Y(n10) );
  AOI22X1M U246 ( .A0(\Reg_file[6][0] ), .A1(n277), .B0(\Reg_file[7][0] ), 
        .B1(n274), .Y(n8) );
  AOI22X1M U247 ( .A0(\Reg_file[4][0] ), .A1(n283), .B0(\Reg_file[5][0] ), 
        .B1(n280), .Y(n7) );
  CLKNAND2X2M U248 ( .A(N12), .B(n269), .Y(n262) );
  AOI21X1M U249 ( .A0(n8), .A1(n7), .B0(n262), .Y(n9) );
  OR4X1M U250 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N26) );
  AOI22X1M U251 ( .A0(\Reg_file[10][1] ), .A1(n277), .B0(\Reg_file[11][1] ), 
        .B1(n274), .Y(n178) );
  AOI22X1M U252 ( .A0(\Reg_file[8][1] ), .A1(n283), .B0(\Reg_file[9][1] ), 
        .B1(n280), .Y(n177) );
  AOI21X1M U253 ( .A0(n178), .A1(n177), .B0(n249), .Y(n188) );
  AOI22X1M U254 ( .A0(\Reg_file[14][1] ), .A1(n277), .B0(\Reg_file[15][1] ), 
        .B1(n274), .Y(n180) );
  AOI22X1M U255 ( .A0(\Reg_file[12][1] ), .A1(n283), .B0(\Reg_file[13][1] ), 
        .B1(n280), .Y(n179) );
  AOI21X1M U256 ( .A0(n180), .A1(n179), .B0(n252), .Y(n187) );
  AOI22X1M U257 ( .A0(REG2[1]), .A1(n277), .B0(REG3[1]), .B1(n274), .Y(n182)
         );
  AOI21X1M U258 ( .A0(n182), .A1(n181), .B0(n255), .Y(n186) );
  AOI22X1M U259 ( .A0(\Reg_file[6][1] ), .A1(n277), .B0(\Reg_file[7][1] ), 
        .B1(n274), .Y(n184) );
  AOI22X1M U260 ( .A0(\Reg_file[4][1] ), .A1(n283), .B0(\Reg_file[5][1] ), 
        .B1(n280), .Y(n183) );
  AOI21X1M U261 ( .A0(n184), .A1(n183), .B0(n262), .Y(n185) );
  OR4X1M U262 ( .A(n188), .B(n187), .C(n186), .D(n185), .Y(N25) );
  AOI22X1M U263 ( .A0(\Reg_file[10][2] ), .A1(n277), .B0(\Reg_file[11][2] ), 
        .B1(n274), .Y(n190) );
  AOI22X1M U264 ( .A0(\Reg_file[8][2] ), .A1(n283), .B0(\Reg_file[9][2] ), 
        .B1(n280), .Y(n189) );
  AOI21X1M U265 ( .A0(n190), .A1(n189), .B0(n249), .Y(n200) );
  AOI22X1M U266 ( .A0(\Reg_file[14][2] ), .A1(n277), .B0(\Reg_file[15][2] ), 
        .B1(n274), .Y(n192) );
  AOI22X1M U267 ( .A0(\Reg_file[12][2] ), .A1(n283), .B0(\Reg_file[13][2] ), 
        .B1(n280), .Y(n191) );
  AOI21X1M U268 ( .A0(n192), .A1(n191), .B0(n252), .Y(n199) );
  AOI22X1M U269 ( .A0(REG2[2]), .A1(n277), .B0(REG3[2]), .B1(n274), .Y(n194)
         );
  AOI21X1M U270 ( .A0(n194), .A1(n193), .B0(n255), .Y(n198) );
  AOI22X1M U271 ( .A0(\Reg_file[6][2] ), .A1(n277), .B0(\Reg_file[7][2] ), 
        .B1(n274), .Y(n196) );
  AOI22X1M U272 ( .A0(\Reg_file[4][2] ), .A1(n283), .B0(\Reg_file[5][2] ), 
        .B1(n280), .Y(n195) );
  AOI21X1M U273 ( .A0(n196), .A1(n195), .B0(n262), .Y(n197) );
  OR4X1M U274 ( .A(n200), .B(n199), .C(n198), .D(n197), .Y(N24) );
  AOI22X1M U275 ( .A0(\Reg_file[10][3] ), .A1(n276), .B0(\Reg_file[11][3] ), 
        .B1(n273), .Y(n202) );
  AOI22X1M U276 ( .A0(\Reg_file[8][3] ), .A1(n282), .B0(\Reg_file[9][3] ), 
        .B1(n279), .Y(n201) );
  AOI21X1M U277 ( .A0(n202), .A1(n201), .B0(n249), .Y(n212) );
  AOI22X1M U278 ( .A0(\Reg_file[14][3] ), .A1(n276), .B0(\Reg_file[15][3] ), 
        .B1(n273), .Y(n204) );
  AOI22X1M U279 ( .A0(\Reg_file[12][3] ), .A1(n282), .B0(\Reg_file[13][3] ), 
        .B1(n279), .Y(n203) );
  AOI21X1M U280 ( .A0(n204), .A1(n203), .B0(n252), .Y(n211) );
  AOI22X1M U281 ( .A0(REG2[3]), .A1(n276), .B0(REG3[3]), .B1(n273), .Y(n206)
         );
  AOI21X1M U282 ( .A0(n206), .A1(n205), .B0(n255), .Y(n210) );
  AOI22X1M U283 ( .A0(\Reg_file[6][3] ), .A1(n276), .B0(\Reg_file[7][3] ), 
        .B1(n273), .Y(n208) );
  AOI22X1M U284 ( .A0(\Reg_file[4][3] ), .A1(n282), .B0(\Reg_file[5][3] ), 
        .B1(n279), .Y(n207) );
  AOI21X1M U285 ( .A0(n208), .A1(n207), .B0(n262), .Y(n209) );
  OR4X1M U286 ( .A(n212), .B(n211), .C(n210), .D(n209), .Y(N23) );
  AOI22X1M U287 ( .A0(\Reg_file[10][4] ), .A1(n276), .B0(\Reg_file[11][4] ), 
        .B1(n273), .Y(n214) );
  AOI22X1M U288 ( .A0(\Reg_file[8][4] ), .A1(n282), .B0(\Reg_file[9][4] ), 
        .B1(n279), .Y(n213) );
  AOI21X1M U289 ( .A0(n214), .A1(n213), .B0(n249), .Y(n224) );
  AOI22X1M U290 ( .A0(\Reg_file[14][4] ), .A1(n276), .B0(\Reg_file[15][4] ), 
        .B1(n273), .Y(n216) );
  AOI22X1M U291 ( .A0(\Reg_file[12][4] ), .A1(n282), .B0(\Reg_file[13][4] ), 
        .B1(n279), .Y(n215) );
  AOI21X1M U292 ( .A0(n216), .A1(n215), .B0(n252), .Y(n223) );
  AOI22X1M U293 ( .A0(REG2[4]), .A1(n276), .B0(REG3[4]), .B1(n273), .Y(n218)
         );
  AOI21X1M U294 ( .A0(n218), .A1(n217), .B0(n255), .Y(n222) );
  AOI22X1M U295 ( .A0(\Reg_file[6][4] ), .A1(n276), .B0(\Reg_file[7][4] ), 
        .B1(n273), .Y(n220) );
  AOI22X1M U296 ( .A0(\Reg_file[4][4] ), .A1(n282), .B0(\Reg_file[5][4] ), 
        .B1(n279), .Y(n219) );
  AOI21X1M U297 ( .A0(n220), .A1(n219), .B0(n262), .Y(n221) );
  OR4X1M U298 ( .A(n224), .B(n223), .C(n222), .D(n221), .Y(N22) );
  AOI22X1M U299 ( .A0(\Reg_file[10][5] ), .A1(n276), .B0(\Reg_file[11][5] ), 
        .B1(n273), .Y(n226) );
  AOI22X1M U300 ( .A0(\Reg_file[8][5] ), .A1(n282), .B0(\Reg_file[9][5] ), 
        .B1(n279), .Y(n225) );
  AOI21X1M U301 ( .A0(n226), .A1(n225), .B0(n249), .Y(n236) );
  AOI22X1M U302 ( .A0(\Reg_file[14][5] ), .A1(n276), .B0(\Reg_file[15][5] ), 
        .B1(n273), .Y(n228) );
  AOI22X1M U303 ( .A0(\Reg_file[12][5] ), .A1(n282), .B0(\Reg_file[13][5] ), 
        .B1(n279), .Y(n227) );
  AOI21X1M U304 ( .A0(n228), .A1(n227), .B0(n252), .Y(n235) );
  AOI22X1M U305 ( .A0(REG2[5]), .A1(n276), .B0(REG3[5]), .B1(n273), .Y(n230)
         );
  AOI21X1M U306 ( .A0(n230), .A1(n229), .B0(n255), .Y(n234) );
  AOI22X1M U307 ( .A0(\Reg_file[6][5] ), .A1(n276), .B0(\Reg_file[7][5] ), 
        .B1(n273), .Y(n232) );
  AOI22X1M U308 ( .A0(\Reg_file[4][5] ), .A1(n282), .B0(\Reg_file[5][5] ), 
        .B1(n279), .Y(n231) );
  AOI21X1M U309 ( .A0(n232), .A1(n231), .B0(n262), .Y(n233) );
  OR4X1M U310 ( .A(n236), .B(n235), .C(n234), .D(n233), .Y(N21) );
  AOI22X1M U311 ( .A0(\Reg_file[10][6] ), .A1(n275), .B0(\Reg_file[11][6] ), 
        .B1(n272), .Y(n238) );
  AOI22X1M U312 ( .A0(\Reg_file[8][6] ), .A1(n281), .B0(\Reg_file[9][6] ), 
        .B1(n278), .Y(n237) );
  AOI21X1M U313 ( .A0(n238), .A1(n237), .B0(n249), .Y(n248) );
  AOI22X1M U314 ( .A0(\Reg_file[14][6] ), .A1(n275), .B0(\Reg_file[15][6] ), 
        .B1(n272), .Y(n240) );
  AOI22X1M U315 ( .A0(\Reg_file[12][6] ), .A1(n281), .B0(\Reg_file[13][6] ), 
        .B1(n278), .Y(n239) );
  AOI21X1M U316 ( .A0(n240), .A1(n239), .B0(n252), .Y(n247) );
  AOI22X1M U317 ( .A0(REG2[6]), .A1(n275), .B0(REG3[6]), .B1(n272), .Y(n242)
         );
  AOI21X1M U318 ( .A0(n242), .A1(n241), .B0(n255), .Y(n246) );
  AOI22X1M U319 ( .A0(\Reg_file[6][6] ), .A1(n275), .B0(\Reg_file[7][6] ), 
        .B1(n272), .Y(n244) );
  AOI22X1M U320 ( .A0(\Reg_file[4][6] ), .A1(n281), .B0(\Reg_file[5][6] ), 
        .B1(n278), .Y(n243) );
  AOI21X1M U321 ( .A0(n244), .A1(n243), .B0(n262), .Y(n245) );
  OR4X1M U322 ( .A(n248), .B(n247), .C(n246), .D(n245), .Y(N20) );
  AOI22X1M U323 ( .A0(\Reg_file[10][7] ), .A1(n275), .B0(\Reg_file[11][7] ), 
        .B1(n272), .Y(n251) );
  AOI22X1M U324 ( .A0(\Reg_file[8][7] ), .A1(n281), .B0(\Reg_file[9][7] ), 
        .B1(n278), .Y(n250) );
  AOI21X1M U325 ( .A0(n251), .A1(n250), .B0(n249), .Y(n268) );
  AOI22X1M U326 ( .A0(\Reg_file[14][7] ), .A1(n275), .B0(\Reg_file[15][7] ), 
        .B1(n272), .Y(n254) );
  AOI22X1M U327 ( .A0(\Reg_file[12][7] ), .A1(n281), .B0(\Reg_file[13][7] ), 
        .B1(n278), .Y(n253) );
  AOI22X1M U328 ( .A0(REG2[7]), .A1(n275), .B0(REG3[7]), .B1(n272), .Y(n257)
         );
  AOI21X1M U329 ( .A0(n257), .A1(n256), .B0(n255), .Y(n266) );
  AOI22X1M U330 ( .A0(\Reg_file[6][7] ), .A1(n275), .B0(\Reg_file[7][7] ), 
        .B1(n272), .Y(n264) );
  AOI22X1M U331 ( .A0(\Reg_file[4][7] ), .A1(n281), .B0(\Reg_file[5][7] ), 
        .B1(n278), .Y(n263) );
  AOI21X1M U332 ( .A0(n264), .A1(n263), .B0(n262), .Y(n265) );
  OR4X1M U333 ( .A(n268), .B(n267), .C(n266), .D(n265), .Y(N19) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n16, n17, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[3][2] , \u_div/PartRem[3][3] , \u_div/PartRem[3][4] ,
         \u_div/PartRem[3][5] , \u_div/PartRem[4][1] , \u_div/PartRem[4][2] ,
         \u_div/PartRem[4][3] , \u_div/PartRem[4][4] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[5][2] , \u_div/PartRem[5][3] , \u_div/PartRem[6][1] ,
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n1, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15;

  ADDFHX4M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n5), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n6), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n11), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n8), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n8), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n10), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n9), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n10), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n11), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n11), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n10), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n11), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n11), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n11), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n11), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n9), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n7), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n8), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n7), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n7), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n10), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n9), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n9), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n10), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n9), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n6), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n8), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n10), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  MX2X2M U1 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  INVX2M U2 ( .A(b[5]), .Y(n7) );
  INVX2M U3 ( .A(b[3]), .Y(n9) );
  AND2X4M U4 ( .A(\u_div/CryTmp[2][6] ), .B(n15), .Y(n16) );
  NOR2X4M U5 ( .A(b[6]), .B(b[7]), .Y(n15) );
  INVX2M U6 ( .A(b[1]), .Y(n11) );
  CLKAND2X6M U7 ( .A(n14), .B(n9), .Y(n13) );
  AND2X2M U8 ( .A(\u_div/CryTmp[4][4] ), .B(n14), .Y(quotient[4]) );
  INVX4M U9 ( .A(b[0]), .Y(n12) );
  AND3X2M U10 ( .A(n15), .B(n7), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  INVX2M U11 ( .A(b[2]), .Y(n10) );
  INVX2M U12 ( .A(b[4]), .Y(n8) );
  AND2X2M U13 ( .A(\u_div/CryTmp[1][7] ), .B(n5), .Y(quotient[1]) );
  INVXLM U14 ( .A(n16), .Y(n1) );
  INVX2M U15 ( .A(n1), .Y(quotient[2]) );
  AND2X2M U16 ( .A(\u_div/CryTmp[1][7] ), .B(n5), .Y(n17) );
  AND3X2M U17 ( .A(n13), .B(n10), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  OR2X2M U18 ( .A(n12), .B(a[2]), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U19 ( .A(n12), .B(a[4]), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U20 ( .A(n12), .B(a[1]), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U21 ( .A(n12), .B(a[6]), .Y(\u_div/CryTmp[6][1] ) );
  OR2X2M U22 ( .A(n12), .B(a[3]), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U23 ( .A(n12), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  MX2XLM U24 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  MX2XLM U25 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(n16), 
        .Y(\u_div/PartRem[2][2] ) );
  MX2XLM U26 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2XLM U28 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2XLM U29 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2XLM U30 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2XLM U31 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2XLM U32 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2XLM U33 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2XLM U34 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  OR2X2M U35 ( .A(n12), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U36 ( .A(n12), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U37 ( .A(n12), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U38 ( .A(n12), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U39 ( .A(n12), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U40 ( .A(n12), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U41 ( .A(n12), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  NAND2X2M U42 ( .A(b[0]), .B(n4), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U43 ( .A(a[0]), .Y(n4) );
  XNOR2X2M U44 ( .A(n12), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U45 ( .A(b[6]), .Y(n6) );
  INVX2M U46 ( .A(b[7]), .Y(n5) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U49 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U52 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U55 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U58 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n16), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(n17), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n13), .C(n11), .D(n10), .Y(
        quotient[7]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n13), .Y(quotient[5]) );
  AND3X1M U65 ( .A(n15), .B(n8), .C(n7), .Y(n14) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(B[0]), .Y(n10) );
  INVXLM U2 ( .A(B[1]), .Y(n9) );
  INVXLM U3 ( .A(B[4]), .Y(n6) );
  INVXLM U4 ( .A(B[5]), .Y(n5) );
  INVXLM U5 ( .A(B[2]), .Y(n8) );
  INVXLM U6 ( .A(B[3]), .Y(n7) );
  INVX2M U7 ( .A(B[6]), .Y(n4) );
  INVX2M U8 ( .A(n10), .Y(n1) );
  XNOR2X2M U9 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  NAND2X2M U10 ( .A(n1), .B(n2), .Y(carry[1]) );
  INVX2M U11 ( .A(A[0]), .Y(n2) );
  INVX2M U12 ( .A(B[7]), .Y(n3) );
  CLKINVX1M U13 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XLM U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  CLKXOR2X2M U2 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  CLKXOR2X2M U3 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  NAND2X2M U4 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U5 ( .A(A[6]), .Y(n7) );
  INVX2M U6 ( .A(n7), .Y(SUM[6]) );
  BUFX2M U7 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U8 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U9 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U10 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U11 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U12 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U13 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U14 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U15 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U16 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U17 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U18 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U19 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  OAI21BX1M U20 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  XNOR2X1M U21 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U22 ( .A(n21), .B(n19), .Y(n22) );
  NOR2X1M U23 ( .A(B[11]), .B(A[11]), .Y(n19) );
  AND2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U25 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U26 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AOI2BB1X1M U27 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  AND2X1M U28 ( .A(B[9]), .B(A[9]), .Y(n10) );
  NOR2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n11) );
  OA21X1M U30 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U31 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NOR2X1M U32 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2BX1M U33 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U34 ( .A(B[10]), .B(A[10]), .Y(n25) );
  NOR2X1M U35 ( .A(B[10]), .B(A[10]), .Y(n23) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n13, n14, n11, 
        n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n3), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  AND2X2M U2 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKINVX2M U10 ( .A(B[4]), .Y(n28) );
  CLKINVX2M U11 ( .A(B[2]), .Y(n30) );
  CLKINVX2M U12 ( .A(B[3]), .Y(n29) );
  CLKINVX2M U13 ( .A(B[5]), .Y(n27) );
  CLKINVX2M U14 ( .A(B[0]), .Y(n32) );
  CLKINVX2M U15 ( .A(B[1]), .Y(n31) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U29 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX2M U30 ( .A(A[0]), .Y(n24) );
  CLKXOR2X2M U31 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U32 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U33 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  CLKXOR2X2M U34 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKXOR2X2M U35 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  CLKXOR2X2M U36 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX2M U37 ( .A(B[6]), .Y(n26) );
  INVX2M U38 ( .A(A[1]), .Y(n23) );
  INVX2M U39 ( .A(A[2]), .Y(n22) );
  INVX2M U40 ( .A(A[3]), .Y(n21) );
  INVX2M U41 ( .A(A[4]), .Y(n20) );
  INVX2M U42 ( .A(A[7]), .Y(n17) );
  INVX2M U43 ( .A(A[5]), .Y(n19) );
  INVX2M U44 ( .A(A[6]), .Y(n18) );
  INVX2M U45 ( .A(B[7]), .Y(n25) );
  NOR2X1M U47 ( .A(n17), .B(n25), .Y(\ab[7][7] ) );
  NOR2X1M U48 ( .A(n17), .B(n26), .Y(\ab[7][6] ) );
  NOR2X1M U49 ( .A(n17), .B(n27), .Y(\ab[7][5] ) );
  NOR2X1M U50 ( .A(n17), .B(n28), .Y(\ab[7][4] ) );
  NOR2X1M U51 ( .A(n17), .B(n29), .Y(\ab[7][3] ) );
  NOR2X1M U52 ( .A(n17), .B(n30), .Y(\ab[7][2] ) );
  NOR2X1M U53 ( .A(n17), .B(n31), .Y(\ab[7][1] ) );
  NOR2X1M U54 ( .A(n17), .B(n32), .Y(\ab[7][0] ) );
  NOR2X1M U55 ( .A(n25), .B(n18), .Y(\ab[6][7] ) );
  NOR2X1M U56 ( .A(n26), .B(n18), .Y(\ab[6][6] ) );
  NOR2X1M U57 ( .A(n27), .B(n18), .Y(\ab[6][5] ) );
  NOR2X1M U58 ( .A(n28), .B(n18), .Y(\ab[6][4] ) );
  NOR2X1M U59 ( .A(n29), .B(n18), .Y(\ab[6][3] ) );
  NOR2X1M U60 ( .A(n30), .B(n18), .Y(\ab[6][2] ) );
  NOR2X1M U61 ( .A(n31), .B(n18), .Y(\ab[6][1] ) );
  NOR2X1M U62 ( .A(n32), .B(n18), .Y(\ab[6][0] ) );
  NOR2X1M U63 ( .A(n25), .B(n19), .Y(\ab[5][7] ) );
  NOR2X1M U64 ( .A(n26), .B(n19), .Y(\ab[5][6] ) );
  NOR2X1M U65 ( .A(n27), .B(n19), .Y(\ab[5][5] ) );
  NOR2X1M U66 ( .A(n28), .B(n19), .Y(\ab[5][4] ) );
  NOR2X1M U67 ( .A(n29), .B(n19), .Y(\ab[5][3] ) );
  NOR2X1M U68 ( .A(n30), .B(n19), .Y(\ab[5][2] ) );
  NOR2X1M U69 ( .A(n31), .B(n19), .Y(\ab[5][1] ) );
  NOR2X1M U70 ( .A(n32), .B(n19), .Y(\ab[5][0] ) );
  NOR2X1M U71 ( .A(n25), .B(n20), .Y(\ab[4][7] ) );
  NOR2X1M U72 ( .A(n26), .B(n20), .Y(\ab[4][6] ) );
  NOR2X1M U73 ( .A(n27), .B(n20), .Y(\ab[4][5] ) );
  NOR2X1M U74 ( .A(n28), .B(n20), .Y(\ab[4][4] ) );
  NOR2X1M U75 ( .A(n29), .B(n20), .Y(\ab[4][3] ) );
  NOR2X1M U76 ( .A(n30), .B(n20), .Y(\ab[4][2] ) );
  NOR2X1M U77 ( .A(n31), .B(n20), .Y(\ab[4][1] ) );
  NOR2X1M U78 ( .A(n32), .B(n20), .Y(\ab[4][0] ) );
  NOR2X1M U79 ( .A(n25), .B(n21), .Y(\ab[3][7] ) );
  NOR2X1M U80 ( .A(n26), .B(n21), .Y(\ab[3][6] ) );
  NOR2X1M U81 ( .A(n27), .B(n21), .Y(\ab[3][5] ) );
  NOR2X1M U82 ( .A(n28), .B(n21), .Y(\ab[3][4] ) );
  NOR2X1M U83 ( .A(n29), .B(n21), .Y(\ab[3][3] ) );
  NOR2X1M U84 ( .A(n30), .B(n21), .Y(\ab[3][2] ) );
  NOR2X1M U85 ( .A(n31), .B(n21), .Y(\ab[3][1] ) );
  NOR2X1M U86 ( .A(n32), .B(n21), .Y(\ab[3][0] ) );
  NOR2X1M U87 ( .A(n25), .B(n22), .Y(\ab[2][7] ) );
  NOR2X1M U88 ( .A(n26), .B(n22), .Y(\ab[2][6] ) );
  NOR2X1M U89 ( .A(n27), .B(n22), .Y(\ab[2][5] ) );
  NOR2X1M U90 ( .A(n28), .B(n22), .Y(\ab[2][4] ) );
  NOR2X1M U91 ( .A(n29), .B(n22), .Y(\ab[2][3] ) );
  NOR2X1M U92 ( .A(n30), .B(n22), .Y(\ab[2][2] ) );
  NOR2X1M U93 ( .A(n31), .B(n22), .Y(\ab[2][1] ) );
  NOR2X1M U94 ( .A(n32), .B(n22), .Y(\ab[2][0] ) );
  NOR2X1M U95 ( .A(n25), .B(n23), .Y(\ab[1][7] ) );
  NOR2X1M U96 ( .A(n26), .B(n23), .Y(\ab[1][6] ) );
  NOR2X1M U97 ( .A(n27), .B(n23), .Y(\ab[1][5] ) );
  NOR2X1M U98 ( .A(n28), .B(n23), .Y(\ab[1][4] ) );
  NOR2X1M U99 ( .A(n29), .B(n23), .Y(\ab[1][3] ) );
  NOR2X1M U100 ( .A(n30), .B(n23), .Y(\ab[1][2] ) );
  NOR2X1M U101 ( .A(n31), .B(n23), .Y(\ab[1][1] ) );
  NOR2X1M U102 ( .A(n32), .B(n23), .Y(\ab[1][0] ) );
  NOR2X1M U103 ( .A(n25), .B(n24), .Y(\ab[0][7] ) );
  NOR2X1M U104 ( .A(n26), .B(n24), .Y(\ab[0][6] ) );
  NOR2X1M U105 ( .A(n27), .B(n24), .Y(\ab[0][5] ) );
  NOR2X1M U106 ( .A(n28), .B(n24), .Y(\ab[0][4] ) );
  NOR2X1M U107 ( .A(n29), .B(n24), .Y(\ab[0][3] ) );
  NOR2X1M U108 ( .A(n30), .B(n24), .Y(\ab[0][2] ) );
  NOR2X1M U109 ( .A(n31), .B(n24), .Y(\ab[0][1] ) );
  NOR2X1M U110 ( .A(n32), .B(n24), .Y(PRODUCT[0]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, 
        OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N157, N158, N159, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151;
  wire   [15:0] ALU_OUT_Comb;

  ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_52 ( .a({n17, n16, n15, n14, 
        n13, n12, n11, n10}), .b({B[7], n9, B[5:0]}), .quotient({N108, N107, 
        N106, N105, N104, N103, N102, N101}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_46 ( .A({1'b0, n17, n16, n15, n14, 
        n13, n12, n11, n10}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({
        N84, N83, N82, N81, N80, N79, N78, N77, N76}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_43 ( .A({1'b0, n17, n16, n15, n14, 
        n13, n12, n11, n10}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({
        N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_49 ( .A({n17, n16, n15, n14, 
        n13, n12, n11, n10}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({
        N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        N86, N85}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(n22), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(n23), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(n23), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(n23), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(n23), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(n23), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(n22), .Q(OUT_VALID) );
  AND3X2M U3 ( .A(n5), .B(n7), .C(n6), .Y(n94) );
  BUFX2M U4 ( .A(A[1]), .Y(n11) );
  BUFX2M U7 ( .A(A[7]), .Y(n17) );
  BUFX2M U8 ( .A(B[6]), .Y(n4) );
  BUFX2M U9 ( .A(n49), .Y(n3) );
  NOR3BX2M U10 ( .AN(n105), .B(n139), .C(ALU_FUN[2]), .Y(n49) );
  BUFX2M U11 ( .A(B[6]), .Y(n9) );
  AOI31X2M U12 ( .A0(n93), .A1(n95), .A2(n94), .B0(n135), .Y(ALU_OUT_Comb[0])
         );
  NAND2XLM U13 ( .A(n10), .B(n42), .Y(n6) );
  BUFX4M U14 ( .A(A[6]), .Y(n16) );
  NAND2X2M U15 ( .A(N85), .B(n19), .Y(n5) );
  NAND2XLM U16 ( .A(N101), .B(n3), .Y(n7) );
  BUFX2M U17 ( .A(ALU_FUN[3]), .Y(n8) );
  BUFX2M U18 ( .A(A[0]), .Y(n10) );
  OAI222XLM U19 ( .A0(n79), .A1(n129), .B0(B[2]), .B1(n80), .C0(n36), .C1(n147), .Y(n78) );
  OAI222XLM U20 ( .A0(n73), .A1(n130), .B0(B[3]), .B1(n74), .C0(n36), .C1(n146), .Y(n72) );
  OAI222XLM U21 ( .A0(n67), .A1(n151), .B0(B[4]), .B1(n68), .C0(n36), .C1(n145), .Y(n66) );
  INVXLM U22 ( .A(B[4]), .Y(n151) );
  OAI222XLM U23 ( .A0(n61), .A1(n150), .B0(B[5]), .B1(n62), .C0(n36), .C1(n144), .Y(n60) );
  INVXLM U24 ( .A(B[5]), .Y(n150) );
  OAI21XLM U25 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  OAI21XLM U26 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI21XLM U27 ( .A0(n25), .A1(n147), .B0(B[1]), .Y(n26) );
  INVXLM U28 ( .A(B[0]), .Y(n128) );
  INVXLM U29 ( .A(B[2]), .Y(n129) );
  NAND2BXLM U30 ( .AN(n14), .B(B[4]), .Y(n29) );
  INVXLM U31 ( .A(B[3]), .Y(n130) );
  NAND2BXLM U32 ( .AN(n15), .B(B[5]), .Y(n122) );
  OAI2BB1X2M U33 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  OAI2BB1X2M U34 ( .A0N(N100), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  CLKAND2X4M U35 ( .A(n99), .B(n105), .Y(n42) );
  OAI2BB1X2M U36 ( .A0N(N94), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U37 ( .A0N(N95), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U38 ( .A0N(N96), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U39 ( .A0N(N97), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U40 ( .A0N(N98), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U41 ( .A0N(N99), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  INVX2M U42 ( .A(n107), .Y(n138) );
  OAI2BB1X2M U43 ( .A0N(n138), .A1N(n105), .B0(n101), .Y(n47) );
  NOR2BX4M U44 ( .AN(n19), .B(n135), .Y(n31) );
  INVX2M U45 ( .A(n91), .Y(n137) );
  INVX2M U46 ( .A(n100), .Y(n136) );
  AND2X2M U47 ( .A(n106), .B(n105), .Y(n50) );
  BUFX4M U48 ( .A(n41), .Y(n20) );
  NOR2X2M U49 ( .A(n107), .B(n136), .Y(n41) );
  BUFX2M U50 ( .A(n37), .Y(n18) );
  NOR2BX2M U51 ( .AN(n106), .B(n136), .Y(n37) );
  BUFX2M U52 ( .A(n46), .Y(n21) );
  NAND2X2M U53 ( .A(EN), .B(n134), .Y(n32) );
  NOR2X2M U54 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NOR2X2M U55 ( .A(n140), .B(n8), .Y(n105) );
  NAND2X2M U56 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U57 ( .A(ALU_FUN[0]), .Y(n140) );
  INVX2M U58 ( .A(ALU_FUN[1]), .Y(n139) );
  NAND3X2M U59 ( .A(n106), .B(ALU_FUN[0]), .C(n8), .Y(n101) );
  AND2X2M U60 ( .A(ALU_FUN[2]), .B(n139), .Y(n99) );
  NAND3X2M U61 ( .A(n138), .B(n140), .C(n8), .Y(n36) );
  NAND3X2M U62 ( .A(n8), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  NOR3X2M U63 ( .A(n140), .B(ALU_FUN[2]), .C(n139), .Y(n89) );
  NOR3X2M U64 ( .A(n139), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  NOR2X2M U65 ( .A(n8), .B(ALU_FUN[0]), .Y(n100) );
  AND4X2M U66 ( .A(N159), .B(n99), .C(n8), .D(n140), .Y(n90) );
  BUFX2M U67 ( .A(n35), .Y(n19) );
  NOR3X2M U68 ( .A(n136), .B(ALU_FUN[2]), .C(n139), .Y(n35) );
  AND3X2M U69 ( .A(n106), .B(n140), .C(n8), .Y(n46) );
  INVX2M U70 ( .A(EN), .Y(n135) );
  INVX4M U71 ( .A(n24), .Y(n22) );
  INVX2M U72 ( .A(n24), .Y(n23) );
  AOI22X1M U73 ( .A0(N76), .A1(n50), .B0(N67), .B1(n18), .Y(n93) );
  AOI211X2M U74 ( .A0(n20), .A1(n148), .B0(n96), .C0(n97), .Y(n95) );
  AOI31X2M U75 ( .A0(n81), .A1(n82), .A2(n83), .B0(n135), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U76 ( .A0(N68), .A1(n18), .B0(N86), .B1(n19), .C0(N77), .C1(n50), 
        .Y(n81) );
  AOI211X2M U77 ( .A0(n12), .A1(n137), .B0(n84), .C0(n85), .Y(n83) );
  AOI222XLM U78 ( .A0(N102), .A1(n3), .B0(n20), .B1(n147), .C0(n11), .C1(n42), 
        .Y(n82) );
  AOI31X2M U79 ( .A0(n75), .A1(n76), .A2(n77), .B0(n135), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U80 ( .A0(N78), .A1(n50), .B0(N69), .B1(n18), .Y(n75) );
  AOI221XLM U81 ( .A0(n13), .A1(n137), .B0(n20), .B1(n146), .C0(n78), .Y(n77)
         );
  AOI222XLM U82 ( .A0(N87), .A1(n19), .B0(n12), .B1(n42), .C0(N103), .C1(n3), 
        .Y(n76) );
  AOI31X2M U83 ( .A0(n69), .A1(n70), .A2(n71), .B0(n135), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U84 ( .A0(N79), .A1(n50), .B0(N70), .B1(n18), .Y(n69) );
  AOI221XLM U85 ( .A0(n14), .A1(n137), .B0(n20), .B1(n145), .C0(n72), .Y(n71)
         );
  AOI222XLM U86 ( .A0(N88), .A1(n19), .B0(n13), .B1(n42), .C0(N104), .C1(n3), 
        .Y(n70) );
  OAI222X1M U87 ( .A0(n55), .A1(n131), .B0(n4), .B1(n56), .C0(n36), .C1(n143), 
        .Y(n54) );
  AOI221XLM U88 ( .A0(n16), .A1(n21), .B0(n47), .B1(n142), .C0(n20), .Y(n56)
         );
  AOI221XLM U89 ( .A0(n46), .A1(n142), .B0(n16), .B1(n48), .C0(n42), .Y(n55)
         );
  AOI31X2M U90 ( .A0(n63), .A1(n64), .A2(n65), .B0(n135), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U91 ( .A0(N80), .A1(n50), .B0(N71), .B1(n18), .Y(n63) );
  AOI221XLM U92 ( .A0(n137), .A1(n15), .B0(n20), .B1(n144), .C0(n66), .Y(n65)
         );
  AOI222XLM U93 ( .A0(N89), .A1(n19), .B0(n14), .B1(n42), .C0(N105), .C1(n3), 
        .Y(n64) );
  AOI31X2M U94 ( .A0(n57), .A1(n58), .A2(n59), .B0(n135), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U95 ( .A0(N81), .A1(n50), .B0(N72), .B1(n18), .Y(n57) );
  AOI221XLM U96 ( .A0(n137), .A1(n16), .B0(n20), .B1(n143), .C0(n60), .Y(n59)
         );
  AOI222XLM U97 ( .A0(N90), .A1(n19), .B0(n15), .B1(n42), .C0(N106), .C1(n3), 
        .Y(n58) );
  AOI31X2M U98 ( .A0(n51), .A1(n52), .A2(n53), .B0(n135), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U99 ( .A0(N82), .A1(n50), .B0(N73), .B1(n18), .Y(n51) );
  AOI221XLM U100 ( .A0(n137), .A1(n17), .B0(n20), .B1(n142), .C0(n54), .Y(n53)
         );
  AOI222XLM U101 ( .A0(N91), .A1(n19), .B0(n42), .B1(n16), .C0(N107), .C1(n3), 
        .Y(n52) );
  AOI31X2M U102 ( .A0(n38), .A1(n39), .A2(n40), .B0(n135), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U103 ( .A0(N83), .A1(n50), .B0(N74), .B1(n18), .Y(n38) );
  AOI221XLM U104 ( .A0(n20), .A1(n141), .B0(n42), .B1(n17), .C0(n43), .Y(n40)
         );
  AOI22XLM U105 ( .A0(N108), .A1(n3), .B0(N92), .B1(n19), .Y(n39) );
  INVX2M U106 ( .A(n92), .Y(n134) );
  AOI211X2M U107 ( .A0(N84), .A1(n50), .B0(n20), .C0(n47), .Y(n92) );
  AOI21X2M U108 ( .A0(n33), .A1(n34), .B0(n135), .Y(ALU_OUT_Comb[8]) );
  AOI2BB2XLM U109 ( .B0(N93), .B1(n19), .A0N(n141), .A1N(n36), .Y(n34) );
  AOI21X2M U110 ( .A0(N75), .A1(n18), .B0(n134), .Y(n33) );
  INVX2M U111 ( .A(n4), .Y(n131) );
  INVX2M U112 ( .A(n11), .Y(n147) );
  INVX2M U113 ( .A(n10), .Y(n148) );
  INVX2M U114 ( .A(n17), .Y(n141) );
  INVX2M U115 ( .A(n16), .Y(n142) );
  INVX2M U116 ( .A(n12), .Y(n146) );
  INVX2M U117 ( .A(n13), .Y(n145) );
  INVX2M U118 ( .A(n15), .Y(n143) );
  INVX2M U119 ( .A(n14), .Y(n144) );
  INVX2M U120 ( .A(RST), .Y(n24) );
  BUFX4M U121 ( .A(A[5]), .Y(n15) );
  BUFX4M U122 ( .A(A[4]), .Y(n14) );
  BUFX4M U123 ( .A(A[3]), .Y(n13) );
  BUFX4M U124 ( .A(A[2]), .Y(n12) );
  AOI31X2M U125 ( .A0(N157), .A1(n8), .A2(n104), .B0(n90), .Y(n103) );
  AOI221XLM U126 ( .A0(n10), .A1(n21), .B0(n47), .B1(n148), .C0(n20), .Y(n102)
         );
  AOI31X2M U127 ( .A0(N158), .A1(n8), .A2(n89), .B0(n90), .Y(n88) );
  AOI221XLM U128 ( .A0(n11), .A1(n21), .B0(n47), .B1(n147), .C0(n20), .Y(n87)
         );
  OAI222X1M U129 ( .A0(n44), .A1(n149), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n142), .Y(n43) );
  INVX2M U130 ( .A(B[7]), .Y(n149) );
  AOI221XLM U131 ( .A0(n46), .A1(n17), .B0(n47), .B1(n141), .C0(n20), .Y(n45)
         );
  AOI221XLM U132 ( .A0(n46), .A1(n141), .B0(n17), .B1(n48), .C0(n42), .Y(n44)
         );
  AOI221XLM U133 ( .A0(n14), .A1(n21), .B0(n47), .B1(n144), .C0(n20), .Y(n68)
         );
  AOI221XLM U134 ( .A0(n21), .A1(n144), .B0(n14), .B1(n48), .C0(n42), .Y(n67)
         );
  AOI221XLM U135 ( .A0(n15), .A1(n21), .B0(n47), .B1(n143), .C0(n20), .Y(n62)
         );
  AOI221XLM U136 ( .A0(n46), .A1(n143), .B0(n15), .B1(n48), .C0(n42), .Y(n61)
         );
  AOI221XLM U137 ( .A0(n12), .A1(n21), .B0(n47), .B1(n146), .C0(n20), .Y(n80)
         );
  AOI221XLM U138 ( .A0(n46), .A1(n146), .B0(n12), .B1(n48), .C0(n42), .Y(n79)
         );
  AOI221XLM U139 ( .A0(n13), .A1(n21), .B0(n47), .B1(n145), .C0(n20), .Y(n74)
         );
  AOI221XLM U140 ( .A0(n46), .A1(n145), .B0(n13), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI2B2X1M U141 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n148), .Y(n85) );
  AOI221XLM U142 ( .A0(n46), .A1(n147), .B0(n11), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI2B2X1M U143 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n147), .Y(n97) );
  AOI221XLM U144 ( .A0(n21), .A1(n148), .B0(n10), .B1(n48), .C0(n42), .Y(n98)
         );
  INVX2M U145 ( .A(n113), .Y(n133) );
  INVX2M U146 ( .A(n25), .Y(n132) );
  NOR2X1M U147 ( .A(n141), .B(B[7]), .Y(n124) );
  NAND2BX1M U148 ( .AN(B[4]), .B(n14), .Y(n117) );
  CLKNAND2X2M U149 ( .A(n117), .B(n29), .Y(n119) );
  NOR2X1M U150 ( .A(n130), .B(n13), .Y(n114) );
  NOR2X1M U151 ( .A(n129), .B(n12), .Y(n28) );
  NOR2X1M U152 ( .A(n128), .B(n10), .Y(n25) );
  CLKNAND2X2M U153 ( .A(n12), .B(n129), .Y(n116) );
  NAND2BX1M U154 ( .AN(n28), .B(n116), .Y(n111) );
  AOI211X1M U155 ( .A0(n11), .A1(n132), .B0(n111), .C0(n26), .Y(n27) );
  CLKNAND2X2M U156 ( .A(n13), .B(n130), .Y(n115) );
  OAI31X1M U157 ( .A0(n114), .A1(n28), .A2(n27), .B0(n115), .Y(n30) );
  OAI211X1M U158 ( .A0(n119), .A1(n30), .B0(n29), .C0(n122), .Y(n108) );
  NAND2BX1M U159 ( .AN(B[5]), .B(n15), .Y(n118) );
  XNOR2X1M U160 ( .A(n16), .B(n4), .Y(n121) );
  AOI32X1M U161 ( .A0(n108), .A1(n118), .A2(n121), .B0(n4), .B1(n142), .Y(n109) );
  CLKNAND2X2M U162 ( .A(B[7]), .B(n141), .Y(n125) );
  OAI21X1M U163 ( .A0(n124), .A1(n109), .B0(n125), .Y(N159) );
  CLKNAND2X2M U164 ( .A(n10), .B(n128), .Y(n112) );
  OA21X1M U165 ( .A0(n112), .A1(n147), .B0(B[1]), .Y(n110) );
  AOI211X1M U166 ( .A0(n112), .A1(n147), .B0(n111), .C0(n110), .Y(n113) );
  AOI31X1M U167 ( .A0(n133), .A1(n116), .A2(n115), .B0(n114), .Y(n120) );
  OAI2B11X1M U168 ( .A1N(n120), .A0(n119), .B0(n118), .C0(n117), .Y(n123) );
  AOI32X1M U169 ( .A0(n123), .A1(n122), .A2(n121), .B0(n16), .B1(n131), .Y(
        n126) );
  AOI2B1X1M U170 ( .A1N(n126), .A0(n125), .B0(n124), .Y(n127) );
  CLKINVX1M U171 ( .A(n127), .Y(N158) );
  NOR2X1M U172 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module FIFO_MEM_CNTRL_data_width8_depth8_addr_width4 ( W_data, W_inc, W_full, 
        W_RST, W_addr, W_CLK, R_addr, R_data );
  input [7:0] W_data;
  input [3:0] W_addr;
  input [3:0] R_addr;
  output [7:0] R_data;
  input W_inc, W_full, W_RST, W_CLK;
  wire   N10, N11, N12, \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144;
  assign N10 = R_addr[0];
  assign N11 = R_addr[1];
  assign N12 = R_addr[2];

  DFFRQX2M \mem_reg[1][7]  ( .D(n38), .CK(W_CLK), .RN(n129), .Q(\mem[1][7] )
         );
  DFFRQX2M \mem_reg[1][6]  ( .D(n37), .CK(W_CLK), .RN(n133), .Q(\mem[1][6] )
         );
  DFFRQX2M \mem_reg[1][5]  ( .D(n36), .CK(W_CLK), .RN(n129), .Q(\mem[1][5] )
         );
  DFFRQX2M \mem_reg[1][4]  ( .D(n35), .CK(W_CLK), .RN(n133), .Q(\mem[1][4] )
         );
  DFFRQX2M \mem_reg[1][3]  ( .D(n34), .CK(W_CLK), .RN(n133), .Q(\mem[1][3] )
         );
  DFFRQX2M \mem_reg[1][2]  ( .D(n33), .CK(W_CLK), .RN(n129), .Q(\mem[1][2] )
         );
  DFFRQX2M \mem_reg[1][1]  ( .D(n32), .CK(W_CLK), .RN(n133), .Q(\mem[1][1] )
         );
  DFFRQX2M \mem_reg[1][0]  ( .D(n31), .CK(W_CLK), .RN(n133), .Q(\mem[1][0] )
         );
  DFFRQX2M \mem_reg[0][7]  ( .D(n30), .CK(W_CLK), .RN(n129), .Q(\mem[0][7] )
         );
  DFFRQX2M \mem_reg[0][6]  ( .D(n29), .CK(W_CLK), .RN(n133), .Q(\mem[0][6] )
         );
  DFFRQX2M \mem_reg[0][5]  ( .D(n28), .CK(W_CLK), .RN(n133), .Q(\mem[0][5] )
         );
  DFFRQX2M \mem_reg[0][4]  ( .D(n27), .CK(W_CLK), .RN(n129), .Q(\mem[0][4] )
         );
  DFFRQX2M \mem_reg[0][3]  ( .D(n26), .CK(W_CLK), .RN(n129), .Q(\mem[0][3] )
         );
  DFFRQX2M \mem_reg[0][2]  ( .D(n25), .CK(W_CLK), .RN(n133), .Q(\mem[0][2] )
         );
  DFFRQX2M \mem_reg[0][1]  ( .D(n24), .CK(W_CLK), .RN(n129), .Q(\mem[0][1] )
         );
  DFFRQX2M \mem_reg[0][0]  ( .D(n23), .CK(W_CLK), .RN(n129), .Q(\mem[0][0] )
         );
  DFFRQX2M \mem_reg[5][7]  ( .D(n70), .CK(W_CLK), .RN(n132), .Q(\mem[5][7] )
         );
  DFFRQX2M \mem_reg[5][6]  ( .D(n69), .CK(W_CLK), .RN(n132), .Q(\mem[5][6] )
         );
  DFFRQX2M \mem_reg[5][5]  ( .D(n68), .CK(W_CLK), .RN(n132), .Q(\mem[5][5] )
         );
  DFFRQX2M \mem_reg[5][4]  ( .D(n67), .CK(W_CLK), .RN(n132), .Q(\mem[5][4] )
         );
  DFFRQX2M \mem_reg[5][3]  ( .D(n66), .CK(W_CLK), .RN(n132), .Q(\mem[5][3] )
         );
  DFFRQX2M \mem_reg[5][2]  ( .D(n65), .CK(W_CLK), .RN(n132), .Q(\mem[5][2] )
         );
  DFFRQX2M \mem_reg[5][1]  ( .D(n64), .CK(W_CLK), .RN(n132), .Q(\mem[5][1] )
         );
  DFFRQX2M \mem_reg[5][0]  ( .D(n63), .CK(W_CLK), .RN(n132), .Q(\mem[5][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n62), .CK(W_CLK), .RN(n133), .Q(\mem[4][7] )
         );
  DFFRQX2M \mem_reg[4][6]  ( .D(n61), .CK(W_CLK), .RN(n133), .Q(\mem[4][6] )
         );
  DFFRQX2M \mem_reg[4][5]  ( .D(n60), .CK(W_CLK), .RN(n133), .Q(\mem[4][5] )
         );
  DFFRQX2M \mem_reg[4][4]  ( .D(n59), .CK(W_CLK), .RN(n133), .Q(\mem[4][4] )
         );
  DFFRQX2M \mem_reg[4][3]  ( .D(n58), .CK(W_CLK), .RN(n133), .Q(\mem[4][3] )
         );
  DFFRQX2M \mem_reg[4][2]  ( .D(n57), .CK(W_CLK), .RN(n133), .Q(\mem[4][2] )
         );
  DFFRQX2M \mem_reg[4][1]  ( .D(n56), .CK(W_CLK), .RN(n133), .Q(\mem[4][1] )
         );
  DFFRQX2M \mem_reg[4][0]  ( .D(n55), .CK(W_CLK), .RN(n133), .Q(\mem[4][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n86), .CK(W_CLK), .RN(n131), .Q(\mem[7][7] )
         );
  DFFRQX2M \mem_reg[7][6]  ( .D(n85), .CK(W_CLK), .RN(n131), .Q(\mem[7][6] )
         );
  DFFRQX2M \mem_reg[7][5]  ( .D(n84), .CK(W_CLK), .RN(n131), .Q(\mem[7][5] )
         );
  DFFRQX2M \mem_reg[7][4]  ( .D(n83), .CK(W_CLK), .RN(n131), .Q(\mem[7][4] )
         );
  DFFRQX2M \mem_reg[7][3]  ( .D(n82), .CK(W_CLK), .RN(n131), .Q(\mem[7][3] )
         );
  DFFRQX2M \mem_reg[7][2]  ( .D(n81), .CK(W_CLK), .RN(n131), .Q(\mem[7][2] )
         );
  DFFRQX2M \mem_reg[7][1]  ( .D(n80), .CK(W_CLK), .RN(n131), .Q(\mem[7][1] )
         );
  DFFRQX2M \mem_reg[7][0]  ( .D(n79), .CK(W_CLK), .RN(n131), .Q(\mem[7][0] )
         );
  DFFRQX2M \mem_reg[6][7]  ( .D(n78), .CK(W_CLK), .RN(n131), .Q(\mem[6][7] )
         );
  DFFRQX2M \mem_reg[6][6]  ( .D(n77), .CK(W_CLK), .RN(n131), .Q(\mem[6][6] )
         );
  DFFRQX2M \mem_reg[6][5]  ( .D(n76), .CK(W_CLK), .RN(n131), .Q(\mem[6][5] )
         );
  DFFRQX2M \mem_reg[6][4]  ( .D(n75), .CK(W_CLK), .RN(n131), .Q(\mem[6][4] )
         );
  DFFRQX2M \mem_reg[6][3]  ( .D(n74), .CK(W_CLK), .RN(n132), .Q(\mem[6][3] )
         );
  DFFRQX2M \mem_reg[6][2]  ( .D(n73), .CK(W_CLK), .RN(n132), .Q(\mem[6][2] )
         );
  DFFRQX2M \mem_reg[6][1]  ( .D(n72), .CK(W_CLK), .RN(n132), .Q(\mem[6][1] )
         );
  DFFRQX2M \mem_reg[6][0]  ( .D(n71), .CK(W_CLK), .RN(n132), .Q(\mem[6][0] )
         );
  DFFRQX2M \mem_reg[3][7]  ( .D(n54), .CK(W_CLK), .RN(n133), .Q(\mem[3][7] )
         );
  DFFRQX2M \mem_reg[3][6]  ( .D(n53), .CK(W_CLK), .RN(n133), .Q(\mem[3][6] )
         );
  DFFRQX2M \mem_reg[3][5]  ( .D(n52), .CK(W_CLK), .RN(n133), .Q(\mem[3][5] )
         );
  DFFRQX2M \mem_reg[3][4]  ( .D(n51), .CK(W_CLK), .RN(n133), .Q(\mem[3][4] )
         );
  DFFRQX2M \mem_reg[3][3]  ( .D(n50), .CK(W_CLK), .RN(n134), .Q(\mem[3][3] )
         );
  DFFRQX2M \mem_reg[3][2]  ( .D(n49), .CK(W_CLK), .RN(n134), .Q(\mem[3][2] )
         );
  DFFRQX2M \mem_reg[3][1]  ( .D(n48), .CK(W_CLK), .RN(n134), .Q(\mem[3][1] )
         );
  DFFRQX2M \mem_reg[3][0]  ( .D(n47), .CK(W_CLK), .RN(n134), .Q(\mem[3][0] )
         );
  DFFRQX2M \mem_reg[2][7]  ( .D(n46), .CK(W_CLK), .RN(n134), .Q(\mem[2][7] )
         );
  DFFRQX2M \mem_reg[2][6]  ( .D(n45), .CK(W_CLK), .RN(n134), .Q(\mem[2][6] )
         );
  DFFRQX2M \mem_reg[2][5]  ( .D(n44), .CK(W_CLK), .RN(n134), .Q(\mem[2][5] )
         );
  DFFRQX2M \mem_reg[2][4]  ( .D(n43), .CK(W_CLK), .RN(n134), .Q(\mem[2][4] )
         );
  DFFRQX2M \mem_reg[2][3]  ( .D(n42), .CK(W_CLK), .RN(n134), .Q(\mem[2][3] )
         );
  DFFRQX2M \mem_reg[2][2]  ( .D(n41), .CK(W_CLK), .RN(n134), .Q(\mem[2][2] )
         );
  DFFRQX2M \mem_reg[2][1]  ( .D(n40), .CK(W_CLK), .RN(n134), .Q(\mem[2][1] )
         );
  DFFRQX2M \mem_reg[2][0]  ( .D(n39), .CK(W_CLK), .RN(n134), .Q(\mem[2][0] )
         );
  BUFX4M U2 ( .A(n13), .Y(n127) );
  BUFX4M U3 ( .A(n15), .Y(n125) );
  BUFX4M U4 ( .A(n19), .Y(n123) );
  BUFX4M U5 ( .A(n21), .Y(n121) );
  BUFX4M U6 ( .A(n20), .Y(n122) );
  BUFX4M U7 ( .A(n14), .Y(n126) );
  INVX2M U8 ( .A(W_data[0]), .Y(n135) );
  INVX2M U9 ( .A(W_data[1]), .Y(n136) );
  INVX2M U10 ( .A(W_data[2]), .Y(n137) );
  INVX2M U11 ( .A(W_data[3]), .Y(n138) );
  INVX2M U12 ( .A(W_data[4]), .Y(n139) );
  INVX2M U13 ( .A(W_data[5]), .Y(n140) );
  INVX2M U14 ( .A(W_data[6]), .Y(n141) );
  INVX2M U15 ( .A(W_data[7]), .Y(n142) );
  BUFX4M U16 ( .A(n129), .Y(n134) );
  BUFX4M U17 ( .A(W_RST), .Y(n133) );
  BUFX4M U18 ( .A(n129), .Y(n132) );
  BUFX4M U19 ( .A(n129), .Y(n131) );
  BUFX2M U20 ( .A(n17), .Y(n124) );
  BUFX2M U21 ( .A(n11), .Y(n128) );
  INVX2M U22 ( .A(n130), .Y(n129) );
  INVX2M U23 ( .A(W_RST), .Y(n130) );
  NAND3X2M U24 ( .A(n143), .B(n144), .C(n12), .Y(n11) );
  NAND3X2M U25 ( .A(n143), .B(n144), .C(n18), .Y(n17) );
  BUFX4M U26 ( .A(n109), .Y(n118) );
  NOR2X2M U27 ( .A(n113), .B(n114), .Y(n109) );
  INVX2M U28 ( .A(n116), .Y(n115) );
  NOR2BX2M U29 ( .AN(n16), .B(W_addr[2]), .Y(n12) );
  OAI2BB2X1M U30 ( .B0(n135), .B1(n127), .A0N(\mem[1][0] ), .A1N(n127), .Y(n31) );
  OAI2BB2X1M U31 ( .B0(n136), .B1(n127), .A0N(\mem[1][1] ), .A1N(n127), .Y(n32) );
  OAI2BB2X1M U32 ( .B0(n137), .B1(n127), .A0N(\mem[1][2] ), .A1N(n127), .Y(n33) );
  OAI2BB2X1M U33 ( .B0(n138), .B1(n127), .A0N(\mem[1][3] ), .A1N(n127), .Y(n34) );
  OAI2BB2X1M U34 ( .B0(n139), .B1(n127), .A0N(\mem[1][4] ), .A1N(n127), .Y(n35) );
  OAI2BB2X1M U35 ( .B0(n140), .B1(n127), .A0N(\mem[1][5] ), .A1N(n127), .Y(n36) );
  OAI2BB2X1M U36 ( .B0(n141), .B1(n127), .A0N(\mem[1][6] ), .A1N(n127), .Y(n37) );
  OAI2BB2X1M U37 ( .B0(n142), .B1(n127), .A0N(\mem[1][7] ), .A1N(n127), .Y(n38) );
  OAI2BB2X1M U38 ( .B0(n135), .B1(n126), .A0N(\mem[2][0] ), .A1N(n126), .Y(n39) );
  OAI2BB2X1M U39 ( .B0(n136), .B1(n126), .A0N(\mem[2][1] ), .A1N(n126), .Y(n40) );
  OAI2BB2X1M U40 ( .B0(n137), .B1(n126), .A0N(\mem[2][2] ), .A1N(n126), .Y(n41) );
  OAI2BB2X1M U41 ( .B0(n138), .B1(n126), .A0N(\mem[2][3] ), .A1N(n126), .Y(n42) );
  OAI2BB2X1M U42 ( .B0(n139), .B1(n126), .A0N(\mem[2][4] ), .A1N(n126), .Y(n43) );
  OAI2BB2X1M U43 ( .B0(n140), .B1(n126), .A0N(\mem[2][5] ), .A1N(n126), .Y(n44) );
  OAI2BB2X1M U44 ( .B0(n141), .B1(n126), .A0N(\mem[2][6] ), .A1N(n126), .Y(n45) );
  OAI2BB2X1M U45 ( .B0(n142), .B1(n126), .A0N(\mem[2][7] ), .A1N(n126), .Y(n46) );
  OAI2BB2X1M U46 ( .B0(n135), .B1(n125), .A0N(\mem[3][0] ), .A1N(n125), .Y(n47) );
  OAI2BB2X1M U47 ( .B0(n136), .B1(n125), .A0N(\mem[3][1] ), .A1N(n125), .Y(n48) );
  OAI2BB2X1M U48 ( .B0(n137), .B1(n125), .A0N(\mem[3][2] ), .A1N(n125), .Y(n49) );
  OAI2BB2X1M U49 ( .B0(n138), .B1(n125), .A0N(\mem[3][3] ), .A1N(n125), .Y(n50) );
  OAI2BB2X1M U50 ( .B0(n139), .B1(n125), .A0N(\mem[3][4] ), .A1N(n125), .Y(n51) );
  OAI2BB2X1M U51 ( .B0(n140), .B1(n125), .A0N(\mem[3][5] ), .A1N(n125), .Y(n52) );
  OAI2BB2X1M U52 ( .B0(n141), .B1(n125), .A0N(\mem[3][6] ), .A1N(n125), .Y(n53) );
  OAI2BB2X1M U53 ( .B0(n142), .B1(n125), .A0N(\mem[3][7] ), .A1N(n125), .Y(n54) );
  OAI2BB2X1M U54 ( .B0(n135), .B1(n124), .A0N(\mem[4][0] ), .A1N(n124), .Y(n55) );
  OAI2BB2X1M U55 ( .B0(n136), .B1(n124), .A0N(\mem[4][1] ), .A1N(n124), .Y(n56) );
  OAI2BB2X1M U56 ( .B0(n137), .B1(n124), .A0N(\mem[4][2] ), .A1N(n124), .Y(n57) );
  OAI2BB2X1M U57 ( .B0(n138), .B1(n17), .A0N(\mem[4][3] ), .A1N(n124), .Y(n58)
         );
  OAI2BB2X1M U58 ( .B0(n139), .B1(n17), .A0N(\mem[4][4] ), .A1N(n124), .Y(n59)
         );
  OAI2BB2X1M U59 ( .B0(n140), .B1(n17), .A0N(\mem[4][5] ), .A1N(n124), .Y(n60)
         );
  OAI2BB2X1M U60 ( .B0(n141), .B1(n17), .A0N(\mem[4][6] ), .A1N(n124), .Y(n61)
         );
  OAI2BB2X1M U61 ( .B0(n142), .B1(n17), .A0N(\mem[4][7] ), .A1N(n124), .Y(n62)
         );
  OAI2BB2X1M U62 ( .B0(n135), .B1(n123), .A0N(\mem[5][0] ), .A1N(n123), .Y(n63) );
  OAI2BB2X1M U63 ( .B0(n136), .B1(n123), .A0N(\mem[5][1] ), .A1N(n123), .Y(n64) );
  OAI2BB2X1M U64 ( .B0(n137), .B1(n123), .A0N(\mem[5][2] ), .A1N(n123), .Y(n65) );
  OAI2BB2X1M U65 ( .B0(n138), .B1(n123), .A0N(\mem[5][3] ), .A1N(n123), .Y(n66) );
  OAI2BB2X1M U66 ( .B0(n139), .B1(n123), .A0N(\mem[5][4] ), .A1N(n123), .Y(n67) );
  OAI2BB2X1M U67 ( .B0(n140), .B1(n123), .A0N(\mem[5][5] ), .A1N(n123), .Y(n68) );
  OAI2BB2X1M U68 ( .B0(n141), .B1(n123), .A0N(\mem[5][6] ), .A1N(n123), .Y(n69) );
  OAI2BB2X1M U69 ( .B0(n142), .B1(n123), .A0N(\mem[5][7] ), .A1N(n123), .Y(n70) );
  OAI2BB2X1M U70 ( .B0(n135), .B1(n122), .A0N(\mem[6][0] ), .A1N(n122), .Y(n71) );
  OAI2BB2X1M U71 ( .B0(n136), .B1(n122), .A0N(\mem[6][1] ), .A1N(n122), .Y(n72) );
  OAI2BB2X1M U72 ( .B0(n137), .B1(n122), .A0N(\mem[6][2] ), .A1N(n122), .Y(n73) );
  OAI2BB2X1M U73 ( .B0(n138), .B1(n122), .A0N(\mem[6][3] ), .A1N(n122), .Y(n74) );
  OAI2BB2X1M U74 ( .B0(n139), .B1(n122), .A0N(\mem[6][4] ), .A1N(n122), .Y(n75) );
  OAI2BB2X1M U75 ( .B0(n140), .B1(n122), .A0N(\mem[6][5] ), .A1N(n122), .Y(n76) );
  OAI2BB2X1M U76 ( .B0(n141), .B1(n122), .A0N(\mem[6][6] ), .A1N(n122), .Y(n77) );
  OAI2BB2X1M U77 ( .B0(n142), .B1(n122), .A0N(\mem[6][7] ), .A1N(n122), .Y(n78) );
  OAI2BB2X1M U78 ( .B0(n135), .B1(n121), .A0N(\mem[7][0] ), .A1N(n121), .Y(n79) );
  OAI2BB2X1M U79 ( .B0(n136), .B1(n121), .A0N(\mem[7][1] ), .A1N(n121), .Y(n80) );
  OAI2BB2X1M U80 ( .B0(n137), .B1(n121), .A0N(\mem[7][2] ), .A1N(n121), .Y(n81) );
  OAI2BB2X1M U81 ( .B0(n138), .B1(n121), .A0N(\mem[7][3] ), .A1N(n121), .Y(n82) );
  OAI2BB2X1M U82 ( .B0(n139), .B1(n121), .A0N(\mem[7][4] ), .A1N(n121), .Y(n83) );
  OAI2BB2X1M U83 ( .B0(n140), .B1(n121), .A0N(\mem[7][5] ), .A1N(n121), .Y(n84) );
  OAI2BB2X1M U84 ( .B0(n141), .B1(n121), .A0N(\mem[7][6] ), .A1N(n121), .Y(n85) );
  OAI2BB2X1M U85 ( .B0(n142), .B1(n121), .A0N(\mem[7][7] ), .A1N(n121), .Y(n86) );
  NAND3X2M U86 ( .A(n12), .B(n144), .C(W_addr[0]), .Y(n13) );
  NAND3X2M U87 ( .A(n12), .B(n143), .C(W_addr[1]), .Y(n14) );
  NAND3X2M U88 ( .A(W_addr[0]), .B(n12), .C(W_addr[1]), .Y(n15) );
  NAND3X2M U89 ( .A(W_addr[1]), .B(W_addr[0]), .C(n18), .Y(n21) );
  NAND3X2M U90 ( .A(W_addr[0]), .B(n144), .C(n18), .Y(n19) );
  NAND3X2M U91 ( .A(W_addr[1]), .B(n143), .C(n18), .Y(n20) );
  OAI2BB2X1M U92 ( .B0(n128), .B1(n135), .A0N(\mem[0][0] ), .A1N(n128), .Y(n23) );
  OAI2BB2X1M U93 ( .B0(n128), .B1(n136), .A0N(\mem[0][1] ), .A1N(n128), .Y(n24) );
  OAI2BB2X1M U94 ( .B0(n128), .B1(n137), .A0N(\mem[0][2] ), .A1N(n128), .Y(n25) );
  OAI2BB2X1M U95 ( .B0(n128), .B1(n138), .A0N(\mem[0][3] ), .A1N(n128), .Y(n26) );
  OAI2BB2X1M U96 ( .B0(n11), .B1(n139), .A0N(\mem[0][4] ), .A1N(n128), .Y(n27)
         );
  OAI2BB2X1M U97 ( .B0(n11), .B1(n140), .A0N(\mem[0][5] ), .A1N(n128), .Y(n28)
         );
  OAI2BB2X1M U98 ( .B0(n11), .B1(n141), .A0N(\mem[0][6] ), .A1N(n128), .Y(n29)
         );
  OAI2BB2X1M U99 ( .B0(n11), .B1(n142), .A0N(\mem[0][7] ), .A1N(n128), .Y(n30)
         );
  AND2X2M U100 ( .A(W_addr[2]), .B(n16), .Y(n18) );
  AND2X2M U101 ( .A(n22), .B(W_inc), .Y(n16) );
  NOR2XLM U102 ( .A(W_full), .B(W_addr[3]), .Y(n22) );
  INVX2M U103 ( .A(W_addr[0]), .Y(n143) );
  INVX2M U104 ( .A(W_addr[1]), .Y(n144) );
  BUFX4M U105 ( .A(n107), .Y(n119) );
  NOR2X2M U106 ( .A(n114), .B(N12), .Y(n107) );
  BUFX4M U107 ( .A(n106), .Y(n120) );
  NOR2X2M U108 ( .A(N11), .B(N12), .Y(n106) );
  INVX2M U109 ( .A(N12), .Y(n113) );
  INVX2M U110 ( .A(N11), .Y(n114) );
  BUFX4M U111 ( .A(n110), .Y(n117) );
  NOR2X2M U112 ( .A(n113), .B(N11), .Y(n110) );
  BUFX2M U113 ( .A(N10), .Y(n116) );
  AO22X1M U114 ( .A0(\mem[3][0] ), .A1(n119), .B0(\mem[1][0] ), .B1(n120), .Y(
        n1) );
  AOI221XLM U115 ( .A0(\mem[5][0] ), .A1(n117), .B0(\mem[7][0] ), .B1(n118), 
        .C0(n1), .Y(n4) );
  AO22X1M U116 ( .A0(\mem[2][0] ), .A1(n119), .B0(\mem[0][0] ), .B1(n120), .Y(
        n2) );
  AOI221XLM U117 ( .A0(\mem[4][0] ), .A1(n117), .B0(\mem[6][0] ), .B1(n118), 
        .C0(n2), .Y(n3) );
  OAI22X1M U118 ( .A0(n115), .A1(n4), .B0(n116), .B1(n3), .Y(R_data[0]) );
  AO22X1M U119 ( .A0(\mem[3][1] ), .A1(n119), .B0(\mem[1][1] ), .B1(n120), .Y(
        n5) );
  AOI221XLM U120 ( .A0(\mem[5][1] ), .A1(n117), .B0(\mem[7][1] ), .B1(n118), 
        .C0(n5), .Y(n8) );
  AO22X1M U121 ( .A0(\mem[2][1] ), .A1(n119), .B0(\mem[0][1] ), .B1(n120), .Y(
        n6) );
  AOI221XLM U122 ( .A0(\mem[4][1] ), .A1(n117), .B0(\mem[6][1] ), .B1(n118), 
        .C0(n6), .Y(n7) );
  OAI22X1M U123 ( .A0(n115), .A1(n8), .B0(n116), .B1(n7), .Y(R_data[1]) );
  AO22X1M U124 ( .A0(\mem[3][2] ), .A1(n119), .B0(\mem[1][2] ), .B1(n120), .Y(
        n9) );
  AOI221XLM U125 ( .A0(\mem[5][2] ), .A1(n117), .B0(\mem[7][2] ), .B1(n118), 
        .C0(n9), .Y(n88) );
  AO22X1M U126 ( .A0(\mem[2][2] ), .A1(n119), .B0(\mem[0][2] ), .B1(n120), .Y(
        n10) );
  AOI221XLM U127 ( .A0(\mem[4][2] ), .A1(n117), .B0(\mem[6][2] ), .B1(n118), 
        .C0(n10), .Y(n87) );
  OAI22X1M U128 ( .A0(n115), .A1(n88), .B0(n116), .B1(n87), .Y(R_data[2]) );
  AO22X1M U129 ( .A0(\mem[3][3] ), .A1(n119), .B0(\mem[1][3] ), .B1(n120), .Y(
        n89) );
  AOI221XLM U130 ( .A0(\mem[5][3] ), .A1(n117), .B0(\mem[7][3] ), .B1(n118), 
        .C0(n89), .Y(n92) );
  AO22X1M U131 ( .A0(\mem[2][3] ), .A1(n119), .B0(\mem[0][3] ), .B1(n120), .Y(
        n90) );
  AOI221XLM U132 ( .A0(\mem[4][3] ), .A1(n117), .B0(\mem[6][3] ), .B1(n118), 
        .C0(n90), .Y(n91) );
  OAI22X1M U133 ( .A0(n115), .A1(n92), .B0(n116), .B1(n91), .Y(R_data[3]) );
  AO22X1M U134 ( .A0(\mem[3][4] ), .A1(n119), .B0(\mem[1][4] ), .B1(n120), .Y(
        n93) );
  AOI221XLM U135 ( .A0(\mem[5][4] ), .A1(n117), .B0(\mem[7][4] ), .B1(n118), 
        .C0(n93), .Y(n96) );
  AO22X1M U136 ( .A0(\mem[2][4] ), .A1(n119), .B0(\mem[0][4] ), .B1(n120), .Y(
        n94) );
  AOI221XLM U137 ( .A0(\mem[4][4] ), .A1(n117), .B0(\mem[6][4] ), .B1(n118), 
        .C0(n94), .Y(n95) );
  OAI22X1M U138 ( .A0(n115), .A1(n96), .B0(n116), .B1(n95), .Y(R_data[4]) );
  AO22X1M U139 ( .A0(\mem[3][5] ), .A1(n119), .B0(\mem[1][5] ), .B1(n120), .Y(
        n97) );
  AOI221XLM U140 ( .A0(\mem[5][5] ), .A1(n117), .B0(\mem[7][5] ), .B1(n118), 
        .C0(n97), .Y(n100) );
  AO22X1M U141 ( .A0(\mem[2][5] ), .A1(n119), .B0(\mem[0][5] ), .B1(n120), .Y(
        n98) );
  AOI221XLM U142 ( .A0(\mem[4][5] ), .A1(n117), .B0(\mem[6][5] ), .B1(n118), 
        .C0(n98), .Y(n99) );
  OAI22X1M U143 ( .A0(n115), .A1(n100), .B0(n116), .B1(n99), .Y(R_data[5]) );
  AO22X1M U144 ( .A0(\mem[3][6] ), .A1(n119), .B0(\mem[1][6] ), .B1(n120), .Y(
        n101) );
  AOI221XLM U145 ( .A0(\mem[5][6] ), .A1(n117), .B0(\mem[7][6] ), .B1(n118), 
        .C0(n101), .Y(n104) );
  AO22X1M U146 ( .A0(\mem[2][6] ), .A1(n119), .B0(\mem[0][6] ), .B1(n120), .Y(
        n102) );
  AOI221XLM U147 ( .A0(\mem[4][6] ), .A1(n117), .B0(\mem[6][6] ), .B1(n118), 
        .C0(n102), .Y(n103) );
  OAI22X1M U148 ( .A0(n115), .A1(n104), .B0(n116), .B1(n103), .Y(R_data[6]) );
  AO22X1M U149 ( .A0(\mem[3][7] ), .A1(n119), .B0(\mem[1][7] ), .B1(n120), .Y(
        n105) );
  AOI221XLM U150 ( .A0(\mem[5][7] ), .A1(n117), .B0(\mem[7][7] ), .B1(n118), 
        .C0(n105), .Y(n112) );
  AO22X1M U151 ( .A0(\mem[2][7] ), .A1(n119), .B0(\mem[0][7] ), .B1(n120), .Y(
        n108) );
  AOI221XLM U152 ( .A0(\mem[4][7] ), .A1(n117), .B0(\mem[6][7] ), .B1(n118), 
        .C0(n108), .Y(n111) );
  OAI22X1M U153 ( .A0(n112), .A1(n115), .B0(n116), .B1(n111), .Y(R_data[7]) );
endmodule


module FIFO_wptr_addr_width4 ( W_inc, W_CLK, W_RST, wq2_rptr, W_addr, W_ptr, 
        W_full );
  input [4:0] wq2_rptr;
  output [3:0] W_addr;
  output [4:0] W_ptr;
  input W_inc, W_CLK, W_RST;
  output W_full;
  wire   extra_bit, N4, N20, N21, N22, N23, n5, n6, n7, n8, n9, n10, n11, n12,
         n15, \eq_48/B[3] , \eq_48/B[4] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , \add_31/carry[1] , n1, n2, n3, n4, n13, n14, n16,
         n17, n18, n19;
  wire   [4:0] W_ptr_in;

  DFFRQX2M extra_bit_reg ( .D(n15), .CK(W_CLK), .RN(n1), .Q(extra_bit) );
  DFFRQX2M \W_addr_reg[3]  ( .D(n9), .CK(W_CLK), .RN(n1), .Q(W_addr[3]) );
  DFFRQX2M \W_addr_reg[2]  ( .D(n10), .CK(W_CLK), .RN(n1), .Q(W_addr[2]) );
  DFFRQX2M \W_ptr_reg[2]  ( .D(N22), .CK(W_CLK), .RN(n1), .Q(W_ptr[2]) );
  DFFRX1M \W_ptr_reg[4]  ( .D(W_ptr_in[4]), .CK(W_CLK), .RN(n1), .Q(W_ptr[4]), 
        .QN(\eq_48/B[4] ) );
  DFFRX1M \W_ptr_reg[3]  ( .D(N23), .CK(W_CLK), .RN(n1), .Q(W_ptr[3]), .QN(
        \eq_48/B[3] ) );
  DFFRQX2M \W_ptr_reg[0]  ( .D(N20), .CK(W_CLK), .RN(n1), .Q(W_ptr[0]) );
  DFFRQX2M \W_ptr_reg[1]  ( .D(N21), .CK(W_CLK), .RN(n1), .Q(W_ptr[1]) );
  DFFRQX2M \W_addr_reg[1]  ( .D(n11), .CK(W_CLK), .RN(n1), .Q(W_addr[1]) );
  DFFRQX2M \W_addr_reg[0]  ( .D(n12), .CK(W_CLK), .RN(n1), .Q(W_addr[0]) );
  NOR4X4M U3 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(W_full) );
  INVX2M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(W_RST), .Y(n2) );
  NOR2BX2M U6 ( .AN(W_inc), .B(W_full), .Y(N4) );
  CLKXOR2X2M U7 ( .A(W_ptr_in[3]), .B(W_ptr_in[2]), .Y(N22) );
  CLKXOR2X2M U8 ( .A(W_ptr_in[2]), .B(W_ptr_in[1]), .Y(N21) );
  CLKXOR2X2M U9 ( .A(W_ptr_in[4]), .B(W_ptr_in[3]), .Y(N23) );
  NAND2X2M U10 ( .A(W_addr[0]), .B(N4), .Y(n7) );
  NOR2BX2M U11 ( .AN(W_addr[1]), .B(n7), .Y(n6) );
  CLKXOR2X2M U12 ( .A(W_ptr_in[1]), .B(W_ptr_in[0]), .Y(N20) );
  NAND2X2M U13 ( .A(W_addr[2]), .B(n6), .Y(n5) );
  XNOR2X2M U14 ( .A(W_addr[1]), .B(n7), .Y(n11) );
  CLKXOR2X2M U15 ( .A(W_addr[2]), .B(n6), .Y(n10) );
  CLKXOR2X2M U16 ( .A(extra_bit), .B(n8), .Y(n15) );
  NOR2BX2M U17 ( .AN(W_addr[3]), .B(n5), .Y(n8) );
  XNOR2X2M U18 ( .A(W_addr[3]), .B(n5), .Y(n9) );
  CLKXOR2X2M U19 ( .A(W_addr[0]), .B(N4), .Y(n12) );
  CLKXOR2X2M U20 ( .A(extra_bit), .B(\add_31/carry[4] ), .Y(W_ptr_in[4]) );
  AND2X1M U21 ( .A(\add_31/carry[3] ), .B(W_addr[3]), .Y(\add_31/carry[4] ) );
  CLKXOR2X2M U22 ( .A(W_addr[3]), .B(\add_31/carry[3] ), .Y(W_ptr_in[3]) );
  AND2X1M U23 ( .A(\add_31/carry[2] ), .B(W_addr[2]), .Y(\add_31/carry[3] ) );
  CLKXOR2X2M U24 ( .A(W_addr[2]), .B(\add_31/carry[2] ), .Y(W_ptr_in[2]) );
  AND2X1M U25 ( .A(\add_31/carry[1] ), .B(W_addr[1]), .Y(\add_31/carry[2] ) );
  CLKXOR2X2M U26 ( .A(W_addr[1]), .B(\add_31/carry[1] ), .Y(W_ptr_in[1]) );
  AND2X1M U27 ( .A(W_addr[0]), .B(N4), .Y(\add_31/carry[1] ) );
  CLKXOR2X2M U28 ( .A(N4), .B(W_addr[0]), .Y(W_ptr_in[0]) );
  CLKXOR2X2M U29 ( .A(W_ptr[2]), .B(wq2_rptr[2]), .Y(n19) );
  NOR2BX1M U30 ( .AN(W_ptr[0]), .B(wq2_rptr[0]), .Y(n3) );
  OAI2B2X1M U31 ( .A1N(wq2_rptr[1]), .A0(n3), .B0(W_ptr[1]), .B1(n3), .Y(n14)
         );
  NOR2BX1M U32 ( .AN(wq2_rptr[0]), .B(W_ptr[0]), .Y(n4) );
  OAI2B2X1M U33 ( .A1N(W_ptr[1]), .A0(n4), .B0(wq2_rptr[1]), .B1(n4), .Y(n13)
         );
  CLKNAND2X2M U34 ( .A(n14), .B(n13), .Y(n18) );
  CLKXOR2X2M U35 ( .A(\eq_48/B[3] ), .B(wq2_rptr[3]), .Y(n17) );
  CLKXOR2X2M U36 ( .A(\eq_48/B[4] ), .B(wq2_rptr[4]), .Y(n16) );
endmodule


module FIFO_rptr_addr_width4 ( R_inc, R_CLK, R_RST, rq2_wptr, R_addr, R_ptr, 
        R_empty );
  input [4:0] rq2_wptr;
  output [3:0] R_addr;
  output [4:0] R_ptr;
  input R_inc, R_CLK, R_RST;
  output R_empty;
  wire   extra_bit, N4, N20, N21, N22, N23, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, \add_31/carry[4] , \add_31/carry[3] , \add_31/carry[2] ,
         \add_31/carry[1] , n1, n2, n3, n4, n14, n15, n16, n17, n18, n19;
  wire   [4:0] R_ptr_in;

  DFFRQX1M extra_bit_reg ( .D(n13), .CK(R_CLK), .RN(n1), .Q(extra_bit) );
  DFFRQX1M \R_addr_reg[3]  ( .D(n9), .CK(R_CLK), .RN(n1), .Q(R_addr[3]) );
  DFFRQX1M \R_addr_reg[0]  ( .D(n12), .CK(R_CLK), .RN(n1), .Q(R_addr[0]) );
  DFFRQX1M \R_ptr_reg[2]  ( .D(N22), .CK(R_CLK), .RN(n1), .Q(R_ptr[2]) );
  DFFRQX1M \R_ptr_reg[4]  ( .D(R_ptr_in[4]), .CK(R_CLK), .RN(n1), .Q(R_ptr[4])
         );
  DFFRQX1M \R_ptr_reg[3]  ( .D(N23), .CK(R_CLK), .RN(n1), .Q(R_ptr[3]) );
  DFFRQX1M \R_ptr_reg[0]  ( .D(N20), .CK(R_CLK), .RN(n1), .Q(R_ptr[0]) );
  DFFRQX1M \R_ptr_reg[1]  ( .D(N21), .CK(R_CLK), .RN(n1), .Q(R_ptr[1]) );
  DFFRQX2M \R_addr_reg[2]  ( .D(n10), .CK(R_CLK), .RN(n1), .Q(R_addr[2]) );
  DFFRQX1M \R_addr_reg[1]  ( .D(n11), .CK(R_CLK), .RN(n1), .Q(R_addr[1]) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
  CLKXOR2X2M U5 ( .A(R_ptr_in[4]), .B(R_ptr_in[3]), .Y(N23) );
  CLKXOR2X2M U6 ( .A(R_ptr_in[3]), .B(R_ptr_in[2]), .Y(N22) );
  CLKXOR2X2M U7 ( .A(R_ptr_in[2]), .B(R_ptr_in[1]), .Y(N21) );
  NOR2BX2M U8 ( .AN(R_inc), .B(R_empty), .Y(N4) );
  NOR2BX2M U9 ( .AN(R_addr[1]), .B(n7), .Y(n6) );
  NAND2X2M U10 ( .A(R_addr[2]), .B(n6), .Y(n5) );
  NAND2X2M U11 ( .A(R_addr[0]), .B(N4), .Y(n7) );
  CLKXOR2X2M U12 ( .A(R_ptr_in[1]), .B(R_ptr_in[0]), .Y(N20) );
  CLKXOR2X2M U13 ( .A(R_addr[2]), .B(n6), .Y(n10) );
  CLKXOR2X2M U14 ( .A(extra_bit), .B(n8), .Y(n13) );
  NOR2BX2M U15 ( .AN(R_addr[3]), .B(n5), .Y(n8) );
  XNOR2X2M U16 ( .A(R_addr[3]), .B(n5), .Y(n9) );
  XNOR2X2M U17 ( .A(R_addr[1]), .B(n7), .Y(n11) );
  CLKXOR2X2M U18 ( .A(R_addr[0]), .B(N4), .Y(n12) );
  CLKXOR2X2M U19 ( .A(extra_bit), .B(\add_31/carry[4] ), .Y(R_ptr_in[4]) );
  AND2X1M U20 ( .A(\add_31/carry[3] ), .B(R_addr[3]), .Y(\add_31/carry[4] ) );
  CLKXOR2X2M U21 ( .A(R_addr[3]), .B(\add_31/carry[3] ), .Y(R_ptr_in[3]) );
  AND2X1M U22 ( .A(\add_31/carry[2] ), .B(R_addr[2]), .Y(\add_31/carry[3] ) );
  CLKXOR2X2M U23 ( .A(R_addr[2]), .B(\add_31/carry[2] ), .Y(R_ptr_in[2]) );
  AND2X1M U24 ( .A(\add_31/carry[1] ), .B(R_addr[1]), .Y(\add_31/carry[2] ) );
  CLKXOR2X2M U25 ( .A(R_addr[1]), .B(\add_31/carry[1] ), .Y(R_ptr_in[1]) );
  AND2X1M U26 ( .A(R_addr[0]), .B(N4), .Y(\add_31/carry[1] ) );
  CLKXOR2X2M U27 ( .A(N4), .B(R_addr[0]), .Y(R_ptr_in[0]) );
  CLKXOR2X2M U28 ( .A(R_ptr[2]), .B(rq2_wptr[2]), .Y(n19) );
  NOR2BX1M U29 ( .AN(R_ptr[0]), .B(rq2_wptr[0]), .Y(n3) );
  OAI2B2X1M U30 ( .A1N(rq2_wptr[1]), .A0(n3), .B0(R_ptr[1]), .B1(n3), .Y(n15)
         );
  NOR2BX1M U31 ( .AN(rq2_wptr[0]), .B(R_ptr[0]), .Y(n4) );
  OAI2B2X1M U32 ( .A1N(R_ptr[1]), .A0(n4), .B0(rq2_wptr[1]), .B1(n4), .Y(n14)
         );
  CLKNAND2X2M U33 ( .A(n15), .B(n14), .Y(n18) );
  CLKXOR2X2M U34 ( .A(R_ptr[3]), .B(rq2_wptr[3]), .Y(n17) );
  CLKXOR2X2M U35 ( .A(R_ptr[4]), .B(rq2_wptr[4]), .Y(n16) );
  NOR4X1M U36 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(R_empty) );
endmodule


module DF_SYNC_data_width5_NUM_STAGES2_0 ( CLK, RST, unsync_bus, sync_bus );
  input [4:0] unsync_bus;
  output [4:0] sync_bus;
  input CLK, RST;
  wire   \MULTI_FLIP_FLOP[4][1] , \MULTI_FLIP_FLOP[3][1] ,
         \MULTI_FLIP_FLOP[2][1] , \MULTI_FLIP_FLOP[1][1] ,
         \MULTI_FLIP_FLOP[0][1] , n1, n2;

  DFFRQX1M \MULTI_FLIP_FLOP_reg[2][0]  ( .D(\MULTI_FLIP_FLOP[2][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[2]) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[4][0]  ( .D(\MULTI_FLIP_FLOP[4][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[4]) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[3][0]  ( .D(\MULTI_FLIP_FLOP[3][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[3]) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[0][0]  ( .D(\MULTI_FLIP_FLOP[0][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[0]) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[1][0]  ( .D(\MULTI_FLIP_FLOP[1][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[1]) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[4][1]  ( .D(unsync_bus[4]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[4][1] ) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[3][1]  ( .D(unsync_bus[3]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[3][1] ) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[2][1]  ( .D(unsync_bus[2]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[2][1] ) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[1][1]  ( .D(unsync_bus[1]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[1][1] ) );
  DFFRQX1M \MULTI_FLIP_FLOP_reg[0][1]  ( .D(unsync_bus[0]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[0][1] ) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module DF_SYNC_data_width5_NUM_STAGES2_1 ( CLK, RST, unsync_bus, sync_bus );
  input [4:0] unsync_bus;
  output [4:0] sync_bus;
  input CLK, RST;
  wire   \MULTI_FLIP_FLOP[4][1] , \MULTI_FLIP_FLOP[3][1] ,
         \MULTI_FLIP_FLOP[2][1] , \MULTI_FLIP_FLOP[1][1] ,
         \MULTI_FLIP_FLOP[0][1] , n1, n2;

  DFFRQX2M \MULTI_FLIP_FLOP_reg[4][0]  ( .D(\MULTI_FLIP_FLOP[4][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[4]) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[3][0]  ( .D(\MULTI_FLIP_FLOP[3][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[3]) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[2][0]  ( .D(\MULTI_FLIP_FLOP[2][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[2]) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[0][0]  ( .D(\MULTI_FLIP_FLOP[0][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[0]) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[1][0]  ( .D(\MULTI_FLIP_FLOP[1][1] ), .CK(CLK), 
        .RN(n1), .Q(sync_bus[1]) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[4][1]  ( .D(unsync_bus[4]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[4][1] ) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[3][1]  ( .D(unsync_bus[3]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[3][1] ) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[2][1]  ( .D(unsync_bus[2]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[2][1] ) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[1][1]  ( .D(unsync_bus[1]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[1][1] ) );
  DFFRQX2M \MULTI_FLIP_FLOP_reg[0][1]  ( .D(unsync_bus[0]), .CK(CLK), .RN(n1), 
        .Q(\MULTI_FLIP_FLOP[0][1] ) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module ASYNC_FIFO_data_width8_depth8_addr_width4_NUM_STAGES2 ( W_data, W_inc, 
        R_inc, W_CLK, W_RST, R_CLK, R_RST, R_data, W_full, R_empty );
  input [7:0] W_data;
  output [7:0] R_data;
  input W_inc, R_inc, W_CLK, W_RST, R_CLK, R_RST;
  output W_full, R_empty;
  wire   n1, n2, n3, n4;
  wire   [3:0] W_addr;
  wire   [3:0] R_addr;
  wire   [4:0] wq2_rptr;
  wire   [4:0] W_ptr;
  wire   [4:0] rq2_wptr;
  wire   [4:0] R_ptr;

  FIFO_MEM_CNTRL_data_width8_depth8_addr_width4 FIFO_MEM_CNTRL ( .W_data(
        W_data), .W_inc(W_inc), .W_full(W_full), .W_RST(n3), .W_addr(W_addr), 
        .W_CLK(W_CLK), .R_addr(R_addr), .R_data(R_data) );
  FIFO_wptr_addr_width4 FIFO_wptr ( .W_inc(W_inc), .W_CLK(W_CLK), .W_RST(n3), 
        .wq2_rptr(wq2_rptr), .W_addr(W_addr), .W_ptr(W_ptr), .W_full(W_full)
         );
  FIFO_rptr_addr_width4 FIFO_rptr ( .R_inc(R_inc), .R_CLK(R_CLK), .R_RST(n1), 
        .rq2_wptr(rq2_wptr), .R_addr(R_addr), .R_ptr(R_ptr), .R_empty(R_empty)
         );
  DF_SYNC_data_width5_NUM_STAGES2_0 DF_SYNC_R ( .CLK(R_CLK), .RST(n1), 
        .unsync_bus(W_ptr), .sync_bus(rq2_wptr) );
  DF_SYNC_data_width5_NUM_STAGES2_1 DF_SYNC_W ( .CLK(W_CLK), .RST(n3), 
        .unsync_bus(R_ptr), .sync_bus(wq2_rptr) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
endmodule


module FSM_TX ( Data_Valid, PAR_EN, ser_done, CLK, RST, ser_en, mux_sel, busy
 );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, CLK, RST;
  output ser_en, busy;
  wire   n6, n7, n8, n9, n10, n11, n12, n1, n2, n3, n4, n5;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  INVX2M U3 ( .A(mux_sel[0]), .Y(ser_en) );
  NAND2X2M U4 ( .A(n11), .B(n4), .Y(mux_sel[0]) );
  NAND2X2M U5 ( .A(n6), .B(n3), .Y(mux_sel[1]) );
  INVX2M U6 ( .A(n9), .Y(n3) );
  NAND3X2M U7 ( .A(n2), .B(n4), .C(current_state[1]), .Y(n6) );
  CLKXOR2X2M U8 ( .A(current_state[0]), .B(current_state[1]), .Y(n11) );
  NOR2X2M U9 ( .A(n12), .B(current_state[2]), .Y(n9) );
  NAND2X2M U10 ( .A(current_state[0]), .B(current_state[1]), .Y(n12) );
  INVX2M U11 ( .A(current_state[2]), .Y(n4) );
  INVX2M U12 ( .A(current_state[0]), .Y(n2) );
  OAI31X1M U13 ( .A0(n5), .A1(n6), .A2(n1), .B0(n8), .Y(next_state[0]) );
  INVX2M U14 ( .A(PAR_EN), .Y(n5) );
  NAND4BX1M U15 ( .AN(current_state[1]), .B(Data_Valid), .C(n2), .D(n4), .Y(n8) );
  OAI21X2M U16 ( .A0(n10), .A1(n11), .B0(mux_sel[0]), .Y(busy) );
  AOI21X2M U17 ( .A0(current_state[2]), .A1(n12), .B0(n9), .Y(n10) );
  OAI32X1M U18 ( .A0(n2), .A1(current_state[2]), .A2(current_state[1]), .B0(n7), .B1(n6), .Y(next_state[1]) );
  NOR2X2M U19 ( .A(PAR_EN), .B(n1), .Y(n7) );
  OAI31X1M U20 ( .A0(n1), .A1(PAR_EN), .A2(n6), .B0(n3), .Y(next_state[2]) );
  INVX2M U21 ( .A(ser_done), .Y(n1) );
endmodule


module serializer ( P_DATA, ser_en, RST, CLK, Data_Valid, Busy, ser_data, 
        ser_done );
  input [7:0] P_DATA;
  input ser_en, RST, CLK, Data_Valid, Busy;
  output ser_data, ser_done;
  wire   N27, n1, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n2, n3,
         n4, n5, n6, n32, n33;
  wire   [7:0] shift_register;
  wire   [2:0] count;

  DFFRQX1M ser_done_reg ( .D(N27), .CK(CLK), .RN(n2), .Q(ser_done) );
  DFFRQX1M \shift_register_reg[7]  ( .D(n25), .CK(CLK), .RN(n2), .Q(
        shift_register[7]) );
  DFFRQX1M \shift_register_reg[6]  ( .D(n26), .CK(CLK), .RN(n2), .Q(
        shift_register[6]) );
  DFFRQX1M \shift_register_reg[5]  ( .D(n27), .CK(CLK), .RN(n2), .Q(
        shift_register[5]) );
  DFFRQX1M \shift_register_reg[4]  ( .D(n28), .CK(CLK), .RN(n2), .Q(
        shift_register[4]) );
  DFFRQX1M \shift_register_reg[3]  ( .D(n29), .CK(CLK), .RN(n2), .Q(
        shift_register[3]) );
  DFFRQX1M \shift_register_reg[2]  ( .D(n30), .CK(CLK), .RN(n2), .Q(
        shift_register[2]) );
  DFFRQX1M \shift_register_reg[1]  ( .D(n31), .CK(CLK), .RN(n2), .Q(
        shift_register[1]) );
  DFFRQX1M \count_reg[2]  ( .D(n20), .CK(CLK), .RN(n2), .Q(count[2]) );
  DFFRQX1M \count_reg[1]  ( .D(n21), .CK(CLK), .RN(n2), .Q(count[1]) );
  DFFRX1M \shift_register_reg[0]  ( .D(n24), .CK(CLK), .RN(n2), .QN(n1) );
  DFFRQX1M \count_reg[0]  ( .D(n22), .CK(CLK), .RN(n2), .Q(count[0]) );
  DFFRQX1M ser_data_reg ( .D(n23), .CK(CLK), .RN(n2), .Q(ser_data) );
  INVX2M U3 ( .A(n11), .Y(n33) );
  NAND2X2M U4 ( .A(n10), .B(n11), .Y(n12) );
  NAND2X2M U5 ( .A(ser_en), .B(n10), .Y(n11) );
  INVX2M U6 ( .A(n10), .Y(n32) );
  INVX4M U7 ( .A(n3), .Y(n2) );
  INVX2M U8 ( .A(RST), .Y(n3) );
  NAND2BX2M U9 ( .AN(Busy), .B(Data_Valid), .Y(n10) );
  AOI21X2M U10 ( .A0(n4), .A1(n33), .B0(n32), .Y(n9) );
  NOR3X2M U11 ( .A(n6), .B(n4), .C(n5), .Y(N27) );
  OAI32X1M U12 ( .A0(n5), .A1(count[2]), .A2(n7), .B0(n8), .B1(n6), .Y(n20) );
  AOI21BX2M U13 ( .A0(n33), .A1(n5), .B0N(n9), .Y(n8) );
  OAI22X1M U14 ( .A0(n9), .A1(n5), .B0(count[1]), .B1(n7), .Y(n21) );
  OAI2B1X2M U15 ( .A1N(shift_register[1]), .A0(n12), .B0(n19), .Y(n31) );
  AOI22X1M U16 ( .A0(shift_register[2]), .A1(n33), .B0(P_DATA[1]), .B1(n32), 
        .Y(n19) );
  OAI2B1X2M U17 ( .A1N(shift_register[2]), .A0(n12), .B0(n18), .Y(n30) );
  AOI22X1M U18 ( .A0(shift_register[3]), .A1(n33), .B0(P_DATA[2]), .B1(n32), 
        .Y(n18) );
  OAI2B1X2M U19 ( .A1N(shift_register[3]), .A0(n12), .B0(n17), .Y(n29) );
  AOI22X1M U20 ( .A0(shift_register[4]), .A1(n33), .B0(P_DATA[3]), .B1(n32), 
        .Y(n17) );
  OAI2B1X2M U21 ( .A1N(shift_register[4]), .A0(n12), .B0(n16), .Y(n28) );
  AOI22X1M U22 ( .A0(shift_register[5]), .A1(n33), .B0(P_DATA[4]), .B1(n32), 
        .Y(n16) );
  OAI2B1X2M U23 ( .A1N(shift_register[5]), .A0(n12), .B0(n15), .Y(n27) );
  AOI22X1M U24 ( .A0(shift_register[6]), .A1(n33), .B0(P_DATA[5]), .B1(n32), 
        .Y(n15) );
  OAI2B1X2M U25 ( .A1N(shift_register[6]), .A0(n12), .B0(n14), .Y(n26) );
  AOI22X1M U26 ( .A0(shift_register[7]), .A1(n33), .B0(P_DATA[6]), .B1(n32), 
        .Y(n14) );
  NAND2X2M U27 ( .A(count[0]), .B(n33), .Y(n7) );
  OAI21X2M U28 ( .A0(n1), .A1(n12), .B0(n13), .Y(n24) );
  AOI22X1M U29 ( .A0(shift_register[1]), .A1(n33), .B0(P_DATA[0]), .B1(n32), 
        .Y(n13) );
  AO2B2X2M U30 ( .B0(P_DATA[7]), .B1(n32), .A0(shift_register[7]), .A1N(n12), 
        .Y(n25) );
  OAI22X1M U31 ( .A0(n4), .A1(n10), .B0(count[0]), .B1(n11), .Y(n22) );
  OAI2BB2X1M U32 ( .B0(n11), .B1(n1), .A0N(ser_data), .A1N(n11), .Y(n23) );
  INVX2M U33 ( .A(count[0]), .Y(n4) );
  INVX2M U34 ( .A(count[1]), .Y(n5) );
  INVX2M U35 ( .A(count[2]), .Y(n6) );
endmodule


module Parity_calc ( P_DATA, Data_Valid, PAR_TYP, CLK, RST, busy, Par_bit );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, CLK, RST, busy;
  output Par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX1M Par_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(Par_bit) );
  XOR3XLM U2 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(Par_bit), .A1N(n2), .Y(n7) );
  NAND2BX2M U6 ( .AN(busy), .B(Data_Valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module MUX ( ser_data, Par_bit, mux_sel, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, Par_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI21X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(Par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module UART_TX ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   ser_done, ser_en, ser_data, Par_bit, n1, n2;
  wire   [1:0] mux_sel;

  FSM_TX FSM_TX ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .ser_done(ser_done), .CLK(CLK), .RST(n1), .ser_en(ser_en), .mux_sel(mux_sel), .busy(Busy) );
  serializer serializer ( .P_DATA(P_DATA), .ser_en(ser_en), .RST(n1), .CLK(CLK), .Data_Valid(Data_Valid), .Busy(Busy), .ser_data(ser_data), .ser_done(
        ser_done) );
  Parity_calc Parity_calc ( .P_DATA(P_DATA), .Data_Valid(Data_Valid), 
        .PAR_TYP(PAR_TYP), .CLK(CLK), .RST(n1), .busy(Busy), .Par_bit(Par_bit)
         );
  MUX MUX ( .ser_data(ser_data), .Par_bit(Par_bit), .mux_sel(mux_sel), 
        .TX_OUT(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module NOT ( X, Y );
  input X;
  output Y;


  INVX2M U1 ( .A(X), .Y(Y) );
endmodule


module PULSE_GEN ( LVL_SIG, RST, CLK, PULSE_SIG );
  input LVL_SIG, RST, CLK;
  output PULSE_SIG;
  wire   DATA_VALID_DELAY, N1;

  DFFRQX1M DATA_VALID_DELAY_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(
        DATA_VALID_DELAY) );
  DFFRQX1M PULSE_SIG_reg ( .D(N1), .CK(CLK), .RN(RST), .Q(PULSE_SIG) );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(DATA_VALID_DELAY), .Y(N1) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N1, clk_div, N12, N13, N14, N15, N16, N17, N18, N19, N27, N30,
         N31, N32, N33, N34, N35, N36, N37, N39, N40, N41, N42, N43, N44, N45,
         N46, N76, N77, N78, N79, N80, N81, N82, N83, N110, N111, N112, N113,
         N114, N115, N116, N117, N145, N146, N147, N148, N149, N150, N151,
         N152, N159, N160, n44, n45, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95;
  wire   [7:0] count_positive;
  wire   [7:0] count_negative;

  DFFNSRHX2M \count_negative_reg[0]  ( .D(N145), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[0]), .QN(n91) );
  DFFNSRHX2M \count_negative_reg[1]  ( .D(N146), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[1]), .QN(n90) );
  DFFNSRHX2M \count_negative_reg[2]  ( .D(N147), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[2]), .QN(n88) );
  DFFNSRHX2M \count_negative_reg[3]  ( .D(N148), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[3]), .QN(n92) );
  DFFNSRHX2M \count_negative_reg[4]  ( .D(N149), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[4]), .QN(n93) );
  DFFNSRHX2M \count_negative_reg[5]  ( .D(N150), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[5]), .QN(n94) );
  DFFNSRHX2M \count_negative_reg[6]  ( .D(N151), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[6]), .QN(n95) );
  DFFNSRHX2M \count_negative_reg[7]  ( .D(N152), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[7]), .QN(n89) );
  DFFNSRHX2M clk_odd_div_reg ( .D(n44), .CKN(i_ref_clk), .SN(1'b1), .RN(n9), 
        .QN(n87) );
  ClkDiv_0_DW01_inc_0 r98 ( .A(count_negative), .SUM({N117, N116, N115, N114, 
        N113, N112, N111, N110}) );
  ClkDiv_0_DW01_inc_1 r95 ( .A(count_positive), .SUM({N46, N45, N44, N43, N42, 
        N41, N40, N39}) );
  ClkDiv_0_DW01_inc_2 add_38_aco ( .A({n8, n7, n6, n5, n4, n3, n2, n1}), .SUM(
        {N37, N36, N35, N34, N33, N32, N31, N30}) );
  DFFRQX2M clk_div_reg ( .D(n45), .CK(i_ref_clk), .RN(n9), .Q(clk_div) );
  DFFRQX2M \count_positive_reg[7]  ( .D(N83), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[7]) );
  DFFRQX2M \count_positive_reg[6]  ( .D(N82), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[6]) );
  DFFRQX2M \count_positive_reg[4]  ( .D(N80), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[4]) );
  DFFRQX2M \count_positive_reg[3]  ( .D(N79), .CK(i_ref_clk), .RN(i_rst_n), 
        .Q(count_positive[3]) );
  DFFRQX2M \count_positive_reg[5]  ( .D(N81), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[5]) );
  DFFRQX2M \count_positive_reg[0]  ( .D(N76), .CK(i_ref_clk), .RN(i_rst_n), 
        .Q(count_positive[0]) );
  DFFRQX2M \count_positive_reg[1]  ( .D(N77), .CK(i_ref_clk), .RN(i_rst_n), 
        .Q(count_positive[1]) );
  DFFRQX2M \count_positive_reg[2]  ( .D(N78), .CK(i_ref_clk), .RN(i_rst_n), 
        .Q(count_positive[2]) );
  AND2X2M U7 ( .A(count_positive[0]), .B(N27), .Y(n1) );
  AND2X2M U8 ( .A(count_positive[1]), .B(N27), .Y(n2) );
  AND2X2M U9 ( .A(count_positive[2]), .B(N27), .Y(n3) );
  AND2X2M U10 ( .A(count_positive[3]), .B(N27), .Y(n4) );
  AND2X2M U11 ( .A(count_positive[4]), .B(N27), .Y(n5) );
  AND2X2M U17 ( .A(count_positive[5]), .B(N27), .Y(n6) );
  AND2X2M U18 ( .A(count_positive[6]), .B(N27), .Y(n7) );
  AND2X2M U19 ( .A(N27), .B(count_positive[7]), .Y(n8) );
  NOR2X4M U20 ( .A(n29), .B(i_div_ratio[0]), .Y(n32) );
  AOI2B1X4M U21 ( .A1N(n34), .A0(n28), .B0(n29), .Y(n33) );
  AO22XLM U22 ( .A0(N36), .A1(n32), .B0(N45), .B1(n33), .Y(N82) );
  AO22XLM U23 ( .A0(N35), .A1(n32), .B0(N44), .B1(n33), .Y(N81) );
  AO22XLM U24 ( .A0(N34), .A1(n32), .B0(N43), .B1(n33), .Y(N80) );
  AO22XLM U25 ( .A0(N33), .A1(n32), .B0(N42), .B1(n33), .Y(N79) );
  AO22XLM U26 ( .A0(N32), .A1(n32), .B0(N41), .B1(n33), .Y(N78) );
  AO22XLM U27 ( .A0(N31), .A1(n32), .B0(N40), .B1(n33), .Y(N77) );
  AO22XLM U28 ( .A0(N37), .A1(n32), .B0(N46), .B1(n33), .Y(N83) );
  AO22XLM U29 ( .A0(N30), .A1(n32), .B0(N39), .B1(n33), .Y(N76) );
  NAND3X2M U30 ( .A(n62), .B(i_div_ratio[0]), .C(N1), .Y(n61) );
  OAI21X2M U31 ( .A0(n85), .A1(n86), .B0(i_clk_en), .Y(n29) );
  INVX4M U32 ( .A(n10), .Y(n9) );
  OR2X2M U33 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n11) );
  INVX2M U34 ( .A(i_rst_n), .Y(n10) );
  CLKMX2X4M U35 ( .A(i_ref_clk), .B(N160), .S0(N1), .Y(o_div_clk) );
  NAND2X2M U36 ( .A(n52), .B(n53), .Y(N27) );
  MX2X2M U37 ( .A(N159), .B(clk_div), .S0(N0), .Y(N160) );
  OAI2BB1X1M U38 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n11), .Y(
        N12) );
  OR2X1M U39 ( .A(n11), .B(i_div_ratio[2]), .Y(n12) );
  OAI2BB1X1M U40 ( .A0N(n11), .A1N(i_div_ratio[2]), .B0(n12), .Y(N13) );
  OR2X1M U41 ( .A(n12), .B(i_div_ratio[3]), .Y(n13) );
  OAI2BB1X1M U42 ( .A0N(n12), .A1N(i_div_ratio[3]), .B0(n13), .Y(N14) );
  OR2X1M U43 ( .A(n13), .B(i_div_ratio[4]), .Y(n23) );
  OAI2BB1X1M U44 ( .A0N(n13), .A1N(i_div_ratio[4]), .B0(n23), .Y(N15) );
  OR2X1M U45 ( .A(n23), .B(i_div_ratio[5]), .Y(n24) );
  OAI2BB1X1M U46 ( .A0N(n23), .A1N(i_div_ratio[5]), .B0(n24), .Y(N16) );
  OR2X1M U47 ( .A(n24), .B(i_div_ratio[6]), .Y(n25) );
  OAI2BB1X1M U48 ( .A0N(n24), .A1N(i_div_ratio[6]), .B0(n25), .Y(N17) );
  NOR2X1M U49 ( .A(n25), .B(i_div_ratio[7]), .Y(N19) );
  AO21XLM U50 ( .A0(n25), .A1(i_div_ratio[7]), .B0(N19), .Y(N18) );
  MXI2X1M U51 ( .A(n26), .B(n27), .S0(clk_div), .Y(n45) );
  CLKNAND2X2M U52 ( .A(N1), .B(n27), .Y(n26) );
  NAND3X1M U53 ( .A(n28), .B(N27), .C(N1), .Y(n27) );
  NOR3X1M U54 ( .A(n29), .B(N0), .C(n30), .Y(n44) );
  XNOR2X1M U55 ( .A(n31), .B(n87), .Y(n30) );
  NAND4BBX1M U56 ( .AN(count_positive[3]), .BN(count_positive[4]), .C(n35), 
        .D(n36), .Y(n28) );
  NOR4X1M U57 ( .A(count_positive[2]), .B(count_positive[1]), .C(
        count_positive[0]), .D(N0), .Y(n36) );
  NOR3X1M U58 ( .A(count_positive[5]), .B(count_positive[7]), .C(
        count_positive[6]), .Y(n35) );
  AOI21X1M U59 ( .A0(n37), .A1(n38), .B0(N0), .Y(n34) );
  NOR4X1M U60 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U61 ( .A(count_positive[2]), .B(N13), .Y(n42) );
  CLKXOR2X2M U62 ( .A(count_positive[1]), .B(N12), .Y(n41) );
  CLKNAND2X2M U63 ( .A(N27), .B(n43), .Y(n40) );
  CLKXOR2X2M U64 ( .A(count_positive[0]), .B(N0), .Y(n39) );
  NOR4X1M U65 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n37) );
  CLKXOR2X2M U66 ( .A(count_positive[3]), .B(N14), .Y(n49) );
  CLKXOR2X2M U67 ( .A(count_positive[5]), .B(N16), .Y(n48) );
  CLKXOR2X2M U68 ( .A(count_positive[4]), .B(N15), .Y(n47) );
  CLKNAND2X2M U69 ( .A(n50), .B(n51), .Y(n46) );
  XNOR2X1M U70 ( .A(N17), .B(count_positive[6]), .Y(n51) );
  XNOR2X1M U71 ( .A(N18), .B(count_positive[7]), .Y(n50) );
  NOR4X1M U72 ( .A(count_positive[7]), .B(n54), .C(n55), .D(n56), .Y(n53) );
  CLKXOR2X2M U73 ( .A(i_div_ratio[3]), .B(count_positive[2]), .Y(n56) );
  CLKXOR2X2M U74 ( .A(i_div_ratio[2]), .B(count_positive[1]), .Y(n55) );
  CLKXOR2X2M U75 ( .A(i_div_ratio[1]), .B(count_positive[0]), .Y(n54) );
  NOR4X1M U76 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n52) );
  CLKXOR2X2M U77 ( .A(i_div_ratio[7]), .B(count_positive[6]), .Y(n60) );
  CLKXOR2X2M U78 ( .A(i_div_ratio[6]), .B(count_positive[5]), .Y(n59) );
  CLKXOR2X2M U79 ( .A(i_div_ratio[5]), .B(count_positive[4]), .Y(n58) );
  CLKXOR2X2M U80 ( .A(i_div_ratio[4]), .B(count_positive[3]), .Y(n57) );
  NAND2BX1M U81 ( .AN(clk_div), .B(n87), .Y(N159) );
  NOR2BX1M U82 ( .AN(N117), .B(n61), .Y(N152) );
  NOR2BX1M U83 ( .AN(N116), .B(n61), .Y(N151) );
  NOR2BX1M U84 ( .AN(N115), .B(n61), .Y(N150) );
  NOR2BX1M U85 ( .AN(N114), .B(n61), .Y(N149) );
  NOR2BX1M U86 ( .AN(N113), .B(n61), .Y(N148) );
  NOR2BX1M U87 ( .AN(N112), .B(n61), .Y(N147) );
  NOR2BX1M U88 ( .AN(N111), .B(n61), .Y(N146) );
  NOR2BX1M U89 ( .AN(N110), .B(n61), .Y(N145) );
  NAND4X1M U90 ( .A(n31), .B(n63), .C(n64), .D(n65), .Y(n62) );
  NOR3X1M U91 ( .A(n66), .B(n67), .C(n68), .Y(n65) );
  XNOR2X1M U92 ( .A(N0), .B(n91), .Y(n68) );
  XNOR2X1M U93 ( .A(N15), .B(n93), .Y(n67) );
  NAND3X1M U94 ( .A(n69), .B(n43), .C(n70), .Y(n66) );
  CLKXOR2X2M U95 ( .A(n92), .B(N14), .Y(n70) );
  CLKINVX1M U96 ( .A(N19), .Y(n43) );
  CLKXOR2X2M U97 ( .A(n89), .B(N18), .Y(n69) );
  NOR3X1M U98 ( .A(n71), .B(n72), .C(n73), .Y(n64) );
  XNOR2X1M U99 ( .A(N17), .B(n95), .Y(n73) );
  XNOR2X1M U100 ( .A(N16), .B(n94), .Y(n72) );
  XNOR2X1M U101 ( .A(N12), .B(n90), .Y(n71) );
  CLKXOR2X2M U102 ( .A(n88), .B(N13), .Y(n63) );
  OA22X1M U103 ( .A0(n74), .A1(n75), .B0(n76), .B1(n77), .Y(n31) );
  NAND4X1M U104 ( .A(n88), .B(n89), .C(n90), .D(n91), .Y(n77) );
  NAND4X1M U105 ( .A(n92), .B(n93), .C(n94), .D(n95), .Y(n76) );
  NAND4X1M U106 ( .A(n89), .B(n78), .C(n79), .D(n80), .Y(n75) );
  CLKXOR2X2M U107 ( .A(n93), .B(i_div_ratio[5]), .Y(n80) );
  CLKXOR2X2M U108 ( .A(n94), .B(i_div_ratio[6]), .Y(n79) );
  CLKXOR2X2M U109 ( .A(n95), .B(i_div_ratio[7]), .Y(n78) );
  NAND4X1M U110 ( .A(n81), .B(n82), .C(n83), .D(n84), .Y(n74) );
  CLKXOR2X2M U111 ( .A(n91), .B(i_div_ratio[1]), .Y(n84) );
  CLKXOR2X2M U112 ( .A(n90), .B(i_div_ratio[2]), .Y(n83) );
  CLKXOR2X2M U113 ( .A(n88), .B(i_div_ratio[3]), .Y(n82) );
  CLKXOR2X2M U114 ( .A(n92), .B(i_div_ratio[4]), .Y(n81) );
  CLKINVX1M U115 ( .A(n29), .Y(N1) );
  OR3X1M U116 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), 
        .Y(n86) );
  OR4X1M U117 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), 
        .D(i_div_ratio[7]), .Y(n85) );
  CLKINVX1M U118 ( .A(i_div_ratio[0]), .Y(N0) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, N1, clk_div, N12, N13, N14, N15, N16, N17, N18, N19, N27, N30,
         N31, N32, N33, N34, N35, N36, N37, N39, N40, N41, N42, N43, N44, N45,
         N46, N76, N77, N78, N79, N80, N81, N82, N83, N110, N111, N112, N113,
         N114, N115, N116, N117, N145, N146, N147, N148, N149, N150, N151,
         N152, N159, N160, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97;
  wire   [7:0] count_positive;
  wire   [7:0] count_negative;

  DFFNSRHX2M \count_negative_reg[0]  ( .D(N145), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[0]), .QN(n91) );
  DFFNSRHX2M \count_negative_reg[1]  ( .D(N146), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[1]), .QN(n90) );
  DFFNSRHX2M \count_negative_reg[2]  ( .D(N147), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[2]), .QN(n88) );
  DFFNSRHX2M \count_negative_reg[3]  ( .D(N148), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[3]), .QN(n92) );
  DFFNSRHX2M \count_negative_reg[4]  ( .D(N149), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[4]), .QN(n93) );
  DFFNSRHX2M \count_negative_reg[5]  ( .D(N150), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[5]), .QN(n94) );
  DFFNSRHX2M \count_negative_reg[6]  ( .D(N151), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[6]), .QN(n95) );
  DFFNSRHX2M \count_negative_reg[7]  ( .D(N152), .CKN(i_ref_clk), .SN(1'b1), 
        .RN(n9), .Q(count_negative[7]), .QN(n89) );
  DFFNSRHX2M clk_odd_div_reg ( .D(n97), .CKN(i_ref_clk), .SN(1'b1), .RN(n9), 
        .QN(n87) );
  ClkDiv_1_DW01_inc_0 r98 ( .A(count_negative), .SUM({N117, N116, N115, N114, 
        N113, N112, N111, N110}) );
  ClkDiv_1_DW01_inc_1 r95 ( .A(count_positive), .SUM({N46, N45, N44, N43, N42, 
        N41, N40, N39}) );
  ClkDiv_1_DW01_inc_2 add_38_aco ( .A({n8, n7, n6, n5, n4, n3, n2, n1}), .SUM(
        {N37, N36, N35, N34, N33, N32, N31, N30}) );
  DFFRQX2M clk_div_reg ( .D(n96), .CK(i_ref_clk), .RN(n9), .Q(clk_div) );
  DFFRQX2M \count_positive_reg[7]  ( .D(N83), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[7]) );
  DFFRQX2M \count_positive_reg[6]  ( .D(N82), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[6]) );
  DFFRQX2M \count_positive_reg[4]  ( .D(N80), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[4]) );
  DFFRQX2M \count_positive_reg[3]  ( .D(N79), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[3]) );
  DFFRQX2M \count_positive_reg[5]  ( .D(N81), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[5]) );
  DFFRQX2M \count_positive_reg[0]  ( .D(N76), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[0]) );
  DFFRQX2M \count_positive_reg[1]  ( .D(N77), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[1]) );
  DFFRQX2M \count_positive_reg[2]  ( .D(N78), .CK(i_ref_clk), .RN(n9), .Q(
        count_positive[2]) );
  AND2X2M U7 ( .A(count_positive[0]), .B(N27), .Y(n1) );
  AND2X2M U8 ( .A(count_positive[1]), .B(N27), .Y(n2) );
  AND2X2M U9 ( .A(count_positive[2]), .B(N27), .Y(n3) );
  AND2X2M U10 ( .A(count_positive[3]), .B(N27), .Y(n4) );
  AND2X2M U11 ( .A(count_positive[4]), .B(N27), .Y(n5) );
  AND2X2M U17 ( .A(count_positive[5]), .B(N27), .Y(n6) );
  AND2X2M U18 ( .A(count_positive[6]), .B(N27), .Y(n7) );
  AND2X2M U19 ( .A(N27), .B(count_positive[7]), .Y(n8) );
  NOR2X4M U20 ( .A(n29), .B(i_div_ratio[0]), .Y(n32) );
  AOI2B1X4M U21 ( .A1N(n34), .A0(n28), .B0(n29), .Y(n33) );
  AO22XLM U22 ( .A0(N36), .A1(n32), .B0(N45), .B1(n33), .Y(N82) );
  AO22XLM U23 ( .A0(N35), .A1(n32), .B0(N44), .B1(n33), .Y(N81) );
  AO22XLM U24 ( .A0(N34), .A1(n32), .B0(N43), .B1(n33), .Y(N80) );
  AO22XLM U25 ( .A0(N33), .A1(n32), .B0(N42), .B1(n33), .Y(N79) );
  AO22XLM U26 ( .A0(N32), .A1(n32), .B0(N41), .B1(n33), .Y(N78) );
  AO22XLM U27 ( .A0(N31), .A1(n32), .B0(N40), .B1(n33), .Y(N77) );
  AO22XLM U28 ( .A0(N37), .A1(n32), .B0(N46), .B1(n33), .Y(N83) );
  AO22XLM U29 ( .A0(N30), .A1(n32), .B0(N39), .B1(n33), .Y(N76) );
  NAND3X2M U30 ( .A(n62), .B(i_div_ratio[0]), .C(N1), .Y(n61) );
  OAI21X2M U31 ( .A0(n85), .A1(n86), .B0(i_clk_en), .Y(n29) );
  INVX4M U32 ( .A(n10), .Y(n9) );
  INVX2M U33 ( .A(i_rst_n), .Y(n10) );
  CLKMX2X4M U34 ( .A(i_ref_clk), .B(N160), .S0(N1), .Y(o_div_clk) );
  NAND2X2M U35 ( .A(n52), .B(n53), .Y(N27) );
  OR2X2M U36 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n11) );
  MX2X2M U37 ( .A(N159), .B(clk_div), .S0(N0), .Y(N160) );
  OAI2BB1X1M U38 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n11), .Y(
        N12) );
  OR2X1M U39 ( .A(n11), .B(i_div_ratio[2]), .Y(n12) );
  OAI2BB1X1M U40 ( .A0N(n11), .A1N(i_div_ratio[2]), .B0(n12), .Y(N13) );
  OR2X1M U41 ( .A(n12), .B(i_div_ratio[3]), .Y(n13) );
  OAI2BB1X1M U42 ( .A0N(n12), .A1N(i_div_ratio[3]), .B0(n13), .Y(N14) );
  OR2X1M U43 ( .A(n13), .B(i_div_ratio[4]), .Y(n23) );
  OAI2BB1X1M U44 ( .A0N(n13), .A1N(i_div_ratio[4]), .B0(n23), .Y(N15) );
  OR2X1M U45 ( .A(n23), .B(i_div_ratio[5]), .Y(n24) );
  OAI2BB1X1M U46 ( .A0N(n23), .A1N(i_div_ratio[5]), .B0(n24), .Y(N16) );
  OR2X1M U47 ( .A(n24), .B(i_div_ratio[6]), .Y(n25) );
  OAI2BB1X1M U48 ( .A0N(n24), .A1N(i_div_ratio[6]), .B0(n25), .Y(N17) );
  NOR2X1M U49 ( .A(n25), .B(i_div_ratio[7]), .Y(N19) );
  AO21XLM U50 ( .A0(n25), .A1(i_div_ratio[7]), .B0(N19), .Y(N18) );
  MXI2X1M U51 ( .A(n26), .B(n27), .S0(clk_div), .Y(n96) );
  CLKNAND2X2M U52 ( .A(N1), .B(n27), .Y(n26) );
  NAND3X1M U53 ( .A(n28), .B(N27), .C(N1), .Y(n27) );
  NOR3X1M U54 ( .A(n29), .B(N0), .C(n30), .Y(n97) );
  XNOR2X1M U55 ( .A(n31), .B(n87), .Y(n30) );
  NAND4BBX1M U56 ( .AN(count_positive[3]), .BN(count_positive[4]), .C(n35), 
        .D(n36), .Y(n28) );
  NOR4X1M U57 ( .A(count_positive[2]), .B(count_positive[1]), .C(
        count_positive[0]), .D(N0), .Y(n36) );
  NOR3X1M U58 ( .A(count_positive[5]), .B(count_positive[7]), .C(
        count_positive[6]), .Y(n35) );
  AOI21X1M U59 ( .A0(n37), .A1(n38), .B0(N0), .Y(n34) );
  NOR4X1M U60 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U61 ( .A(count_positive[2]), .B(N13), .Y(n42) );
  CLKXOR2X2M U62 ( .A(count_positive[1]), .B(N12), .Y(n41) );
  CLKNAND2X2M U63 ( .A(N27), .B(n43), .Y(n40) );
  CLKXOR2X2M U64 ( .A(count_positive[0]), .B(N0), .Y(n39) );
  NOR4X1M U65 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n37) );
  CLKXOR2X2M U66 ( .A(count_positive[3]), .B(N14), .Y(n49) );
  CLKXOR2X2M U67 ( .A(count_positive[5]), .B(N16), .Y(n48) );
  CLKXOR2X2M U68 ( .A(count_positive[4]), .B(N15), .Y(n47) );
  CLKNAND2X2M U69 ( .A(n50), .B(n51), .Y(n46) );
  XNOR2X1M U70 ( .A(N17), .B(count_positive[6]), .Y(n51) );
  XNOR2X1M U71 ( .A(N18), .B(count_positive[7]), .Y(n50) );
  NOR4X1M U72 ( .A(count_positive[7]), .B(n54), .C(n55), .D(n56), .Y(n53) );
  CLKXOR2X2M U73 ( .A(i_div_ratio[3]), .B(count_positive[2]), .Y(n56) );
  CLKXOR2X2M U74 ( .A(i_div_ratio[2]), .B(count_positive[1]), .Y(n55) );
  CLKXOR2X2M U75 ( .A(i_div_ratio[1]), .B(count_positive[0]), .Y(n54) );
  NOR4X1M U76 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n52) );
  CLKXOR2X2M U77 ( .A(i_div_ratio[7]), .B(count_positive[6]), .Y(n60) );
  CLKXOR2X2M U78 ( .A(i_div_ratio[6]), .B(count_positive[5]), .Y(n59) );
  CLKXOR2X2M U79 ( .A(i_div_ratio[5]), .B(count_positive[4]), .Y(n58) );
  CLKXOR2X2M U80 ( .A(i_div_ratio[4]), .B(count_positive[3]), .Y(n57) );
  NAND2BX1M U81 ( .AN(clk_div), .B(n87), .Y(N159) );
  NOR2BX1M U82 ( .AN(N117), .B(n61), .Y(N152) );
  NOR2BX1M U83 ( .AN(N116), .B(n61), .Y(N151) );
  NOR2BX1M U84 ( .AN(N115), .B(n61), .Y(N150) );
  NOR2BX1M U85 ( .AN(N114), .B(n61), .Y(N149) );
  NOR2BX1M U86 ( .AN(N113), .B(n61), .Y(N148) );
  NOR2BX1M U87 ( .AN(N112), .B(n61), .Y(N147) );
  NOR2BX1M U88 ( .AN(N111), .B(n61), .Y(N146) );
  NOR2BX1M U89 ( .AN(N110), .B(n61), .Y(N145) );
  NAND4X1M U90 ( .A(n31), .B(n63), .C(n64), .D(n65), .Y(n62) );
  NOR3X1M U91 ( .A(n66), .B(n67), .C(n68), .Y(n65) );
  XNOR2X1M U92 ( .A(N0), .B(n91), .Y(n68) );
  XNOR2X1M U93 ( .A(N15), .B(n93), .Y(n67) );
  NAND3X1M U94 ( .A(n69), .B(n43), .C(n70), .Y(n66) );
  CLKXOR2X2M U95 ( .A(n92), .B(N14), .Y(n70) );
  CLKINVX1M U96 ( .A(N19), .Y(n43) );
  CLKXOR2X2M U97 ( .A(n89), .B(N18), .Y(n69) );
  NOR3X1M U98 ( .A(n71), .B(n72), .C(n73), .Y(n64) );
  XNOR2X1M U99 ( .A(N17), .B(n95), .Y(n73) );
  XNOR2X1M U100 ( .A(N16), .B(n94), .Y(n72) );
  XNOR2X1M U101 ( .A(N12), .B(n90), .Y(n71) );
  CLKXOR2X2M U102 ( .A(n88), .B(N13), .Y(n63) );
  OA22X1M U103 ( .A0(n74), .A1(n75), .B0(n76), .B1(n77), .Y(n31) );
  NAND4X1M U104 ( .A(n88), .B(n89), .C(n90), .D(n91), .Y(n77) );
  NAND4X1M U105 ( .A(n92), .B(n93), .C(n94), .D(n95), .Y(n76) );
  NAND4X1M U106 ( .A(n89), .B(n78), .C(n79), .D(n80), .Y(n75) );
  CLKXOR2X2M U107 ( .A(n93), .B(i_div_ratio[5]), .Y(n80) );
  CLKXOR2X2M U108 ( .A(n94), .B(i_div_ratio[6]), .Y(n79) );
  CLKXOR2X2M U109 ( .A(n95), .B(i_div_ratio[7]), .Y(n78) );
  NAND4X1M U110 ( .A(n81), .B(n82), .C(n83), .D(n84), .Y(n74) );
  CLKXOR2X2M U111 ( .A(n91), .B(i_div_ratio[1]), .Y(n84) );
  CLKXOR2X2M U112 ( .A(n90), .B(i_div_ratio[2]), .Y(n83) );
  CLKXOR2X2M U113 ( .A(n88), .B(i_div_ratio[3]), .Y(n82) );
  CLKXOR2X2M U114 ( .A(n92), .B(i_div_ratio[4]), .Y(n81) );
  CLKINVX1M U115 ( .A(n29), .Y(N1) );
  OR3X1M U116 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), 
        .Y(n86) );
  OR4X1M U117 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), 
        .D(i_div_ratio[7]), .Y(n85) );
  CLKINVX1M U118 ( .A(i_div_ratio[0]), .Y(N0) );
endmodule


module Clk_Div_Mux ( prescale, Div_Ratio );
  input [5:0] prescale;
  output [7:0] Div_Ratio;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(Div_Ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(Div_Ratio[6]) );
  INVX2M U7 ( .A(1'b1), .Y(Div_Ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(Div_Ratio[4]) );
  NOR3X4M U11 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(Div_Ratio[2]) );
  NOR3X4M U12 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(Div_Ratio[1]) );
  OAI211X4M U13 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(Div_Ratio[0]) );
  NAND2X2M U14 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U15 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n15), 
        .Y(n8) );
  NOR4X2M U16 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        Div_Ratio[3]) );
  NAND3X2M U17 ( .A(n17), .B(n16), .C(prescale[2]), .Y(n5) );
  NAND4BX1M U18 ( .AN(prescale[3]), .B(prescale[4]), .C(n15), .D(n14), .Y(n7)
         );
  NAND4BX1M U19 ( .AN(prescale[4]), .B(prescale[3]), .C(n15), .D(n14), .Y(n6)
         );
  INVX2M U20 ( .A(prescale[2]), .Y(n15) );
  INVX2M U21 ( .A(prescale[1]), .Y(n16) );
  INVX2M U22 ( .A(prescale[0]), .Y(n17) );
  INVX2M U23 ( .A(prescale[5]), .Y(n14) );
endmodule


module Final_System ( RX_IN, REF_CLK, UART_CLK, RST, TX_OUT, parity_error, 
        stop_error );
  input RX_IN, REF_CLK, UART_CLK, RST;
  output TX_OUT, parity_error, stop_error;
  wire   SYNC_RST_1, SYNC_RST_2, CLK_RX, data_valid_RX, SYNC_Valid,
         ALU_OUT_Valid, RdData_Valid, W_full, ALU_EN, CLK_EN, WrEn, RdEN,
         W_inc, CLK_ALU, R_inc, CLK_TX, R_empty, Data_Valid_TX, Busy, n1, n2,
         n3, n4;
  wire   [7:0] REG2;
  wire   [7:0] P_DATA_RX;
  wire   [7:0] SYNC_P_DATA;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RdData;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] W_data;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [7:0] REG3;
  wire   [7:0] R_data;
  wire   [7:0] Div_Ratio_RX;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  CLK_GATE CLK_GATE ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(CLK_ALU) );
  RST_SYNC_NUM_STAGES2_0 RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(
        SYNC_RST_1) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_2) );
  UART_RX UART_RX ( .RX_IN(RX_IN), .prescale(REG2[7:2]), .PAR_EN(REG2[0]), 
        .PAR_TYP(REG2[1]), .CLK(CLK_RX), .RST(n1), .P_DATA(P_DATA_RX), 
        .parity_error(parity_error), .stop_error(stop_error), .data_valid(
        data_valid_RX) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 DATA_SYNC ( .unsync_bus(P_DATA_RX), 
        .bus_enable(data_valid_RX), .CLK(REF_CLK), .RST(n3), .sync_bus(
        SYNC_P_DATA), .enable_pulse(SYNC_Valid) );
  SYS_CTRL_OPER_WIDTH8_ALU_OUT_WIDTH16_Address_width4 SYS_CTRL ( .ALU_OUT(
        ALU_OUT), .OUT_Valid(ALU_OUT_Valid), .RX_P_Data(SYNC_P_DATA), 
        .RX_D_VLD(SYNC_Valid), .RdData(RdData), .RdData_Valid(RdData_Valid), 
        .FIFO_FULL(W_full), .CLK(REF_CLK), .RST(n3), .ALU_EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), .Address(Address), .WrEN(WrEn), 
        .RdEN(RdEN), .WrData(WrData), .TX_P_DATA(W_data), .TX_D_VLD(W_inc) );
  regfile_Address_width4_Data_width8_depth16 regfile ( .WrData(WrData), 
        .Address(Address), .WrEn(WrEn), .RdEN(RdEN), .CLK(REF_CLK), .RST(n3), 
        .RdData(RdData), .RdData_Valid(RdData_Valid), .REG0(REG0), .REG1(REG1), 
        .REG2(REG2), .REG3(REG3) );
  ALU_OPER_WIDTH8_OUT_WIDTH16 ALU ( .A(REG0), .B(REG1), .EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .CLK(CLK_ALU), .RST(n3), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_Valid) );
  ASYNC_FIFO_data_width8_depth8_addr_width4_NUM_STAGES2 ASYNC_FIFO ( .W_data(
        W_data), .W_inc(W_inc), .R_inc(R_inc), .W_CLK(REF_CLK), .W_RST(n3), 
        .R_CLK(CLK_TX), .R_RST(n1), .R_data(R_data), .W_full(W_full), 
        .R_empty(R_empty) );
  UART_TX UART_TX ( .P_DATA(R_data), .Data_Valid(Data_Valid_TX), .PAR_EN(
        REG2[0]), .PAR_TYP(REG2[1]), .CLK(CLK_TX), .RST(n1), .TX_OUT(TX_OUT), 
        .Busy(Busy) );
  NOT NOT ( .X(R_empty), .Y(Data_Valid_TX) );
  PULSE_GEN PULSE_GEN ( .LVL_SIG(Busy), .RST(n1), .CLK(CLK_TX), .PULSE_SIG(
        R_inc) );
  ClkDiv_0 ClkDiv_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n1), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, Div_Ratio_RX[3:0]}), .o_div_clk(
        CLK_RX) );
  ClkDiv_1 ClkDiv_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n1), .i_clk_en(1'b1), 
        .i_div_ratio(REG3), .o_div_clk(CLK_TX) );
  Clk_Div_Mux Clk_Div_Mux ( .prescale(REG2[7:2]), .Div_Ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, Div_Ratio_RX[3:0]})
         );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(SYNC_RST_2), .Y(n2) );
  INVX2M U4 ( .A(SYNC_RST_1), .Y(n4) );
endmodule


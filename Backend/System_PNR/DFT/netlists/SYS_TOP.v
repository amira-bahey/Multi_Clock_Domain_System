/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 26 17:40:48 2024
/////////////////////////////////////////////////////////////


module SYS_CTRL_data_width8_addr4_out_width16_test_1 ( CLK, RST, ALU_OUT, 
        OUT_Valid, RdData, RdData_Valid, RX_P_DATA, RX_D_VLD, fifo_full, 
        ALU_FUN, EN, CLK_EN, Address, WrEn, RdEn, WrData, TX_P_DATA, TX_D_VLD, 
        clk_div_en, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD, fifo_full, test_si,
         test_se;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en, test_so;
  wire   n135, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354,
         N355, N356, N357, N358, N359, N360, N362, N363, N364, N365, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n70, n71, n72, n73, n74, n75, n77, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n97, n98, n99, n102, n103, n104, n25, n26, n96, n100, n101, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n122, n123, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168;
  wire   [31:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] Address_reg;
  wire   [15:0] ALU_OUT_reg;
  assign clk_div_en = 1'b1;
  assign test_so = n132;

  NAND3BX4M U116 ( .AN(n55), .B(current_state[0]), .C(n101), .Y(n98) );
  OAI2BB2X8M U140 ( .B0(n80), .B1(n57), .A0N(Address_reg[1]), .A1N(n102), .Y(
        Address[1]) );
  SDFFRQX4M \current_state_reg[3]  ( .D(next_state[3]), .SI(n168), .SE(n163), 
        .CK(CLK), .RN(n106), .Q(current_state[3]) );
  AOI221X2M U27 ( .A0(n131), .A1(n122), .B0(n104), .B1(Address_reg[0]), .C0(
        n127), .Y(n103) );
  NOR2X4M U28 ( .A(n74), .B(n130), .Y(ALU_FUN[3]) );
  NOR2X8M U29 ( .A(n80), .B(n130), .Y(ALU_FUN[1]) );
  AND3X2M U31 ( .A(n25), .B(n113), .C(n126), .Y(n26) );
  NAND3X1M U34 ( .A(RX_P_DATA[2]), .B(n72), .C(RX_P_DATA[6]), .Y(n58) );
  NAND3X1M U36 ( .A(RX_P_DATA[1]), .B(n72), .C(RX_P_DATA[5]), .Y(n65) );
  AOI211X2M U38 ( .A0(current_state[2]), .A1(n101), .B0(n129), .C0(
        current_state[3]), .Y(n70) );
  CLKBUFX6M U63 ( .A(n135), .Y(Address[2]) );
  OAI2BB2X1M U64 ( .B0(n79), .B1(n57), .A0N(Address_reg[2]), .A1N(n102), .Y(
        n135) );
  NOR2BX2M U65 ( .AN(n101), .B(n57), .Y(RdEn) );
  NOR2X6M U66 ( .A(n81), .B(n130), .Y(ALU_FUN[0]) );
  NOR2X6M U67 ( .A(n79), .B(n130), .Y(ALU_FUN[2]) );
  NAND3X2M U68 ( .A(n53), .B(n134), .C(n167), .Y(n82) );
  INVX4M U70 ( .A(n103), .Y(Address[0]) );
  NAND2X2M U71 ( .A(RX_P_DATA[3]), .B(n101), .Y(n74) );
  INVX2M U72 ( .A(RX_P_DATA[4]), .Y(n117) );
  INVX2M U73 ( .A(n75), .Y(WrEn) );
  NAND2X4M U74 ( .A(n100), .B(n77), .Y(n75) );
  INVX4M U75 ( .A(n92), .Y(n111) );
  INVX2M U76 ( .A(n77), .Y(n128) );
  INVX2M U77 ( .A(n57), .Y(n131) );
  INVX2M U78 ( .A(n100), .Y(n123) );
  INVX2M U79 ( .A(fifo_full), .Y(n112) );
  INVX4M U80 ( .A(n47), .Y(EN) );
  INVX6M U81 ( .A(n108), .Y(n107) );
  INVX6M U82 ( .A(n108), .Y(n106) );
  NAND2X4M U83 ( .A(n95), .B(n132), .Y(n57) );
  NOR2X2M U84 ( .A(n134), .B(n129), .Y(n83) );
  NAND2X2M U85 ( .A(n83), .B(n53), .Y(n50) );
  NAND3X2M U86 ( .A(n133), .B(n132), .C(n83), .Y(n56) );
  NAND3X2M U87 ( .A(n56), .B(n50), .C(n82), .Y(n77) );
  NOR2X2M U88 ( .A(n128), .B(n81), .Y(WrData[0]) );
  NOR2X2M U89 ( .A(n117), .B(n75), .Y(WrData[4]) );
  NOR2X2M U90 ( .A(n116), .B(n75), .Y(WrData[5]) );
  NOR2X2M U91 ( .A(n115), .B(n75), .Y(WrData[6]) );
  NOR2X2M U92 ( .A(n114), .B(n75), .Y(WrData[7]) );
  INVX4M U93 ( .A(n93), .Y(n110) );
  NOR2BX4M U94 ( .AN(n100), .B(n82), .Y(n102) );
  NAND2X2M U95 ( .A(n64), .B(n112), .Y(n92) );
  NAND3X2M U96 ( .A(n92), .B(n94), .C(n93), .Y(TX_D_VLD) );
  NOR2X2M U97 ( .A(n123), .B(n82), .Y(n104) );
  INVX4M U98 ( .A(n96), .Y(n100) );
  NOR2X2M U99 ( .A(n128), .B(n80), .Y(WrData[1]) );
  NOR2X2M U100 ( .A(n128), .B(n79), .Y(WrData[2]) );
  NOR2X2M U101 ( .A(n74), .B(n128), .Y(WrData[3]) );
  INVX4M U102 ( .A(n94), .Y(n109) );
  NAND2X2M U103 ( .A(n101), .B(n99), .Y(n47) );
  OAI211X2M U104 ( .A0(n129), .A1(n55), .B0(n56), .C0(n57), .Y(n54) );
  NAND3X2M U105 ( .A(n133), .B(n132), .C(n134), .Y(n55) );
  NOR2X2M U106 ( .A(n117), .B(n65), .Y(n62) );
  INVX4M U107 ( .A(n96), .Y(n101) );
  NAND2X2M U108 ( .A(n47), .B(n48), .Y(next_state[3]) );
  NAND2X2M U109 ( .A(n105), .B(n26), .Y(next_state[0]) );
  INVX2M U110 ( .A(n70), .Y(n126) );
  NOR2X2M U111 ( .A(n120), .B(n98), .Y(N362) );
  NOR2X2M U112 ( .A(n119), .B(n98), .Y(N363) );
  NOR2X2M U113 ( .A(n118), .B(n98), .Y(N364) );
  CLKINVX4M U114 ( .A(n99), .Y(n130) );
  INVX2M U115 ( .A(RST), .Y(n108) );
  NOR2X6M U117 ( .A(current_state[3]), .B(n133), .Y(n53) );
  INVX4M U118 ( .A(current_state[0]), .Y(n129) );
  INVX4M U119 ( .A(current_state[1]), .Y(n134) );
  OAI2BB2X1M U120 ( .B0(n74), .B1(n57), .A0N(Address_reg[3]), .A1N(n102), .Y(
        Address[3]) );
  OAI2BB1X2M U121 ( .A0N(RdData[0]), .A1N(n109), .B0(n91), .Y(TX_P_DATA[0]) );
  AOI22X1M U122 ( .A0(ALU_OUT_reg[8]), .A1(n110), .B0(ALU_OUT_reg[0]), .B1(
        n111), .Y(n91) );
  OAI2BB1X2M U123 ( .A0N(RdData[1]), .A1N(n109), .B0(n90), .Y(TX_P_DATA[1]) );
  AOI22X1M U124 ( .A0(ALU_OUT_reg[9]), .A1(n110), .B0(ALU_OUT_reg[1]), .B1(
        n111), .Y(n90) );
  OAI2BB1X2M U125 ( .A0N(RdData[2]), .A1N(n109), .B0(n89), .Y(TX_P_DATA[2]) );
  AOI22X1M U126 ( .A0(ALU_OUT_reg[10]), .A1(n110), .B0(ALU_OUT_reg[2]), .B1(
        n111), .Y(n89) );
  OAI2BB1X2M U127 ( .A0N(RdData[3]), .A1N(n109), .B0(n88), .Y(TX_P_DATA[3]) );
  AOI22X1M U128 ( .A0(ALU_OUT_reg[11]), .A1(n110), .B0(ALU_OUT_reg[3]), .B1(
        n111), .Y(n88) );
  OAI2BB1X2M U129 ( .A0N(RdData[4]), .A1N(n109), .B0(n87), .Y(TX_P_DATA[4]) );
  AOI22X1M U130 ( .A0(ALU_OUT_reg[12]), .A1(n110), .B0(ALU_OUT_reg[4]), .B1(
        n111), .Y(n87) );
  OAI2BB1X2M U131 ( .A0N(RdData[5]), .A1N(n109), .B0(n86), .Y(TX_P_DATA[5]) );
  AOI22X1M U132 ( .A0(ALU_OUT_reg[13]), .A1(n110), .B0(ALU_OUT_reg[5]), .B1(
        n111), .Y(n86) );
  OAI2BB1X2M U133 ( .A0N(RdData[6]), .A1N(n109), .B0(n85), .Y(TX_P_DATA[6]) );
  AOI22X1M U134 ( .A0(ALU_OUT_reg[14]), .A1(n110), .B0(ALU_OUT_reg[6]), .B1(
        n111), .Y(n85) );
  OAI2BB1X2M U135 ( .A0N(RdData[7]), .A1N(n109), .B0(n84), .Y(TX_P_DATA[7]) );
  AOI22X1M U136 ( .A0(ALU_OUT_reg[15]), .A1(n110), .B0(ALU_OUT_reg[7]), .B1(
        n111), .Y(n84) );
  INVX2M U137 ( .A(n81), .Y(n122) );
  INVX2M U138 ( .A(n50), .Y(n127) );
  INVX4M U139 ( .A(current_state[3]), .Y(n132) );
  NAND4X2M U141 ( .A(current_state[1]), .B(n53), .C(RdData_Valid), .D(n97), 
        .Y(n94) );
  NOR2X2M U142 ( .A(fifo_full), .B(current_state[0]), .Y(n97) );
  NAND2X2M U143 ( .A(RX_P_DATA[2]), .B(n100), .Y(n79) );
  NAND3X2M U144 ( .A(n95), .B(current_state[3]), .C(n112), .Y(n93) );
  INVX2M U145 ( .A(RX_D_VLD), .Y(n96) );
  INVX2M U146 ( .A(n66), .Y(n113) );
  OAI31X2M U147 ( .A0(n73), .A1(RX_P_DATA[0]), .A2(n58), .B0(n56), .Y(n66) );
  NAND3X2M U148 ( .A(n117), .B(n116), .C(n119), .Y(n73) );
  NOR4X4M U149 ( .A(current_state[0]), .B(n74), .C(n55), .D(n114), .Y(n72) );
  NAND3X2M U150 ( .A(n117), .B(n115), .C(n118), .Y(n71) );
  NAND2X2M U151 ( .A(RX_P_DATA[0]), .B(n100), .Y(n81) );
  NAND2X2M U152 ( .A(RX_P_DATA[1]), .B(n101), .Y(n80) );
  NAND3X2M U153 ( .A(n60), .B(n61), .C(n113), .Y(next_state[1]) );
  NAND3X2M U154 ( .A(n123), .B(n132), .C(current_state[1]), .Y(n60) );
  AOI211X2M U155 ( .A0(n62), .A1(n63), .B0(n131), .C0(n64), .Y(n61) );
  NOR3X2M U156 ( .A(n120), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n63) );
  INVX2M U157 ( .A(n155), .Y(n114) );
  NAND3X2M U158 ( .A(n50), .B(n51), .C(n49), .Y(next_state[2]) );
  AOI22X1M U159 ( .A0(n53), .A1(n123), .B0(n100), .B1(n54), .Y(n51) );
  BUFX10M U160 ( .A(n67), .Y(n105) );
  NAND3BX2M U161 ( .AN(n48), .B(n129), .C(OUT_Valid), .Y(n67) );
  NAND3X2M U162 ( .A(n134), .B(n168), .C(current_state[3]), .Y(n48) );
  NOR2BX2M U163 ( .AN(RX_P_DATA[3]), .B(n98), .Y(N365) );
  INVX2M U164 ( .A(RX_P_DATA[0]), .Y(n120) );
  INVX2M U165 ( .A(RX_P_DATA[2]), .Y(n118) );
  INVX2M U166 ( .A(RX_P_DATA[1]), .Y(n119) );
  INVX2M U167 ( .A(RX_P_DATA[6]), .Y(n115) );
  INVX2M U168 ( .A(RX_P_DATA[5]), .Y(n116) );
  NOR2BX2M U170 ( .AN(ALU_OUT[0]), .B(n105), .Y(N345) );
  NOR2BX2M U171 ( .AN(ALU_OUT[1]), .B(n105), .Y(N346) );
  NOR2BX2M U172 ( .AN(n153), .B(n105), .Y(N347) );
  NOR2BX2M U173 ( .AN(ALU_OUT[3]), .B(n105), .Y(N348) );
  NOR2BX2M U174 ( .AN(ALU_OUT[4]), .B(n105), .Y(N349) );
  NOR2BX2M U175 ( .AN(ALU_OUT[5]), .B(n105), .Y(N350) );
  NOR2BX2M U176 ( .AN(ALU_OUT[6]), .B(n105), .Y(N351) );
  NOR2BX2M U177 ( .AN(ALU_OUT[7]), .B(n105), .Y(N352) );
  NOR2BX2M U178 ( .AN(ALU_OUT[8]), .B(n105), .Y(N353) );
  NOR2BX2M U179 ( .AN(ALU_OUT[9]), .B(n105), .Y(N354) );
  NOR2BX2M U180 ( .AN(ALU_OUT[10]), .B(n105), .Y(N355) );
  NOR2BX2M U181 ( .AN(ALU_OUT[11]), .B(n105), .Y(N356) );
  NOR2BX2M U182 ( .AN(ALU_OUT[12]), .B(n105), .Y(N357) );
  NOR2BX2M U183 ( .AN(ALU_OUT[13]), .B(n105), .Y(N358) );
  NOR2BX2M U184 ( .AN(ALU_OUT[14]), .B(n105), .Y(N359) );
  NOR2BX2M U185 ( .AN(ALU_OUT[15]), .B(n105), .Y(N360) );
  OAI21X2M U186 ( .A0(current_state[0]), .A1(n48), .B0(n130), .Y(CLK_EN) );
  INVXLM U187 ( .A(test_se), .Y(n138) );
  INVXLM U188 ( .A(n138), .Y(n139) );
  DLY1X1M U189 ( .A(n151), .Y(n140) );
  DLY1X1M U190 ( .A(n160), .Y(n141) );
  DLY1X1M U191 ( .A(n161), .Y(n142) );
  DLY1X1M U192 ( .A(n162), .Y(n143) );
  DLY1X1M U193 ( .A(n163), .Y(n144) );
  DLY1X1M U194 ( .A(n166), .Y(n145) );
  DLY1X1M U195 ( .A(n156), .Y(n146) );
  DLY1X1M U196 ( .A(n157), .Y(n147) );
  DLY1X1M U197 ( .A(n140), .Y(n148) );
  DLY1X1M U198 ( .A(n159), .Y(n149) );
  DLY1X1M U199 ( .A(n165), .Y(n150) );
  DLY1X1M U200 ( .A(n141), .Y(n151) );
  INVXLM U201 ( .A(ALU_OUT[2]), .Y(n152) );
  INVXLM U202 ( .A(n152), .Y(n153) );
  INVXLM U203 ( .A(RX_P_DATA[7]), .Y(n154) );
  INVXLM U204 ( .A(n154), .Y(n155) );
  DLY1X1M U205 ( .A(n142), .Y(n156) );
  DLY1X1M U206 ( .A(n143), .Y(n157) );
  DLY1X1M U207 ( .A(n151), .Y(n158) );
  DLY1X1M U208 ( .A(n161), .Y(n159) );
  DLY1X1M U209 ( .A(n139), .Y(n160) );
  DLY1X1M U210 ( .A(n141), .Y(n161) );
  DLY1X1M U211 ( .A(n160), .Y(n162) );
  DLY1X1M U212 ( .A(n143), .Y(n163) );
  DLY1X1M U213 ( .A(n140), .Y(n164) );
  DLY1X1M U215 ( .A(n142), .Y(n166) );
  INVXLM U216 ( .A(n129), .Y(n167) );
  DLY1X1M U217 ( .A(n133), .Y(n168) );
  SDFFRQX1M \Address_reg_reg[2]  ( .D(N364), .SI(Address_reg[1]), .SE(n146), 
        .CK(CLK), .RN(n107), .Q(Address_reg[2]) );
  SDFFRQX1M \Address_reg_reg[1]  ( .D(N363), .SI(Address_reg[0]), .SE(n159), 
        .CK(CLK), .RN(n107), .Q(Address_reg[1]) );
  SDFFRQX1M \Address_reg_reg[0]  ( .D(N362), .SI(ALU_OUT_reg[15]), .SE(n157), 
        .CK(CLK), .RN(n107), .Q(Address_reg[0]) );
  SDFFRQX1M \Address_reg_reg[3]  ( .D(N365), .SI(Address_reg[2]), .SE(n148), 
        .CK(CLK), .RN(n107), .Q(Address_reg[3]) );
  SDFFRQX1M \ALU_OUT_reg_reg[15]  ( .D(N360), .SI(ALU_OUT_reg[14]), .SE(n145), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[15]) );
  SDFFRQX1M \ALU_OUT_reg_reg[14]  ( .D(N359), .SI(ALU_OUT_reg[13]), .SE(n164), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[14]) );
  SDFFRQX1M \ALU_OUT_reg_reg[13]  ( .D(N358), .SI(ALU_OUT_reg[12]), .SE(n156), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[13]) );
  SDFFRQX1M \ALU_OUT_reg_reg[12]  ( .D(N357), .SI(ALU_OUT_reg[11]), .SE(n144), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[12]) );
  SDFFRQX1M \ALU_OUT_reg_reg[11]  ( .D(N356), .SI(ALU_OUT_reg[10]), .SE(n164), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[11]) );
  SDFFRQX1M \ALU_OUT_reg_reg[10]  ( .D(N355), .SI(ALU_OUT_reg[9]), .SE(n144), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[10]) );
  SDFFRQX1M \ALU_OUT_reg_reg[9]  ( .D(N354), .SI(ALU_OUT_reg[8]), .SE(n145), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[9]) );
  SDFFRQX1M \ALU_OUT_reg_reg[8]  ( .D(N353), .SI(ALU_OUT_reg[7]), .SE(n150), 
        .CK(CLK), .RN(n106), .Q(ALU_OUT_reg[8]) );
  SDFFRQX1M \ALU_OUT_reg_reg[7]  ( .D(N352), .SI(ALU_OUT_reg[6]), .SE(n147), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[7]) );
  SDFFRQX1M \ALU_OUT_reg_reg[6]  ( .D(N351), .SI(ALU_OUT_reg[5]), .SE(n150), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[6]) );
  SDFFRQX1M \ALU_OUT_reg_reg[5]  ( .D(N350), .SI(ALU_OUT_reg[4]), .SE(n148), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[5]) );
  SDFFRQX1M \ALU_OUT_reg_reg[4]  ( .D(N349), .SI(ALU_OUT_reg[3]), .SE(n149), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[4]) );
  SDFFRQX1M \ALU_OUT_reg_reg[3]  ( .D(N348), .SI(ALU_OUT_reg[2]), .SE(n146), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[3]) );
  SDFFRQX1M \ALU_OUT_reg_reg[2]  ( .D(N347), .SI(ALU_OUT_reg[1]), .SE(n149), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[2]) );
  SDFFRQX1M \ALU_OUT_reg_reg[1]  ( .D(N346), .SI(ALU_OUT_reg[0]), .SE(n147), 
        .CK(CLK), .RN(n107), .Q(ALU_OUT_reg[1]) );
  SDFFRQX1M \ALU_OUT_reg_reg[0]  ( .D(N345), .SI(test_si), .SE(n158), .CK(CLK), 
        .RN(n107), .Q(ALU_OUT_reg[0]) );
  SDFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .SI(Address_reg[3]), 
        .SE(n158), .CK(CLK), .RN(n106), .Q(current_state[0]) );
  SDFFRQX4M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(n166), .CK(CLK), .RN(n106), .Q(current_state[1]) );
  SDFFSRX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n134), .SE(n165), 
        .CK(CLK), .SN(1'b1), .RN(n106), .Q(current_state[2]), .QN(n133) );
  NOR2X2M U3 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .Y(n59) );
  NAND4BX1M U4 ( .AN(n58), .B(RX_P_DATA[4]), .C(RX_P_DATA[0]), .D(n59), .Y(n49) );
  NOR3X4M U5 ( .A(current_state[0]), .B(current_state[2]), .C(n134), .Y(n95)
         );
  NOR4X4M U6 ( .A(n129), .B(n132), .C(current_state[1]), .D(current_state[2]), 
        .Y(n64) );
  BUFX2M U7 ( .A(n162), .Y(n165) );
  NOR3BX4M U8 ( .AN(n53), .B(current_state[0]), .C(current_state[1]), .Y(n99)
         );
  OR3X1M U9 ( .A(n71), .B(RX_P_DATA[0]), .C(n65), .Y(n25) );
endmodule


module Register_File_addr4_width8_test_1 ( WrData, Address, WrEn, RdEn, CLK, 
        RST, RdData, RdData_Valid, REG0, REG1, REG2, REG3, test_si, test_so, 
        test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si, test_se;
  output RdData_Valid, test_so;
  wire   N11, N12, N13, n25, n26, n27, n298, n28, n301, n29, \Reg_File[7][7] ,
         \Reg_File[7][6] , \Reg_File[7][5] , \Reg_File[7][4] ,
         \Reg_File[7][3] , \Reg_File[7][2] , \Reg_File[7][1] ,
         \Reg_File[7][0] , \Reg_File[6][7] , \Reg_File[6][6] ,
         \Reg_File[6][5] , \Reg_File[6][4] , \Reg_File[6][3] ,
         \Reg_File[6][2] , \Reg_File[6][1] , \Reg_File[6][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[4][7] ,
         \Reg_File[4][6] , \Reg_File[4][5] , \Reg_File[4][4] ,
         \Reg_File[4][3] , \Reg_File[4][2] , \Reg_File[4][1] ,
         \Reg_File[4][0] , N27, N28, N29, N30, N31, N32, N33, N34, n85, n86,
         n88, n90, n91, n92, n94, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n74, n76, n78, n80, n82, n84, n89, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n414, n415, n416, n417, n418, n419, n420, n421, n422, n1,
         n3, n5, n7, n9;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];

  SDFFSQX2M \Reg_File_reg[2][7]  ( .D(n130), .SI(REG2[6]), .SE(n379), .CK(CLK), 
        .SN(RST), .Q(n301) );
  SDFFRQX1M \RdData_reg[7]  ( .D(n105), .SI(n388), .SE(n345), .CK(CLK), .RN(
        n280), .Q(RdData[7]) );
  SDFFRQX1M \RdData_reg[6]  ( .D(n104), .SI(n387), .SE(n358), .CK(CLK), .RN(
        n280), .Q(RdData[6]) );
  SDFFRQX1M \RdData_reg[5]  ( .D(n103), .SI(n386), .SE(n358), .CK(CLK), .RN(
        n280), .Q(RdData[5]) );
  SDFFRQX1M \RdData_reg[4]  ( .D(n102), .SI(n385), .SE(n378), .CK(CLK), .RN(
        n280), .Q(RdData[4]) );
  SDFFRQX1M \RdData_reg[3]  ( .D(n101), .SI(n384), .SE(n346), .CK(CLK), .RN(
        n280), .Q(RdData[3]) );
  SDFFRQX1M \RdData_reg[2]  ( .D(n100), .SI(n383), .SE(n338), .CK(CLK), .RN(
        n280), .Q(RdData[2]) );
  SDFFRQX1M \RdData_reg[1]  ( .D(n99), .SI(n382), .SE(n357), .CK(CLK), .RN(
        n280), .Q(RdData[1]) );
  SDFFRQX1M \RdData_reg[0]  ( .D(n98), .SI(n422), .SE(n357), .CK(CLK), .RN(
        n282), .Q(RdData[0]) );
  SDFFRQX1M \Reg_File_reg[5][7]  ( .D(n154), .SI(n404), .SE(n377), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[5][7] ) );
  SDFFRQX1M \Reg_File_reg[5][6]  ( .D(n153), .SI(n403), .SE(n342), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[5][6] ) );
  SDFFRQX1M \Reg_File_reg[5][5]  ( .D(n152), .SI(n402), .SE(n342), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[5][5] ) );
  SDFFRQX1M \Reg_File_reg[5][4]  ( .D(n151), .SI(n401), .SE(n356), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[5][4] ) );
  SDFFRQX1M \Reg_File_reg[5][3]  ( .D(n150), .SI(n400), .SE(n356), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[5][3] ) );
  SDFFRQX1M \Reg_File_reg[5][2]  ( .D(n149), .SI(n399), .SE(n375), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[5][2] ) );
  SDFFRQX1M \Reg_File_reg[5][1]  ( .D(n148), .SI(n398), .SE(n341), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[5][1] ) );
  SDFFRQX1M \Reg_File_reg[5][0]  ( .D(n147), .SI(n421), .SE(n341), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[5][0] ) );
  SDFFRQX1M \Reg_File_reg[4][7]  ( .D(n146), .SI(n420), .SE(n355), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][7] ) );
  SDFFRQX1M \Reg_File_reg[4][6]  ( .D(n145), .SI(n419), .SE(n355), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][6] ) );
  SDFFRQX1M \Reg_File_reg[4][5]  ( .D(n144), .SI(n418), .SE(n373), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][5] ) );
  SDFFRQX1M \Reg_File_reg[4][4]  ( .D(n143), .SI(n417), .SE(n344), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][4] ) );
  SDFFRQX1M \Reg_File_reg[4][3]  ( .D(n142), .SI(n416), .SE(n343), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][3] ) );
  SDFFRQX1M \Reg_File_reg[4][2]  ( .D(n141), .SI(n415), .SE(n354), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][2] ) );
  SDFFRQX1M \Reg_File_reg[4][1]  ( .D(n140), .SI(n414), .SE(n354), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][1] ) );
  SDFFRQX1M \Reg_File_reg[4][0]  ( .D(n139), .SI(REG3[7]), .SE(n372), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[4][0] ) );
  SDFFRQX1M \Reg_File_reg[7][7]  ( .D(n170), .SI(n412), .SE(n333), .CK(CLK), 
        .RN(n280), .Q(\Reg_File[7][7] ) );
  SDFFRQX1M \Reg_File_reg[7][6]  ( .D(n169), .SI(n411), .SE(n338), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[7][6] ) );
  SDFFRQX1M \Reg_File_reg[7][5]  ( .D(n168), .SI(n410), .SE(n353), .CK(CLK), 
        .RN(n280), .Q(\Reg_File[7][5] ) );
  SDFFRQX1M \Reg_File_reg[7][4]  ( .D(n167), .SI(n409), .SE(n353), .CK(CLK), 
        .RN(n282), .Q(\Reg_File[7][4] ) );
  SDFFRQX1M \Reg_File_reg[7][3]  ( .D(n166), .SI(n408), .SE(n371), .CK(CLK), 
        .RN(n281), .Q(\Reg_File[7][3] ) );
  SDFFRQX1M \Reg_File_reg[7][2]  ( .D(n165), .SI(n407), .SE(n337), .CK(CLK), 
        .RN(n283), .Q(\Reg_File[7][2] ) );
  SDFFRQX1M \Reg_File_reg[7][1]  ( .D(n164), .SI(n406), .SE(n337), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[7][1] ) );
  SDFFRQX1M \Reg_File_reg[7][0]  ( .D(n163), .SI(n397), .SE(n352), .CK(CLK), 
        .RN(n280), .Q(\Reg_File[7][0] ) );
  SDFFRQX1M \Reg_File_reg[6][7]  ( .D(n162), .SI(n396), .SE(n352), .CK(CLK), 
        .RN(n280), .Q(\Reg_File[6][7] ) );
  SDFFRQX1M \Reg_File_reg[6][6]  ( .D(n161), .SI(n395), .SE(n369), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][6] ) );
  SDFFRQX1M \Reg_File_reg[6][5]  ( .D(n160), .SI(n394), .SE(n336), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][5] ) );
  SDFFRQX1M \Reg_File_reg[6][4]  ( .D(n159), .SI(n393), .SE(n336), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][4] ) );
  SDFFRQX1M \Reg_File_reg[6][3]  ( .D(n158), .SI(n392), .SE(n351), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][3] ) );
  SDFFRQX1M \Reg_File_reg[6][2]  ( .D(n157), .SI(n391), .SE(n351), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][2] ) );
  SDFFRQX1M \Reg_File_reg[6][1]  ( .D(n156), .SI(n390), .SE(n367), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][1] ) );
  SDFFRQX1M \Reg_File_reg[6][0]  ( .D(n155), .SI(n405), .SE(n340), .CK(CLK), 
        .RN(n284), .Q(\Reg_File[6][0] ) );
  SDFFRQX4M \Reg_File_reg[1][3]  ( .D(n118), .SI(REG1[2]), .SE(n339), .CK(CLK), 
        .RN(n281), .Q(REG1[3]) );
  SDFFRQX4M \Reg_File_reg[1][2]  ( .D(n117), .SI(REG1[1]), .SE(n350), .CK(CLK), 
        .RN(n281), .Q(REG1[2]) );
  SDFFRQX4M \Reg_File_reg[2][2]  ( .D(n125), .SI(n381), .SE(n350), .CK(CLK), 
        .RN(n282), .Q(REG2[2]) );
  SDFFRQX4M \Reg_File_reg[2][4]  ( .D(n127), .SI(REG2[3]), .SE(n366), .CK(CLK), 
        .RN(n282), .Q(REG2[4]) );
  SDFFRQX4M \Reg_File_reg[2][3]  ( .D(n126), .SI(REG2[2]), .SE(n335), .CK(CLK), 
        .RN(n282), .Q(REG2[3]) );
  SDFFRQX4M \Reg_File_reg[3][6]  ( .D(n137), .SI(REG3[5]), .SE(n335), .CK(CLK), 
        .RN(n283), .Q(REG3[6]) );
  SDFFSQX4M \Reg_File_reg[2][0]  ( .D(n123), .SI(REG1[7]), .SE(n360), .CK(CLK), 
        .SN(n280), .Q(REG2[0]) );
  SDFFRQX4M \Reg_File_reg[3][1]  ( .D(n132), .SI(n380), .SE(n349), .CK(CLK), 
        .RN(n282), .Q(REG3[1]) );
  SDFFRQX4M \Reg_File_reg[3][2]  ( .D(n133), .SI(REG3[1]), .SE(n349), .CK(CLK), 
        .RN(n282), .Q(REG3[2]) );
  SDFFRQX2M \Reg_File_reg[3][0]  ( .D(n131), .SI(REG2[7]), .SE(n362), .CK(CLK), 
        .RN(n282), .Q(REG3[0]) );
  SDFFRQX4M \Reg_File_reg[3][7]  ( .D(n138), .SI(REG3[6]), .SE(n364), .CK(CLK), 
        .RN(n283), .Q(REG3[7]) );
  SDFFSQX4M \Reg_File_reg[3][5]  ( .D(n136), .SI(REG3[4]), .SE(n360), .CK(CLK), 
        .SN(RST), .Q(REG3[5]) );
  SDFFRQX4M \Reg_File_reg[3][4]  ( .D(n135), .SI(REG3[3]), .SE(n333), .CK(CLK), 
        .RN(n283), .Q(REG3[4]) );
  SDFFRQX4M \Reg_File_reg[3][3]  ( .D(n134), .SI(REG3[2]), .SE(n334), .CK(CLK), 
        .RN(n282), .Q(REG3[3]) );
  SDFFRQX2M \Reg_File_reg[0][0]  ( .D(n107), .SI(n389), .SE(n348), .CK(CLK), 
        .RN(n280), .Q(REG0[0]) );
  SDFFRQX2M \Reg_File_reg[1][6]  ( .D(n121), .SI(REG1[5]), .SE(n314), .CK(CLK), 
        .RN(n282), .Q(REG1[6]) );
  SDFFRQX2M \Reg_File_reg[1][5]  ( .D(n120), .SI(REG1[4]), .SE(n310), .CK(CLK), 
        .RN(n281), .Q(n298) );
  INVX6M U77 ( .A(n74), .Y(REG1[4]) );
  INVXLM U78 ( .A(n298), .Y(n76) );
  INVX6M U79 ( .A(n76), .Y(REG1[5]) );
  INVX6M U81 ( .A(n78), .Y(REG1[0]) );
  INVX6M U83 ( .A(n80), .Y(REG2[5]) );
  INVX6M U85 ( .A(n82), .Y(REG2[6]) );
  MX4XLM U86 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n264), 
        .S1(n266), .Y(n250) );
  MX4XLM U87 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n264), 
        .S1(n266), .Y(n260) );
  MX4XLM U88 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n264), 
        .S1(n266), .Y(n252) );
  MX4XLM U89 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n264), 
        .S1(n266), .Y(n254) );
  MX4XLM U90 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n264), 
        .S1(n266), .Y(n256) );
  MX4XLM U91 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n264), 
        .S1(n266), .Y(n258) );
  MX4XLM U92 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n264), 
        .S1(n266), .Y(n248) );
  INVX6M U94 ( .A(n84), .Y(REG1[7]) );
  INVXLM U95 ( .A(n301), .Y(n89) );
  INVX6M U96 ( .A(n89), .Y(REG2[7]) );
  CLKAND2X2M U170 ( .A(N13), .B(n92), .Y(n94) );
  INVX2M U171 ( .A(N12), .Y(n292) );
  INVX2M U172 ( .A(N11), .Y(n294) );
  NOR2BX2M U173 ( .AN(n86), .B(Address[3]), .Y(n92) );
  INVX4M U174 ( .A(n279), .Y(n296) );
  NOR2BX2M U175 ( .AN(WrEn), .B(RdEn), .Y(n86) );
  INVX4M U176 ( .A(n244), .Y(n272) );
  INVX4M U177 ( .A(n244), .Y(n271) );
  INVX4M U178 ( .A(n243), .Y(n278) );
  INVX4M U179 ( .A(n243), .Y(n277) );
  CLKBUFX6M U180 ( .A(n85), .Y(n279) );
  NAND2BX2M U181 ( .AN(WrEn), .B(RdEn), .Y(n85) );
  CLKBUFX8M U182 ( .A(n285), .Y(n280) );
  CLKBUFX8M U183 ( .A(n285), .Y(n281) );
  CLKBUFX8M U184 ( .A(n285), .Y(n282) );
  CLKBUFX8M U185 ( .A(n280), .Y(n283) );
  CLKBUFX8M U186 ( .A(n285), .Y(n284) );
  AND3X2M U187 ( .A(n294), .B(n292), .C(n88), .Y(n243) );
  INVX4M U188 ( .A(n245), .Y(n276) );
  INVX4M U189 ( .A(n245), .Y(n275) );
  INVX4M U190 ( .A(n246), .Y(n270) );
  INVX4M U191 ( .A(n246), .Y(n269) );
  AND3X2M U192 ( .A(n294), .B(n292), .C(n94), .Y(n244) );
  INVX6M U193 ( .A(n265), .Y(n263) );
  INVX6M U194 ( .A(n265), .Y(n264) );
  NOR2BX4M U195 ( .AN(n92), .B(N13), .Y(n88) );
  CLKBUFX8M U196 ( .A(n90), .Y(n274) );
  NAND3X2M U197 ( .A(n88), .B(n294), .C(N12), .Y(n90) );
  CLKBUFX8M U198 ( .A(n91), .Y(n273) );
  NAND3X2M U199 ( .A(N11), .B(n88), .C(N12), .Y(n91) );
  CLKBUFX8M U200 ( .A(n96), .Y(n268) );
  NAND3X2M U201 ( .A(N12), .B(n294), .C(n94), .Y(n96) );
  CLKBUFX8M U202 ( .A(n97), .Y(n267) );
  NAND3X2M U203 ( .A(N12), .B(N11), .C(n94), .Y(n97) );
  BUFX10M U204 ( .A(N12), .Y(n266) );
  AND3X2M U205 ( .A(n88), .B(n292), .C(N11), .Y(n245) );
  AND3X2M U206 ( .A(N11), .B(n292), .C(n94), .Y(n246) );
  INVX4M U207 ( .A(WrData[0]), .Y(n295) );
  INVX4M U208 ( .A(WrData[4]), .Y(n289) );
  INVX4M U209 ( .A(WrData[5]), .Y(n288) );
  INVX4M U210 ( .A(WrData[6]), .Y(n287) );
  INVX4M U211 ( .A(WrData[7]), .Y(n286) );
  INVX2M U212 ( .A(N11), .Y(n265) );
  INVX4M U213 ( .A(WrData[1]), .Y(n293) );
  INVX4M U214 ( .A(WrData[2]), .Y(n291) );
  INVX4M U215 ( .A(WrData[3]), .Y(n290) );
  BUFX2M U216 ( .A(RST), .Y(n285) );
  OAI2BB2X1M U217 ( .B0(n295), .B1(n276), .A0N(REG1[0]), .A1N(n276), .Y(n115)
         );
  OAI2BB2X1M U218 ( .B0(n293), .B1(n275), .A0N(REG1[1]), .A1N(n275), .Y(n116)
         );
  OAI2BB2X1M U219 ( .B0(n291), .B1(n276), .A0N(REG1[2]), .A1N(n276), .Y(n117)
         );
  OAI2BB2X1M U220 ( .B0(n290), .B1(n275), .A0N(REG1[3]), .A1N(n275), .Y(n118)
         );
  OAI2BB2X1M U221 ( .B0(n289), .B1(n276), .A0N(REG1[4]), .A1N(n276), .Y(n119)
         );
  OAI2BB2X1M U222 ( .B0(n288), .B1(n275), .A0N(REG1[5]), .A1N(n275), .Y(n120)
         );
  OAI2BB2X1M U223 ( .B0(n287), .B1(n276), .A0N(REG1[6]), .A1N(n276), .Y(n121)
         );
  OAI2BB2X1M U224 ( .B0(n286), .B1(n275), .A0N(REG1[7]), .A1N(n275), .Y(n122)
         );
  OAI2BB2X1M U225 ( .B0(n293), .B1(n274), .A0N(n381), .A1N(n274), .Y(n124) );
  OAI2BB2X1M U226 ( .B0(n291), .B1(n274), .A0N(REG2[2]), .A1N(n274), .Y(n125)
         );
  OAI2BB2X1M U227 ( .B0(n290), .B1(n274), .A0N(REG2[3]), .A1N(n274), .Y(n126)
         );
  OAI2BB2X1M U228 ( .B0(n289), .B1(n274), .A0N(REG2[4]), .A1N(n274), .Y(n127)
         );
  OAI2BB2X1M U229 ( .B0(n288), .B1(n274), .A0N(REG2[5]), .A1N(n274), .Y(n128)
         );
  OAI2BB2X1M U230 ( .B0(n287), .B1(n274), .A0N(REG2[6]), .A1N(n274), .Y(n129)
         );
  OAI2BB2X1M U231 ( .B0(n295), .B1(n273), .A0N(n380), .A1N(n273), .Y(n131) );
  OAI2BB2X1M U232 ( .B0(n293), .B1(n273), .A0N(REG3[1]), .A1N(n273), .Y(n132)
         );
  OAI2BB2X1M U233 ( .B0(n291), .B1(n273), .A0N(REG3[2]), .A1N(n273), .Y(n133)
         );
  OAI2BB2X1M U234 ( .B0(n290), .B1(n273), .A0N(REG3[3]), .A1N(n273), .Y(n134)
         );
  OAI2BB2X1M U235 ( .B0(n289), .B1(n273), .A0N(REG3[4]), .A1N(n273), .Y(n135)
         );
  OAI2BB2X1M U236 ( .B0(n287), .B1(n273), .A0N(REG3[6]), .A1N(n273), .Y(n137)
         );
  OAI2BB2X1M U237 ( .B0(n286), .B1(n273), .A0N(REG3[7]), .A1N(n273), .Y(n138)
         );
  OAI2BB2X1M U238 ( .B0(n295), .B1(n272), .A0N(n414), .A1N(n272), .Y(n139) );
  OAI2BB2X1M U239 ( .B0(n293), .B1(n271), .A0N(n415), .A1N(n271), .Y(n140) );
  OAI2BB2X1M U240 ( .B0(n291), .B1(n272), .A0N(n416), .A1N(n272), .Y(n141) );
  OAI2BB2X1M U241 ( .B0(n290), .B1(n271), .A0N(n417), .A1N(n271), .Y(n142) );
  OAI2BB2X1M U242 ( .B0(n289), .B1(n272), .A0N(n418), .A1N(n272), .Y(n143) );
  OAI2BB2X1M U243 ( .B0(n288), .B1(n271), .A0N(n419), .A1N(n271), .Y(n144) );
  OAI2BB2X1M U244 ( .B0(n287), .B1(n272), .A0N(n420), .A1N(n272), .Y(n145) );
  OAI2BB2X1M U245 ( .B0(n286), .B1(n271), .A0N(n421), .A1N(n271), .Y(n146) );
  OAI2BB2X1M U246 ( .B0(n295), .B1(n270), .A0N(n398), .A1N(n270), .Y(n147) );
  OAI2BB2X1M U247 ( .B0(n293), .B1(n269), .A0N(n399), .A1N(n269), .Y(n148) );
  OAI2BB2X1M U248 ( .B0(n291), .B1(n270), .A0N(n400), .A1N(n270), .Y(n149) );
  OAI2BB2X1M U249 ( .B0(n290), .B1(n269), .A0N(n401), .A1N(n269), .Y(n150) );
  OAI2BB2X1M U250 ( .B0(n289), .B1(n270), .A0N(n402), .A1N(n270), .Y(n151) );
  OAI2BB2X1M U251 ( .B0(n288), .B1(n269), .A0N(n403), .A1N(n269), .Y(n152) );
  OAI2BB2X1M U252 ( .B0(n287), .B1(n270), .A0N(n404), .A1N(n270), .Y(n153) );
  OAI2BB2X1M U253 ( .B0(n286), .B1(n269), .A0N(n405), .A1N(n269), .Y(n154) );
  OAI2BB2X1M U254 ( .B0(n295), .B1(n268), .A0N(n390), .A1N(n268), .Y(n155) );
  OAI2BB2X1M U255 ( .B0(n293), .B1(n268), .A0N(n391), .A1N(n268), .Y(n156) );
  OAI2BB2X1M U256 ( .B0(n291), .B1(n268), .A0N(n392), .A1N(n268), .Y(n157) );
  OAI2BB2X1M U257 ( .B0(n290), .B1(n268), .A0N(n393), .A1N(n268), .Y(n158) );
  OAI2BB2X1M U258 ( .B0(n289), .B1(n268), .A0N(n394), .A1N(n268), .Y(n159) );
  OAI2BB2X1M U259 ( .B0(n288), .B1(n268), .A0N(n395), .A1N(n268), .Y(n160) );
  OAI2BB2X1M U260 ( .B0(n287), .B1(n268), .A0N(n396), .A1N(n268), .Y(n161) );
  OAI2BB2X1M U261 ( .B0(n286), .B1(n268), .A0N(n397), .A1N(n268), .Y(n162) );
  OAI2BB2X1M U262 ( .B0(n295), .B1(n267), .A0N(n406), .A1N(n267), .Y(n163) );
  OAI2BB2X1M U263 ( .B0(n293), .B1(n267), .A0N(n407), .A1N(n267), .Y(n164) );
  OAI2BB2X1M U264 ( .B0(n291), .B1(n267), .A0N(n408), .A1N(n267), .Y(n165) );
  OAI2BB2X1M U265 ( .B0(n290), .B1(n267), .A0N(n409), .A1N(n267), .Y(n166) );
  OAI2BB2X1M U266 ( .B0(n289), .B1(n267), .A0N(n410), .A1N(n267), .Y(n167) );
  OAI2BB2X1M U267 ( .B0(n288), .B1(n267), .A0N(n411), .A1N(n267), .Y(n168) );
  OAI2BB2X1M U268 ( .B0(n287), .B1(n267), .A0N(n412), .A1N(n267), .Y(n169) );
  OAI2BB2X1M U269 ( .B0(n286), .B1(n267), .A0N(test_so), .A1N(n267), .Y(n170)
         );
  OAI2BB2X1M U270 ( .B0(n295), .B1(n274), .A0N(REG2[0]), .A1N(n274), .Y(n123)
         );
  OAI2BB2X1M U271 ( .B0(n286), .B1(n274), .A0N(REG2[7]), .A1N(n274), .Y(n130)
         );
  OAI2BB2X1M U272 ( .B0(n288), .B1(n273), .A0N(REG3[5]), .A1N(n273), .Y(n136)
         );
  OAI2BB2X1M U273 ( .B0(n278), .B1(n295), .A0N(REG0[0]), .A1N(n278), .Y(n107)
         );
  OAI2BB2X1M U274 ( .B0(n277), .B1(n293), .A0N(REG0[1]), .A1N(n277), .Y(n108)
         );
  OAI2BB2X1M U275 ( .B0(n278), .B1(n291), .A0N(REG0[2]), .A1N(n278), .Y(n109)
         );
  OAI2BB2X1M U276 ( .B0(n277), .B1(n290), .A0N(REG0[3]), .A1N(n277), .Y(n110)
         );
  OAI2BB2X1M U277 ( .B0(n278), .B1(n289), .A0N(REG0[4]), .A1N(n278), .Y(n111)
         );
  OAI2BB2X1M U278 ( .B0(n277), .B1(n288), .A0N(REG0[5]), .A1N(n277), .Y(n112)
         );
  OAI2BB2X1M U279 ( .B0(n278), .B1(n287), .A0N(REG0[6]), .A1N(n278), .Y(n113)
         );
  OAI2BB2X1M U280 ( .B0(n277), .B1(n286), .A0N(REG0[7]), .A1N(n277), .Y(n114)
         );
  AO22X1M U281 ( .A0(N34), .A1(n296), .B0(n382), .B1(n279), .Y(n98) );
  MX2XLM U282 ( .A(n248), .B(n247), .S0(N13), .Y(N34) );
  MX4X1M U283 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(n263), .S1(n266), .Y(n247) );
  AO22X1M U284 ( .A0(N33), .A1(n296), .B0(n383), .B1(n279), .Y(n99) );
  MX2XLM U285 ( .A(n250), .B(n249), .S0(N13), .Y(N33) );
  MX4X1M U286 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n263), .S1(n266), .Y(n249) );
  AO22X1M U287 ( .A0(N32), .A1(n296), .B0(n384), .B1(n279), .Y(n100) );
  MX2XLM U288 ( .A(n252), .B(n251), .S0(N13), .Y(N32) );
  MX4X1M U289 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n263), .S1(n266), .Y(n251) );
  AO22X1M U290 ( .A0(N31), .A1(n296), .B0(n385), .B1(n279), .Y(n101) );
  MX2XLM U291 ( .A(n254), .B(n253), .S0(N13), .Y(N31) );
  MX4X1M U292 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n263), .S1(n266), .Y(n253) );
  AO22X1M U293 ( .A0(N30), .A1(n296), .B0(n386), .B1(n279), .Y(n102) );
  MX2XLM U294 ( .A(n256), .B(n255), .S0(N13), .Y(N30) );
  MX4X1M U295 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n263), .S1(n266), .Y(n255) );
  AO22X1M U296 ( .A0(N29), .A1(n296), .B0(n387), .B1(n279), .Y(n103) );
  MX2XLM U297 ( .A(n258), .B(n257), .S0(N13), .Y(N29) );
  MX4X1M U298 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n263), .S1(n266), .Y(n257) );
  AO22X1M U299 ( .A0(N28), .A1(n296), .B0(n388), .B1(n279), .Y(n104) );
  MX2XLM U300 ( .A(n260), .B(n259), .S0(N13), .Y(N28) );
  MX4X1M U301 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n263), .S1(n266), .Y(n259) );
  AO22X1M U302 ( .A0(N27), .A1(n296), .B0(n389), .B1(n279), .Y(n105) );
  MX2XLM U303 ( .A(n262), .B(n261), .S0(N13), .Y(N27) );
  MX4X1M U304 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n264), 
        .S1(n266), .Y(n262) );
  MX4X1M U305 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n263), .S1(n266), .Y(n261) );
  OAI2BB1X2M U306 ( .A0N(n86), .A1N(n422), .B0(n279), .Y(n106) );
  DLY1X1M U307 ( .A(test_se), .Y(n306) );
  DLY1X1M U308 ( .A(n306), .Y(n307) );
  DLY1X1M U309 ( .A(n320), .Y(n308) );
  DLY1X1M U310 ( .A(n308), .Y(n309) );
  DLY1X1M U311 ( .A(n324), .Y(n310) );
  DLY1X1M U312 ( .A(n325), .Y(n311) );
  INVXLM U313 ( .A(n306), .Y(n312) );
  INVXLM U314 ( .A(n312), .Y(n313) );
  DLY1X1M U315 ( .A(n326), .Y(n314) );
  DLY1X1M U316 ( .A(n326), .Y(n315) );
  DLY1X1M U317 ( .A(n323), .Y(n316) );
  DLY1X1M U318 ( .A(n323), .Y(n317) );
  DLY1X1M U319 ( .A(n313), .Y(n318) );
  DLY1X1M U320 ( .A(n307), .Y(n319) );
  DLY1X1M U321 ( .A(n307), .Y(n320) );
  DLY1X1M U322 ( .A(n320), .Y(n321) );
  DLY1X1M U323 ( .A(n308), .Y(n322) );
  DLY1X1M U324 ( .A(n318), .Y(n323) );
  DLY1X1M U325 ( .A(n319), .Y(n324) );
  DLY1X1M U326 ( .A(n318), .Y(n325) );
  DLY1X1M U327 ( .A(n319), .Y(n326) );
  DLY1X1M U328 ( .A(n361), .Y(n327) );
  DLY1X1M U329 ( .A(n365), .Y(n328) );
  DLY1X1M U330 ( .A(n368), .Y(n329) );
  DLY1X1M U331 ( .A(n370), .Y(n330) );
  DLY1X1M U332 ( .A(n374), .Y(n331) );
  DLY1X1M U333 ( .A(n376), .Y(n332) );
  DLY1X1M U334 ( .A(n334), .Y(n333) );
  DLY1X1M U335 ( .A(n363), .Y(n334) );
  DLY1X1M U336 ( .A(n328), .Y(n335) );
  DLY1X1M U337 ( .A(n339), .Y(n336) );
  DLY1X1M U338 ( .A(n340), .Y(n337) );
  DLY1X1M U339 ( .A(n347), .Y(n338) );
  DLY1X1M U340 ( .A(n329), .Y(n339) );
  DLY1X1M U341 ( .A(n330), .Y(n340) );
  DLY1X1M U342 ( .A(n343), .Y(n341) );
  DLY1X1M U343 ( .A(n344), .Y(n342) );
  DLY1X1M U344 ( .A(n331), .Y(n343) );
  DLY1X1M U345 ( .A(n332), .Y(n344) );
  DLY1X1M U346 ( .A(n347), .Y(n345) );
  DLY1X1M U347 ( .A(n348), .Y(n346) );
  DLY1X1M U348 ( .A(n328), .Y(n347) );
  DLY1X1M U349 ( .A(n327), .Y(n348) );
  DLY1X1M U350 ( .A(n364), .Y(n349) );
  DLY1X1M U351 ( .A(n366), .Y(n350) );
  DLY1X1M U352 ( .A(n367), .Y(n351) );
  DLY1X1M U353 ( .A(n369), .Y(n352) );
  DLY1X1M U354 ( .A(n371), .Y(n353) );
  DLY1X1M U355 ( .A(n372), .Y(n354) );
  DLY1X1M U356 ( .A(n373), .Y(n355) );
  DLY1X1M U357 ( .A(n375), .Y(n356) );
  DLY1X1M U358 ( .A(n377), .Y(n357) );
  DLY1X1M U359 ( .A(n378), .Y(n358) );
  DLY1X1M U360 ( .A(n362), .Y(n359) );
  DLY1X1M U361 ( .A(n379), .Y(n360) );
  DLY1X1M U362 ( .A(n314), .Y(n361) );
  DLY1X1M U363 ( .A(n361), .Y(n362) );
  DLY1X1M U364 ( .A(n315), .Y(n363) );
  DLY1X1M U365 ( .A(n363), .Y(n364) );
  DLY1X1M U366 ( .A(n322), .Y(n365) );
  DLY1X1M U367 ( .A(n365), .Y(n366) );
  DLY1X1M U368 ( .A(n370), .Y(n367) );
  DLY1X1M U369 ( .A(n324), .Y(n368) );
  DLY1X1M U370 ( .A(n329), .Y(n369) );
  DLY1X1M U371 ( .A(n321), .Y(n370) );
  DLY1X1M U372 ( .A(n330), .Y(n371) );
  DLY1X1M U373 ( .A(n374), .Y(n372) );
  DLY1X1M U374 ( .A(n376), .Y(n373) );
  DLY1X1M U375 ( .A(n316), .Y(n374) );
  DLY1X1M U376 ( .A(n331), .Y(n375) );
  DLY1X1M U377 ( .A(n325), .Y(n376) );
  DLY1X1M U378 ( .A(n332), .Y(n377) );
  DLY1X1M U379 ( .A(n327), .Y(n378) );
  DLY1X1M U380 ( .A(n368), .Y(n379) );
  DLY1X1M U381 ( .A(REG3[0]), .Y(n380) );
  DLY1X1M U382 ( .A(REG2[1]), .Y(n381) );
  DLY1X1M U383 ( .A(RdData[0]), .Y(n382) );
  DLY1X1M U384 ( .A(RdData[1]), .Y(n383) );
  DLY1X1M U385 ( .A(RdData[2]), .Y(n384) );
  DLY1X1M U386 ( .A(RdData[3]), .Y(n385) );
  DLY1X1M U387 ( .A(RdData[4]), .Y(n386) );
  DLY1X1M U388 ( .A(RdData[5]), .Y(n387) );
  DLY1X1M U389 ( .A(RdData[6]), .Y(n388) );
  DLY1X1M U390 ( .A(RdData[7]), .Y(n389) );
  DLY1X1M U391 ( .A(\Reg_File[6][0] ), .Y(n390) );
  DLY1X1M U392 ( .A(\Reg_File[6][1] ), .Y(n391) );
  DLY1X1M U393 ( .A(\Reg_File[6][2] ), .Y(n392) );
  DLY1X1M U394 ( .A(\Reg_File[6][3] ), .Y(n393) );
  DLY1X1M U395 ( .A(\Reg_File[6][4] ), .Y(n394) );
  DLY1X1M U396 ( .A(\Reg_File[6][5] ), .Y(n395) );
  DLY1X1M U397 ( .A(\Reg_File[6][6] ), .Y(n396) );
  DLY1X1M U398 ( .A(\Reg_File[6][7] ), .Y(n397) );
  DLY1X1M U399 ( .A(\Reg_File[5][0] ), .Y(n398) );
  DLY1X1M U400 ( .A(\Reg_File[5][1] ), .Y(n399) );
  DLY1X1M U401 ( .A(\Reg_File[5][2] ), .Y(n400) );
  DLY1X1M U402 ( .A(\Reg_File[5][3] ), .Y(n401) );
  DLY1X1M U403 ( .A(\Reg_File[5][4] ), .Y(n402) );
  DLY1X1M U404 ( .A(\Reg_File[5][5] ), .Y(n403) );
  DLY1X1M U405 ( .A(\Reg_File[5][6] ), .Y(n404) );
  DLY1X1M U406 ( .A(\Reg_File[5][7] ), .Y(n405) );
  DLY1X1M U407 ( .A(\Reg_File[7][0] ), .Y(n406) );
  DLY1X1M U408 ( .A(\Reg_File[7][1] ), .Y(n407) );
  DLY1X1M U409 ( .A(\Reg_File[7][2] ), .Y(n408) );
  DLY1X1M U410 ( .A(\Reg_File[7][3] ), .Y(n409) );
  DLY1X1M U411 ( .A(\Reg_File[7][4] ), .Y(n410) );
  DLY1X1M U412 ( .A(\Reg_File[7][5] ), .Y(n411) );
  DLY1X1M U413 ( .A(\Reg_File[7][6] ), .Y(n412) );
  DLY1X1M U414 ( .A(\Reg_File[7][7] ), .Y(test_so) );
  DLY1X1M U415 ( .A(\Reg_File[4][0] ), .Y(n414) );
  DLY1X1M U416 ( .A(\Reg_File[4][1] ), .Y(n415) );
  DLY1X1M U417 ( .A(\Reg_File[4][2] ), .Y(n416) );
  DLY1X1M U418 ( .A(\Reg_File[4][3] ), .Y(n417) );
  DLY1X1M U419 ( .A(\Reg_File[4][4] ), .Y(n418) );
  DLY1X1M U420 ( .A(\Reg_File[4][5] ), .Y(n419) );
  DLY1X1M U421 ( .A(\Reg_File[4][6] ), .Y(n420) );
  DLY1X1M U422 ( .A(\Reg_File[4][7] ), .Y(n421) );
  DLY1X1M U423 ( .A(RdData_Valid), .Y(n422) );
  SDFFSRX1M \Reg_File_reg[0][1]  ( .D(n108), .SI(REG0[0]), .SE(n316), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(n27) );
  SDFFSRX1M \Reg_File_reg[0][7]  ( .D(n114), .SI(REG0[6]), .SE(n346), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(n25) );
  SDFFSRX1M \Reg_File_reg[0][6]  ( .D(n113), .SI(REG0[5]), .SE(n315), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(n26) );
  SDFFSRX1M \Reg_File_reg[1][7]  ( .D(n122), .SI(REG1[6]), .SE(n359), .CK(CLK), 
        .SN(1'b1), .RN(n282), .QN(n84) );
  SDFFSRX1M \Reg_File_reg[1][4]  ( .D(n119), .SI(REG1[3]), .SE(n309), .CK(CLK), 
        .SN(1'b1), .RN(n281), .QN(n74) );
  SDFFSRX1M \Reg_File_reg[1][1]  ( .D(n116), .SI(REG1[0]), .SE(n311), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(n28) );
  SDFFSRX1M \Reg_File_reg[1][0]  ( .D(n115), .SI(REG0[7]), .SE(n317), .CK(CLK), 
        .SN(1'b1), .RN(n281), .QN(n78) );
  SDFFSRX1M \Reg_File_reg[2][6]  ( .D(n129), .SI(REG2[5]), .SE(n317), .CK(CLK), 
        .SN(1'b1), .RN(n282), .QN(n82) );
  SDFFSRX1M \Reg_File_reg[2][5]  ( .D(n128), .SI(REG2[4]), .SE(n322), .CK(CLK), 
        .SN(1'b1), .RN(n282), .QN(n80) );
  SDFFSRX1M \Reg_File_reg[2][1]  ( .D(n124), .SI(REG2[0]), .SE(n359), .CK(CLK), 
        .SN(1'b1), .RN(n282), .Q(n29) );
  SDFFRQX1M RdData_Valid_reg ( .D(n106), .SI(test_si), .SE(n345), .CK(CLK), 
        .RN(n280), .Q(RdData_Valid) );
  SDFFSRX2M \Reg_File_reg[0][4]  ( .D(n111), .SI(REG0[3]), .SE(n321), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(REG0[4]) );
  SDFFSRX2M \Reg_File_reg[0][5]  ( .D(n112), .SI(REG0[4]), .SE(n310), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(REG0[5]) );
  SDFFSRX2M \Reg_File_reg[0][2]  ( .D(n109), .SI(REG0[1]), .SE(n309), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(REG0[2]) );
  SDFFSRX2M \Reg_File_reg[0][3]  ( .D(n110), .SI(REG0[2]), .SE(n311), .CK(CLK), 
        .SN(1'b1), .RN(n281), .Q(REG0[3]) );
  INVXLM U3 ( .A(n28), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(REG1[1]) );
  INVXLM U5 ( .A(n27), .Y(n3) );
  INVX2M U6 ( .A(n3), .Y(REG0[1]) );
  INVXLM U7 ( .A(n26), .Y(n5) );
  INVX2M U8 ( .A(n5), .Y(REG0[6]) );
  INVXLM U9 ( .A(n25), .Y(n7) );
  INVX2M U10 ( .A(n7), .Y(REG0[7]) );
  INVXLM U11 ( .A(n29), .Y(n9) );
  INVX2M U12 ( .A(n9), .Y(REG2[1]) );
endmodule


module ALU_data_width8_out_width16_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n3), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n5), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n4), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n6), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n7), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n3), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n2), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n1), .CI(
        \u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n6), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n5), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n4), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n3), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n4), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n4), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n5), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n5), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n5), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n6), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n6), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n6), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n6), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n7), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n7), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n7), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n7), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n7), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n7), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n2), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  CLKINVX4M U1 ( .A(b[2]), .Y(n6) );
  CLKINVX3M U2 ( .A(b[3]), .Y(n5) );
  CLKINVX3M U3 ( .A(b[4]), .Y(n4) );
  CLKINVX3M U4 ( .A(b[5]), .Y(n3) );
  CLKINVX8M U5 ( .A(b[0]), .Y(n8) );
  NOR2X4M U6 ( .A(b[6]), .B(b[7]), .Y(n11) );
  AND3X4M U7 ( .A(n11), .B(n3), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  CLKAND2X4M U8 ( .A(\u_div/CryTmp[4][4] ), .B(n10), .Y(quotient[4]) );
  CLKAND2X4M U9 ( .A(\u_div/CryTmp[2][6] ), .B(n11), .Y(quotient[2]) );
  CLKAND2X4M U10 ( .A(\u_div/CryTmp[1][7] ), .B(n1), .Y(quotient[1]) );
  AND2X2M U11 ( .A(\u_div/CryTmp[5][3] ), .B(n9), .Y(quotient[5]) );
  MX2X1M U12 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X1M U15 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U16 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U17 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X1M U18 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U19 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U20 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U21 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U22 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U23 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U24 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U25 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2XLM U26 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2XLM U28 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  MX2XLM U29 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  AND3X2M U30 ( .A(n9), .B(n6), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X2M U31 ( .A(n10), .B(n5), .Y(n9) );
  OR2X2M U32 ( .A(a[7]), .B(n8), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U33 ( .A(n8), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U34 ( .A(n8), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U35 ( .A(n8), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U36 ( .A(n8), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U37 ( .A(n8), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U38 ( .A(n8), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  INVX4M U39 ( .A(b[1]), .Y(n7) );
  XNOR2X2M U40 ( .A(n8), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U41 ( .A(b[6]), .Y(n2) );
  OR2X2M U42 ( .A(a[5]), .B(n8), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U43 ( .A(a[4]), .B(n8), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U44 ( .A(a[3]), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U45 ( .A(a[2]), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U46 ( .A(a[1]), .B(n8), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U47 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U48 ( .A(a[6]), .B(n8), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U49 ( .A(b[7]), .Y(n1) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U52 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U53 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U54 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U58 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U59 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U60 ( .A(\u_div/CryTmp[7][1] ), .B(n9), .C(n7), .D(n6), .Y(
        quotient[7]) );
  AND3X1M U61 ( .A(n11), .B(n4), .C(n3), .Y(n10) );
endmodule


module ALU_data_width8_out_width16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX2M U1 ( .A(carry[8]), .Y(DIFF[8]) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U3 ( .A(A[0]), .B(n9), .Y(carry[1]) );
  INVX2M U4 ( .A(B[1]), .Y(n8) );
  INVX2M U5 ( .A(B[6]), .Y(n3) );
  INVX2M U6 ( .A(B[0]), .Y(n9) );
  INVX2M U7 ( .A(B[2]), .Y(n7) );
  INVX2M U8 ( .A(B[3]), .Y(n6) );
  INVX2M U9 ( .A(B[4]), .Y(n5) );
  INVX2M U10 ( .A(B[5]), .Y(n4) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
endmodule


module ALU_data_width8_out_width16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_data_width8_out_width16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  OAI21BX4M U2 ( .A0(n12), .A1(n13), .B0N(n14), .Y(n10) );
  AOI2BB1X2M U3 ( .A0N(n1), .A1N(n4), .B0(n3), .Y(n17) );
  NOR2X2M U4 ( .A(B[11]), .B(A[11]), .Y(n12) );
  NOR2X2M U5 ( .A(B[9]), .B(A[9]), .Y(n4) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n16) );
  NOR2X2M U7 ( .A(B[8]), .B(A[8]), .Y(n7) );
  OAI2BB1XLM U8 ( .A0N(n10), .A1N(A[12]), .B0(n11), .Y(n9) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n6) );
  CLKXOR2X2M U10 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  CLKXOR2X2M U11 ( .A(B[13]), .B(n9), .Y(SUM[13]) );
  XNOR2X1M U12 ( .A(n1), .B(n2), .Y(SUM[9]) );
  NOR2X1M U13 ( .A(n3), .B(n4), .Y(n2) );
  CLKXOR2X2M U14 ( .A(n5), .B(n6), .Y(SUM[8]) );
  NAND2BX1M U15 ( .AN(n7), .B(n8), .Y(n5) );
  OAI21X1M U16 ( .A0(A[12]), .A1(n10), .B0(B[12]), .Y(n11) );
  XOR3XLM U17 ( .A(B[12]), .B(A[12]), .C(n10), .Y(SUM[12]) );
  XNOR2X1M U18 ( .A(n13), .B(n15), .Y(SUM[11]) );
  NOR2X1M U19 ( .A(n14), .B(n12), .Y(n15) );
  AND2X1M U20 ( .A(B[11]), .B(A[11]), .Y(n14) );
  OA21X1M U21 ( .A0(n16), .A1(n17), .B0(n18), .Y(n13) );
  CLKXOR2X2M U22 ( .A(n19), .B(n17), .Y(SUM[10]) );
  AND2X1M U23 ( .A(B[9]), .B(A[9]), .Y(n3) );
  OA21X1M U24 ( .A0(n6), .A1(n7), .B0(n8), .Y(n1) );
  CLKNAND2X2M U25 ( .A(B[8]), .B(A[8]), .Y(n8) );
  NAND2BX1M U26 ( .AN(n16), .B(n18), .Y(n19) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n18) );
endmodule


module ALU_data_width8_out_width16_DW02_mult_0 ( A, B, TC, PRODUCT );
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

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n10), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n9), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n10) );
  CLKINVX4M U10 ( .A(B[2]), .Y(n22) );
  CLKINVX4M U11 ( .A(B[3]), .Y(n21) );
  CLKINVX4M U12 ( .A(B[4]), .Y(n20) );
  CLKINVX4M U13 ( .A(B[5]), .Y(n19) );
  CLKINVX4M U14 ( .A(B[0]), .Y(n24) );
  NOR2X2M U15 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U16 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U17 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U18 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  CLKXOR2X2M U19 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  NOR2X2M U20 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U21 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U22 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U23 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U24 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U25 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  NOR2X2M U26 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U27 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U28 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U29 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X2M U30 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  CLKXOR2X2M U31 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U32 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U33 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U34 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U35 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U36 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX4M U37 ( .A(A[7]), .Y(n25) );
  INVX4M U38 ( .A(A[3]), .Y(n29) );
  INVX4M U39 ( .A(A[4]), .Y(n28) );
  INVX4M U40 ( .A(A[5]), .Y(n27) );
  INVX4M U41 ( .A(A[6]), .Y(n26) );
  INVX4M U42 ( .A(A[2]), .Y(n30) );
  INVX4M U43 ( .A(A[1]), .Y(n31) );
  AND2X2M U44 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  XOR2X1M U45 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  AND2X2M U46 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U47 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U48 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U49 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U50 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  INVX4M U51 ( .A(B[6]), .Y(n18) );
  INVX4M U52 ( .A(B[1]), .Y(n23) );
  INVX4M U53 ( .A(A[0]), .Y(n32) );
  XOR2X1M U54 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U55 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U56 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U57 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U58 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U59 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  INVX4M U60 ( .A(B[7]), .Y(n17) );
  NOR2X1M U62 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
  ALU_data_width8_out_width16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n3, n14, n16, n13, n15, n12, 
        n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module ALU_data_width8_out_width16_test_1 ( A, B, ALU_FUN, CLK, RST, En, 
        ALU_OUT, ALU_Valid, Arith_Flag, Logic_Flag, CMP_Flag, Shift_Flag, 
        test_si2, test_si1, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, En, test_si2, test_si1, test_se;
  output ALU_Valid, Arith_Flag, Logic_Flag, CMP_Flag, Shift_Flag;
  wire   n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64,
         N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78,
         N79, N80, N81, N82, N83, N84, N117, N118, N119, n10, n11, n12, n13,
         n14, n16, n17, n19, n20, n22, n23, n24, n27, n29, n31, n32, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n52,
         n53, n54, n55, n56, n57, n60, n61, n62, n63, n64, n65, n68, n69, n70,
         n71, n72, n73, n76, n77, n78, n79, n80, n81, n84, n85, n86, n87, n88,
         n89, n92, n93, n94, n95, n96, n97, n98, n100, n101, n103, n106, n107,
         n108, n111, n112, n113, n114, n115, n116, n118, n119, n120, n121,
         n122, n123, n124, n127, n129, n131, n133, n135, n137, n139, n141,
         n143, n145, n147, n149, n151, n153, n155, n157, n44, n51, n58, n59,
         n66, n67, n74, n75, n82, n83, n90, n91, n99, n102, n104, n105, n109,
         n110, n117, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;

  NOR3X12M U74 ( .A(n92), .B(n59), .C(n93), .Y(n35) );
  NOR3BX4M U116 ( .AN(Arith_Flag), .B(n59), .C(n214), .Y(n98) );
  AOI22X4M U125 ( .A0(n213), .A1(n49), .B0(n207), .B1(n211), .Y(n47) );
  SDFFRQX2M ALU_Valid_reg ( .D(En), .SI(ALU_OUT[15]), .SE(n243), .CK(CLK), 
        .RN(RST), .Q(ALU_Valid) );
  SDFFRQX1M \ALU_OUT_reg[8]  ( .D(n143), .SI(ALU_OUT[7]), .SE(n245), .CK(CLK), 
        .RN(RST), .Q(n270) );
  SDFFRQX1M \ALU_OUT_reg[1]  ( .D(n129), .SI(ALU_OUT[0]), .SE(n236), .CK(CLK), 
        .RN(n169), .Q(n277) );
  SDFFRQX1M \ALU_OUT_reg[14]  ( .D(n155), .SI(ALU_OUT[13]), .SE(n239), .CK(CLK), .RN(n169), .Q(n264) );
  SDFFRQX1M \ALU_OUT_reg[12]  ( .D(n151), .SI(ALU_OUT[11]), .SE(n234), .CK(CLK), .RN(n169), .Q(n266) );
  SDFFRQX1M \ALU_OUT_reg[10]  ( .D(n147), .SI(ALU_OUT[9]), .SE(n237), .CK(CLK), 
        .RN(n169), .Q(n268) );
  SDFFRQX1M \ALU_OUT_reg[15]  ( .D(n157), .SI(ALU_OUT[14]), .SE(n238), .CK(CLK), .RN(n169), .Q(n263) );
  SDFFRQX1M \ALU_OUT_reg[13]  ( .D(n153), .SI(ALU_OUT[12]), .SE(n235), .CK(CLK), .RN(n169), .Q(n265) );
  SDFFRQX1M \ALU_OUT_reg[11]  ( .D(n149), .SI(ALU_OUT[10]), .SE(n246), .CK(CLK), .RN(n169), .Q(n267) );
  SDFFRQX1M \ALU_OUT_reg[9]  ( .D(n145), .SI(ALU_OUT[8]), .SE(n233), .CK(CLK), 
        .RN(n169), .Q(n269) );
  SDFFRQX1M \ALU_OUT_reg[5]  ( .D(n137), .SI(ALU_OUT[4]), .SE(n244), .CK(CLK), 
        .RN(n169), .Q(n273) );
  SDFFRQX1M \ALU_OUT_reg[3]  ( .D(n133), .SI(test_si2), .SE(n237), .CK(CLK), 
        .RN(RST), .Q(n275) );
  SDFFRQX1M \ALU_OUT_reg[6]  ( .D(n139), .SI(ALU_OUT[5]), .SE(n238), .CK(CLK), 
        .RN(n169), .Q(n272) );
  SDFFRQX1M \ALU_OUT_reg[4]  ( .D(n135), .SI(ALU_OUT[3]), .SE(n235), .CK(CLK), 
        .RN(n169), .Q(n274) );
  SDFFRQX1M \ALU_OUT_reg[2]  ( .D(n131), .SI(ALU_OUT[1]), .SE(n236), .CK(CLK), 
        .RN(n169), .Q(n276) );
  SDFFRQX1M \ALU_OUT_reg[7]  ( .D(n141), .SI(ALU_OUT[6]), .SE(n233), .CK(CLK), 
        .RN(n169), .Q(n271) );
  SDFFRQX1M \ALU_OUT_reg[0]  ( .D(n127), .SI(test_si1), .SE(n234), .CK(CLK), 
        .RN(RST), .Q(n278) );
  AOI222X2M U3 ( .A0(n67), .A1(n277), .B0(n206), .B1(n83), .C0(n104), .C1(n35), 
        .Y(n36) );
  XNOR2X4M U22 ( .A(n165), .B(n75), .Y(n190) );
  OAI31X2M U23 ( .A0(n183), .A1(n174), .A2(n173), .B0(n184), .Y(n176) );
  AOI211X2M U24 ( .A0(n91), .A1(n199), .B0(n180), .C0(n172), .Y(n173) );
  NAND3X2M U25 ( .A(n212), .B(n17), .C(N119), .Y(n19) );
  OAI21X2M U26 ( .A0(n193), .A1(n178), .B0(n194), .Y(N119) );
  NOR2X2M U27 ( .A(n202), .B(n110), .Y(n183) );
  NOR2X2M U28 ( .A(n198), .B(n82), .Y(n171) );
  NOR2X2M U29 ( .A(n200), .B(n104), .Y(n174) );
  AOI211X2M U30 ( .A0(n181), .A1(n197), .B0(n180), .C0(n179), .Y(n182) );
  NOR2X2M U31 ( .A(n166), .B(B[7]), .Y(n193) );
  NAND4X6M U32 ( .A(n211), .B(En), .C(n214), .D(n207), .Y(n27) );
  INVX4M U33 ( .A(ALU_FUN[3]), .Y(n207) );
  AOI22X1M U34 ( .A0(n212), .A1(n214), .B0(ALU_FUN[1]), .B1(n210), .Y(n124) );
  INVX2M U35 ( .A(ALU_FUN[0]), .Y(n214) );
  NAND4X2M U36 ( .A(ALU_FUN[3]), .B(n214), .C(n213), .D(n210), .Y(n107) );
  CLKBUFX6M U37 ( .A(B[6]), .Y(n75) );
  OR2X4M U38 ( .A(n47), .B(n59), .Y(n24) );
  INVX8M U39 ( .A(n45), .Y(n208) );
  INVX6M U40 ( .A(n27), .Y(n206) );
  BUFX4M U41 ( .A(n215), .Y(n66) );
  BUFX4M U42 ( .A(n215), .Y(n59) );
  BUFX4M U43 ( .A(n215), .Y(n67) );
  NOR2BX8M U44 ( .AN(n98), .B(n213), .Y(n14) );
  NOR2BX8M U45 ( .AN(n17), .B(n100), .Y(n41) );
  INVX4M U46 ( .A(n58), .Y(n205) );
  NAND2X4M U47 ( .A(En), .B(n50), .Y(n31) );
  NOR2BX4M U48 ( .AN(n101), .B(n207), .Y(n17) );
  OAI2BB1X2M U49 ( .A0N(n213), .A1N(n49), .B0(n108), .Y(n50) );
  NOR2X4M U50 ( .A(n107), .B(n59), .Y(n45) );
  INVX2M U51 ( .A(n92), .Y(n212) );
  INVX8M U52 ( .A(n111), .Y(n209) );
  INVX2M U53 ( .A(n100), .Y(n211) );
  NAND2X2M U54 ( .A(n212), .B(n207), .Y(n108) );
  NAND3X2M U55 ( .A(n108), .B(n107), .C(n47), .Y(Logic_Flag) );
  INVX2M U56 ( .A(En), .Y(n215) );
  INVX2M U57 ( .A(n19), .Y(n204) );
  AND2X2M U58 ( .A(Arith_Flag), .B(n101), .Y(n115) );
  NOR2X2M U59 ( .A(n124), .B(n207), .Y(CMP_Flag) );
  INVX4M U60 ( .A(n114), .Y(n203) );
  OAI221X1M U61 ( .A0(n168), .A1(n24), .B0(n208), .B1(n220), .C0(n27), .Y(n103) );
  OAI221X1M U62 ( .A0(n104), .A1(n24), .B0(n208), .B1(n225), .C0(n27), .Y(n57)
         );
  OAI221X1M U63 ( .A0(n110), .A1(n24), .B0(n208), .B1(n224), .C0(n27), .Y(n65)
         );
  OAI221X1M U64 ( .A0(n159), .A1(n24), .B0(n208), .B1(n223), .C0(n27), .Y(n73)
         );
  OAI221X1M U65 ( .A0(n162), .A1(n24), .B0(n208), .B1(n222), .C0(n27), .Y(n81)
         );
  OAI221X1M U66 ( .A0(n165), .A1(n24), .B0(n208), .B1(n221), .C0(n27), .Y(n89)
         );
  OAI221X1M U67 ( .A0(n31), .A1(n225), .B0(n104), .B1(n208), .C0(n58), .Y(n56)
         );
  OAI221X1M U68 ( .A0(n31), .A1(n224), .B0(n110), .B1(n208), .C0(n58), .Y(n64)
         );
  OAI221X1M U69 ( .A0(n31), .A1(n223), .B0(n159), .B1(n208), .C0(n58), .Y(n72)
         );
  OAI221X1M U70 ( .A0(n31), .A1(n222), .B0(n162), .B1(n208), .C0(n58), .Y(n80)
         );
  OAI221X1M U71 ( .A0(n31), .A1(n221), .B0(n165), .B1(n208), .C0(n58), .Y(n88)
         );
  OAI221X1M U72 ( .A0(n31), .A1(n220), .B0(n168), .B1(n208), .C0(n58), .Y(n106) );
  INVX4M U73 ( .A(ALU_FUN[1]), .Y(n213) );
  NOR2X4M U75 ( .A(n59), .B(ALU_FUN[0]), .Y(n101) );
  NAND2X2M U76 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n100) );
  NOR2X4M U77 ( .A(n93), .B(ALU_FUN[2]), .Y(n49) );
  NAND2X2M U78 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n93) );
  NAND2X2M U79 ( .A(ALU_FUN[2]), .B(n213), .Y(n92) );
  NAND2X2M U80 ( .A(n115), .B(ALU_FUN[1]), .Y(n111) );
  OAI32X1M U81 ( .A0(n100), .A1(ALU_FUN[0]), .A2(n207), .B0(n92), .B1(n93), 
        .Y(Shift_Flag) );
  INVX2M U82 ( .A(ALU_FUN[2]), .Y(n210) );
  NOR2X2M U83 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(Arith_Flag) );
  OAI21X2M U84 ( .A0(n91), .A1(n208), .B0(n58), .Y(n40) );
  CLKBUFX6M U85 ( .A(n32), .Y(n58) );
  NAND4X2M U86 ( .A(ALU_FUN[0]), .B(n212), .C(En), .D(n207), .Y(n32) );
  CLKBUFX6M U87 ( .A(n23), .Y(n51) );
  NOR2BX2M U88 ( .AN(n115), .B(ALU_FUN[1]), .Y(n23) );
  CLKBUFX6M U89 ( .A(n22), .Y(n44) );
  NOR2BX2M U90 ( .AN(n98), .B(ALU_FUN[1]), .Y(n22) );
  INVX6M U91 ( .A(n170), .Y(n169) );
  INVX2M U92 ( .A(n102), .Y(n225) );
  INVX2M U93 ( .A(n109), .Y(n224) );
  INVX2M U94 ( .A(n158), .Y(n223) );
  INVX2M U95 ( .A(n161), .Y(n222) );
  INVX2M U96 ( .A(n165), .Y(n221) );
  INVX2M U97 ( .A(n168), .Y(n220) );
  INVX2M U98 ( .A(n90), .Y(n197) );
  AND4X2M U99 ( .A(N117), .B(ALU_FUN[1]), .C(n17), .D(n210), .Y(n16) );
  NAND4X2M U100 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n129) );
  AOI221X2M U101 ( .A0(n74), .A1(n40), .B0(n41), .B1(n82), .C0(n42), .Y(n39)
         );
  AOI222X2M U102 ( .A0(n91), .A1(n205), .B0(En), .B1(n46), .C0(N62), .C1(n209), 
        .Y(n37) );
  AOI222X2M U103 ( .A0(N44), .A1(n51), .B0(N78), .B1(n14), .C0(N53), .C1(n44), 
        .Y(n38) );
  NAND4X2M U104 ( .A(n84), .B(n85), .C(n86), .D(n87), .Y(n139) );
  AOI222X2M U105 ( .A0(n75), .A1(n88), .B0(N49), .B1(n51), .C0(n89), .C1(n217), 
        .Y(n86) );
  AOI222X2M U106 ( .A0(N58), .A1(n44), .B0(n162), .B1(n41), .C0(N83), .C1(n14), 
        .Y(n87) );
  AOI222X2M U107 ( .A0(n206), .A1(n221), .B0(N67), .B1(n209), .C0(n165), .C1(
        n205), .Y(n85) );
  INVXLM U108 ( .A(n171), .Y(n199) );
  INVXLM U109 ( .A(n182), .Y(n201) );
  OAI31X2M U110 ( .A0(n47), .A1(n74), .A2(n91), .B0(n48), .Y(n46) );
  AOI33X2M U111 ( .A0(n49), .A1(ALU_FUN[1]), .A2(N118), .B0(n91), .B1(n50), 
        .B2(n74), .Y(n48) );
  OAI221X1M U112 ( .A0(n82), .A1(n24), .B0(n208), .B1(n226), .C0(n27), .Y(n20)
         );
  OAI221X1M U113 ( .A0(n226), .A1(n31), .B0(n82), .B1(n208), .C0(n58), .Y(n29)
         );
  OAI2BB1X2M U114 ( .A0N(N60), .A1N(n44), .B0(n24), .Y(n114) );
  INVX2M U115 ( .A(n196), .Y(N118) );
  OAI21X2M U117 ( .A0(n74), .A1(n43), .B0(n19), .Y(n42) );
  AOI21X2M U118 ( .A0(n91), .A1(n45), .B0(n206), .Y(n43) );
  INVX2M U119 ( .A(n82), .Y(n226) );
  INVX4M U120 ( .A(n83), .Y(n90) );
  INVX4M U121 ( .A(n105), .Y(n109) );
  INVX4M U122 ( .A(n117), .Y(n158) );
  INVX4M U123 ( .A(n160), .Y(n161) );
  INVX4M U124 ( .A(n163), .Y(n164) );
  INVX4M U126 ( .A(n99), .Y(n102) );
  INVX4M U127 ( .A(n83), .Y(n91) );
  INVX4M U128 ( .A(n163), .Y(n165) );
  INVX4M U129 ( .A(n166), .Y(n168) );
  INVX4M U130 ( .A(n166), .Y(n167) );
  INVX4M U131 ( .A(n105), .Y(n110) );
  INVX4M U132 ( .A(n99), .Y(n104) );
  INVX4M U133 ( .A(n117), .Y(n159) );
  INVX4M U134 ( .A(n160), .Y(n162) );
  INVX2M U135 ( .A(RST), .Y(n170) );
  INVX2M U136 ( .A(n75), .Y(n217) );
  AOI222X2M U137 ( .A0(n278), .A1(n66), .B0(n206), .B1(n226), .C0(n91), .C1(
        n35), .Y(n10) );
  AOI22X1M U138 ( .A0(n110), .A1(n35), .B0(n276), .B1(n66), .Y(n52) );
  AOI22X1M U139 ( .A0(n162), .A1(n35), .B0(n66), .B1(n274), .Y(n68) );
  AOI22X1M U140 ( .A0(n168), .A1(n35), .B0(n66), .B1(n272), .Y(n84) );
  AOI22X1M U158 ( .A0(n159), .A1(n35), .B0(n67), .B1(n275), .Y(n60) );
  AOI22X1M U159 ( .A0(n165), .A1(n35), .B0(n67), .B1(n273), .Y(n76) );
  AOI22X1M U160 ( .A0(n206), .A1(n220), .B0(n67), .B1(n271), .Y(n94) );
  OAI2B11X2M U161 ( .A1N(N69), .A0(n111), .B0(n112), .C0(n113), .Y(n143) );
  AOI32X1M U162 ( .A0(n211), .A1(n101), .A2(n168), .B0(N51), .B1(n51), .Y(n112) );
  AOI21X2M U163 ( .A0(n59), .A1(n270), .B0(n114), .Y(n113) );
  NAND4X2M U164 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n127) );
  AOI211X2M U165 ( .A0(N77), .A1(n14), .B0(n204), .C0(n16), .Y(n13) );
  AOI222X2M U166 ( .A0(n20), .A1(n198), .B0(N52), .B1(n44), .C0(N43), .C1(n51), 
        .Y(n12) );
  AOI222X2M U167 ( .A0(n205), .A1(n82), .B0(B[0]), .B1(n29), .C0(N61), .C1(
        n209), .Y(n11) );
  NAND4X2M U168 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n131) );
  AOI222X2M U169 ( .A0(B[2]), .A1(n56), .B0(N45), .B1(n51), .C0(n57), .C1(n200), .Y(n54) );
  AOI222X2M U170 ( .A0(N54), .A1(n44), .B0(n41), .B1(n91), .C0(N79), .C1(n14), 
        .Y(n55) );
  AOI222X2M U171 ( .A0(n206), .A1(n225), .B0(N63), .B1(n209), .C0(n104), .C1(
        n205), .Y(n53) );
  NAND4X2M U172 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n133) );
  AOI222X2M U173 ( .A0(B[3]), .A1(n64), .B0(N46), .B1(n51), .C0(n65), .C1(n202), .Y(n62) );
  AOI222X2M U174 ( .A0(N55), .A1(n44), .B0(n104), .B1(n41), .C0(N80), .C1(n14), 
        .Y(n63) );
  AOI222X2M U175 ( .A0(n206), .A1(n224), .B0(N64), .B1(n209), .C0(n110), .C1(
        n205), .Y(n61) );
  NAND4X2M U176 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n135) );
  AOI222X2M U177 ( .A0(B[4]), .A1(n72), .B0(N47), .B1(n51), .C0(n73), .C1(n219), .Y(n70) );
  AOI222X2M U178 ( .A0(N56), .A1(n44), .B0(n110), .B1(n41), .C0(N81), .C1(n14), 
        .Y(n71) );
  AOI222X2M U179 ( .A0(n206), .A1(n223), .B0(N65), .B1(n209), .C0(n159), .C1(
        n205), .Y(n69) );
  NAND4X2M U180 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n137) );
  AOI222X2M U181 ( .A0(B[5]), .A1(n80), .B0(N48), .B1(n51), .C0(n81), .C1(n218), .Y(n78) );
  AOI222X2M U182 ( .A0(N57), .A1(n44), .B0(n159), .B1(n41), .C0(N82), .C1(n14), 
        .Y(n79) );
  AOI222X2M U183 ( .A0(n206), .A1(n222), .B0(N66), .B1(n209), .C0(n162), .C1(
        n205), .Y(n77) );
  NAND4X2M U184 ( .A(n94), .B(n95), .C(n96), .D(n97), .Y(n141) );
  AOI22X1M U185 ( .A0(N50), .A1(n51), .B0(n103), .B1(n216), .Y(n96) );
  AOI222X2M U186 ( .A0(N59), .A1(n44), .B0(n165), .B1(n41), .C0(N84), .C1(n14), 
        .Y(n97) );
  AOI222X2M U187 ( .A0(n168), .A1(n205), .B0(B[7]), .B1(n106), .C0(N68), .C1(
        n209), .Y(n95) );
  NAND2X2M U188 ( .A(n116), .B(n203), .Y(n145) );
  AOI22X1M U189 ( .A0(N70), .A1(n209), .B0(n66), .B1(n269), .Y(n116) );
  NAND2X2M U190 ( .A(n119), .B(n203), .Y(n149) );
  AOI22X1M U191 ( .A0(N72), .A1(n209), .B0(n66), .B1(n267), .Y(n119) );
  NAND2X2M U192 ( .A(n121), .B(n203), .Y(n153) );
  AOI22X1M U193 ( .A0(N74), .A1(n209), .B0(n66), .B1(n265), .Y(n121) );
  NAND2X2M U194 ( .A(n123), .B(n203), .Y(n157) );
  AOI22X1M U195 ( .A0(N76), .A1(n209), .B0(n66), .B1(n263), .Y(n123) );
  NAND2X2M U196 ( .A(n118), .B(n203), .Y(n147) );
  AOI22X1M U197 ( .A0(N71), .A1(n209), .B0(n67), .B1(n268), .Y(n118) );
  NAND2X2M U198 ( .A(n120), .B(n203), .Y(n151) );
  AOI22X1M U199 ( .A0(N73), .A1(n209), .B0(n67), .B1(n266), .Y(n120) );
  NAND2X2M U200 ( .A(n122), .B(n203), .Y(n155) );
  AOI22X1M U201 ( .A0(N75), .A1(n209), .B0(n67), .B1(n264), .Y(n122) );
  CLKBUFX8M U202 ( .A(A[0]), .Y(n82) );
  INVX2M U203 ( .A(B[0]), .Y(n198) );
  INVX2M U204 ( .A(B[2]), .Y(n200) );
  INVX2M U205 ( .A(B[3]), .Y(n202) );
  CLKBUFX6M U206 ( .A(B[1]), .Y(n74) );
  INVX2M U207 ( .A(B[7]), .Y(n216) );
  INVX2M U208 ( .A(B[4]), .Y(n219) );
  INVX2M U209 ( .A(B[5]), .Y(n218) );
  INVX2M U210 ( .A(A[3]), .Y(n105) );
  INVX2M U211 ( .A(A[4]), .Y(n117) );
  INVX2M U212 ( .A(A[1]), .Y(n83) );
  INVX2M U213 ( .A(A[5]), .Y(n160) );
  INVX2M U214 ( .A(A[7]), .Y(n166) );
  INVX2M U215 ( .A(A[6]), .Y(n163) );
  INVX2M U216 ( .A(A[2]), .Y(n99) );
  NAND2BX1M U217 ( .AN(B[4]), .B(n159), .Y(n186) );
  NAND2BX1M U218 ( .AN(n159), .B(B[4]), .Y(n175) );
  CLKNAND2X2M U219 ( .A(n186), .B(n175), .Y(n188) );
  CLKNAND2X2M U220 ( .A(n104), .B(n200), .Y(n185) );
  NAND2BX1M U221 ( .AN(n174), .B(n185), .Y(n180) );
  AOI21X1M U222 ( .A0(n171), .A1(n197), .B0(n74), .Y(n172) );
  CLKNAND2X2M U223 ( .A(n110), .B(n202), .Y(n184) );
  NAND2BX1M U224 ( .AN(n162), .B(B[5]), .Y(n191) );
  OAI211X1M U225 ( .A0(n188), .A1(n176), .B0(n175), .C0(n191), .Y(n177) );
  NAND2BX1M U226 ( .AN(B[5]), .B(n162), .Y(n187) );
  AOI32X1M U227 ( .A0(n177), .A1(n187), .A2(n190), .B0(n75), .B1(n163), .Y(
        n178) );
  CLKNAND2X2M U228 ( .A(B[7]), .B(n220), .Y(n194) );
  CLKNAND2X2M U229 ( .A(n82), .B(n198), .Y(n181) );
  OA21X1M U230 ( .A0(n181), .A1(n197), .B0(n74), .Y(n179) );
  AOI31X1M U231 ( .A0(n201), .A1(n185), .A2(n184), .B0(n183), .Y(n189) );
  OAI2B11X1M U232 ( .A1N(n189), .A0(n188), .B0(n187), .C0(n186), .Y(n192) );
  AOI32X1M U233 ( .A0(n192), .A1(n191), .A2(n190), .B0(n165), .B1(n217), .Y(
        n195) );
  AOI2B1X1M U234 ( .A1N(n195), .A0(n194), .B0(n193), .Y(n196) );
  NOR2X1M U235 ( .A(N119), .B(N118), .Y(N117) );
  DLY1X1M U237 ( .A(n240), .Y(n231) );
  DLY1X1M U238 ( .A(n240), .Y(n232) );
  DLY1X1M U239 ( .A(n239), .Y(n233) );
  DLY1X1M U240 ( .A(n244), .Y(n234) );
  DLY1X1M U241 ( .A(n245), .Y(n235) );
  DLY1X1M U242 ( .A(n246), .Y(n236) );
  DLY1X1M U243 ( .A(n243), .Y(n237) );
  DLY1X1M U244 ( .A(n242), .Y(n238) );
  DLY1X1M U245 ( .A(n242), .Y(n239) );
  DLY1X1M U246 ( .A(test_se), .Y(n240) );
  DLY1X1M U247 ( .A(n231), .Y(n241) );
  DLY1X1M U248 ( .A(n231), .Y(n242) );
  DLY1X1M U249 ( .A(n232), .Y(n243) );
  DLY1X1M U250 ( .A(n241), .Y(n244) );
  DLY1X1M U251 ( .A(n241), .Y(n245) );
  DLY1X1M U252 ( .A(n232), .Y(n246) );
  DLY1X1M U253 ( .A(n271), .Y(ALU_OUT[7]) );
  DLY1X1M U254 ( .A(n274), .Y(ALU_OUT[4]) );
  DLY1X1M U255 ( .A(n272), .Y(ALU_OUT[6]) );
  DLY1X1M U256 ( .A(n275), .Y(ALU_OUT[3]) );
  DLY1X1M U257 ( .A(n273), .Y(ALU_OUT[5]) );
  DLY1X1M U258 ( .A(n269), .Y(ALU_OUT[9]) );
  DLY1X1M U259 ( .A(n267), .Y(ALU_OUT[11]) );
  DLY1X1M U260 ( .A(n265), .Y(ALU_OUT[13]) );
  DLY1X1M U261 ( .A(n268), .Y(ALU_OUT[10]) );
  DLY1X1M U262 ( .A(n266), .Y(ALU_OUT[12]) );
  DLY1X1M U263 ( .A(n264), .Y(ALU_OUT[14]) );
  DLY1X1M U264 ( .A(n263), .Y(ALU_OUT[15]) );
  DLY1X1M U265 ( .A(n270), .Y(ALU_OUT[8]) );
  DLY1X1M U266 ( .A(n278), .Y(ALU_OUT[0]) );
  DLY1X1M U267 ( .A(n277), .Y(ALU_OUT[1]) );
  ALU_data_width8_out_width16_DW_div_uns_0 div_30 ( .a({n167, n164, n161, n158, 
        n109, n102, n90, n82}), .b({B[7], n75, B[5:2], n74, B[0]}), .quotient(
        {N84, N83, N82, N81, N80, N79, N78, N77}) );
  ALU_data_width8_out_width16_DW01_sub_0 sub_24 ( .A({1'b0, n167, n164, n161, 
        n158, n109, n102, n90, n82}), .B({1'b0, B[7], n75, B[5:2], n74, B[0]}), 
        .CI(1'b0), .DIFF({N60, N59, N58, N57, N56, N55, N54, N53, N52}) );
  ALU_data_width8_out_width16_DW01_add_0 add_21 ( .A({1'b0, n167, n164, n161, 
        n158, n109, n102, n90, n82}), .B({1'b0, B[7], n75, B[5:2], n74, B[0]}), 
        .CI(1'b0), .SUM({N51, N50, N49, N48, N47, N46, N45, N44, N43}) );
  ALU_data_width8_out_width16_DW02_mult_0 mult_27 ( .A({n167, n164, n161, n158, 
        n109, n102, n90, n82}), .B({B[7], n75, B[5:2], n74, B[0]}), .TC(1'b0), 
        .PRODUCT({N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61}) );
  CLKBUFX2M U4 ( .A(n276), .Y(ALU_OUT[2]) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module serializer_data_width8_test_1 ( P_DATA, DATA_VALID, ser_en, CLK, RST, 
        ser_data, ser_done, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, ser_en, CLK, RST, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n15, n73, n74, n75, n76, n77, n78, n80, n82, n83,
         n84, n85, n86, n87, n88, n89, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n1, n2, n3, n4;
  wire   [3:0] counter;
  wire   [7:0] mem;

  SDFFSRX2M \counter_reg[2]  ( .D(n48), .SI(n2), .SE(n96), .CK(CLK), .SN(1'b1), 
        .RN(n73), .Q(counter[2]), .QN(n80) );
  SDFFSQX1M \counter_reg[3]  ( .D(n50), .SI(n80), .SE(n97), .CK(CLK), .SN(RST), 
        .Q(counter[3]) );
  NAND2BX4M U16 ( .AN(ser_done), .B(ser_en), .Y(n27) );
  INVX4M U18 ( .A(n2), .Y(n15) );
  NAND2X2M U44 ( .A(DATA_VALID), .B(n27), .Y(n35) );
  AOI21X2M U45 ( .A0(n4), .A1(n77), .B0(n76), .Y(n37) );
  INVX8M U46 ( .A(n35), .Y(n76) );
  INVX6M U47 ( .A(n74), .Y(n73) );
  INVX2M U48 ( .A(RST), .Y(n74) );
  INVX2M U49 ( .A(n27), .Y(n77) );
  OAI21X2M U50 ( .A0(n15), .A1(n27), .B0(n37), .Y(n36) );
  NAND2X4M U51 ( .A(n78), .B(n15), .Y(n30) );
  OAI22X1M U52 ( .A0(n37), .A1(n15), .B0(n30), .B1(n27), .Y(n49) );
  NOR3X8M U53 ( .A(counter[2]), .B(counter[3]), .C(n30), .Y(ser_done) );
  OAI32X2M U54 ( .A0(n27), .A1(counter[2]), .A2(n30), .B0(n75), .B1(n80), .Y(
        n48) );
  INVX2M U55 ( .A(n36), .Y(n75) );
  OAI2B2X1M U56 ( .A1N(n105), .A0(n38), .B0(n77), .B1(n76), .Y(n50) );
  NOR2X2M U57 ( .A(counter[2]), .B(n36), .Y(n38) );
  OAI22X1M U58 ( .A0(n78), .A1(n35), .B0(n4), .B1(n27), .Y(n51) );
  OAI2BB2X1M U59 ( .B0(n26), .B1(n27), .A0N(ser_data), .A1N(n27), .Y(n39) );
  AOI22X1M U60 ( .A0(n28), .A1(n80), .B0(counter[2]), .B1(n29), .Y(n26) );
  OAI21X2M U61 ( .A0(n30), .A1(n20), .B0(n33), .Y(n28) );
  OAI21X2M U62 ( .A0(n30), .A1(n23), .B0(n31), .Y(n29) );
  OAI2BB2X1M U63 ( .B0(n76), .B1(n25), .A0N(P_DATA[1]), .A1N(n76), .Y(n41) );
  OAI2BB2X1M U64 ( .B0(n76), .B1(n24), .A0N(P_DATA[2]), .A1N(n76), .Y(n42) );
  OAI2BB2X1M U65 ( .B0(n76), .B1(n23), .A0N(P_DATA[3]), .A1N(n76), .Y(n43) );
  OAI2BB2X1M U66 ( .B0(n76), .B1(n22), .A0N(P_DATA[5]), .A1N(n76), .Y(n45) );
  OAI2BB2X1M U67 ( .B0(n76), .B1(n21), .A0N(P_DATA[6]), .A1N(n76), .Y(n46) );
  OAI2BB2X1M U68 ( .B0(n76), .B1(n20), .A0N(P_DATA[7]), .A1N(n76), .Y(n47) );
  AO22X1M U69 ( .A0(n35), .A1(mem[0]), .B0(P_DATA[0]), .B1(n76), .Y(n40) );
  AO22X1M U70 ( .A0(n35), .A1(mem[4]), .B0(P_DATA[4]), .B1(n76), .Y(n44) );
  AOI32X1M U71 ( .A0(n4), .A1(n15), .A2(mem[4]), .B0(n2), .B1(n32), .Y(n31) );
  OAI22X1M U72 ( .A0(n78), .A1(n21), .B0(n4), .B1(n22), .Y(n32) );
  AOI32X1M U73 ( .A0(n4), .A1(n15), .A2(mem[0]), .B0(n34), .B1(n2), .Y(n33) );
  OAI22X1M U74 ( .A0(n78), .A1(n24), .B0(n4), .B1(n25), .Y(n34) );
  DLY1X1M U75 ( .A(n98), .Y(n92) );
  DLY1X1M U76 ( .A(test_se), .Y(n93) );
  DLY1X1M U77 ( .A(n98), .Y(n94) );
  DLY1X1M U78 ( .A(n102), .Y(n95) );
  DLY1X1M U79 ( .A(n100), .Y(n96) );
  DLY1X1M U80 ( .A(n100), .Y(n97) );
  DLY1X1M U81 ( .A(n93), .Y(n98) );
  DLY1X1M U82 ( .A(n93), .Y(n99) );
  DLY1X1M U83 ( .A(n99), .Y(n100) );
  DLY1X1M U84 ( .A(n92), .Y(n101) );
  DLY1X1M U85 ( .A(n99), .Y(n102) );
  DLY1X1M U86 ( .A(n92), .Y(n103) );
  DLY1X1M U88 ( .A(counter[3]), .Y(n105) );
  SDFFRX1M ser_data_reg ( .D(n39), .SI(n82), .SE(n97), .CK(CLK), .RN(n73), .Q(
        ser_data), .QN(test_so) );
  SDFFRX1M \mem_reg[4]  ( .D(n44), .SI(n86), .SE(n101), .CK(CLK), .RN(n73), 
        .Q(mem[4]), .QN(n85) );
  SDFFRX1M \mem_reg[0]  ( .D(n40), .SI(n105), .SE(n102), .CK(CLK), .RN(n73), 
        .Q(mem[0]), .QN(n89) );
  SDFFRX1M \mem_reg[6]  ( .D(n46), .SI(n84), .SE(n94), .CK(CLK), .RN(n73), .Q(
        n83), .QN(n21) );
  SDFFRX1M \mem_reg[5]  ( .D(n45), .SI(n85), .SE(n96), .CK(CLK), .RN(n73), .Q(
        n84), .QN(n22) );
  SDFFRX1M \mem_reg[2]  ( .D(n42), .SI(n88), .SE(n95), .CK(CLK), .RN(n73), .Q(
        n87), .QN(n24) );
  SDFFRX1M \mem_reg[1]  ( .D(n41), .SI(n89), .SE(n103), .CK(CLK), .RN(n73), 
        .Q(n88), .QN(n25) );
  SDFFRX1M \mem_reg[7]  ( .D(n47), .SI(n83), .SE(n95), .CK(CLK), .RN(RST), .Q(
        n82), .QN(n20) );
  SDFFRX1M \mem_reg[3]  ( .D(n43), .SI(n87), .SE(n103), .CK(CLK), .RN(n73), 
        .Q(n86), .QN(n23) );
  SDFFRX1M \counter_reg[1]  ( .D(n49), .SI(n4), .SE(n101), .CK(CLK), .RN(n73), 
        .Q(n104) );
  SDFFRX2M \counter_reg[0]  ( .D(n51), .SI(test_si), .SE(n94), .CK(CLK), .RN(
        RST), .Q(counter[0]), .QN(n78) );
  INVXLM U3 ( .A(n104), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  INVXLM U5 ( .A(counter[0]), .Y(n3) );
  INVX4M U6 ( .A(n3), .Y(n4) );
endmodule


module fsm_test_1 ( DATA_VALID, PAR_EN, ser_done, CLK, RST, ser_en, busy, 
        mux_sel, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output ser_en, busy, test_so;
  wire   busy_c, n9, n10, n11, n12, n13, n14, n15, n16, n6, n23, n24, n25, n28,
         n31, n32, n33, n34, n35, n1;
  wire   [31:0] current_state;
  wire   [2:0] next_state;

  SDFFSRX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n28), .SE(n32), 
        .CK(CLK), .SN(1'b1), .RN(n23), .Q(current_state[0]), .QN(n24) );
  INVX2M U8 ( .A(test_so), .Y(n6) );
  NAND2X2M U17 ( .A(current_state[1]), .B(n6), .Y(n12) );
  BUFX2M U18 ( .A(RST), .Y(n23) );
  NAND2X2M U19 ( .A(n9), .B(n10), .Y(ser_en) );
  NAND2X2M U20 ( .A(mux_sel[1]), .B(n24), .Y(n10) );
  INVX2M U21 ( .A(n12), .Y(mux_sel[1]) );
  OAI21X2M U22 ( .A0(n13), .A1(n10), .B0(n9), .Y(next_state[1]) );
  AND2X2M U23 ( .A(n14), .B(ser_done), .Y(n13) );
  OAI21X2M U24 ( .A0(n12), .A1(n24), .B0(n16), .Y(mux_sel[0]) );
  NAND3X2M U25 ( .A(n6), .B(current_state[0]), .C(n25), .Y(n9) );
  OAI32X2M U26 ( .A0(n15), .A1(current_state[1]), .A2(current_state[0]), .B0(
        n10), .B1(n14), .Y(next_state[0]) );
  NAND2X2M U27 ( .A(DATA_VALID), .B(n6), .Y(n15) );
  NAND2X2M U28 ( .A(PAR_EN), .B(ser_done), .Y(n14) );
  NOR2X2M U29 ( .A(n11), .B(n12), .Y(next_state[2]) );
  AOI2B1X1M U30 ( .A1N(PAR_EN), .A0(ser_done), .B0(current_state[0]), .Y(n11)
         );
  OAI211X2M U31 ( .A0(test_so), .A1(n24), .B0(n16), .C0(n12), .Y(busy_c) );
  NAND3X2M U32 ( .A(n24), .B(n35), .C(test_so), .Y(n16) );
  DLY1X1M U33 ( .A(test_se), .Y(n31) );
  DLY1X1M U34 ( .A(n31), .Y(n32) );
  DLY1X1M U35 ( .A(n31), .Y(n33) );
  DLY1X1M U37 ( .A(n25), .Y(n35) );
  SDFFRX1M busy_reg ( .D(busy_c), .SI(test_si), .SE(n33), .CK(CLK), .RN(RST), 
        .Q(busy), .QN(n28) );
  SDFFRX1M \current_state_reg[2]  ( .D(next_state[2]), .SI(n35), .SE(n32), 
        .CK(CLK), .RN(n23), .Q(n34) );
  SDFFRX1M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(n33), .CK(CLK), .RN(n23), .Q(current_state[1]), .QN(n25) );
  INVXLM U3 ( .A(n34), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(test_so) );
endmodule


module parity_calc_data_width8_test_1 ( P_DATA, DATA_VALID, PAR_TYP, CLK, RST, 
        PAR_BIT, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_TYP, CLK, RST, test_si, test_se;
  output PAR_BIT, test_so;
  wire   n3, n4, n5, n6, n7, n8, n10;

  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U8 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n7) );
  OAI2BB2X1M U9 ( .B0(n3), .B1(n10), .A0N(PAR_BIT), .A1N(n10), .Y(n8) );
  INVX2M U10 ( .A(DATA_VALID), .Y(n10) );
  XOR3XLM U11 ( .A(n4), .B(PAR_TYP), .C(n5), .Y(n3) );
  XOR3XLM U12 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n5) );
  SDFFRX1M PAR_BIT_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(PAR_BIT), .QN(test_so) );
endmodule


module UART_TX_width8_test_1 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, 
        TX_OUT, busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_en, ser_done, ser_data, par_bit, mux_out, n3, n4, n5, n8, n9, n10,
         n12, n13, n14, n17, n18, n19, n1, TX_OUT;
  wire   [1:0] mux_sel;
  assign test_so = TX_OUT;

  INVX4M U5 ( .A(n9), .Y(n8) );
  INVX2M U8 ( .A(RST), .Y(n9) );
  OAI21X2M U9 ( .A0(n3), .A1(n10), .B0(n4), .Y(mux_out) );
  NOR2BX2M U10 ( .AN(mux_sel[1]), .B(par_bit), .Y(n3) );
  NAND3X2M U11 ( .A(mux_sel[1]), .B(n10), .C(ser_data), .Y(n4) );
  INVX2M U12 ( .A(mux_sel[0]), .Y(n10) );
  DLY1X1M U13 ( .A(test_se), .Y(n17) );
  DLY1X1M U14 ( .A(n17), .Y(n18) );
  DLY1X1M U15 ( .A(n17), .Y(n19) );
  serializer_data_width8_test_1 S ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), 
        .ser_en(ser_en), .CLK(CLK), .RST(n8), .ser_data(ser_data), .ser_done(
        ser_done), .test_si(n13), .test_so(n12), .test_se(n19) );
  fsm_test_1 F ( .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .CLK(CLK), .RST(n8), .ser_en(ser_en), .busy(busy), .mux_sel(mux_sel), 
        .test_si(test_si), .test_so(n14), .test_se(n18) );
  parity_calc_data_width8_test_1 P ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), 
        .PAR_TYP(PAR_TYP), .CLK(CLK), .RST(n8), .PAR_BIT(par_bit), .test_si(
        n14), .test_so(n13), .test_se(n18) );
  SDFFRX1M TX_OUT_reg ( .D(mux_out), .SI(n12), .SE(n19), .CK(CLK), .RN(n8), 
        .Q(n5) );
  INVXLM U3 ( .A(n5), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(TX_OUT) );
endmodule


module FSM_test_1 ( RX_IN, CLK, RST, PAR_EN, BIT_CNT, EDGE_CNT, PRESCALE, 
        PAR_ERR, STRT_GLITCH, STP_ERR, ENABLE, DATA_SAMP_EN, DESER_EN, 
        DATA_VALID, PAR_CHK_EN, STRT_CHK_EN, STP_CHK_EN, test_so, test_se );
  input [3:0] BIT_CNT;
  input [4:0] EDGE_CNT;
  input [5:0] PRESCALE;
  input RX_IN, CLK, RST, PAR_EN, PAR_ERR, STRT_GLITCH, STP_ERR, test_se;
  output ENABLE, DATA_SAMP_EN, DESER_EN, DATA_VALID, PAR_CHK_EN, STRT_CHK_EN,
         STP_CHK_EN, test_so;
  wire   N164, N165, N166, N167, N168, N169, N170, n19, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n36, n37, n1, n2,
         n6, n7, n8, n12, n13, n14, n15, n16, n17, n18, n20, n35, n38, n39,
         n40, n41, n42, n43, n45, n46, n48, n49, n50, n51, n3, n5, n9;
  wire   [31:0] current_state;
  wire   [2:0] next_state;
  assign DATA_SAMP_EN = 1'b1;

  NOR3BX4M U49 ( .AN(n31), .B(STRT_GLITCH), .C(BIT_CNT[3]), .Y(n29) );
  OR4X2M U6 ( .A(n38), .B(n35), .C(n20), .D(n18), .Y(n1) );
  AND3X2M U7 ( .A(n40), .B(n41), .C(n42), .Y(n2) );
  NOR3X8M U8 ( .A(n1), .B(current_state[0]), .C(n28), .Y(DESER_EN) );
  NOR2X4M U9 ( .A(n9), .B(current_state[2]), .Y(n34) );
  NOR3BX2M U10 ( .AN(STP_CHK_EN), .B(n49), .C(PAR_ERR), .Y(DATA_VALID) );
  NOR2X2M U11 ( .A(PAR_ERR), .B(BIT_CNT[2]), .Y(n37) );
  NAND3BX2M U12 ( .AN(n9), .B(n43), .C(current_state[2]), .Y(n24) );
  NOR3X6M U13 ( .A(BIT_CNT[1]), .B(BIT_CNT[2]), .C(n40), .Y(n31) );
  NOR3X2M U14 ( .A(BIT_CNT[2]), .B(n49), .C(BIT_CNT[3]), .Y(n23) );
  NOR4X2M U15 ( .A(n50), .B(RX_IN), .C(BIT_CNT[3]), .D(BIT_CNT[2]), .Y(n36) );
  AOI32X2M U16 ( .A0(PAR_EN), .A1(BIT_CNT[3]), .A2(n31), .B0(n26), .B1(
        current_state[0]), .Y(n30) );
  NAND4X2M U17 ( .A(BIT_CNT[3]), .B(BIT_CNT[1]), .C(n37), .D(n40), .Y(n26) );
  NAND3BX1M U18 ( .AN(PAR_EN), .B(BIT_CNT[3]), .C(n31), .Y(n25) );
  NOR2BX2M U22 ( .AN(EDGE_CNT[0]), .B(N164), .Y(n14) );
  NOR2BX2M U23 ( .AN(N164), .B(EDGE_CNT[0]), .Y(n15) );
  NOR2X2M U24 ( .A(n13), .B(PRESCALE[5]), .Y(N170) );
  NAND2BX2M U25 ( .AN(PRESCALE[1]), .B(N164), .Y(n7) );
  OR2X2M U26 ( .A(n12), .B(PRESCALE[4]), .Y(n13) );
  OR2X2M U27 ( .A(n7), .B(PRESCALE[2]), .Y(n8) );
  OR2X2M U28 ( .A(n8), .B(PRESCALE[3]), .Y(n12) );
  OAI2BB1XLM U29 ( .A0N(n12), .A1N(PRESCALE[4]), .B0(n13), .Y(N168) );
  OAI2BB1XLM U30 ( .A0N(n8), .A1N(PRESCALE[3]), .B0(n12), .Y(N167) );
  OAI2BB1XLM U31 ( .A0N(n7), .A1N(PRESCALE[2]), .B0(n8), .Y(N166) );
  NAND2X2M U32 ( .A(n9), .B(test_so), .Y(n28) );
  INVX2M U33 ( .A(BIT_CNT[0]), .Y(n40) );
  BUFX2M U34 ( .A(RST), .Y(n6) );
  NOR3X2M U35 ( .A(n1), .B(n43), .C(n28), .Y(PAR_CHK_EN) );
  NOR2X2M U36 ( .A(n24), .B(n1), .Y(STP_CHK_EN) );
  NAND3X2M U37 ( .A(n34), .B(n43), .C(RX_IN), .Y(ENABLE) );
  INVX2M U38 ( .A(n24), .Y(n42) );
  OAI2BB2X1M U39 ( .B0(n27), .B1(n28), .A0N(n29), .A1N(STRT_CHK_EN), .Y(
        next_state[1]) );
  AOI21BX2M U40 ( .A0(n25), .A1(n43), .B0N(n30), .Y(n27) );
  INVX2M U41 ( .A(n32), .Y(STRT_CHK_EN) );
  INVX2M U42 ( .A(PRESCALE[0]), .Y(N164) );
  OAI221X1M U43 ( .A0(n30), .A1(n28), .B0(n29), .B1(n32), .C0(n33), .Y(
        next_state[0]) );
  AOI32X1M U44 ( .A0(n46), .A1(n43), .A2(n34), .B0(n2), .B1(n36), .Y(n33) );
  INVX2M U45 ( .A(RX_IN), .Y(n46) );
  INVX4M U46 ( .A(current_state[0]), .Y(n43) );
  INVX2M U48 ( .A(n19), .Y(n39) );
  AOI31X2M U50 ( .A0(n21), .A1(test_so), .A2(n51), .B0(n22), .Y(n19) );
  AOI31X2M U51 ( .A0(n40), .A1(n41), .A2(n23), .B0(n24), .Y(n22) );
  OAI22X1M U52 ( .A0(current_state[0]), .A1(n25), .B0(n26), .B1(n43), .Y(n21)
         );
  INVX2M U53 ( .A(BIT_CNT[1]), .Y(n41) );
  NAND2X2M U54 ( .A(n34), .B(current_state[0]), .Y(n32) );
  OAI2BB1X1M U55 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n7), .Y(N165) );
  AO21XLM U56 ( .A0(n13), .A1(PRESCALE[5]), .B0(N170), .Y(N169) );
  OAI2B2X1M U57 ( .A1N(N165), .A0(n14), .B0(EDGE_CNT[1]), .B1(n14), .Y(n17) );
  OAI2B2X1M U58 ( .A1N(EDGE_CNT[1]), .A0(n15), .B0(N165), .B1(n15), .Y(n16) );
  NAND4BBX1M U59 ( .AN(N170), .BN(N169), .C(n17), .D(n16), .Y(n38) );
  CLKXOR2X2M U60 ( .A(N168), .B(EDGE_CNT[4]), .Y(n35) );
  CLKXOR2X2M U61 ( .A(N166), .B(EDGE_CNT[2]), .Y(n20) );
  CLKXOR2X2M U62 ( .A(N167), .B(EDGE_CNT[3]), .Y(n18) );
  DLY1X1M U63 ( .A(test_se), .Y(n48) );
  DLY1X1M U64 ( .A(n50), .Y(n49) );
  DLY1X1M U65 ( .A(STP_ERR), .Y(n50) );
  DLY1X1M U66 ( .A(n9), .Y(n51) );
  SDFFSRX1M \current_state_reg[1]  ( .D(next_state[1]), .SI(n43), .SE(n48), 
        .CK(CLK), .SN(1'b1), .RN(n6), .Q(current_state[1]) );
  SDFFSRX1M \current_state_reg[2]  ( .D(n39), .SI(n51), .SE(n48), .CK(CLK), 
        .SN(1'b1), .RN(n6), .Q(current_state[2]), .QN(n45) );
  SDFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .SI(EDGE_CNT[4]), .SE(
        test_se), .CK(CLK), .RN(n6), .Q(current_state[0]) );
  INVXLM U3 ( .A(n45), .Y(n3) );
  INVX2M U4 ( .A(n3), .Y(test_so) );
  INVXLM U5 ( .A(current_state[1]), .Y(n5) );
  INVX2M U19 ( .A(n5), .Y(n9) );
endmodule


module data_sampling_test_1 ( CLK, RST, RX_IN, PRESCALE, DATA_SAMP_EN, 
        EDGE_CNT, SAMPLED_BIT, test_si, test_so, test_se );
  input [5:0] PRESCALE;
  input [4:0] EDGE_CNT;
  input CLK, RST, RX_IN, DATA_SAMP_EN, test_si, test_se;
  output SAMPLED_BIT, test_so;
  wire   sample1, sample2, sample3, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n7, n8, n9, n10, n28,
         n29, n30, n31, n34, n35;

  OAI32X4M U14 ( .A0(n20), .A1(n13), .A2(n8), .B0(EDGE_CNT[4]), .B1(n21), .Y(
        n18) );
  OAI2BB1X4M U6 ( .A0N(sample1), .A1N(sample2), .B0(n24), .Y(SAMPLED_BIT) );
  NOR2X1M U8 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .Y(n23) );
  AOI33X2M U9 ( .A0(EDGE_CNT[3]), .A1(n10), .A2(n15), .B0(EDGE_CNT[2]), .B1(n9), .B2(n16), .Y(n21) );
  NAND4X2M U10 ( .A(EDGE_CNT[1]), .B(EDGE_CNT[0]), .C(n12), .D(n8), .Y(n11) );
  BUFX2M U15 ( .A(RST), .Y(n7) );
  INVX2M U16 ( .A(RX_IN), .Y(n31) );
  NAND2X2M U17 ( .A(n10), .B(n9), .Y(n20) );
  NAND3BX2M U18 ( .AN(PRESCALE[0]), .B(DATA_SAMP_EN), .C(n23), .Y(n22) );
  NAND4BX2M U19 ( .AN(n22), .B(PRESCALE[5]), .C(n30), .D(n29), .Y(n13) );
  NOR4X4M U20 ( .A(n29), .B(n22), .C(PRESCALE[3]), .D(PRESCALE[5]), .Y(n15) );
  NOR4X4M U21 ( .A(n30), .B(n22), .C(PRESCALE[4]), .D(PRESCALE[5]), .Y(n16) );
  OAI2BB2X1M U22 ( .B0(n31), .B1(n17), .A0N(n17), .A1N(sample2), .Y(n26) );
  NAND3BX2M U23 ( .AN(EDGE_CNT[0]), .B(n18), .C(n28), .Y(n17) );
  OAI2BB2X1M U24 ( .B0(n31), .B1(n19), .A0N(test_so), .A1N(n19), .Y(n27) );
  NAND3X2M U25 ( .A(n28), .B(n18), .C(EDGE_CNT[0]), .Y(n19) );
  INVX2M U26 ( .A(EDGE_CNT[2]), .Y(n10) );
  INVX2M U27 ( .A(EDGE_CNT[3]), .Y(n9) );
  INVX2M U28 ( .A(PRESCALE[4]), .Y(n29) );
  INVX2M U29 ( .A(PRESCALE[3]), .Y(n30) );
  OAI2BB2X1M U30 ( .B0(n11), .B1(n31), .A0N(n11), .A1N(sample1), .Y(n25) );
  OAI32X2M U31 ( .A0(n9), .A1(n13), .A2(n10), .B0(EDGE_CNT[3]), .B1(n14), .Y(
        n12) );
  AOI22X1M U32 ( .A0(n15), .A1(EDGE_CNT[2]), .B0(n16), .B1(n10), .Y(n14) );
  INVX2M U33 ( .A(EDGE_CNT[4]), .Y(n8) );
  INVX2M U34 ( .A(EDGE_CNT[1]), .Y(n28) );
  DLY1X1M U35 ( .A(n35), .Y(n34) );
  DLY1X1M U36 ( .A(test_se), .Y(n35) );
  DLY1X1M U37 ( .A(sample3), .Y(test_so) );
  SDFFRQX1M sample3_reg ( .D(n27), .SI(sample2), .SE(n34), .CK(CLK), .RN(n7), 
        .Q(sample3) );
  SDFFSRX2M sample1_reg ( .D(n25), .SI(test_si), .SE(n35), .CK(CLK), .SN(1'b1), 
        .RN(n7), .Q(sample1) );
  SDFFSRX2M sample2_reg ( .D(n26), .SI(sample1), .SE(n34), .CK(CLK), .SN(1'b1), 
        .RN(n7), .Q(sample2) );
  OAI21X2M U3 ( .A0(sample1), .A1(sample2), .B0(sample3), .Y(n24) );
endmodule


module deserializer_test_1 ( CLK, RST, SAMPLED_BIT, DESER_EN, P_DATA, test_si, 
        test_so, test_se );
  output [7:0] P_DATA;
  input CLK, RST, SAMPLED_BIT, DESER_EN, test_si, test_se;
  output test_so;
  wire   \counter[0] , n1, n2, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n31, n33, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n4, n5, n55, n56, n57, n58, n59, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73;

  OAI21X1M U5 ( .A0(n2), .A1(n8), .B0(n9), .Y(n36) );
  OAI21X1M U6 ( .A0(n2), .A1(n16), .B0(n17), .Y(n40) );
  NOR2X2M U20 ( .A(n58), .B(test_so), .Y(n15) );
  NAND2X2M U21 ( .A(\counter[0] ), .B(n5), .Y(n10) );
  INVX6M U23 ( .A(n56), .Y(n55) );
  INVX2M U24 ( .A(RST), .Y(n56) );
  OAI221X1M U25 ( .A0(n2), .A1(n58), .B0(DESER_EN), .B1(n5), .C0(n6), .Y(n33)
         );
  NAND2BX2M U26 ( .AN(n18), .B(SAMPLED_BIT), .Y(n16) );
  NAND2X2M U27 ( .A(SAMPLED_BIT), .B(n15), .Y(n8) );
  INVX2M U28 ( .A(DESER_EN), .Y(n58) );
  INVX4M U29 ( .A(n15), .Y(n57) );
  XNOR2X2M U30 ( .A(n59), .B(DESER_EN), .Y(n35) );
  NAND2X4M U31 ( .A(test_so), .B(DESER_EN), .Y(n18) );
  OAI2B2X1M U32 ( .A1N(test_so), .A0(n1), .B0(n2), .B1(n57), .Y(n31) );
  NOR2X2M U33 ( .A(n2), .B(n58), .Y(n1) );
  OAI21X2M U34 ( .A0(n2), .A1(n57), .B0(P_DATA[0]), .Y(n9) );
  OAI21X2M U46 ( .A0(n2), .A1(n18), .B0(P_DATA[4]), .Y(n17) );
  OAI21X2M U47 ( .A0(n8), .A1(n10), .B0(n11), .Y(n37) );
  OAI21X2M U48 ( .A0(n57), .A1(n10), .B0(P_DATA[1]), .Y(n11) );
  OAI21X2M U49 ( .A0(n8), .A1(n12), .B0(n13), .Y(n38) );
  OAI21X2M U50 ( .A0(n57), .A1(n12), .B0(P_DATA[2]), .Y(n13) );
  OAI21X2M U51 ( .A0(n8), .A1(n6), .B0(n14), .Y(n39) );
  OAI21X2M U52 ( .A0(n57), .A1(n6), .B0(P_DATA[3]), .Y(n14) );
  OAI21X2M U53 ( .A0(n10), .A1(n16), .B0(n19), .Y(n41) );
  OAI21X2M U54 ( .A0(n10), .A1(n18), .B0(P_DATA[5]), .Y(n19) );
  OAI21X2M U55 ( .A0(n12), .A1(n16), .B0(n20), .Y(n42) );
  OAI21X2M U56 ( .A0(n12), .A1(n18), .B0(P_DATA[6]), .Y(n20) );
  OAI21X2M U57 ( .A0(n6), .A1(n16), .B0(n21), .Y(n43) );
  OAI21X2M U58 ( .A0(n6), .A1(n18), .B0(P_DATA[7]), .Y(n21) );
  NAND2X4M U59 ( .A(n4), .B(\counter[0] ), .Y(n6) );
  DLY1X1M U60 ( .A(n68), .Y(n64) );
  DLY1X1M U61 ( .A(test_se), .Y(n65) );
  DLY1X1M U62 ( .A(n72), .Y(n66) );
  DLY1X1M U63 ( .A(n64), .Y(n67) );
  DLY1X1M U64 ( .A(n65), .Y(n68) );
  DLY1X1M U65 ( .A(n65), .Y(n69) );
  DLY1X1M U66 ( .A(n64), .Y(n70) );
  DLY1X1M U67 ( .A(n69), .Y(n71) );
  DLY1X1M U68 ( .A(n69), .Y(n72) );
  DLY1X1M U69 ( .A(n68), .Y(n73) );
  SDFFSQX2M \counter_reg[2]  ( .D(n31), .SI(n4), .SE(n73), .CK(CLK), .SN(RST), 
        .Q(test_so) );
  SDFFSRX2M \P_DATA_reg[6]  ( .D(n42), .SI(P_DATA[5]), .SE(n67), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[6]) );
  SDFFSRX2M \P_DATA_reg[7]  ( .D(n43), .SI(P_DATA[6]), .SE(n67), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[7]) );
  SDFFSRX2M \P_DATA_reg[2]  ( .D(n38), .SI(P_DATA[1]), .SE(n66), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[2]) );
  SDFFSRX2M \P_DATA_reg[3]  ( .D(n39), .SI(P_DATA[2]), .SE(n70), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[3]) );
  SDFFSRX2M \P_DATA_reg[4]  ( .D(n40), .SI(P_DATA[3]), .SE(n71), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[4]) );
  SDFFSRX2M \P_DATA_reg[5]  ( .D(n41), .SI(P_DATA[4]), .SE(n73), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[5]) );
  SDFFSRX2M \P_DATA_reg[0]  ( .D(n36), .SI(test_si), .SE(n66), .CK(CLK), .SN(
        1'b1), .RN(n55), .Q(P_DATA[0]) );
  SDFFSRX2M \P_DATA_reg[1]  ( .D(n37), .SI(P_DATA[0]), .SE(n70), .CK(CLK), 
        .SN(1'b1), .RN(n55), .Q(P_DATA[1]) );
  SDFFSX2M \counter_reg[0]  ( .D(n35), .SI(P_DATA[7]), .SE(n71), .CK(CLK), 
        .SN(RST), .Q(\counter[0] ), .QN(n59) );
  SDFFSX2M \counter_reg[1]  ( .D(n33), .SI(\counter[0] ), .SE(n72), .CK(CLK), 
        .SN(RST), .Q(n4), .QN(n5) );
  NAND2X4M U3 ( .A(n5), .B(n59), .Y(n2) );
  NAND2X2M U4 ( .A(n59), .B(n4), .Y(n12) );
endmodule


module edge_bit_counter_test_1 ( ENABLE, PAR_EN, CLK, RST, PRESCALE, BIT_CNT, 
        EDGE_CNT, test_si, test_se );
  input [5:0] PRESCALE;
  output [3:0] BIT_CNT;
  output [4:0] EDGE_CNT;
  input ENABLE, PAR_EN, CLK, RST, test_si, test_se;
  wire   n74, n75, N5, N6, N9, N10, N11, N12, N14, N19, N20, N21, N22, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, \add_19/carry[4] , \add_19/carry[3] ,
         \add_19/carry[2] , n1, n2, n3, n5, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n78, n79, n80, n81, n82, n83,
         n84, n85, n4, n6;

  OAI33X4M U23 ( .A0(n32), .A1(n70), .A2(n73), .B0(n33), .B1(n6), .B2(n72), 
        .Y(n29) );
  SDFFRQX4M \BIT_CNT_reg[3]  ( .D(n36), .SI(BIT_CNT[2]), .SE(n81), .CK(CLK), 
        .RN(n46), .Q(BIT_CNT[3]) );
  SDFFRQX4M \EDGE_CNT_reg[3]  ( .D(n39), .SI(EDGE_CNT[2]), .SE(n80), .CK(CLK), 
        .RN(n46), .Q(EDGE_CNT[3]) );
  SDFFRQX4M \EDGE_CNT_reg[1]  ( .D(n41), .SI(EDGE_CNT[0]), .SE(n79), .CK(CLK), 
        .RN(n46), .Q(EDGE_CNT[1]) );
  SDFFRQX4M \EDGE_CNT_reg[2]  ( .D(n40), .SI(EDGE_CNT[1]), .SE(n84), .CK(CLK), 
        .RN(n46), .Q(EDGE_CNT[2]) );
  SDFFRQX4M \BIT_CNT_reg[1]  ( .D(n37), .SI(n6), .SE(n83), .CK(CLK), .RN(n46), 
        .Q(BIT_CNT[1]) );
  SDFFRQX1M \EDGE_CNT_reg[4]  ( .D(n42), .SI(EDGE_CNT[3]), .SE(n79), .CK(CLK), 
        .RN(n46), .Q(n74) );
  SDFFRQX4M \BIT_CNT_reg[2]  ( .D(n67), .SI(BIT_CNT[1]), .SE(n85), .CK(CLK), 
        .RN(n46), .Q(BIT_CNT[2]) );
  AOI21BX2M U6 ( .A0(n49), .A1(PRESCALE[3]), .B0N(n50), .Y(n1) );
  AOI21BX2M U7 ( .A0(n48), .A1(PRESCALE[2]), .B0N(n49), .Y(n2) );
  INVX4M U14 ( .A(n3), .Y(EDGE_CNT[0]) );
  INVX6M U16 ( .A(n47), .Y(n46) );
  NAND4X2M U17 ( .A(BIT_CNT[2]), .B(n26), .C(BIT_CNT[1]), .D(n72), .Y(n25) );
  INVXLM U18 ( .A(n74), .Y(n5) );
  INVX4M U19 ( .A(n5), .Y(EDGE_CNT[4]) );
  OAI221X1M U20 ( .A0(EDGE_CNT[2]), .A1(n2), .B0(EDGE_CNT[3]), .B1(n1), .C0(
        n56), .Y(n57) );
  NOR2BX2M U31 ( .AN(EDGE_CNT[0]), .B(N5), .Y(n52) );
  NOR4BBX2M U32 ( .AN(n62), .BN(n61), .C(n60), .D(N12), .Y(N14) );
  BUFX2M U33 ( .A(n29), .Y(n45) );
  NOR3X6M U34 ( .A(n45), .B(n6), .C(n31), .Y(n26) );
  OAI2B11X2M U35 ( .A1N(N9), .A0(EDGE_CNT[4]), .B0(n59), .C0(n58), .Y(N12) );
  NOR2X2M U36 ( .A(n51), .B(PRESCALE[5]), .Y(N11) );
  OAI2BB1X2M U37 ( .A0N(n50), .A1N(PRESCALE[4]), .B0(n51), .Y(N9) );
  NAND2BX2M U38 ( .AN(PRESCALE[1]), .B(N5), .Y(n48) );
  OR2X2M U39 ( .A(n50), .B(PRESCALE[4]), .Y(n51) );
  OR2X2M U40 ( .A(n48), .B(PRESCALE[2]), .Y(n49) );
  OR2X2M U41 ( .A(n49), .B(PRESCALE[3]), .Y(n50) );
  NOR2BX2M U42 ( .AN(N5), .B(n75), .Y(n55) );
  INVX2M U43 ( .A(BIT_CNT[1]), .Y(n70) );
  INVX2M U44 ( .A(BIT_CNT[2]), .Y(n71) );
  INVX2M U45 ( .A(RST), .Y(n47) );
  NOR2X6M U46 ( .A(n65), .B(n66), .Y(n34) );
  INVX4M U47 ( .A(n35), .Y(n65) );
  AOI21X2M U48 ( .A0(n6), .A1(n68), .B0(n31), .Y(n30) );
  OAI2BB2X1M U49 ( .B0(n30), .B1(n70), .A0N(n70), .A1N(n26), .Y(n37) );
  INVX2M U50 ( .A(n31), .Y(n66) );
  NAND2X1M U51 ( .A(N12), .B(ENABLE), .Y(n35) );
  CLKINVX1M U52 ( .A(n45), .Y(n68) );
  INVX2M U53 ( .A(n28), .Y(n67) );
  AOI32X1M U54 ( .A0(n26), .A1(n71), .A2(BIT_CNT[1]), .B0(n27), .B1(BIT_CNT[2]), .Y(n28) );
  OAI21X2M U55 ( .A0(BIT_CNT[1]), .A1(n45), .B0(n30), .Y(n27) );
  NAND3X3M U56 ( .A(ENABLE), .B(n35), .C(N14), .Y(n31) );
  INVX2M U57 ( .A(PRESCALE[0]), .Y(N5) );
  INVX2M U58 ( .A(EDGE_CNT[1]), .Y(n63) );
  OAI32X2M U59 ( .A0(n31), .A1(BIT_CNT[0]), .A2(n45), .B0(n66), .B1(n6), .Y(
        n38) );
  OAI21X2M U60 ( .A0(n24), .A1(n72), .B0(n25), .Y(n36) );
  AOI21X2M U61 ( .A0(n68), .A1(n71), .B0(n27), .Y(n24) );
  AO22X1M U62 ( .A0(EDGE_CNT[0]), .A1(n34), .B0(n3), .B1(n65), .Y(n43) );
  AO22X1M U63 ( .A0(EDGE_CNT[1]), .A1(n34), .B0(N19), .B1(n65), .Y(n41) );
  AO22X1M U64 ( .A0(EDGE_CNT[3]), .A1(n34), .B0(N21), .B1(n65), .Y(n39) );
  AO22X1M U65 ( .A0(EDGE_CNT[2]), .A1(n34), .B0(N20), .B1(n65), .Y(n40) );
  AO22X1M U66 ( .A0(EDGE_CNT[4]), .A1(n34), .B0(N22), .B1(n65), .Y(n42) );
  INVX2M U67 ( .A(EDGE_CNT[4]), .Y(n64) );
  NAND3X2M U68 ( .A(n6), .B(n71), .C(BIT_CNT[3]), .Y(n32) );
  NAND3X2M U69 ( .A(n71), .B(n73), .C(n70), .Y(n33) );
  INVX2M U70 ( .A(PAR_EN), .Y(n73) );
  INVX2M U72 ( .A(BIT_CNT[3]), .Y(n72) );
  ADDHX1M U73 ( .A(EDGE_CNT[1]), .B(EDGE_CNT[0]), .CO(\add_19/carry[2] ), .S(
        N19) );
  ADDHX1M U74 ( .A(EDGE_CNT[2]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N20) );
  ADDHX1M U75 ( .A(EDGE_CNT[3]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N21) );
  OAI2BB1X1M U76 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n48), .Y(N6) );
  AO21XLM U77 ( .A0(n51), .A1(PRESCALE[5]), .B0(N11), .Y(N10) );
  CLKXOR2X2M U78 ( .A(\add_19/carry[4] ), .B(EDGE_CNT[4]), .Y(N22) );
  CLKNAND2X2M U79 ( .A(EDGE_CNT[2]), .B(n2), .Y(n62) );
  CLKNAND2X2M U80 ( .A(EDGE_CNT[3]), .B(n1), .Y(n61) );
  OAI2B2X1M U81 ( .A1N(N6), .A0(n52), .B0(EDGE_CNT[1]), .B1(n52), .Y(n53) );
  OAI21X1M U82 ( .A0(N9), .A1(n64), .B0(n53), .Y(n60) );
  AO21XLM U83 ( .A0(n63), .A1(n55), .B0(N6), .Y(n54) );
  OAI211X1M U84 ( .A0(n55), .A1(n63), .B0(n54), .C0(n62), .Y(n56) );
  OAI211X1M U85 ( .A0(N9), .A1(n64), .B0(n57), .C0(n61), .Y(n59) );
  NOR2X1M U86 ( .A(N11), .B(N10), .Y(n58) );
  DLY1X1M U87 ( .A(n82), .Y(n78) );
  DLY1X1M U88 ( .A(n85), .Y(n79) );
  DLY1X1M U89 ( .A(n83), .Y(n80) );
  DLY1X1M U90 ( .A(n84), .Y(n81) );
  DLY1X1M U91 ( .A(test_se), .Y(n82) );
  DLY1X1M U92 ( .A(n82), .Y(n83) );
  DLY1X1M U93 ( .A(n78), .Y(n84) );
  DLY1X1M U94 ( .A(n78), .Y(n85) );
  SDFFSRX1M \BIT_CNT_reg[0]  ( .D(n38), .SI(test_si), .SE(n81), .CK(CLK), .SN(
        1'b1), .RN(n46), .Q(BIT_CNT[0]), .QN(n69) );
  SDFFSRX1M \EDGE_CNT_reg[0]  ( .D(n43), .SI(BIT_CNT[3]), .SE(n80), .CK(CLK), 
        .SN(1'b1), .RN(n46), .Q(n75), .QN(n3) );
  INVXLM U3 ( .A(n69), .Y(n4) );
  INVX4M U4 ( .A(n4), .Y(n6) );
endmodule


module PARITY_CHECK_test_1 ( CLK, RST, PAR_CHK_EN, SAMPLED_BIT, PAR_TYP, 
        P_DATA, PAR_ERR, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, PAR_CHK_EN, SAMPLED_BIT, PAR_TYP, test_si, test_se;
  output PAR_ERR;
  wire   n1, n3, n4, n5, n6, n7, n9, n10;

  SDFFRQX4M PAR_ERR_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PAR_ERR) );
  XNOR2X2M U2 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  XNOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n10), .A0N(PAR_ERR), .A1N(n10), .Y(n9) );
  XOR3XLM U6 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U7 ( .A(PAR_CHK_EN), .Y(n10) );
  XOR3XLM U8 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U9 ( .A(SAMPLED_BIT), .B(PAR_TYP), .Y(n5) );
  XOR3XLM U11 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
endmodule


module STRT_CHECK_test_1 ( CLK, RST, STRT_CHK_EN, SAMPLED_BIT, STRT_GLITCH, 
        test_si, test_se );
  input CLK, RST, STRT_CHK_EN, SAMPLED_BIT, test_si, test_se;
  output STRT_GLITCH;
  wire   n8, n2, n7;

  AO2B2X2M U4 ( .B0(STRT_CHK_EN), .B1(SAMPLED_BIT), .A0(n7), .A1N(STRT_CHK_EN), 
        .Y(n2) );
  DLY1X1M U5 ( .A(n8), .Y(STRT_GLITCH) );
  DLY1X1M U6 ( .A(n8), .Y(n7) );
  SDFFRQX1M STRT_GLITCH_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n8) );
endmodule


module STOP_CHECK_test_1 ( CLK, RST, STP_CHK_EN, SAMPLED_BIT, STP_ERR, test_si, 
        test_se );
  input CLK, RST, STP_CHK_EN, SAMPLED_BIT, test_si, test_se;
  output STP_ERR;
  wire   n3, n4, n7, n8;

  OAI2BB2X1M U3 ( .B0(SAMPLED_BIT), .B1(n4), .A0N(n8), .A1N(n4), .Y(n3) );
  INVX2M U5 ( .A(STP_CHK_EN), .Y(n4) );
  INVXLM U6 ( .A(STP_ERR), .Y(n7) );
  INVXLM U7 ( .A(n7), .Y(n8) );
  SDFFRHQX8M STP_ERR_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(STP_ERR) );
endmodule


module UART_RX_width8_test_1 ( CLK, RST, RX_IN, PRESCALE, PAR_TYP, PAR_EN, 
        DATA_VALID, P_DATA, PAR_ERR, STP_ERR, test_si2, test_si1, test_so1, 
        test_se );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN, test_si2, test_si1, test_se;
  output DATA_VALID, PAR_ERR, STP_ERR, test_so1;
  wire   STRT_GLITCH, ENABLE, DESER_EN, PAR_CHK_EN, STRT_CHK_EN, STP_CHK_EN,
         SAMPLED_BIT, n1, n2, n3, n4, n5, n9, n10, n11, n12, n13, n14, n15,
         n16, n17;
  wire   [3:0] BIT_CNT;
  wire   [4:0] EDGE_CNT;
  assign test_so1 = STRT_GLITCH;

  INVX2M U2 ( .A(RST), .Y(n2) );
  INVXLM U4 ( .A(STP_ERR), .Y(n9) );
  INVXLM U5 ( .A(n9), .Y(n10) );
  DLY1X1M U6 ( .A(test_se), .Y(n11) );
  DLY1X1M U7 ( .A(n11), .Y(n12) );
  DLY1X1M U8 ( .A(n11), .Y(n13) );
  DLY1X1M U9 ( .A(n12), .Y(n14) );
  DLY1X1M U10 ( .A(n13), .Y(n15) );
  DLY1X1M U11 ( .A(n12), .Y(n16) );
  FSM_test_1 F ( .RX_IN(RX_IN), .CLK(CLK), .RST(n1), .PAR_EN(PAR_EN), 
        .BIT_CNT(BIT_CNT), .EDGE_CNT(EDGE_CNT), .PRESCALE(PRESCALE), .PAR_ERR(
        PAR_ERR), .STRT_GLITCH(STRT_GLITCH), .STP_ERR(n10), .ENABLE(ENABLE), 
        .DESER_EN(DESER_EN), .DATA_VALID(DATA_VALID), .PAR_CHK_EN(PAR_CHK_EN), 
        .STRT_CHK_EN(STRT_CHK_EN), .STP_CHK_EN(STP_CHK_EN), .test_so(n3), 
        .test_se(n17) );
  data_sampling_test_1 D0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PRESCALE(
        PRESCALE), .DATA_SAMP_EN(1'b1), .EDGE_CNT(EDGE_CNT), .SAMPLED_BIT(
        SAMPLED_BIT), .test_si(test_si1), .test_so(n5), .test_se(n16) );
  deserializer_test_1 D1 ( .CLK(CLK), .RST(n1), .SAMPLED_BIT(SAMPLED_BIT), 
        .DESER_EN(DESER_EN), .P_DATA(P_DATA), .test_si(n5), .test_so(n4), 
        .test_se(n14) );
  edge_bit_counter_test_1 E ( .ENABLE(ENABLE), .PAR_EN(PAR_EN), .CLK(CLK), 
        .RST(n1), .PRESCALE(PRESCALE), .BIT_CNT(BIT_CNT), .EDGE_CNT(EDGE_CNT), 
        .test_si(n4), .test_se(n15) );
  PARITY_CHECK_test_1 P ( .CLK(CLK), .RST(n1), .PAR_CHK_EN(PAR_CHK_EN), 
        .SAMPLED_BIT(SAMPLED_BIT), .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), 
        .PAR_ERR(PAR_ERR), .test_si(n3), .test_se(n15) );
  STRT_CHECK_test_1 S0 ( .CLK(CLK), .RST(n1), .STRT_CHK_EN(STRT_CHK_EN), 
        .SAMPLED_BIT(SAMPLED_BIT), .STRT_GLITCH(STRT_GLITCH), .test_si(PAR_ERR), .test_se(n16) );
  STOP_CHECK_test_1 S1 ( .CLK(CLK), .RST(n1), .STP_CHK_EN(STP_CHK_EN), 
        .SAMPLED_BIT(SAMPLED_BIT), .STP_ERR(STP_ERR), .test_si(test_si2), 
        .test_se(n14) );
  INVX6M U1 ( .A(n2), .Y(n1) );
  BUFX2M U12 ( .A(n13), .Y(n17) );
endmodule


module UART_width8_test_1 ( UART_CONFIG, TX_CLK, RX_CLK, RST, RX_IN, F_EMPTY, 
        RdData, TX_OUT, busy, RX_OUT, sync_en, PAR_ERR, STP_ERR, test_si2, 
        test_si1, test_so1, test_se );
  input [7:0] UART_CONFIG;
  input [7:0] RdData;
  output [7:0] RX_OUT;
  input TX_CLK, RX_CLK, RST, RX_IN, F_EMPTY, test_si2, test_si1, test_se;
  output TX_OUT, busy, sync_en, PAR_ERR, STP_ERR, test_so1;
  wire   n1, n3, n7, n8, n9;

  INVX2M U1 ( .A(F_EMPTY), .Y(n1) );
  INVXLM U2 ( .A(test_se), .Y(n7) );
  INVXLM U3 ( .A(n7), .Y(n8) );
  DLY1X1M U4 ( .A(n8), .Y(n9) );
  UART_TX_width8_test_1 dut0 ( .P_DATA(RdData), .DATA_VALID(n1), .PAR_EN(
        UART_CONFIG[0]), .PAR_TYP(UART_CONFIG[1]), .CLK(TX_CLK), .RST(RST), 
        .TX_OUT(TX_OUT), .busy(busy), .test_si(test_si1), .test_so(n3), 
        .test_se(n9) );
  UART_RX_width8_test_1 dut1 ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN), 
        .PRESCALE(UART_CONFIG[7:2]), .PAR_TYP(UART_CONFIG[1]), .PAR_EN(
        UART_CONFIG[0]), .DATA_VALID(sync_en), .P_DATA(RX_OUT), .PAR_ERR(
        PAR_ERR), .STP_ERR(STP_ERR), .test_si2(test_si2), .test_si1(n3), 
        .test_so1(test_so1), .test_se(n9) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   n8, n9;
  wire   [1:0] Q;

  SDFFRQX2M \Q_reg[0]  ( .D(1'b1), .SI(test_si), .SE(n9), .CK(CLK), .RN(RST), 
        .Q(Q[0]) );
  SDFFRQX1M SYNC_RST_reg ( .D(Q[1]), .SI(Q[1]), .SE(n8), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  SDFFRQX1M \Q_reg[1]  ( .D(Q[0]), .SI(Q[0]), .SE(n8), .CK(CLK), .RN(RST), .Q(
        Q[1]) );
  DLY1X1M U8 ( .A(n9), .Y(n8) );
  DLY1X1M U9 ( .A(test_se), .Y(n9) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   n11, n12;
  wire   [1:0] Q;

  SDFFRQX1M \Q_reg[0]  ( .D(1'b1), .SI(test_si), .SE(n11), .CK(CLK), .RN(RST), 
        .Q(Q[0]) );
  SDFFRQX1M SYNC_RST_reg ( .D(Q[1]), .SI(Q[1]), .SE(n11), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  SDFFRQX1M \Q_reg[1]  ( .D(Q[0]), .SI(Q[0]), .SE(n12), .CK(CLK), .RN(RST), 
        .Q(Q[1]) );
  DLY1X1M U8 ( .A(n12), .Y(n11) );
  DLY1X1M U9 ( .A(test_se), .Y(n12) );
endmodule


module Pulse_Gen_test_1 ( CLK, RST, LVL_SIG, Pulse_SIG, test_si, test_so, 
        test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output Pulse_SIG, test_so;
  wire   n7;
  wire   [1:0] Q;
  assign test_so = Q[1];

  SDFFRQX1M \Q_reg[1]  ( .D(n7), .SI(n7), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(Q[1]) );
  SDFFRQX1M \Q_reg[0]  ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Q[0]) );
  NOR2BX2M U7 ( .AN(Q[0]), .B(Q[1]), .Y(Pulse_SIG) );
  DLY1X1M U8 ( .A(Q[0]), .Y(n7) );
endmodule


module FIFO_MEM_DATA_WIDTH8_test_1 ( WR_DATA, W_CLKEN, W_ADDR, R_ADDR, W_CLK, 
        W_RST, RD_DATA, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  output [7:0] RD_DATA;
  input W_CLKEN, W_CLK, W_RST, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n76,
         n81, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387;
  assign N10 = R_ADDR[0];
  assign N11 = R_ADDR[1];
  assign N12 = R_ADDR[2];

  SDFFRQX1M \mem_reg[4][7]  ( .D(n116), .SI(n386), .SE(n286), .CK(W_CLK), .RN(
        n243), .Q(\mem[4][7] ) );
  SDFFRQX1M \mem_reg[4][6]  ( .D(n115), .SI(n385), .SE(n286), .CK(W_CLK), .RN(
        n243), .Q(\mem[4][6] ) );
  SDFFRQX1M \mem_reg[4][5]  ( .D(n114), .SI(n384), .SE(n323), .CK(W_CLK), .RN(
        n243), .Q(\mem[4][5] ) );
  SDFFRQX1M \mem_reg[4][4]  ( .D(n113), .SI(n383), .SE(n276), .CK(W_CLK), .RN(
        n243), .Q(\mem[4][4] ) );
  SDFFRQX1M \mem_reg[4][3]  ( .D(n112), .SI(n382), .SE(n276), .CK(W_CLK), .RN(
        n244), .Q(\mem[4][3] ) );
  SDFFRQX1M \mem_reg[4][2]  ( .D(n111), .SI(n381), .SE(n285), .CK(W_CLK), .RN(
        n244), .Q(\mem[4][2] ) );
  SDFFRQX1M \mem_reg[4][1]  ( .D(n110), .SI(n380), .SE(n285), .CK(W_CLK), .RN(
        n244), .Q(\mem[4][1] ) );
  SDFFRQX1M \mem_reg[4][0]  ( .D(n109), .SI(n363), .SE(n321), .CK(W_CLK), .RN(
        n244), .Q(\mem[4][0] ) );
  SDFFRQX1M \mem_reg[7][7]  ( .D(n92), .SI(n370), .SE(n275), .CK(W_CLK), .RN(
        n245), .Q(\mem[7][7] ) );
  SDFFRQX1M \mem_reg[7][6]  ( .D(n91), .SI(n369), .SE(n275), .CK(W_CLK), .RN(
        n245), .Q(\mem[7][6] ) );
  SDFFRQX1M \mem_reg[7][5]  ( .D(n90), .SI(n368), .SE(n284), .CK(W_CLK), .RN(
        n245), .Q(\mem[7][5] ) );
  SDFFRQX1M \mem_reg[7][4]  ( .D(n89), .SI(n367), .SE(n284), .CK(W_CLK), .RN(
        n245), .Q(\mem[7][4] ) );
  SDFFRQX1M \mem_reg[7][3]  ( .D(n88), .SI(n366), .SE(n319), .CK(W_CLK), .RN(
        n246), .Q(\mem[7][3] ) );
  SDFFRQX1M \mem_reg[7][2]  ( .D(n87), .SI(n365), .SE(n274), .CK(W_CLK), .RN(
        n246), .Q(\mem[7][2] ) );
  SDFFRQX1M \mem_reg[7][1]  ( .D(n86), .SI(n364), .SE(n274), .CK(W_CLK), .RN(
        n246), .Q(\mem[7][1] ) );
  SDFFRQX1M \mem_reg[7][0]  ( .D(n85), .SI(n339), .SE(n283), .CK(W_CLK), .RN(
        n246), .Q(\mem[7][0] ) );
  SDFFRQX1M \mem_reg[6][7]  ( .D(n100), .SI(n338), .SE(n283), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][7] ) );
  SDFFRQX1M \mem_reg[6][6]  ( .D(n99), .SI(n337), .SE(n317), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][6] ) );
  SDFFRQX1M \mem_reg[6][5]  ( .D(n98), .SI(n336), .SE(n273), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][5] ) );
  SDFFRQX1M \mem_reg[6][4]  ( .D(n97), .SI(n335), .SE(n273), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][4] ) );
  SDFFRQX1M \mem_reg[6][3]  ( .D(n96), .SI(n334), .SE(n282), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][3] ) );
  SDFFRQX1M \mem_reg[6][2]  ( .D(n95), .SI(n333), .SE(n282), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][2] ) );
  SDFFRQX1M \mem_reg[6][1]  ( .D(n94), .SI(n332), .SE(n315), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][1] ) );
  SDFFRQX1M \mem_reg[6][0]  ( .D(n93), .SI(n355), .SE(n272), .CK(W_CLK), .RN(
        n245), .Q(\mem[6][0] ) );
  SDFFRQX1M \mem_reg[5][7]  ( .D(n108), .SI(n354), .SE(n272), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][7] ) );
  SDFFRQX1M \mem_reg[5][6]  ( .D(n107), .SI(n353), .SE(n281), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][6] ) );
  SDFFRQX1M \mem_reg[5][5]  ( .D(n106), .SI(n352), .SE(n281), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][5] ) );
  SDFFRQX1M \mem_reg[5][4]  ( .D(n105), .SI(n351), .SE(n313), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][4] ) );
  SDFFRQX1M \mem_reg[5][3]  ( .D(n104), .SI(n350), .SE(n271), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][3] ) );
  SDFFRQX1M \mem_reg[5][2]  ( .D(n103), .SI(n349), .SE(n271), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][2] ) );
  SDFFRQX1M \mem_reg[5][1]  ( .D(n102), .SI(n348), .SE(n280), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][1] ) );
  SDFFRQX1M \mem_reg[5][0]  ( .D(n101), .SI(n387), .SE(n280), .CK(W_CLK), .RN(
        n244), .Q(\mem[5][0] ) );
  SDFFRQX1M \mem_reg[3][7]  ( .D(n124), .SI(n362), .SE(n311), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][7] ) );
  SDFFRQX1M \mem_reg[3][6]  ( .D(n123), .SI(n361), .SE(n270), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][6] ) );
  SDFFRQX1M \mem_reg[3][5]  ( .D(n122), .SI(n360), .SE(n270), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][5] ) );
  SDFFRQX1M \mem_reg[3][4]  ( .D(n121), .SI(n359), .SE(n279), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][4] ) );
  SDFFRQX1M \mem_reg[3][3]  ( .D(n120), .SI(n358), .SE(n279), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][3] ) );
  SDFFRQX1M \mem_reg[3][2]  ( .D(n119), .SI(n357), .SE(n309), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][2] ) );
  SDFFRQX1M \mem_reg[3][1]  ( .D(n118), .SI(n356), .SE(n269), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][1] ) );
  SDFFRQX1M \mem_reg[3][0]  ( .D(n117), .SI(n331), .SE(n269), .CK(W_CLK), .RN(
        n243), .Q(\mem[3][0] ) );
  SDFFRQX1M \mem_reg[2][7]  ( .D(n132), .SI(n330), .SE(n278), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][7] ) );
  SDFFRQX1M \mem_reg[2][6]  ( .D(n131), .SI(n329), .SE(n278), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][6] ) );
  SDFFRQX1M \mem_reg[2][5]  ( .D(n130), .SI(n328), .SE(n307), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][5] ) );
  SDFFRQX1M \mem_reg[2][4]  ( .D(n129), .SI(n327), .SE(n268), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][4] ) );
  SDFFRQX1M \mem_reg[2][3]  ( .D(n128), .SI(n326), .SE(n268), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][3] ) );
  SDFFRQX1M \mem_reg[2][2]  ( .D(n127), .SI(n325), .SE(n277), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][2] ) );
  SDFFRQX1M \mem_reg[2][1]  ( .D(n126), .SI(n324), .SE(n277), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][1] ) );
  SDFFRQX1M \mem_reg[2][0]  ( .D(n125), .SI(n347), .SE(n305), .CK(W_CLK), .RN(
        n242), .Q(\mem[2][0] ) );
  SDFFRQX1M \mem_reg[1][7]  ( .D(n140), .SI(n346), .SE(n292), .CK(W_CLK), .RN(
        n241), .Q(\mem[1][7] ) );
  SDFFRQX1M \mem_reg[1][6]  ( .D(n139), .SI(n345), .SE(n289), .CK(W_CLK), .RN(
        n241), .Q(\mem[1][6] ) );
  SDFFRQX1M \mem_reg[1][5]  ( .D(n138), .SI(test_si2), .SE(n267), .CK(W_CLK), 
        .RN(n241), .Q(\mem[1][5] ) );
  SDFFRQX1M \mem_reg[1][4]  ( .D(n137), .SI(n343), .SE(n296), .CK(W_CLK), .RN(
        n241), .Q(\mem[1][4] ) );
  SDFFRQX1M \mem_reg[1][3]  ( .D(n136), .SI(n342), .SE(n291), .CK(W_CLK), .RN(
        n242), .Q(\mem[1][3] ) );
  SDFFRQX1M \mem_reg[1][2]  ( .D(n135), .SI(n341), .SE(n288), .CK(W_CLK), .RN(
        n242), .Q(\mem[1][2] ) );
  SDFFRQX1M \mem_reg[1][1]  ( .D(n134), .SI(n340), .SE(n300), .CK(W_CLK), .RN(
        n242), .Q(\mem[1][1] ) );
  SDFFRQX1M \mem_reg[1][0]  ( .D(n133), .SI(n379), .SE(n297), .CK(W_CLK), .RN(
        n242), .Q(\mem[1][0] ) );
  SDFFRQX1M \mem_reg[0][5]  ( .D(n146), .SI(n376), .SE(n299), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][5] ) );
  SDFFRQX1M \mem_reg[0][4]  ( .D(n145), .SI(n375), .SE(n296), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][4] ) );
  SDFFRQX1M \mem_reg[0][3]  ( .D(n144), .SI(n374), .SE(n292), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][3] ) );
  SDFFRQX1M \mem_reg[0][2]  ( .D(n143), .SI(n373), .SE(n289), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][2] ) );
  SDFFRQX1M \mem_reg[0][1]  ( .D(n142), .SI(n372), .SE(n267), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][1] ) );
  SDFFRQX1M \mem_reg[0][0]  ( .D(n141), .SI(test_si1), .SE(n297), .CK(W_CLK), 
        .RN(n241), .Q(\mem[0][0] ) );
  CLKINVX2M U66 ( .A(W_ADDR[1]), .Y(n258) );
  AND3X1M U67 ( .A(n76), .B(n257), .C(W_ADDR[1]), .Y(n201) );
  AND3X1M U68 ( .A(W_ADDR[0]), .B(n76), .C(W_ADDR[1]), .Y(n197) );
  AND3X1M U69 ( .A(W_ADDR[1]), .B(W_ADDR[0]), .C(n81), .Y(n199) );
  AND3X1M U70 ( .A(W_ADDR[1]), .B(n257), .C(n81), .Y(n200) );
  NOR2BX4M U135 ( .AN(W_CLKEN), .B(W_ADDR[2]), .Y(n81) );
  AND2X2M U136 ( .A(W_CLKEN), .B(W_ADDR[2]), .Y(n76) );
  INVX2M U137 ( .A(W_ADDR[0]), .Y(n257) );
  BUFX6M U138 ( .A(n248), .Y(n245) );
  BUFX6M U139 ( .A(n247), .Y(n244) );
  BUFX6M U140 ( .A(n247), .Y(n243) );
  BUFX6M U141 ( .A(n248), .Y(n242) );
  BUFX6M U142 ( .A(W_RST), .Y(n241) );
  BUFX2M U143 ( .A(n247), .Y(n246) );
  BUFX2M U144 ( .A(n248), .Y(n247) );
  INVX4M U145 ( .A(n196), .Y(n234) );
  INVX4M U146 ( .A(n196), .Y(n233) );
  INVX4M U147 ( .A(n195), .Y(n226) );
  INVX4M U148 ( .A(n195), .Y(n225) );
  BUFX2M U149 ( .A(W_RST), .Y(n248) );
  INVX4M U150 ( .A(n201), .Y(n238) );
  INVX4M U151 ( .A(n201), .Y(n237) );
  INVX4M U152 ( .A(n202), .Y(n236) );
  INVX4M U153 ( .A(n202), .Y(n235) );
  INVX4M U154 ( .A(n198), .Y(n228) );
  INVX4M U155 ( .A(n198), .Y(n227) );
  INVX4M U156 ( .A(n199), .Y(n232) );
  INVX4M U157 ( .A(n199), .Y(n231) );
  INVX4M U158 ( .A(n200), .Y(n230) );
  INVX4M U159 ( .A(n200), .Y(n229) );
  INVX4M U160 ( .A(n197), .Y(n240) );
  INVX4M U161 ( .A(n197), .Y(n239) );
  AND3X2M U162 ( .A(n257), .B(n258), .C(n81), .Y(n195) );
  AND3X2M U163 ( .A(n257), .B(n258), .C(n76), .Y(n196) );
  INVX6M U164 ( .A(n221), .Y(n219) );
  INVX6M U165 ( .A(n221), .Y(n220) );
  INVX4M U166 ( .A(n224), .Y(n222) );
  INVX4M U167 ( .A(n224), .Y(n223) );
  INVX4M U168 ( .A(WR_DATA[0]), .Y(n256) );
  INVX4M U169 ( .A(WR_DATA[1]), .Y(n255) );
  INVX4M U170 ( .A(WR_DATA[2]), .Y(n254) );
  INVX4M U171 ( .A(WR_DATA[3]), .Y(n253) );
  INVX4M U172 ( .A(WR_DATA[4]), .Y(n252) );
  INVX4M U173 ( .A(WR_DATA[5]), .Y(n251) );
  INVX4M U174 ( .A(WR_DATA[6]), .Y(n250) );
  INVX4M U175 ( .A(WR_DATA[7]), .Y(n249) );
  OAI2BB2X1M U176 ( .B0(n256), .B1(n238), .A0N(\mem[6][0] ), .A1N(n238), .Y(
        n93) );
  OAI2BB2X1M U177 ( .B0(n255), .B1(n237), .A0N(\mem[6][1] ), .A1N(n237), .Y(
        n94) );
  OAI2BB2X1M U178 ( .B0(n254), .B1(n238), .A0N(\mem[6][2] ), .A1N(n238), .Y(
        n95) );
  OAI2BB2X1M U179 ( .B0(n253), .B1(n237), .A0N(\mem[6][3] ), .A1N(n237), .Y(
        n96) );
  OAI2BB2X1M U180 ( .B0(n252), .B1(n238), .A0N(\mem[6][4] ), .A1N(n238), .Y(
        n97) );
  OAI2BB2X1M U181 ( .B0(n251), .B1(n237), .A0N(\mem[6][5] ), .A1N(n237), .Y(
        n98) );
  OAI2BB2X1M U182 ( .B0(n250), .B1(n238), .A0N(\mem[6][6] ), .A1N(n238), .Y(
        n99) );
  OAI2BB2X1M U183 ( .B0(n249), .B1(n237), .A0N(\mem[6][7] ), .A1N(n237), .Y(
        n100) );
  OAI2BB2X1M U184 ( .B0(n256), .B1(n236), .A0N(\mem[5][0] ), .A1N(n236), .Y(
        n101) );
  OAI2BB2X1M U185 ( .B0(n255), .B1(n235), .A0N(\mem[5][1] ), .A1N(n235), .Y(
        n102) );
  OAI2BB2X1M U186 ( .B0(n254), .B1(n236), .A0N(\mem[5][2] ), .A1N(n236), .Y(
        n103) );
  OAI2BB2X1M U187 ( .B0(n253), .B1(n235), .A0N(\mem[5][3] ), .A1N(n235), .Y(
        n104) );
  OAI2BB2X1M U188 ( .B0(n252), .B1(n236), .A0N(\mem[5][4] ), .A1N(n236), .Y(
        n105) );
  OAI2BB2X1M U189 ( .B0(n251), .B1(n235), .A0N(\mem[5][5] ), .A1N(n235), .Y(
        n106) );
  OAI2BB2X1M U190 ( .B0(n250), .B1(n236), .A0N(\mem[5][6] ), .A1N(n236), .Y(
        n107) );
  OAI2BB2X1M U191 ( .B0(n249), .B1(n235), .A0N(\mem[5][7] ), .A1N(n235), .Y(
        n108) );
  OAI2BB2X1M U192 ( .B0(n256), .B1(n234), .A0N(\mem[4][0] ), .A1N(n234), .Y(
        n109) );
  OAI2BB2X1M U193 ( .B0(n255), .B1(n233), .A0N(\mem[4][1] ), .A1N(n233), .Y(
        n110) );
  OAI2BB2X1M U194 ( .B0(n254), .B1(n234), .A0N(\mem[4][2] ), .A1N(n234), .Y(
        n111) );
  OAI2BB2X1M U195 ( .B0(n253), .B1(n233), .A0N(\mem[4][3] ), .A1N(n233), .Y(
        n112) );
  OAI2BB2X1M U196 ( .B0(n252), .B1(n234), .A0N(\mem[4][4] ), .A1N(n234), .Y(
        n113) );
  OAI2BB2X1M U197 ( .B0(n251), .B1(n233), .A0N(\mem[4][5] ), .A1N(n233), .Y(
        n114) );
  OAI2BB2X1M U198 ( .B0(n250), .B1(n234), .A0N(\mem[4][6] ), .A1N(n234), .Y(
        n115) );
  OAI2BB2X1M U199 ( .B0(n249), .B1(n233), .A0N(\mem[4][7] ), .A1N(n233), .Y(
        n116) );
  OAI2BB2X1M U200 ( .B0(n256), .B1(n232), .A0N(\mem[3][0] ), .A1N(n232), .Y(
        n117) );
  OAI2BB2X1M U201 ( .B0(n255), .B1(n231), .A0N(\mem[3][1] ), .A1N(n231), .Y(
        n118) );
  OAI2BB2X1M U202 ( .B0(n254), .B1(n232), .A0N(\mem[3][2] ), .A1N(n232), .Y(
        n119) );
  OAI2BB2X1M U203 ( .B0(n253), .B1(n231), .A0N(\mem[3][3] ), .A1N(n231), .Y(
        n120) );
  OAI2BB2X1M U204 ( .B0(n252), .B1(n232), .A0N(\mem[3][4] ), .A1N(n232), .Y(
        n121) );
  OAI2BB2X1M U205 ( .B0(n251), .B1(n231), .A0N(\mem[3][5] ), .A1N(n231), .Y(
        n122) );
  OAI2BB2X1M U206 ( .B0(n250), .B1(n232), .A0N(\mem[3][6] ), .A1N(n232), .Y(
        n123) );
  OAI2BB2X1M U207 ( .B0(n249), .B1(n231), .A0N(\mem[3][7] ), .A1N(n231), .Y(
        n124) );
  OAI2BB2X1M U208 ( .B0(n256), .B1(n230), .A0N(\mem[2][0] ), .A1N(n230), .Y(
        n125) );
  OAI2BB2X1M U209 ( .B0(n255), .B1(n229), .A0N(\mem[2][1] ), .A1N(n229), .Y(
        n126) );
  OAI2BB2X1M U210 ( .B0(n254), .B1(n230), .A0N(\mem[2][2] ), .A1N(n230), .Y(
        n127) );
  OAI2BB2X1M U211 ( .B0(n253), .B1(n229), .A0N(\mem[2][3] ), .A1N(n229), .Y(
        n128) );
  OAI2BB2X1M U212 ( .B0(n252), .B1(n230), .A0N(\mem[2][4] ), .A1N(n230), .Y(
        n129) );
  OAI2BB2X1M U213 ( .B0(n251), .B1(n229), .A0N(\mem[2][5] ), .A1N(n229), .Y(
        n130) );
  OAI2BB2X1M U214 ( .B0(n250), .B1(n230), .A0N(\mem[2][6] ), .A1N(n230), .Y(
        n131) );
  OAI2BB2X1M U215 ( .B0(n249), .B1(n229), .A0N(\mem[2][7] ), .A1N(n229), .Y(
        n132) );
  OAI2BB2X1M U216 ( .B0(n256), .B1(n228), .A0N(\mem[1][0] ), .A1N(n228), .Y(
        n133) );
  OAI2BB2X1M U217 ( .B0(n255), .B1(n227), .A0N(\mem[1][1] ), .A1N(n227), .Y(
        n134) );
  OAI2BB2X1M U218 ( .B0(n254), .B1(n228), .A0N(\mem[1][2] ), .A1N(n228), .Y(
        n135) );
  OAI2BB2X1M U219 ( .B0(n253), .B1(n227), .A0N(\mem[1][3] ), .A1N(n227), .Y(
        n136) );
  OAI2BB2X1M U220 ( .B0(n252), .B1(n228), .A0N(\mem[1][4] ), .A1N(n228), .Y(
        n137) );
  OAI2BB2X1M U221 ( .B0(n251), .B1(n227), .A0N(\mem[1][5] ), .A1N(n227), .Y(
        n138) );
  OAI2BB2X1M U222 ( .B0(n250), .B1(n228), .A0N(\mem[1][6] ), .A1N(n228), .Y(
        n139) );
  OAI2BB2X1M U223 ( .B0(n249), .B1(n227), .A0N(\mem[1][7] ), .A1N(n227), .Y(
        n140) );
  OAI2BB2X1M U224 ( .B0(n256), .B1(n226), .A0N(\mem[0][0] ), .A1N(n226), .Y(
        n141) );
  OAI2BB2X1M U225 ( .B0(n255), .B1(n225), .A0N(\mem[0][1] ), .A1N(n225), .Y(
        n142) );
  OAI2BB2X1M U226 ( .B0(n254), .B1(n226), .A0N(\mem[0][2] ), .A1N(n226), .Y(
        n143) );
  OAI2BB2X1M U227 ( .B0(n253), .B1(n225), .A0N(\mem[0][3] ), .A1N(n225), .Y(
        n144) );
  OAI2BB2X1M U228 ( .B0(n252), .B1(n226), .A0N(\mem[0][4] ), .A1N(n226), .Y(
        n145) );
  OAI2BB2X1M U229 ( .B0(n251), .B1(n225), .A0N(\mem[0][5] ), .A1N(n225), .Y(
        n146) );
  OAI2BB2X1M U230 ( .B0(n250), .B1(n226), .A0N(\mem[0][6] ), .A1N(n226), .Y(
        n147) );
  OAI2BB2X1M U231 ( .B0(n249), .B1(n225), .A0N(\mem[0][7] ), .A1N(n225), .Y(
        n148) );
  OAI2BB2X1M U232 ( .B0(n240), .B1(n256), .A0N(\mem[7][0] ), .A1N(n240), .Y(
        n85) );
  OAI2BB2X1M U233 ( .B0(n239), .B1(n255), .A0N(\mem[7][1] ), .A1N(n239), .Y(
        n86) );
  OAI2BB2X1M U234 ( .B0(n240), .B1(n254), .A0N(\mem[7][2] ), .A1N(n240), .Y(
        n87) );
  OAI2BB2X1M U235 ( .B0(n239), .B1(n253), .A0N(\mem[7][3] ), .A1N(n239), .Y(
        n88) );
  OAI2BB2X1M U236 ( .B0(n240), .B1(n252), .A0N(\mem[7][4] ), .A1N(n240), .Y(
        n89) );
  OAI2BB2X1M U237 ( .B0(n239), .B1(n251), .A0N(\mem[7][5] ), .A1N(n239), .Y(
        n90) );
  OAI2BB2X1M U238 ( .B0(n240), .B1(n250), .A0N(\mem[7][6] ), .A1N(n240), .Y(
        n91) );
  OAI2BB2X1M U239 ( .B0(n239), .B1(n249), .A0N(\mem[7][7] ), .A1N(n239), .Y(
        n92) );
  AND3X2M U240 ( .A(W_ADDR[0]), .B(n258), .C(n81), .Y(n198) );
  AND3X2M U241 ( .A(n76), .B(n258), .C(W_ADDR[0]), .Y(n202) );
  MX2X2M U242 ( .A(n216), .B(n215), .S0(N12), .Y(RD_DATA[6]) );
  MX4X1M U243 ( .A(n378), .B(n346), .C(n330), .D(n362), .S0(n220), .S1(n223), 
        .Y(n216) );
  MX4X1M U244 ( .A(n386), .B(n354), .C(n338), .D(n370), .S0(n219), .S1(n222), 
        .Y(n215) );
  MX2X2M U245 ( .A(n208), .B(n207), .S0(N12), .Y(RD_DATA[2]) );
  MX4X1M U246 ( .A(n374), .B(n342), .C(n326), .D(n358), .S0(n220), .S1(n223), 
        .Y(n208) );
  MX4X1M U247 ( .A(n382), .B(n350), .C(n334), .D(n366), .S0(n219), .S1(n222), 
        .Y(n207) );
  MX2X2M U248 ( .A(n210), .B(n209), .S0(N12), .Y(RD_DATA[3]) );
  MX4X1M U249 ( .A(n375), .B(n343), .C(n327), .D(n359), .S0(n220), .S1(n223), 
        .Y(n210) );
  MX4X1M U250 ( .A(n383), .B(n351), .C(n335), .D(n367), .S0(n219), .S1(n222), 
        .Y(n209) );
  MX2X2M U251 ( .A(n212), .B(n211), .S0(N12), .Y(RD_DATA[4]) );
  MX4X1M U252 ( .A(n376), .B(test_so1), .C(n328), .D(n360), .S0(n220), .S1(
        n223), .Y(n212) );
  MX4X1M U253 ( .A(n384), .B(n352), .C(n336), .D(n368), .S0(n219), .S1(n222), 
        .Y(n211) );
  MX2X2M U254 ( .A(n204), .B(n203), .S0(N12), .Y(RD_DATA[0]) );
  MX4X1M U255 ( .A(n372), .B(n340), .C(n324), .D(n356), .S0(n220), .S1(n223), 
        .Y(n204) );
  MX4X1M U256 ( .A(n380), .B(n348), .C(n332), .D(n364), .S0(n219), .S1(n222), 
        .Y(n203) );
  MX2X2M U257 ( .A(n214), .B(n213), .S0(N12), .Y(RD_DATA[5]) );
  MX4X1M U258 ( .A(n377), .B(n345), .C(n329), .D(n361), .S0(n220), .S1(n223), 
        .Y(n214) );
  MX4X1M U259 ( .A(n385), .B(n353), .C(n337), .D(n369), .S0(n219), .S1(n222), 
        .Y(n213) );
  MX2X2M U260 ( .A(n206), .B(n205), .S0(N12), .Y(RD_DATA[1]) );
  MX4X1M U261 ( .A(n373), .B(n341), .C(n325), .D(n357), .S0(n220), .S1(n223), 
        .Y(n206) );
  MX4X1M U262 ( .A(n381), .B(n349), .C(n333), .D(n365), .S0(n219), .S1(n222), 
        .Y(n205) );
  MX2X2M U263 ( .A(n218), .B(n217), .S0(N12), .Y(RD_DATA[7]) );
  MX4X1M U264 ( .A(n379), .B(n347), .C(n331), .D(n363), .S0(n220), .S1(n223), 
        .Y(n218) );
  MX4X1M U265 ( .A(n387), .B(n355), .C(n339), .D(test_so2), .S0(n219), .S1(
        n222), .Y(n217) );
  INVX2M U266 ( .A(N11), .Y(n224) );
  INVX2M U267 ( .A(N10), .Y(n221) );
  DLY1X1M U268 ( .A(n293), .Y(n262) );
  DLY1X1M U269 ( .A(n295), .Y(n263) );
  DLY1X1M U270 ( .A(n301), .Y(n264) );
  DLY1X1M U271 ( .A(n303), .Y(n265) );
  DLY1X1M U272 ( .A(n293), .Y(n266) );
  DLY1X1M U273 ( .A(n298), .Y(n267) );
  DLY1X1M U274 ( .A(n306), .Y(n268) );
  DLY1X1M U275 ( .A(n308), .Y(n269) );
  DLY1X1M U276 ( .A(n310), .Y(n270) );
  DLY1X1M U277 ( .A(n312), .Y(n271) );
  DLY1X1M U278 ( .A(n314), .Y(n272) );
  DLY1X1M U279 ( .A(n316), .Y(n273) );
  DLY1X1M U280 ( .A(n318), .Y(n274) );
  DLY1X1M U281 ( .A(n320), .Y(n275) );
  DLY1X1M U282 ( .A(n322), .Y(n276) );
  DLY1X1M U283 ( .A(n305), .Y(n277) );
  DLY1X1M U284 ( .A(n307), .Y(n278) );
  DLY1X1M U285 ( .A(n309), .Y(n279) );
  DLY1X1M U286 ( .A(n311), .Y(n280) );
  DLY1X1M U287 ( .A(n313), .Y(n281) );
  DLY1X1M U288 ( .A(n315), .Y(n282) );
  DLY1X1M U289 ( .A(n317), .Y(n283) );
  DLY1X1M U290 ( .A(n319), .Y(n284) );
  DLY1X1M U291 ( .A(n321), .Y(n285) );
  DLY1X1M U292 ( .A(n323), .Y(n286) );
  DLY1X1M U293 ( .A(n265), .Y(n287) );
  DLY1X1M U294 ( .A(n303), .Y(n288) );
  DLY1X1M U295 ( .A(n265), .Y(n289) );
  DLY1X1M U296 ( .A(n302), .Y(n290) );
  DLY1X1M U297 ( .A(n304), .Y(n291) );
  DLY1X1M U298 ( .A(n266), .Y(n292) );
  DLY1X1M U299 ( .A(test_se), .Y(n293) );
  DLY1X1M U300 ( .A(test_se), .Y(n294) );
  DLY1X1M U301 ( .A(n301), .Y(n295) );
  DLY1X1M U302 ( .A(n264), .Y(n296) );
  DLY1X1M U303 ( .A(n264), .Y(n297) );
  DLY1X1M U304 ( .A(n304), .Y(n298) );
  DLY1X1M U305 ( .A(n266), .Y(n299) );
  DLY1X1M U306 ( .A(n302), .Y(n300) );
  DLY1X1M U307 ( .A(n294), .Y(n301) );
  DLY1X1M U308 ( .A(n262), .Y(n302) );
  DLY1X1M U309 ( .A(n294), .Y(n303) );
  DLY1X1M U310 ( .A(n262), .Y(n304) );
  DLY1X1M U311 ( .A(n300), .Y(n305) );
  DLY1X1M U312 ( .A(n295), .Y(n306) );
  DLY1X1M U313 ( .A(n306), .Y(n307) );
  DLY1X1M U314 ( .A(n298), .Y(n308) );
  DLY1X1M U315 ( .A(n308), .Y(n309) );
  DLY1X1M U316 ( .A(n287), .Y(n310) );
  DLY1X1M U317 ( .A(n310), .Y(n311) );
  DLY1X1M U318 ( .A(n290), .Y(n312) );
  DLY1X1M U319 ( .A(n312), .Y(n313) );
  DLY1X1M U320 ( .A(n263), .Y(n314) );
  DLY1X1M U321 ( .A(n314), .Y(n315) );
  DLY1X1M U322 ( .A(n299), .Y(n316) );
  DLY1X1M U323 ( .A(n316), .Y(n317) );
  DLY1X1M U324 ( .A(n288), .Y(n318) );
  DLY1X1M U325 ( .A(n318), .Y(n319) );
  DLY1X1M U326 ( .A(n291), .Y(n320) );
  DLY1X1M U327 ( .A(n320), .Y(n321) );
  DLY1X1M U328 ( .A(n263), .Y(n322) );
  DLY1X1M U329 ( .A(n322), .Y(n323) );
  DLY1X1M U330 ( .A(\mem[2][0] ), .Y(n324) );
  DLY1X1M U331 ( .A(\mem[2][1] ), .Y(n325) );
  DLY1X1M U332 ( .A(\mem[2][2] ), .Y(n326) );
  DLY1X1M U333 ( .A(\mem[2][3] ), .Y(n327) );
  DLY1X1M U334 ( .A(\mem[2][4] ), .Y(n328) );
  DLY1X1M U335 ( .A(\mem[2][5] ), .Y(n329) );
  DLY1X1M U336 ( .A(\mem[2][6] ), .Y(n330) );
  DLY1X1M U337 ( .A(\mem[2][7] ), .Y(n331) );
  DLY1X1M U338 ( .A(\mem[6][0] ), .Y(n332) );
  DLY1X1M U339 ( .A(\mem[6][1] ), .Y(n333) );
  DLY1X1M U340 ( .A(\mem[6][2] ), .Y(n334) );
  DLY1X1M U341 ( .A(\mem[6][3] ), .Y(n335) );
  DLY1X1M U342 ( .A(\mem[6][4] ), .Y(n336) );
  DLY1X1M U343 ( .A(\mem[6][5] ), .Y(n337) );
  DLY1X1M U344 ( .A(\mem[6][6] ), .Y(n338) );
  DLY1X1M U345 ( .A(\mem[6][7] ), .Y(n339) );
  DLY1X1M U346 ( .A(\mem[1][0] ), .Y(n340) );
  DLY1X1M U347 ( .A(\mem[1][1] ), .Y(n341) );
  DLY1X1M U348 ( .A(\mem[1][2] ), .Y(n342) );
  DLY1X1M U349 ( .A(\mem[1][3] ), .Y(n343) );
  DLY1X1M U350 ( .A(\mem[1][4] ), .Y(test_so1) );
  DLY1X1M U351 ( .A(\mem[1][5] ), .Y(n345) );
  DLY1X1M U352 ( .A(\mem[1][6] ), .Y(n346) );
  DLY1X1M U353 ( .A(\mem[1][7] ), .Y(n347) );
  DLY1X1M U354 ( .A(\mem[5][0] ), .Y(n348) );
  DLY1X1M U355 ( .A(\mem[5][1] ), .Y(n349) );
  DLY1X1M U356 ( .A(\mem[5][2] ), .Y(n350) );
  DLY1X1M U357 ( .A(\mem[5][3] ), .Y(n351) );
  DLY1X1M U358 ( .A(\mem[5][4] ), .Y(n352) );
  DLY1X1M U359 ( .A(\mem[5][5] ), .Y(n353) );
  DLY1X1M U360 ( .A(\mem[5][6] ), .Y(n354) );
  DLY1X1M U361 ( .A(\mem[5][7] ), .Y(n355) );
  DLY1X1M U362 ( .A(\mem[3][0] ), .Y(n356) );
  DLY1X1M U363 ( .A(\mem[3][1] ), .Y(n357) );
  DLY1X1M U364 ( .A(\mem[3][2] ), .Y(n358) );
  DLY1X1M U365 ( .A(\mem[3][3] ), .Y(n359) );
  DLY1X1M U366 ( .A(\mem[3][4] ), .Y(n360) );
  DLY1X1M U367 ( .A(\mem[3][5] ), .Y(n361) );
  DLY1X1M U368 ( .A(\mem[3][6] ), .Y(n362) );
  DLY1X1M U369 ( .A(\mem[3][7] ), .Y(n363) );
  DLY1X1M U370 ( .A(\mem[7][0] ), .Y(n364) );
  DLY1X1M U371 ( .A(\mem[7][1] ), .Y(n365) );
  DLY1X1M U372 ( .A(\mem[7][2] ), .Y(n366) );
  DLY1X1M U373 ( .A(\mem[7][3] ), .Y(n367) );
  DLY1X1M U374 ( .A(\mem[7][4] ), .Y(n368) );
  DLY1X1M U375 ( .A(\mem[7][5] ), .Y(n369) );
  DLY1X1M U376 ( .A(\mem[7][6] ), .Y(n370) );
  DLY1X1M U377 ( .A(\mem[7][7] ), .Y(test_so2) );
  DLY1X1M U378 ( .A(\mem[0][0] ), .Y(n372) );
  DLY1X1M U379 ( .A(\mem[0][1] ), .Y(n373) );
  DLY1X1M U380 ( .A(\mem[0][2] ), .Y(n374) );
  DLY1X1M U381 ( .A(\mem[0][3] ), .Y(n375) );
  DLY1X1M U382 ( .A(\mem[0][4] ), .Y(n376) );
  DLY1X1M U383 ( .A(\mem[0][5] ), .Y(n377) );
  DLY1X1M U384 ( .A(\mem[0][6] ), .Y(n378) );
  DLY1X1M U385 ( .A(\mem[0][7] ), .Y(n379) );
  DLY1X1M U386 ( .A(\mem[4][0] ), .Y(n380) );
  DLY1X1M U387 ( .A(\mem[4][1] ), .Y(n381) );
  DLY1X1M U388 ( .A(\mem[4][2] ), .Y(n382) );
  DLY1X1M U389 ( .A(\mem[4][3] ), .Y(n383) );
  DLY1X1M U390 ( .A(\mem[4][4] ), .Y(n384) );
  DLY1X1M U391 ( .A(\mem[4][5] ), .Y(n385) );
  DLY1X1M U392 ( .A(\mem[4][6] ), .Y(n386) );
  DLY1X1M U393 ( .A(\mem[4][7] ), .Y(n387) );
  SDFFRQX1M \mem_reg[0][7]  ( .D(n148), .SI(n378), .SE(n290), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][7] ) );
  SDFFRQX1M \mem_reg[0][6]  ( .D(n147), .SI(n377), .SE(n287), .CK(W_CLK), .RN(
        n241), .Q(\mem[0][6] ) );
endmodule


module DATA_SYNC_test_0 ( CLK, RST, IN, OUT, test_si, test_so, test_se );
  input [3:0] IN;
  output [3:0] OUT;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   n13, n14, n17, n18, n19, n20, n21, n22;
  wire   [3:0] Q;
  assign test_so = Q[3];

  INVX4M U15 ( .A(n14), .Y(n13) );
  INVX2M U16 ( .A(RST), .Y(n14) );
  DLY1X1M U17 ( .A(test_se), .Y(n17) );
  DLY1X1M U18 ( .A(n21), .Y(n18) );
  DLY1X1M U19 ( .A(n20), .Y(n19) );
  DLY1X1M U20 ( .A(test_se), .Y(n20) );
  DLY1X1M U21 ( .A(n17), .Y(n21) );
  DLY1X1M U22 ( .A(n17), .Y(n22) );
  SDFFSRX1M \Q_reg[3]  ( .D(IN[3]), .SI(Q[2]), .SE(n19), .CK(CLK), .SN(1'b1), 
        .RN(n13), .Q(Q[3]) );
  SDFFSRX1M \Q_reg[2]  ( .D(IN[2]), .SI(Q[1]), .SE(n22), .CK(CLK), .SN(1'b1), 
        .RN(n13), .Q(Q[2]) );
  SDFFSRX1M \Q_reg[1]  ( .D(IN[1]), .SI(Q[0]), .SE(n21), .CK(CLK), .SN(1'b1), 
        .RN(n13), .Q(Q[1]) );
  SDFFSRX1M \Q_reg[0]  ( .D(IN[0]), .SI(OUT[3]), .SE(n20), .CK(CLK), .SN(1'b1), 
        .RN(n13), .Q(Q[0]) );
  SDFFRQX1M \OUT_reg[0]  ( .D(Q[0]), .SI(test_si), .SE(n18), .CK(CLK), .RN(n13), .Q(OUT[0]) );
  SDFFRQX1M \OUT_reg[2]  ( .D(Q[2]), .SI(OUT[1]), .SE(n19), .CK(CLK), .RN(n13), 
        .Q(OUT[2]) );
  SDFFRQX1M \OUT_reg[1]  ( .D(Q[1]), .SI(OUT[0]), .SE(n22), .CK(CLK), .RN(n13), 
        .Q(OUT[1]) );
  SDFFRQX1M \OUT_reg[3]  ( .D(Q[3]), .SI(OUT[2]), .SE(n18), .CK(CLK), .RN(n13), 
        .Q(OUT[3]) );
endmodule


module DATA_SYNC_test_1 ( CLK, RST, IN, OUT, test_si, test_so, test_se );
  input [3:0] IN;
  output [3:0] OUT;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   n13, n14, n25, n26, n27, n28, n29, n30;
  wire   [3:0] Q;
  assign test_so = Q[3];

  SDFFRQX2M \Q_reg[3]  ( .D(IN[3]), .SI(Q[2]), .SE(n27), .CK(CLK), .RN(n13), 
        .Q(Q[3]) );
  SDFFRQX2M \Q_reg[2]  ( .D(IN[2]), .SI(Q[1]), .SE(n30), .CK(CLK), .RN(n13), 
        .Q(Q[2]) );
  SDFFRQX2M \Q_reg[1]  ( .D(IN[1]), .SI(Q[0]), .SE(n29), .CK(CLK), .RN(n13), 
        .Q(Q[1]) );
  SDFFRQX2M \Q_reg[0]  ( .D(IN[0]), .SI(OUT[3]), .SE(n28), .CK(CLK), .RN(n13), 
        .Q(Q[0]) );
  SDFFRQX1M \OUT_reg[3]  ( .D(Q[3]), .SI(OUT[2]), .SE(n26), .CK(CLK), .RN(RST), 
        .Q(OUT[3]) );
  SDFFRQX1M \OUT_reg[2]  ( .D(Q[2]), .SI(OUT[1]), .SE(n27), .CK(CLK), .RN(n13), 
        .Q(OUT[2]) );
  SDFFRQX1M \OUT_reg[1]  ( .D(Q[1]), .SI(OUT[0]), .SE(n30), .CK(CLK), .RN(n13), 
        .Q(OUT[1]) );
  SDFFRQX1M \OUT_reg[0]  ( .D(Q[0]), .SI(test_si), .SE(n26), .CK(CLK), .RN(n13), .Q(OUT[0]) );
  INVX4M U15 ( .A(n14), .Y(n13) );
  INVX2M U16 ( .A(RST), .Y(n14) );
  DLY1X1M U17 ( .A(test_se), .Y(n25) );
  DLY1X1M U18 ( .A(n29), .Y(n26) );
  DLY1X1M U19 ( .A(n28), .Y(n27) );
  DLY1X1M U20 ( .A(n25), .Y(n28) );
  DLY1X1M U21 ( .A(n25), .Y(n29) );
  DLY1X1M U22 ( .A(test_se), .Y(n30) );
endmodule


module FIFO_WR_test_1 ( W_CLK, W_RST, W_INC, RD_WR_PTR, W_ADDR, w_gray_out, 
        FULL, test_si, test_se );
  input [3:0] RD_WR_PTR;
  output [2:0] W_ADDR;
  output [3:0] w_gray_out;
  input W_CLK, W_RST, W_INC, test_si, test_se;
  output FULL;
  wire   n47, n48, n49, n50, N89, N90, N91, N92, n3, n4, n5, n7, n8, n9, n10,
         n11, n12, n16, n19, n21, n23, n30, n31, n33, n36, n37, n38, n39, n40,
         n41, n42, n1, n2;

  NAND2X1M U3 ( .A(W_ADDR[1]), .B(n5), .Y(n4) );
  INVX4M U12 ( .A(n31), .Y(n30) );
  INVX2M U13 ( .A(W_RST), .Y(n31) );
  NOR2X2M U14 ( .A(n33), .B(n7), .Y(n5) );
  INVX2M U15 ( .A(n8), .Y(FULL) );
  NAND2X2M U16 ( .A(W_INC), .B(n8), .Y(n7) );
  CLKXOR2X2M U17 ( .A(RD_WR_PTR[3]), .B(n47), .Y(n12) );
  CLKXOR2X2M U18 ( .A(n5), .B(W_ADDR[1]), .Y(n21) );
  XNOR2X2M U19 ( .A(W_ADDR[2]), .B(n4), .Y(n19) );
  XNOR2X2M U20 ( .A(W_ADDR[0]), .B(n7), .Y(n23) );
  XNOR2X2M U29 ( .A(n2), .B(n3), .Y(n16) );
  NAND2BX2M U30 ( .AN(n4), .B(W_ADDR[2]), .Y(n3) );
  NAND4X2M U31 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n8) );
  XNOR2X2M U32 ( .A(n50), .B(RD_WR_PTR[0]), .Y(n9) );
  XNOR2X2M U33 ( .A(n49), .B(RD_WR_PTR[1]), .Y(n10) );
  CLKXOR2X2M U34 ( .A(RD_WR_PTR[2]), .B(n48), .Y(n11) );
  INVX2M U35 ( .A(W_ADDR[0]), .Y(n33) );
  CLKXOR2X2M U36 ( .A(W_ADDR[2]), .B(W_ADDR[1]), .Y(N90) );
  CLKXOR2X2M U37 ( .A(W_ADDR[2]), .B(n2), .Y(N91) );
  XNOR2X2M U38 ( .A(n42), .B(n33), .Y(N89) );
  DLY1X1M U39 ( .A(test_se), .Y(n36) );
  DLY1X1M U40 ( .A(n40), .Y(n37) );
  DLY1X1M U41 ( .A(n39), .Y(n38) );
  DLY1X1M U45 ( .A(W_ADDR[1]), .Y(n42) );
  DLY1X1M U46 ( .A(n50), .Y(w_gray_out[0]) );
  DLY1X1M U47 ( .A(n49), .Y(w_gray_out[1]) );
  DLY1X1M U48 ( .A(n48), .Y(w_gray_out[2]) );
  DLY1X1M U49 ( .A(n47), .Y(w_gray_out[3]) );
  SDFFSRX1M \W_PTR_reg[3]  ( .D(n16), .SI(W_ADDR[2]), .SE(n38), .CK(W_CLK), 
        .SN(1'b1), .RN(n30), .Q(N92) );
  SDFFRQX1M \w_gray_out_reg[3]  ( .D(n2), .SI(w_gray_out[2]), .SE(n37), .CK(
        W_CLK), .RN(n30), .Q(n47) );
  SDFFRQX1M \w_gray_out_reg[2]  ( .D(N91), .SI(w_gray_out[1]), .SE(n37), .CK(
        W_CLK), .RN(n30), .Q(n48) );
  SDFFRQX1M \w_gray_out_reg[1]  ( .D(N90), .SI(w_gray_out[0]), .SE(n38), .CK(
        W_CLK), .RN(n30), .Q(n49) );
  SDFFRQX1M \w_gray_out_reg[0]  ( .D(N89), .SI(n2), .SE(n41), .CK(W_CLK), .RN(
        n30), .Q(n50) );
  SDFFRQX4M \W_PTR_reg[1]  ( .D(n21), .SI(W_ADDR[0]), .SE(n39), .CK(W_CLK), 
        .RN(n30), .Q(W_ADDR[1]) );
  SDFFRQX4M \W_PTR_reg[0]  ( .D(n23), .SI(test_si), .SE(n41), .CK(W_CLK), .RN(
        n30), .Q(W_ADDR[0]) );
  SDFFRQX4M \W_PTR_reg[2]  ( .D(n19), .SI(n42), .SE(n40), .CK(W_CLK), .RN(n30), 
        .Q(W_ADDR[2]) );
  INVXLM U4 ( .A(N92), .Y(n1) );
  INVX2M U5 ( .A(n1), .Y(n2) );
  BUFX2M U6 ( .A(n36), .Y(n40) );
  BUFX2M U7 ( .A(n36), .Y(n41) );
  BUFX2M U8 ( .A(test_se), .Y(n39) );
endmodule


module FIFO_RD_test_1 ( R_CLK, R_RST, R_INC, WR_RD_PTR, R_ADDR, r_gray_out, 
        EMPTY, test_si, test_se );
  input [3:0] WR_RD_PTR;
  output [2:0] R_ADDR;
  output [3:0] r_gray_out;
  input R_CLK, R_RST, R_INC, test_si, test_se;
  output EMPTY;
  wire   n54, n55, n56, n57, N89, N90, N91, N92, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n1, n33, n34, n36, n37, n38,
         n39, n43, n44, n45, n46, n47, n48, n49, n2, n3;

  SDFFRQX1M \r_gray_out_reg[3]  ( .D(N92), .SI(r_gray_out[2]), .SE(n45), .CK(
        R_CLK), .RN(n33), .Q(n54) );
  SDFFRQX1M \r_gray_out_reg[0]  ( .D(N89), .SI(n39), .SE(n49), .CK(R_CLK), 
        .RN(n33), .Q(n57) );
  SDFFRQX1M \r_gray_out_reg[1]  ( .D(N90), .SI(r_gray_out[0]), .SE(n44), .CK(
        R_CLK), .RN(n33), .Q(n56) );
  SDFFRQX1M \r_gray_out_reg[2]  ( .D(N91), .SI(r_gray_out[1]), .SE(n45), .CK(
        R_CLK), .RN(n33), .Q(n55) );
  SDFFRQX2M \R_PTR_reg[3]  ( .D(n26), .SI(n38), .SE(n48), .CK(R_CLK), .RN(n33), 
        .Q(N92) );
  SDFFRQX4M \R_PTR_reg[1]  ( .D(n28), .SI(n3), .SE(n44), .CK(R_CLK), .RN(R_RST), .Q(R_ADDR[1]) );
  INVX6M U12 ( .A(n1), .Y(R_ADDR[2]) );
  INVX4M U21 ( .A(n34), .Y(n33) );
  INVX2M U22 ( .A(R_RST), .Y(n34) );
  INVX2M U23 ( .A(n21), .Y(EMPTY) );
  NOR2X2M U24 ( .A(n3), .B(n20), .Y(n19) );
  XNOR2X2M U25 ( .A(n55), .B(WR_RD_PTR[2]), .Y(n25) );
  NAND4X2M U26 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n21) );
  XNOR2X2M U27 ( .A(n56), .B(WR_RD_PTR[1]), .Y(n22) );
  XNOR2X2M U28 ( .A(n54), .B(WR_RD_PTR[3]), .Y(n24) );
  XNOR2X2M U29 ( .A(n57), .B(WR_RD_PTR[0]), .Y(n23) );
  INVX2M U30 ( .A(R_ADDR[2]), .Y(n38) );
  CLKXOR2X2M U31 ( .A(R_ADDR[1]), .B(n19), .Y(n28) );
  XNOR2X2M U32 ( .A(n38), .B(R_ADDR[1]), .Y(N90) );
  XNOR2X2M U33 ( .A(R_ADDR[2]), .B(n18), .Y(n27) );
  XNOR2X2M U34 ( .A(R_ADDR[0]), .B(n20), .Y(n29) );
  OAI21X2M U35 ( .A0(N92), .A1(n38), .B0(n17), .Y(N91) );
  NAND2X2M U36 ( .A(R_ADDR[1]), .B(n19), .Y(n18) );
  NAND2X2M U37 ( .A(N92), .B(n38), .Y(n17) );
  NAND2X2M U38 ( .A(R_INC), .B(n21), .Y(n20) );
  OAI211X2M U40 ( .A0(n36), .A1(n39), .B0(n16), .C0(n17), .Y(n26) );
  NAND3X2M U41 ( .A(n36), .B(n39), .C(R_ADDR[2]), .Y(n16) );
  INVX2M U42 ( .A(N92), .Y(n39) );
  INVX2M U43 ( .A(n18), .Y(n36) );
  XNOR2X2M U44 ( .A(R_ADDR[1]), .B(n3), .Y(N89) );
  DLY1X1M U45 ( .A(n46), .Y(n43) );
  DLY1X1M U46 ( .A(n48), .Y(n44) );
  DLY1X1M U47 ( .A(n47), .Y(n45) );
  DLY1X1M U48 ( .A(test_se), .Y(n46) );
  DLY1X1M U49 ( .A(n43), .Y(n47) );
  DLY1X1M U50 ( .A(n46), .Y(n48) );
  DLY1X1M U51 ( .A(n43), .Y(n49) );
  DLY1X1M U52 ( .A(n54), .Y(r_gray_out[3]) );
  DLY1X1M U53 ( .A(n55), .Y(r_gray_out[2]) );
  DLY1X1M U54 ( .A(n56), .Y(r_gray_out[1]) );
  DLY1X1M U55 ( .A(n57), .Y(r_gray_out[0]) );
  SDFFSRX1M \R_PTR_reg[0]  ( .D(n29), .SI(test_si), .SE(n47), .CK(R_CLK), .SN(
        1'b1), .RN(R_RST), .Q(R_ADDR[0]), .QN(n37) );
  SDFFSRX1M \R_PTR_reg[2]  ( .D(n27), .SI(R_ADDR[1]), .SE(n49), .CK(R_CLK), 
        .SN(1'b1), .RN(n33), .QN(n1) );
  INVXLM U3 ( .A(n37), .Y(n2) );
  INVX2M U4 ( .A(n2), .Y(n3) );
endmodule


module FIFO_DATA_WIDTH8_test_1 ( WR_DATA, W_INC, W_CLK, W_RST, R_CLK, R_RST, 
        R_INC, RD_DATA, FULL, EMPTY, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_INC, W_CLK, W_RST, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   _0_net_, n1, n2, n3, n4, n5, n7, n8, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;
  wire   [2:0] W_ADDR;
  wire   [2:0] R_ADDR;
  wire   [3:0] r_gray_out;
  wire   [3:0] RD_WR_PTR;
  wire   [3:0] w_gray_out;
  wire   [3:0] WR_RD_PTR;
  assign test_so2 = r_gray_out[3];

  INVX2M U3 ( .A(n4), .Y(n3) );
  NOR2BX2M U4 ( .AN(W_INC), .B(FULL), .Y(_0_net_) );
  INVX2M U5 ( .A(W_RST), .Y(n4) );
  INVX2M U7 ( .A(R_RST), .Y(n2) );
  DLY1X1M U8 ( .A(n17), .Y(n12) );
  DLY1X1M U9 ( .A(n17), .Y(n13) );
  DLY1X1M U10 ( .A(test_se), .Y(n14) );
  DLY1X1M U11 ( .A(n14), .Y(n15) );
  DLY1X1M U12 ( .A(n14), .Y(n16) );
  DLY1X1M U13 ( .A(n15), .Y(n17) );
  DLY1X1M U14 ( .A(n15), .Y(n18) );
  DLY1X1M U15 ( .A(n16), .Y(n19) );
  DLY1X1M U16 ( .A(n16), .Y(n20) );
  FIFO_MEM_DATA_WIDTH8_test_1 U0 ( .WR_DATA(WR_DATA), .W_CLKEN(_0_net_), 
        .W_ADDR(W_ADDR), .R_ADDR(R_ADDR), .W_CLK(W_CLK), .W_RST(n3), .RD_DATA(
        RD_DATA), .test_si2(test_si2), .test_si1(n7), .test_so2(n5), 
        .test_so1(test_so1), .test_se(n12) );
  DATA_SYNC_test_0 D0 ( .CLK(W_CLK), .RST(n3), .IN(r_gray_out), .OUT(RD_WR_PTR), .test_si(test_si1), .test_so(n8), .test_se(n18) );
  DATA_SYNC_test_1 D1 ( .CLK(R_CLK), .RST(n1), .IN(w_gray_out), .OUT(WR_RD_PTR), .test_si(n8), .test_so(n7), .test_se(n20) );
  FIFO_WR_test_1 U1 ( .W_CLK(W_CLK), .W_RST(n3), .W_INC(W_INC), .RD_WR_PTR(
        RD_WR_PTR), .W_ADDR(W_ADDR), .w_gray_out(w_gray_out), .FULL(FULL), 
        .test_si(n5), .test_se(n19) );
  FIFO_RD_test_1 U2 ( .R_CLK(R_CLK), .R_RST(n1), .R_INC(R_INC), .WR_RD_PTR(
        WR_RD_PTR), .R_ADDR(R_ADDR), .r_gray_out(r_gray_out), .EMPTY(EMPTY), 
        .test_si(w_gray_out[3]), .test_se(n13) );
  INVX4M U6 ( .A(n2), .Y(n1) );
endmodule


module Clock_Divider_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Clock_Divider_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, flag, N9, N11, N12, N13, N14, N15, N16, N17, N23, N24, N25,
         N26, N27, N28, N29, N30, N52, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n1, n2, n3, n4,
         n5, n6, n7, n8, n19, n20, n40, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18;
  wire   [7:0] counter;
  assign test_so = n3;

  SDFFRQX1M flag_reg ( .D(n31), .SI(n10), .SE(n86), .CK(i_ref_clk), .RN(n52), 
        .Q(flag) );
  SDFFRQX1M \counter_reg[7]  ( .D(n32), .SI(n98), .SE(n87), .CK(i_ref_clk), 
        .RN(n52), .Q(counter[7]) );
  SDFFRQX1M \counter_reg[5]  ( .D(n34), .SI(n97), .SE(n94), .CK(i_ref_clk), 
        .RN(n52), .Q(counter[5]) );
  SDFFRQX1M \counter_reg[0]  ( .D(n39), .SI(test_si), .SE(n93), .CK(i_ref_clk), 
        .RN(n52), .Q(counter[0]) );
  SDFFRQX1M \counter_reg[1]  ( .D(n38), .SI(n7), .SE(n86), .CK(i_ref_clk), 
        .RN(n52), .Q(counter[1]) );
  AOI21BX2M U5 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n54), .Y(n1)
         );
  INVXLM U6 ( .A(flag), .Y(n2) );
  INVX2M U7 ( .A(n2), .Y(n3) );
  NOR3X2M U12 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n28) );
  XNOR2X2M U17 ( .A(n12), .B(i_div_ratio[3]), .Y(n74) );
  XNOR2X2M U18 ( .A(n14), .B(i_div_ratio[4]), .Y(n76) );
  NOR4X1M U19 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n29) );
  XNOR2X2M U20 ( .A(n16), .B(i_div_ratio[5]), .Y(n77) );
  INVXLM U21 ( .A(counter[1]), .Y(n4) );
  INVX4M U22 ( .A(n4), .Y(n5) );
  NOR3X4M U23 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n57), .Y(N16) );
  XNOR2X2M U24 ( .A(n18), .B(i_div_ratio[7]), .Y(n79) );
  INVXLM U25 ( .A(counter[0]), .Y(n6) );
  INVX4M U26 ( .A(n6), .Y(n7) );
  INVXLM U27 ( .A(counter[7]), .Y(n8) );
  INVX2M U28 ( .A(n8), .Y(n19) );
  INVXLM U29 ( .A(counter[5]), .Y(n20) );
  INVX2M U30 ( .A(n20), .Y(n40) );
  NOR2BX2M U41 ( .AN(n7), .B(i_div_ratio[1]), .Y(n71) );
  NOR2BX2M U42 ( .AN(i_div_ratio[1]), .B(n7), .Y(n72) );
  NOR3X2M U43 ( .A(n61), .B(N16), .C(n19), .Y(n67) );
  NOR2X2M U44 ( .A(n70), .B(N9), .Y(n59) );
  OR2X2M U45 ( .A(n56), .B(i_div_ratio[5]), .Y(n57) );
  NAND2BX2M U46 ( .AN(i_div_ratio[2]), .B(N9), .Y(n54) );
  OR2X2M U47 ( .A(n54), .B(i_div_ratio[3]), .Y(n55) );
  OR2X2M U48 ( .A(n55), .B(i_div_ratio[4]), .Y(n56) );
  OAI2BB1XLM U49 ( .A0N(n56), .A1N(i_div_ratio[5]), .B0(n57), .Y(N13) );
  OAI2BB1XLM U50 ( .A0N(n55), .A1N(i_div_ratio[4]), .B0(n56), .Y(N12) );
  OAI2BB1XLM U51 ( .A0N(n54), .A1N(i_div_ratio[3]), .B0(n55), .Y(N11) );
  BUFX6M U52 ( .A(n23), .Y(n51) );
  NOR2BX8M U53 ( .AN(n22), .B(n51), .Y(n26) );
  INVX6M U54 ( .A(n53), .Y(n52) );
  INVX2M U55 ( .A(i_rst_n), .Y(n53) );
  AOI2B1X2M U56 ( .A1N(i_div_ratio[0]), .A0(N17), .B0(n82), .Y(n22) );
  INVX2M U57 ( .A(n25), .Y(n82) );
  CLKXOR2X2M U58 ( .A(n10), .B(n21), .Y(n30) );
  NOR2X2M U59 ( .A(n22), .B(n51), .Y(n21) );
  INVX2M U60 ( .A(i_div_ratio[1]), .Y(N9) );
  NAND2X2M U61 ( .A(i_div_ratio[0]), .B(n27), .Y(n25) );
  AO2B2X2M U62 ( .B0(N17), .B1(n3), .A0(N52), .A1N(n3), .Y(n27) );
  AO22X1M U63 ( .A0(n5), .A1(n51), .B0(N24), .B1(n26), .Y(n38) );
  AO22X1M U64 ( .A0(n96), .A1(n51), .B0(N25), .B1(n26), .Y(n37) );
  AO22X1M U65 ( .A0(n95), .A1(n51), .B0(N26), .B1(n26), .Y(n36) );
  AO22X1M U66 ( .A0(n97), .A1(n51), .B0(N27), .B1(n26), .Y(n35) );
  AO22X1M U67 ( .A0(n40), .A1(n51), .B0(N28), .B1(n26), .Y(n34) );
  AO22X1M U68 ( .A0(n98), .A1(n51), .B0(N29), .B1(n26), .Y(n33) );
  AO22X1M U69 ( .A0(n19), .A1(n51), .B0(N30), .B1(n26), .Y(n32) );
  AO22X1M U70 ( .A0(n7), .A1(n51), .B0(N23), .B1(n26), .Y(n39) );
  CLKXOR2X2M U71 ( .A(n3), .B(n24), .Y(n31) );
  NOR2X2M U72 ( .A(n51), .B(n25), .Y(n24) );
  INVX2M U73 ( .A(n7), .Y(n70) );
  OAI2BB1X2M U74 ( .A0N(n28), .A1N(n29), .B0(i_clk_en), .Y(n23) );
  MX2XLM U75 ( .A(i_ref_clk), .B(n10), .S0(n83), .Y(o_div_clk) );
  INVX2M U76 ( .A(n51), .Y(n83) );
  XNOR2X1M U77 ( .A(i_div_ratio[6]), .B(n57), .Y(N14) );
  OAI21X1M U78 ( .A0(i_div_ratio[6]), .A1(n57), .B0(i_div_ratio[7]), .Y(n58)
         );
  NAND2BX1M U79 ( .AN(N16), .B(n58), .Y(N15) );
  XNOR2X1M U80 ( .A(N11), .B(n12), .Y(n69) );
  OAI22X1M U81 ( .A0(n5), .A1(n59), .B0(n59), .B1(n1), .Y(n68) );
  CLKNAND2X2M U82 ( .A(N9), .B(n70), .Y(n60) );
  AOI22X1M U83 ( .A0(n60), .A1(n1), .B0(n60), .B1(n5), .Y(n61) );
  CLKXOR2X2M U84 ( .A(N12), .B(n14), .Y(n65) );
  CLKXOR2X2M U85 ( .A(N13), .B(n16), .Y(n64) );
  CLKXOR2X2M U86 ( .A(N14), .B(n40), .Y(n63) );
  CLKXOR2X2M U87 ( .A(N15), .B(n18), .Y(n62) );
  NOR4X1M U88 ( .A(n65), .B(n64), .C(n63), .D(n62), .Y(n66) );
  AND4X1M U89 ( .A(n69), .B(n68), .C(n67), .D(n66), .Y(N17) );
  OAI2B2X1M U90 ( .A1N(i_div_ratio[2]), .A0(n71), .B0(n5), .B1(n71), .Y(n75)
         );
  OAI2B2X1M U91 ( .A1N(n5), .A0(n72), .B0(i_div_ratio[2]), .B1(n72), .Y(n73)
         );
  NAND4BX1M U92 ( .AN(n19), .B(n75), .C(n74), .D(n73), .Y(n81) );
  XNOR2X1M U93 ( .A(i_div_ratio[6]), .B(n40), .Y(n78) );
  NAND4X1M U94 ( .A(n79), .B(n78), .C(n77), .D(n76), .Y(n80) );
  NOR2X1M U95 ( .A(n81), .B(n80), .Y(N52) );
  DLY1X1M U96 ( .A(n92), .Y(n86) );
  DLY1X1M U97 ( .A(n91), .Y(n87) );
  DLY1X1M U98 ( .A(test_se), .Y(n88) );
  DLY1X1M U99 ( .A(n88), .Y(n89) );
  DLY1X1M U100 ( .A(n88), .Y(n90) );
  DLY1X1M U101 ( .A(n89), .Y(n91) );
  DLY1X1M U102 ( .A(n90), .Y(n92) );
  DLY1X1M U103 ( .A(n90), .Y(n93) );
  DLY1X1M U104 ( .A(n89), .Y(n94) );
  DLY1X1M U105 ( .A(n14), .Y(n95) );
  DLY1X1M U106 ( .A(n12), .Y(n96) );
  DLY1X1M U107 ( .A(n16), .Y(n97) );
  DLY1X1M U108 ( .A(n18), .Y(n98) );
  Clock_Divider_0_DW01_inc_0 add_40 ( .A({n19, n18, n40, n16, n14, n12, n5, n7}), .SUM({N30, N29, N28, N27, N26, N25, N24, N23}) );
  SDFFSRX1M div_clk_reg ( .D(n30), .SI(n19), .SE(n87), .CK(i_ref_clk), .SN(
        1'b1), .RN(n52), .Q(div_clk) );
  SDFFSRX1M \counter_reg[6]  ( .D(n33), .SI(n40), .SE(n94), .CK(i_ref_clk), 
        .SN(1'b1), .RN(n52), .Q(counter[6]) );
  SDFFSRX1M \counter_reg[4]  ( .D(n35), .SI(n95), .SE(n93), .CK(i_ref_clk), 
        .SN(1'b1), .RN(n52), .Q(counter[4]) );
  SDFFSRX1M \counter_reg[3]  ( .D(n36), .SI(n96), .SE(n92), .CK(i_ref_clk), 
        .SN(1'b1), .RN(n52), .Q(counter[3]) );
  SDFFSRX1M \counter_reg[2]  ( .D(n37), .SI(n5), .SE(n91), .CK(i_ref_clk), 
        .SN(1'b1), .RN(n52), .Q(counter[2]) );
  INVXLM U3 ( .A(div_clk), .Y(n9) );
  INVX2M U4 ( .A(n9), .Y(n10) );
  INVXLM U8 ( .A(counter[2]), .Y(n11) );
  INVX2M U9 ( .A(n11), .Y(n12) );
  INVXLM U10 ( .A(counter[3]), .Y(n13) );
  INVX2M U11 ( .A(n13), .Y(n14) );
  INVXLM U13 ( .A(counter[4]), .Y(n15) );
  INVX2M U14 ( .A(n15), .Y(n16) );
  INVXLM U15 ( .A(counter[6]), .Y(n17) );
  INVX2M U16 ( .A(n17), .Y(n18) );
endmodule


module Clock_Divider_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Clock_Divider_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, flag, N9, N11, N12, N13, N14, N15, N16, N17, N23, N24, N25,
         N26, N27, N28, N29, N30, N52, n1, n2, n3, n4, n5, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124;
  wire   [7:0] counter;
  assign test_so = flag;

  SDFFRQX2M flag_reg ( .D(n86), .SI(n124), .SE(n116), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(flag) );
  SDFFRQX2M \counter_reg[7]  ( .D(n85), .SI(n119), .SE(n110), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[6]  ( .D(n84), .SI(n123), .SE(n109), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n83), .SI(n122), .SE(n117), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n82), .SI(n121), .SE(n116), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n81), .SI(n120), .SE(n115), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n80), .SI(n3), .SE(n114), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[2]) );
  SDFFRQX1M div_clk_reg ( .D(n87), .SI(n118), .SE(n110), .CK(i_ref_clk), .RN(
        n46), .Q(div_clk) );
  SDFFRQX1M \counter_reg[1]  ( .D(n79), .SI(n5), .SE(n109), .CK(i_ref_clk), 
        .RN(n46), .Q(counter[1]) );
  SDFFRQX1M \counter_reg[0]  ( .D(n78), .SI(test_si), .SE(n117), .CK(i_ref_clk), .RN(n46), .Q(counter[0]) );
  AOI21BX2M U5 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n48), .Y(n1)
         );
  INVXLM U6 ( .A(counter[1]), .Y(n2) );
  INVX4M U7 ( .A(n2), .Y(n3) );
  INVXLM U12 ( .A(counter[0]), .Y(n4) );
  INVX4M U17 ( .A(n4), .Y(n5) );
  NOR3X2M U28 ( .A(n55), .B(N16), .C(counter[7]), .Y(n61) );
  NOR3X4M U29 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n51), .Y(N16) );
  NAND2BX2M U30 ( .AN(i_div_ratio[2]), .B(N9), .Y(n48) );
  NOR2X2M U31 ( .A(n64), .B(N9), .Y(n53) );
  OR2X2M U32 ( .A(n50), .B(i_div_ratio[5]), .Y(n51) );
  OR2X2M U33 ( .A(n48), .B(i_div_ratio[3]), .Y(n49) );
  OR2X2M U34 ( .A(n49), .B(i_div_ratio[4]), .Y(n50) );
  OAI2BB1XLM U35 ( .A0N(n50), .A1N(i_div_ratio[5]), .B0(n51), .Y(N13) );
  OAI2BB1XLM U36 ( .A0N(n49), .A1N(i_div_ratio[4]), .B0(n50), .Y(N12) );
  OAI2BB1XLM U37 ( .A0N(n48), .A1N(i_div_ratio[3]), .B0(n49), .Y(N11) );
  NOR2BX2M U38 ( .AN(i_div_ratio[1]), .B(n5), .Y(n66) );
  NOR2BX2M U39 ( .AN(n5), .B(i_div_ratio[1]), .Y(n65) );
  BUFX6M U40 ( .A(n94), .Y(n45) );
  INVX2M U41 ( .A(i_div_ratio[1]), .Y(N9) );
  NOR2BX8M U42 ( .AN(n95), .B(n45), .Y(n91) );
  AOI2B1X2M U43 ( .A1N(i_div_ratio[0]), .A0(N17), .B0(n76), .Y(n95) );
  INVX2M U44 ( .A(n92), .Y(n76) );
  INVX6M U45 ( .A(n47), .Y(n46) );
  INVX2M U46 ( .A(i_rst_n), .Y(n47) );
  CLKXOR2X2M U47 ( .A(n96), .B(div_clk), .Y(n87) );
  NOR2X2M U48 ( .A(n95), .B(n45), .Y(n96) );
  NAND2X2M U49 ( .A(i_div_ratio[0]), .B(n90), .Y(n92) );
  AO2B2X2M U50 ( .B0(N17), .B1(flag), .A0(N52), .A1N(flag), .Y(n90) );
  AO22X1M U51 ( .A0(n3), .A1(n45), .B0(N24), .B1(n91), .Y(n79) );
  AO22X1M U52 ( .A0(n120), .A1(n45), .B0(N25), .B1(n91), .Y(n80) );
  AO22X1M U53 ( .A0(n121), .A1(n45), .B0(N26), .B1(n91), .Y(n81) );
  AO22X1M U54 ( .A0(n122), .A1(n45), .B0(N27), .B1(n91), .Y(n82) );
  AO22X1M U55 ( .A0(n123), .A1(n45), .B0(N28), .B1(n91), .Y(n83) );
  AO22X1M U56 ( .A0(n119), .A1(n45), .B0(N29), .B1(n91), .Y(n84) );
  AO22X1M U57 ( .A0(n118), .A1(n45), .B0(N30), .B1(n91), .Y(n85) );
  AO22X1M U58 ( .A0(n5), .A1(n45), .B0(N23), .B1(n91), .Y(n78) );
  CLKXOR2X2M U59 ( .A(flag), .B(n93), .Y(n86) );
  NOR2X2M U60 ( .A(n45), .B(n92), .Y(n93) );
  INVX2M U61 ( .A(n5), .Y(n64) );
  OAI2BB1X2M U62 ( .A0N(n89), .A1N(n88), .B0(i_clk_en), .Y(n94) );
  NOR4X2M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n88) );
  NOR3X2M U64 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n89) );
  MX2XLM U65 ( .A(i_ref_clk), .B(n124), .S0(n77), .Y(o_div_clk) );
  INVX2M U66 ( .A(n45), .Y(n77) );
  XNOR2X1M U67 ( .A(i_div_ratio[6]), .B(n51), .Y(N14) );
  OAI21X1M U68 ( .A0(i_div_ratio[6]), .A1(n51), .B0(i_div_ratio[7]), .Y(n52)
         );
  NAND2BX1M U69 ( .AN(N16), .B(n52), .Y(N15) );
  XNOR2X1M U70 ( .A(N11), .B(counter[2]), .Y(n63) );
  OAI22X1M U71 ( .A0(n3), .A1(n53), .B0(n53), .B1(n1), .Y(n62) );
  CLKNAND2X2M U72 ( .A(N9), .B(n64), .Y(n54) );
  AOI22X1M U73 ( .A0(n54), .A1(n1), .B0(n54), .B1(n3), .Y(n55) );
  CLKXOR2X2M U74 ( .A(N12), .B(counter[3]), .Y(n59) );
  CLKXOR2X2M U75 ( .A(N13), .B(counter[4]), .Y(n58) );
  CLKXOR2X2M U76 ( .A(N14), .B(counter[5]), .Y(n57) );
  CLKXOR2X2M U77 ( .A(N15), .B(counter[6]), .Y(n56) );
  NOR4X1M U78 ( .A(n59), .B(n58), .C(n57), .D(n56), .Y(n60) );
  AND4X1M U79 ( .A(n63), .B(n62), .C(n61), .D(n60), .Y(N17) );
  OAI2B2X1M U80 ( .A1N(i_div_ratio[2]), .A0(n65), .B0(n3), .B1(n65), .Y(n69)
         );
  XNOR2X1M U81 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n68) );
  OAI2B2X1M U82 ( .A1N(n3), .A0(n66), .B0(i_div_ratio[2]), .B1(n66), .Y(n67)
         );
  NAND4BX1M U83 ( .AN(counter[7]), .B(n69), .C(n68), .D(n67), .Y(n75) );
  XNOR2X1M U84 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n73) );
  XNOR2X1M U85 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n72) );
  XNOR2X1M U86 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n71) );
  XNOR2X1M U87 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n70) );
  NAND4X1M U88 ( .A(n73), .B(n72), .C(n71), .D(n70), .Y(n74) );
  NOR2X1M U89 ( .A(n75), .B(n74), .Y(N52) );
  DLY1X1M U90 ( .A(n114), .Y(n109) );
  DLY1X1M U91 ( .A(n115), .Y(n110) );
  DLY1X1M U92 ( .A(test_se), .Y(n111) );
  DLY1X1M U93 ( .A(n111), .Y(n112) );
  DLY1X1M U94 ( .A(n111), .Y(n113) );
  DLY1X1M U95 ( .A(n113), .Y(n114) );
  DLY1X1M U96 ( .A(n112), .Y(n115) );
  DLY1X1M U97 ( .A(n113), .Y(n116) );
  DLY1X1M U98 ( .A(n112), .Y(n117) );
  DLY1X1M U99 ( .A(counter[7]), .Y(n118) );
  DLY1X1M U100 ( .A(counter[6]), .Y(n119) );
  DLY1X1M U101 ( .A(counter[2]), .Y(n120) );
  DLY1X1M U102 ( .A(counter[3]), .Y(n121) );
  DLY1X1M U103 ( .A(counter[4]), .Y(n122) );
  DLY1X1M U104 ( .A(counter[5]), .Y(n123) );
  DLY1X1M U105 ( .A(div_clk), .Y(n124) );
  Clock_Divider_1_DW01_inc_0 add_40 ( .A({counter[7:2], n3, n5}), .SUM({N30, 
        N29, N28, N27, N26, N25, N24, N23}) );
endmodule


module clk_div_mux ( IN, div_ratio_rx );
  input [5:0] IN;
  output [7:0] div_ratio_rx;
  wire   n1, n2, n3;
  assign div_ratio_rx[3] = 1'b0;
  assign div_ratio_rx[4] = 1'b0;
  assign div_ratio_rx[5] = 1'b0;
  assign div_ratio_rx[6] = 1'b0;
  assign div_ratio_rx[7] = 1'b0;

  NOR3X6M U3 ( .A(IN[2]), .B(IN[1]), .C(IN[0]), .Y(n2) );
  NOR3BX4M U4 ( .AN(IN[4]), .B(IN[3]), .C(IN[5]), .Y(n3) );
  NOR3BX4M U5 ( .AN(IN[3]), .B(IN[4]), .C(IN[5]), .Y(n1) );
  CLKAND2X4M U6 ( .A(n2), .B(n3), .Y(div_ratio_rx[1]) );
  CLKAND2X4M U7 ( .A(n1), .B(n2), .Y(div_ratio_rx[2]) );
  OAI21X2M U8 ( .A0(n1), .A1(n3), .B0(n2), .Y(div_ratio_rx[0]) );
endmodule


module data_synchronizer_data_width8_test_1 ( unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   n59, n19, n20, pulse_ff, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22,
         n36, n37, n38, n39, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n2, n5;
  wire   [1:0] Q;

  SDFFRQX1M enable_pulse_reg ( .D(n39), .SI(n58), .SE(n47), .CK(CLK), .RN(n37), 
        .Q(enable_pulse) );
  SDFFRQX1M \Q_reg[0]  ( .D(bus_enable), .SI(test_si), .SE(n55), .CK(CLK), 
        .RN(n37), .Q(Q[0]) );
  INVX4M U4 ( .A(n22), .Y(sync_bus[2]) );
  AO22XLM U5 ( .A0(unsync_bus[1]), .A1(n39), .B0(sync_bus[1]), .B1(n36), .Y(n6) );
  AO22XLM U6 ( .A0(unsync_bus[2]), .A1(n39), .B0(sync_bus[2]), .B1(n36), .Y(n8) );
  AO22XLM U7 ( .A0(unsync_bus[0]), .A1(n39), .B0(sync_bus[0]), .B1(n36), .Y(n4) );
  AO22XLM U8 ( .A0(unsync_bus[6]), .A1(n39), .B0(n36), .B1(n57), .Y(n16) );
  AO22XLM U9 ( .A0(unsync_bus[5]), .A1(n39), .B0(n56), .B1(n36), .Y(n14) );
  INVX4M U34 ( .A(n1), .Y(n39) );
  BUFX4M U35 ( .A(n1), .Y(n36) );
  INVX6M U36 ( .A(n38), .Y(n37) );
  INVX2M U37 ( .A(RST), .Y(n38) );
  NAND2BX2M U38 ( .AN(pulse_ff), .B(Q[1]), .Y(n1) );
  AO22X1M U39 ( .A0(unsync_bus[3]), .A1(n39), .B0(sync_bus[3]), .B1(n36), .Y(
        n10) );
  AO22X1M U41 ( .A0(unsync_bus[7]), .A1(n39), .B0(n36), .B1(n44), .Y(n18) );
  DLY1X1M U43 ( .A(n59), .Y(n44) );
  DLY1X1M U44 ( .A(n49), .Y(n45) );
  DLY1X1M U45 ( .A(n49), .Y(n46) );
  DLY1X1M U46 ( .A(n51), .Y(n47) );
  DLY1X1M U47 ( .A(n46), .Y(n48) );
  DLY1X1M U48 ( .A(test_se), .Y(n49) );
  DLY1X1M U49 ( .A(n45), .Y(n50) );
  DLY1X1M U50 ( .A(n45), .Y(n51) );
  DLY1X1M U51 ( .A(n50), .Y(n52) );
  DLY1X1M U53 ( .A(n51), .Y(n54) );
  DLY1X1M U54 ( .A(n46), .Y(n55) );
  DLY1X1M U55 ( .A(sync_bus[5]), .Y(n56) );
  DLY1X1M U56 ( .A(sync_bus[6]), .Y(n57) );
  DLY1X1M U57 ( .A(Q[1]), .Y(n58) );
  SDFFSRX1M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(n48), .CK(CLK), 
        .SN(1'b1), .RN(n37), .Q(n20) );
  SDFFSRX1M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(n54), .CK(CLK), 
        .SN(1'b1), .RN(RST), .QN(n22) );
  SDFFSRX1M \sync_bus_reg[6]  ( .D(n16), .SI(n56), .SE(n53), .CK(CLK), .SN(
        1'b1), .RN(n37), .Q(n19) );
  SDFFRQX1M pulse_ff_reg ( .D(Q[1]), .SI(enable_pulse), .SE(n48), .CK(CLK), 
        .RN(n37), .Q(pulse_ff) );
  SDFFRQX1M \sync_bus_reg[7]  ( .D(n18), .SI(n57), .SE(n54), .CK(CLK), .RN(n37), .Q(n59) );
  SDFFRQX4M \sync_bus_reg[0]  ( .D(n4), .SI(pulse_ff), .SE(n52), .CK(CLK), 
        .RN(n37), .Q(sync_bus[0]) );
  SDFFRQX4M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(n55), .CK(CLK), 
        .RN(n37), .Q(sync_bus[1]) );
  SDFFSRX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(n52), .CK(CLK), 
        .SN(1'b1), .RN(n37), .Q(sync_bus[3]) );
  SDFFSRX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(n47), .CK(CLK), 
        .SN(1'b1), .RN(n37), .Q(sync_bus[4]) );
  SDFFRQX2M \Q_reg[1]  ( .D(Q[0]), .SI(Q[0]), .SE(n53), .CK(CLK), .RN(RST), 
        .Q(Q[1]) );
  CLKBUFX2M U3 ( .A(n59), .Y(sync_bus[7]) );
  BUFX2M U10 ( .A(n50), .Y(n53) );
  INVXLM U11 ( .A(n20), .Y(n2) );
  INVX2M U12 ( .A(n2), .Y(sync_bus[5]) );
  AO22XLM U13 ( .A0(unsync_bus[4]), .A1(n39), .B0(sync_bus[4]), .B1(n36), .Y(
        n12) );
  INVXLM U14 ( .A(n19), .Y(n5) );
  INVX2M U15 ( .A(n5), .Y(sync_bus[6]) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module system_top_dft ( REF_CLK, UART_CLK, RST, RX_IN, SI, SE, scan_clk, 
        scan_rst, test_mode, SO, TX_OUT, PAR_ERR, STP_ERR );
  input [2:0] SI;
  output [2:0] SO;
  input REF_CLK, UART_CLK, RST, RX_IN, SE, scan_clk, scan_rst, test_mode;
  output TX_OUT, PAR_ERR, STP_ERR;
  wire   STP_ERR, REF_CLK_scan, RST_M_1, OUT_Valid, RdData_Valid, RX_D_VLD, EN,
         CLK_EN, WrEn, RdEn, TX_D_VLD, F_FULL, ALU_CLK, _0_net_, TX_CLK_scan,
         RX_CLK_scan, RST_M_2, F_EMPTY, busy, sync_en, RST_M_0, SYNC_RST_REF,
         UART_CLK_scan, SYNC_RST_UART, RD_INC, TX_CLK, RX_CLK, n1, n2, n3, n4,
         n5, n7, n8, n9, n11, n12, n13, n15, n16, n18, n19, n20, n21, n23, n25,
         n26, n27, n28;
  wire   [15:0] ALU_OUT;
  wire   [7:0] RdData;
  wire   [7:0] RX_P_DATA;
  wire   [3:0] ALU_FUN;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] TX_P_DATA;
  wire   [7:0] operandA;
  wire   [7:0] operandB;
  wire   [7:0] UART_CONFIG;
  wire   [7:0] div_ratio;
  wire   [7:0] F_RdData;
  wire   [7:0] RX_OUT;
  wire   [7:0] div_ratio_rx;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;
  assign SO[1] = STP_ERR;

  INVX6M U13 ( .A(n5), .Y(n4) );
  INVX4M U14 ( .A(n3), .Y(n2) );
  BUFX4M U15 ( .A(test_mode), .Y(n1) );
  INVX2M U16 ( .A(RST_M_1), .Y(n5) );
  INVX2M U17 ( .A(RST_M_2), .Y(n3) );
  OR2X2M U18 ( .A(CLK_EN), .B(n1), .Y(_0_net_) );
  DLY1X1M U25 ( .A(n25), .Y(n18) );
  DLY1X1M U26 ( .A(n26), .Y(n19) );
  DLY1X1M U27 ( .A(n27), .Y(n20) );
  DLY1X1M U28 ( .A(n28), .Y(n21) );
  DLY1X1M U30 ( .A(ALU_OUT[2]), .Y(n23) );
  DLY1X1M U32 ( .A(n28), .Y(n25) );
  DLY1X1M U33 ( .A(SE), .Y(n26) );
  DLY1X1M U34 ( .A(n26), .Y(n27) );
  DLY1X1M U35 ( .A(n27), .Y(n28) );
  SYS_CTRL_data_width8_addr4_out_width16_test_1 U0 ( .CLK(REF_CLK_scan), .RST(
        n4), .ALU_OUT({ALU_OUT[15:3], n23, ALU_OUT[1:0]}), .OUT_Valid(
        OUT_Valid), .RdData(RdData), .RdData_Valid(RdData_Valid), .RX_P_DATA(
        RX_P_DATA), .RX_D_VLD(RX_D_VLD), .fifo_full(F_FULL), .ALU_FUN(ALU_FUN), 
        .EN(EN), .CLK_EN(CLK_EN), .Address(Address), .WrEn(WrEn), .RdEn(RdEn), 
        .WrData(WrData), .TX_P_DATA(TX_P_DATA), .TX_D_VLD(TX_D_VLD), .test_si(
        SI[2]), .test_so(n16), .test_se(SE) );
  Register_File_addr4_width8_test_1 U1 ( .WrData(WrData), .Address(Address), 
        .WrEn(WrEn), .RdEn(RdEn), .CLK(REF_CLK_scan), .RST(n4), .RdData(RdData), .RdData_Valid(RdData_Valid), .REG0(operandA), .REG1(operandB), .REG2(
        UART_CONFIG), .REG3(div_ratio), .test_si(n16), .test_so(n15), 
        .test_se(SE) );
  ALU_data_width8_out_width16_test_1 U2 ( .A(operandA), .B(operandB), 
        .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(n4), .En(EN), .ALU_OUT(ALU_OUT), 
        .ALU_Valid(OUT_Valid), .test_si2(SI[1]), .test_si1(n15), .test_se(n20)
         );
  CLK_GATE U3 ( .CLK_EN(_0_net_), .CLK(REF_CLK_scan), .GATED_CLK(ALU_CLK) );
  UART_width8_test_1 U4 ( .UART_CONFIG(UART_CONFIG), .TX_CLK(TX_CLK_scan), 
        .RX_CLK(RX_CLK_scan), .RST(n2), .RX_IN(RX_IN), .F_EMPTY(F_EMPTY), 
        .RdData(F_RdData), .TX_OUT(TX_OUT), .busy(busy), .RX_OUT(RX_OUT), 
        .sync_en(sync_en), .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR), .test_si2(n11), .test_si1(OUT_Valid), .test_so1(n13), .test_se(SE) );
  RST_SYNC_NUM_STAGES2_test_0 U5 ( .RST(RST_M_0), .CLK(REF_CLK_scan), 
        .SYNC_RST(SYNC_RST_REF), .test_si(n13), .test_se(n19) );
  RST_SYNC_NUM_STAGES2_test_1 U6 ( .RST(RST_M_0), .CLK(UART_CLK_scan), 
        .SYNC_RST(SYNC_RST_UART), .test_si(SYNC_RST_REF), .test_se(n20) );
  Pulse_Gen_test_1 U7 ( .CLK(TX_CLK_scan), .RST(n2), .LVL_SIG(busy), 
        .Pulse_SIG(RD_INC), .test_si(SYNC_RST_UART), .test_so(n12), .test_se(
        n21) );
  FIFO_DATA_WIDTH8_test_1 U8 ( .WR_DATA(TX_P_DATA), .W_INC(TX_D_VLD), .W_CLK(
        REF_CLK_scan), .W_RST(n4), .R_CLK(TX_CLK_scan), .R_RST(n2), .R_INC(
        RD_INC), .RD_DATA(F_RdData), .FULL(F_FULL), .EMPTY(F_EMPTY), 
        .test_si2(SI[0]), .test_si1(n12), .test_so2(n9), .test_so1(n11), 
        .test_se(n25) );
  Clock_Divider_test_0 U10 ( .i_ref_clk(UART_CLK_scan), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(div_ratio), .o_div_clk(TX_CLK), 
        .test_si(n9), .test_so(n8), .test_se(n18) );
  Clock_Divider_test_1 U11 ( .i_ref_clk(UART_CLK_scan), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        div_ratio_rx[2:0]}), .o_div_clk(RX_CLK), .test_si(n8), .test_so(n7), 
        .test_se(n18) );
  clk_div_mux U12 ( .IN(UART_CONFIG[7:2]), .div_ratio_rx({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, div_ratio_rx[2:0]}) );
  data_synchronizer_data_width8_test_1 du ( .unsync_bus(RX_OUT), .bus_enable(
        sync_en), .CLK(RX_CLK_scan), .RST(n4), .sync_bus(RX_P_DATA), 
        .enable_pulse(RX_D_VLD), .test_si(n7), .test_se(n19) );
  mux2X1_0 M0 ( .IN_0(RST), .IN_1(scan_rst), .SEL(n1), .OUT(RST_M_0) );
  mux2X1_6 M1 ( .IN_0(SYNC_RST_REF), .IN_1(scan_rst), .SEL(n1), .OUT(RST_M_1)
         );
  mux2X1_5 M2 ( .IN_0(SYNC_RST_UART), .IN_1(scan_rst), .SEL(n1), .OUT(RST_M_2)
         );
  mux2X1_4 M3 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n1), .OUT(REF_CLK_scan)
         );
  mux2X1_3 M4 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n1), .OUT(UART_CLK_scan) );
  mux2X1_2 M5 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n1), .OUT(TX_CLK_scan) );
  mux2X1_1 M6 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n1), .OUT(RX_CLK_scan) );
  BUFX2M U29 ( .A(RX_P_DATA[7]), .Y(SO[0]) );
  BUFX2M U31 ( .A(ALU_OUT[2]), .Y(SO[2]) );
endmodule


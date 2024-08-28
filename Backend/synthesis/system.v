/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Aug 17 23:30:09 2024
/////////////////////////////////////////////////////////////


module SYS_CTRL_data_width8_addr4_out_width16 ( CLK, RST, ALU_OUT, OUT_Valid, 
        RdData, RdData_Valid, RX_P_DATA, RX_D_VLD, fifo_full, ALU_FUN, EN, 
        CLK_EN, Address, WrEn, RdEn, WrData, TX_P_DATA, TX_D_VLD, clk_div_en
 );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD, fifo_full;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n87, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354, N355,
         N356, N357, N358, N359, N360, N362, N363, N364, N365, n23, n24, n25,
         n26, n27, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n46, n47, n48, n49, n50, n51, n53, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n73,
         n74, n75, n78, n79, n80, n1, n2, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n44, n45, n72,
         n76, n77, n81, n82, n83, n84, n85, n86;
  wire   [31:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] Address_reg;
  wire   [15:0] ALU_OUT_reg;
  assign clk_div_en = 1'b1;

  NAND3BX4M U92 ( .AN(n31), .B(current_state[0]), .C(n6), .Y(n74) );
  OAI2BB2X8M U116 ( .B0(n56), .B1(n33), .A0N(Address_reg[1]), .A1N(n78), .Y(
        Address[1]) );
  NOR3BX4M U145 ( .AN(n29), .B(current_state[0]), .C(current_state[1]), .Y(n75) );
  DFFRX1M \Address_reg_reg[2]  ( .D(N364), .CK(CLK), .RN(n9), .Q(
        Address_reg[2]) );
  DFFRX1M \Address_reg_reg[1]  ( .D(N363), .CK(CLK), .RN(n9), .Q(
        Address_reg[1]) );
  DFFRX1M \Address_reg_reg[0]  ( .D(N362), .CK(CLK), .RN(n9), .Q(
        Address_reg[0]) );
  DFFRX1M \Address_reg_reg[3]  ( .D(N365), .CK(CLK), .RN(n9), .Q(
        Address_reg[3]) );
  DFFRX1M \ALU_OUT_reg_reg[15]  ( .D(N360), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[15]) );
  DFFRX1M \ALU_OUT_reg_reg[14]  ( .D(N359), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[14]) );
  DFFRX1M \ALU_OUT_reg_reg[13]  ( .D(N358), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[13]) );
  DFFRX1M \ALU_OUT_reg_reg[12]  ( .D(N357), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[12]) );
  DFFRX1M \ALU_OUT_reg_reg[11]  ( .D(N356), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[11]) );
  DFFRX1M \ALU_OUT_reg_reg[10]  ( .D(N355), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[10]) );
  DFFRX1M \ALU_OUT_reg_reg[9]  ( .D(N354), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[9]) );
  DFFRX1M \ALU_OUT_reg_reg[8]  ( .D(N353), .CK(CLK), .RN(n8), .Q(
        ALU_OUT_reg[8]) );
  DFFRX1M \ALU_OUT_reg_reg[7]  ( .D(N352), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[7]) );
  DFFRX1M \ALU_OUT_reg_reg[6]  ( .D(N351), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[6]) );
  DFFRX1M \ALU_OUT_reg_reg[5]  ( .D(N350), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[5]) );
  DFFRX1M \ALU_OUT_reg_reg[4]  ( .D(N349), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[4]) );
  DFFRX1M \ALU_OUT_reg_reg[3]  ( .D(N348), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[3]) );
  DFFRX1M \ALU_OUT_reg_reg[2]  ( .D(N347), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[2]) );
  DFFRX1M \ALU_OUT_reg_reg[1]  ( .D(N346), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[1]) );
  DFFRX1M \ALU_OUT_reg_reg[0]  ( .D(N345), .CK(CLK), .RN(n9), .Q(
        ALU_OUT_reg[0]) );
  DFFRX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n8), .Q(
        current_state[2]), .QN(n85) );
  DFFRQX4M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n8), .Q(
        current_state[1]) );
  DFFRQX4M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(n8), .Q(
        current_state[3]) );
  DFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n8), .Q(
        current_state[0]) );
  AOI221X2M U3 ( .A0(n83), .A1(n44), .B0(n80), .B1(Address_reg[0]), .C0(n76), 
        .Y(n79) );
  NOR2X4M U4 ( .A(n50), .B(n82), .Y(ALU_FUN[3]) );
  NOR2X8M U5 ( .A(n56), .B(n82), .Y(ALU_FUN[1]) );
  AND3X2M U6 ( .A(n2), .B(n15), .C(n72), .Y(n1) );
  OR3X2M U7 ( .A(n47), .B(RX_P_DATA[0]), .C(n41), .Y(n2) );
  AOI211X2M U8 ( .A0(current_state[2]), .A1(n6), .B0(n81), .C0(
        current_state[3]), .Y(n46) );
  NAND4BX1M U9 ( .AN(n34), .B(RX_P_DATA[4]), .C(RX_P_DATA[0]), .D(n35), .Y(n25) );
  NAND3X1M U10 ( .A(RX_P_DATA[2]), .B(n48), .C(RX_P_DATA[6]), .Y(n34) );
  NOR2X1M U11 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .Y(n35) );
  NAND3X1M U12 ( .A(RX_P_DATA[1]), .B(n48), .C(RX_P_DATA[5]), .Y(n41) );
  NOR2X5M U13 ( .A(n85), .B(current_state[3]), .Y(n29) );
  CLKBUFX6M U14 ( .A(n87), .Y(Address[2]) );
  OAI2BB2X1M U15 ( .B0(n55), .B1(n33), .A0N(Address_reg[2]), .A1N(n78), .Y(n87) );
  NOR2BX2M U16 ( .AN(n6), .B(n33), .Y(RdEn) );
  NOR2X6M U17 ( .A(n55), .B(n82), .Y(ALU_FUN[2]) );
  NOR2X6M U18 ( .A(n57), .B(n82), .Y(ALU_FUN[0]) );
  NAND3X2M U19 ( .A(n29), .B(n86), .C(current_state[0]), .Y(n58) );
  INVX4M U20 ( .A(n79), .Y(Address[0]) );
  NAND2X2M U21 ( .A(RX_P_DATA[3]), .B(n6), .Y(n50) );
  INVX2M U22 ( .A(RX_P_DATA[4]), .Y(n19) );
  NAND3X2M U23 ( .A(n86), .B(n85), .C(current_state[3]), .Y(n24) );
  INVX2M U24 ( .A(n51), .Y(WrEn) );
  INVX4M U25 ( .A(n23), .Y(EN) );
  NAND2X4M U26 ( .A(n5), .B(n53), .Y(n51) );
  INVX4M U27 ( .A(n68), .Y(n13) );
  INVX2M U28 ( .A(n33), .Y(n83) );
  INVX2M U29 ( .A(n53), .Y(n77) );
  INVX2M U30 ( .A(n5), .Y(n45) );
  INVX2M U31 ( .A(fifo_full), .Y(n14) );
  INVX6M U32 ( .A(n10), .Y(n9) );
  INVX6M U33 ( .A(n10), .Y(n8) );
  INVX4M U34 ( .A(n75), .Y(n82) );
  NAND2X2M U35 ( .A(n6), .B(n75), .Y(n23) );
  NAND2X4M U36 ( .A(n71), .B(n84), .Y(n33) );
  NOR2X2M U37 ( .A(n86), .B(n81), .Y(n59) );
  NAND2X2M U38 ( .A(n59), .B(n29), .Y(n26) );
  NAND3X2M U39 ( .A(n85), .B(n84), .C(n59), .Y(n32) );
  NAND3X2M U40 ( .A(n32), .B(n26), .C(n58), .Y(n53) );
  INVX4M U41 ( .A(n4), .Y(n6) );
  NOR2X2M U42 ( .A(n18), .B(n51), .Y(WrData[5]) );
  NOR2X2M U43 ( .A(n16), .B(n51), .Y(WrData[7]) );
  NOR2BX4M U44 ( .AN(n5), .B(n58), .Y(n78) );
  NAND2X2M U45 ( .A(n40), .B(n14), .Y(n68) );
  NAND3X2M U46 ( .A(n68), .B(n70), .C(n69), .Y(TX_D_VLD) );
  NOR2X2M U47 ( .A(n45), .B(n58), .Y(n80) );
  INVX4M U48 ( .A(n4), .Y(n5) );
  NOR2X2M U49 ( .A(n77), .B(n57), .Y(WrData[0]) );
  NOR2X2M U50 ( .A(n77), .B(n56), .Y(WrData[1]) );
  NOR2X2M U51 ( .A(n77), .B(n55), .Y(WrData[2]) );
  NOR2X2M U52 ( .A(n50), .B(n77), .Y(WrData[3]) );
  NOR2X2M U53 ( .A(n19), .B(n51), .Y(WrData[4]) );
  NOR2X2M U54 ( .A(n17), .B(n51), .Y(WrData[6]) );
  INVX4M U55 ( .A(n69), .Y(n12) );
  INVX4M U56 ( .A(n70), .Y(n11) );
  OAI211X2M U57 ( .A0(n81), .A1(n31), .B0(n32), .C0(n33), .Y(n30) );
  NAND3X2M U58 ( .A(n85), .B(n84), .C(n86), .Y(n31) );
  NOR2X2M U59 ( .A(n19), .B(n41), .Y(n38) );
  NAND2X2M U60 ( .A(n7), .B(n1), .Y(next_state[0]) );
  INVX2M U61 ( .A(n46), .Y(n72) );
  NAND2X2M U62 ( .A(n23), .B(n24), .Y(next_state[3]) );
  NOR2X2M U63 ( .A(n22), .B(n74), .Y(N362) );
  NOR2X2M U64 ( .A(n21), .B(n74), .Y(N363) );
  NOR2X2M U65 ( .A(n20), .B(n74), .Y(N364) );
  INVX2M U66 ( .A(RST), .Y(n10) );
  NOR3X4M U67 ( .A(current_state[0]), .B(current_state[2]), .C(n86), .Y(n71)
         );
  INVX4M U68 ( .A(current_state[0]), .Y(n81) );
  INVX4M U69 ( .A(current_state[1]), .Y(n86) );
  NAND2X2M U70 ( .A(RX_P_DATA[2]), .B(n5), .Y(n55) );
  NAND2X2M U71 ( .A(RX_P_DATA[1]), .B(n6), .Y(n56) );
  OAI2BB2X1M U72 ( .B0(n50), .B1(n33), .A0N(Address_reg[3]), .A1N(n78), .Y(
        Address[3]) );
  INVX2M U73 ( .A(RX_D_VLD), .Y(n4) );
  NOR4X4M U74 ( .A(n81), .B(n84), .C(current_state[1]), .D(current_state[2]), 
        .Y(n40) );
  OAI2BB1X2M U75 ( .A0N(RdData[0]), .A1N(n11), .B0(n67), .Y(TX_P_DATA[0]) );
  AOI22X1M U76 ( .A0(ALU_OUT_reg[8]), .A1(n12), .B0(ALU_OUT_reg[0]), .B1(n13), 
        .Y(n67) );
  OAI2BB1X2M U77 ( .A0N(RdData[1]), .A1N(n11), .B0(n66), .Y(TX_P_DATA[1]) );
  AOI22X1M U78 ( .A0(ALU_OUT_reg[9]), .A1(n12), .B0(ALU_OUT_reg[1]), .B1(n13), 
        .Y(n66) );
  OAI2BB1X2M U79 ( .A0N(RdData[2]), .A1N(n11), .B0(n65), .Y(TX_P_DATA[2]) );
  AOI22X1M U80 ( .A0(ALU_OUT_reg[10]), .A1(n12), .B0(ALU_OUT_reg[2]), .B1(n13), 
        .Y(n65) );
  OAI2BB1X2M U81 ( .A0N(RdData[3]), .A1N(n11), .B0(n64), .Y(TX_P_DATA[3]) );
  AOI22X1M U82 ( .A0(ALU_OUT_reg[11]), .A1(n12), .B0(ALU_OUT_reg[3]), .B1(n13), 
        .Y(n64) );
  OAI2BB1X2M U83 ( .A0N(RdData[4]), .A1N(n11), .B0(n63), .Y(TX_P_DATA[4]) );
  AOI22X1M U84 ( .A0(ALU_OUT_reg[12]), .A1(n12), .B0(ALU_OUT_reg[4]), .B1(n13), 
        .Y(n63) );
  OAI2BB1X2M U85 ( .A0N(RdData[5]), .A1N(n11), .B0(n62), .Y(TX_P_DATA[5]) );
  AOI22X1M U86 ( .A0(ALU_OUT_reg[13]), .A1(n12), .B0(ALU_OUT_reg[5]), .B1(n13), 
        .Y(n62) );
  OAI2BB1X2M U87 ( .A0N(RdData[6]), .A1N(n11), .B0(n61), .Y(TX_P_DATA[6]) );
  AOI22X1M U88 ( .A0(ALU_OUT_reg[14]), .A1(n12), .B0(ALU_OUT_reg[6]), .B1(n13), 
        .Y(n61) );
  OAI2BB1X2M U89 ( .A0N(RdData[7]), .A1N(n11), .B0(n60), .Y(TX_P_DATA[7]) );
  AOI22X1M U90 ( .A0(ALU_OUT_reg[15]), .A1(n12), .B0(ALU_OUT_reg[7]), .B1(n13), 
        .Y(n60) );
  INVX2M U91 ( .A(n57), .Y(n44) );
  INVX2M U93 ( .A(n26), .Y(n76) );
  INVX4M U94 ( .A(current_state[3]), .Y(n84) );
  NAND2X2M U95 ( .A(RX_P_DATA[0]), .B(n5), .Y(n57) );
  NAND4X2M U96 ( .A(current_state[1]), .B(n29), .C(RdData_Valid), .D(n73), .Y(
        n70) );
  NOR2X2M U97 ( .A(fifo_full), .B(current_state[0]), .Y(n73) );
  NAND3X2M U98 ( .A(n71), .B(current_state[3]), .C(n14), .Y(n69) );
  NOR4X4M U99 ( .A(n16), .B(n50), .C(n31), .D(current_state[0]), .Y(n48) );
  OAI21X2M U100 ( .A0(current_state[0]), .A1(n24), .B0(n82), .Y(CLK_EN) );
  INVX2M U101 ( .A(n42), .Y(n15) );
  OAI31X2M U102 ( .A0(n49), .A1(RX_P_DATA[0]), .A2(n34), .B0(n32), .Y(n42) );
  NAND3X2M U103 ( .A(n19), .B(n18), .C(n21), .Y(n49) );
  NAND3X2M U104 ( .A(n36), .B(n37), .C(n15), .Y(next_state[1]) );
  NAND3X2M U105 ( .A(n45), .B(n84), .C(current_state[1]), .Y(n36) );
  AOI211X2M U106 ( .A0(n38), .A1(n39), .B0(n83), .C0(n40), .Y(n37) );
  NOR3X2M U107 ( .A(n22), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n39) );
  INVX2M U108 ( .A(RX_P_DATA[7]), .Y(n16) );
  NAND3X2M U109 ( .A(n26), .B(n27), .C(n25), .Y(next_state[2]) );
  AOI22X1M U110 ( .A0(n29), .A1(n45), .B0(n5), .B1(n30), .Y(n27) );
  NAND3X2M U111 ( .A(n19), .B(n17), .C(n20), .Y(n47) );
  BUFX10M U112 ( .A(n43), .Y(n7) );
  NAND3BX2M U113 ( .AN(n24), .B(n81), .C(OUT_Valid), .Y(n43) );
  NOR2BX2M U114 ( .AN(RX_P_DATA[3]), .B(n74), .Y(N365) );
  INVX2M U115 ( .A(RX_P_DATA[0]), .Y(n22) );
  INVX2M U117 ( .A(RX_P_DATA[2]), .Y(n20) );
  INVX2M U118 ( .A(RX_P_DATA[1]), .Y(n21) );
  INVX2M U119 ( .A(RX_P_DATA[6]), .Y(n17) );
  INVX2M U120 ( .A(RX_P_DATA[5]), .Y(n18) );
  NOR2BX2M U121 ( .AN(ALU_OUT[0]), .B(n7), .Y(N345) );
  NOR2BX2M U122 ( .AN(ALU_OUT[1]), .B(n7), .Y(N346) );
  NOR2BX2M U123 ( .AN(ALU_OUT[2]), .B(n7), .Y(N347) );
  NOR2BX2M U124 ( .AN(ALU_OUT[3]), .B(n7), .Y(N348) );
  NOR2BX2M U125 ( .AN(ALU_OUT[4]), .B(n7), .Y(N349) );
  NOR2BX2M U126 ( .AN(ALU_OUT[5]), .B(n7), .Y(N350) );
  NOR2BX2M U127 ( .AN(ALU_OUT[6]), .B(n7), .Y(N351) );
  NOR2BX2M U128 ( .AN(ALU_OUT[7]), .B(n7), .Y(N352) );
  NOR2BX2M U129 ( .AN(ALU_OUT[8]), .B(n7), .Y(N353) );
  NOR2BX2M U130 ( .AN(ALU_OUT[9]), .B(n7), .Y(N354) );
  NOR2BX2M U131 ( .AN(ALU_OUT[10]), .B(n7), .Y(N355) );
  NOR2BX2M U132 ( .AN(ALU_OUT[11]), .B(n7), .Y(N356) );
  NOR2BX2M U133 ( .AN(ALU_OUT[12]), .B(n7), .Y(N357) );
  NOR2BX2M U134 ( .AN(ALU_OUT[13]), .B(n7), .Y(N358) );
  NOR2BX2M U135 ( .AN(ALU_OUT[14]), .B(n7), .Y(N359) );
  NOR2BX2M U136 ( .AN(ALU_OUT[15]), .B(n7), .Y(N360) );
endmodule


module Register_File_addr4_width8 ( WrData, Address, WrEn, RdEn, CLK, RST, 
        RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
  wire   N11, N12, N13, n143, n144, n145, n146, \Reg_File[7][7] ,
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
         \Reg_File[4][0] , N27, N28, N29, N30, N31, N32, N33, N34, n12, n13,
         n15, n17, n18, n19, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n2, n5, n7, n8, n9,
         n10, n11, n14, n16, n20, n22, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];

  DFFRHQX8M \Reg_File_reg[2][6]  ( .D(n56), .CK(CLK), .RN(n128), .Q(REG2[6])
         );
  DFFRHQX8M \Reg_File_reg[2][5]  ( .D(n55), .CK(CLK), .RN(n128), .Q(REG2[5])
         );
  DFFRHQX8M \Reg_File_reg[1][3]  ( .D(n45), .CK(CLK), .RN(n127), .Q(REG1[3])
         );
  DFFRHQX8M \Reg_File_reg[1][2]  ( .D(n44), .CK(CLK), .RN(n127), .Q(n146) );
  DFFRHQX8M \Reg_File_reg[1][0]  ( .D(n42), .CK(CLK), .RN(n127), .Q(REG1[0])
         );
  DFFRQX2M \RdData_reg[7]  ( .D(n32), .CK(CLK), .RN(n126), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n31), .CK(CLK), .RN(n126), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n30), .CK(CLK), .RN(n126), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n29), .CK(CLK), .RN(n126), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n28), .CK(CLK), .RN(n126), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n27), .CK(CLK), .RN(n126), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n26), .CK(CLK), .RN(n126), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n25), .CK(CLK), .RN(n128), .Q(RdData[0]) );
  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n81), .CK(CLK), .RN(n130), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n80), .CK(CLK), .RN(n130), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n79), .CK(CLK), .RN(n130), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n78), .CK(CLK), .RN(n130), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n77), .CK(CLK), .RN(n130), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n76), .CK(CLK), .RN(n130), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n75), .CK(CLK), .RN(n129), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n74), .CK(CLK), .RN(n129), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n97), .CK(CLK), .RN(n126), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n96), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n95), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n94), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n93), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n92), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n91), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n90), .CK(CLK), .RN(n131), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n89), .CK(CLK), .RN(n131), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n88), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n87), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n86), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n85), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n84), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n83), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n82), .CK(CLK), .RN(n130), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n73), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n72), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n71), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n70), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n69), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n68), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n67), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n66), .CK(CLK), .RN(n129), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n51), .CK(CLK), .RN(n128), .Q(REG2[1]) );
  DFFSQX4M \Reg_File_reg[3][5]  ( .D(n63), .CK(CLK), .SN(n126), .Q(REG3[5]) );
  DFFSQX4M \Reg_File_reg[2][0]  ( .D(n50), .CK(CLK), .SN(n126), .Q(REG2[0]) );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n37), .CK(CLK), .RN(n127), .Q(REG0[3]) );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n36), .CK(CLK), .RN(n127), .Q(REG0[2]) );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n34), .CK(CLK), .RN(n126), .Q(REG0[0]) );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n35), .CK(CLK), .RN(n127), .Q(REG0[1]) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n58), .CK(CLK), .RN(n128), .Q(REG3[0]) );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n38), .CK(CLK), .RN(n127), .Q(REG0[4]) );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n39), .CK(CLK), .RN(n127), .Q(REG0[5]) );
  DFFRX1M RdData_Valid_reg ( .D(n33), .CK(CLK), .RN(n126), .Q(RdData_Valid) );
  DFFSHQX8M \Reg_File_reg[2][7]  ( .D(n57), .CK(CLK), .SN(RST), .Q(REG2[7]) );
  DFFRQX4M \Reg_File_reg[2][4]  ( .D(n54), .CK(CLK), .RN(n128), .Q(REG2[4]) );
  DFFRQX4M \Reg_File_reg[2][3]  ( .D(n53), .CK(CLK), .RN(n128), .Q(REG2[3]) );
  DFFRQX4M \Reg_File_reg[3][6]  ( .D(n64), .CK(CLK), .RN(n129), .Q(REG3[6]) );
  DFFRQX4M \Reg_File_reg[3][1]  ( .D(n59), .CK(CLK), .RN(n128), .Q(REG3[1]) );
  DFFRQX4M \Reg_File_reg[3][2]  ( .D(n60), .CK(CLK), .RN(n128), .Q(REG3[2]) );
  DFFRQX4M \Reg_File_reg[3][7]  ( .D(n65), .CK(CLK), .RN(n129), .Q(REG3[7]) );
  DFFRQX4M \Reg_File_reg[3][4]  ( .D(n62), .CK(CLK), .RN(n129), .Q(REG3[4]) );
  DFFRQX4M \Reg_File_reg[3][3]  ( .D(n61), .CK(CLK), .RN(n128), .Q(REG3[3]) );
  DFFRQX4M \Reg_File_reg[2][2]  ( .D(n52), .CK(CLK), .RN(n128), .Q(REG2[2]) );
  DFFRHQX4M \Reg_File_reg[1][7]  ( .D(n49), .CK(CLK), .RN(n128), .Q(n143) );
  DFFRHQX2M \Reg_File_reg[1][5]  ( .D(n47), .CK(CLK), .RN(n127), .Q(n144) );
  DFFRHQX4M \Reg_File_reg[0][6]  ( .D(n40), .CK(CLK), .RN(n127), .Q(REG0[6])
         );
  DFFRHQX4M \Reg_File_reg[0][7]  ( .D(n41), .CK(CLK), .RN(n127), .Q(REG0[7])
         );
  DFFRHQX8M \Reg_File_reg[1][4]  ( .D(n46), .CK(CLK), .RN(n127), .Q(n145) );
  DFFRHQX8M \Reg_File_reg[1][1]  ( .D(n43), .CK(CLK), .RN(n127), .Q(REG1[1])
         );
  DFFRHQX8M \Reg_File_reg[1][6]  ( .D(n48), .CK(CLK), .RN(n128), .Q(REG1[6])
         );
  BUFX32M U3 ( .A(n146), .Y(REG1[2]) );
  INVX24M U4 ( .A(n145), .Y(n2) );
  CLKBUFX40M U5 ( .A(n144), .Y(REG1[5]) );
  BUFX6M U6 ( .A(n129), .Y(n126) );
  INVX32M U7 ( .A(n2), .Y(REG1[4]) );
  CLKINVX24M U8 ( .A(n143), .Y(n5) );
  INVX32M U9 ( .A(n5), .Y(REG1[7]) );
  BUFX6M U10 ( .A(RST), .Y(n127) );
  CLKAND2X2M U11 ( .A(N13), .B(n19), .Y(n21) );
  INVX2M U12 ( .A(N12), .Y(n138) );
  INVX2M U13 ( .A(N11), .Y(n140) );
  NOR2BX2M U14 ( .AN(n13), .B(Address[3]), .Y(n19) );
  MX4XLM U15 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n110), 
        .S1(n112), .Y(n14) );
  MX4XLM U16 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n110), 
        .S1(n112), .Y(n20) );
  MX4XLM U17 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n110), 
        .S1(n112), .Y(n98) );
  MX4XLM U18 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n110), 
        .S1(n112), .Y(n100) );
  MX4XLM U19 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n110), 
        .S1(n112), .Y(n102) );
  MX4XLM U20 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n110), 
        .S1(n112), .Y(n104) );
  MX4XLM U21 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n110), 
        .S1(n112), .Y(n106) );
  MX4XLM U22 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n110), 
        .S1(n112), .Y(n108) );
  INVX4M U23 ( .A(n125), .Y(n142) );
  NOR2BX2M U24 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  INVX4M U25 ( .A(n8), .Y(n118) );
  INVX4M U26 ( .A(n8), .Y(n117) );
  INVX4M U27 ( .A(n7), .Y(n124) );
  INVX4M U28 ( .A(n7), .Y(n123) );
  CLKBUFX6M U29 ( .A(n12), .Y(n125) );
  NAND2BX2M U30 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  CLKBUFX8M U31 ( .A(RST), .Y(n128) );
  CLKBUFX8M U32 ( .A(RST), .Y(n129) );
  CLKBUFX8M U33 ( .A(n129), .Y(n130) );
  BUFX4M U34 ( .A(RST), .Y(n131) );
  INVX4M U35 ( .A(n9), .Y(n122) );
  INVX4M U36 ( .A(n9), .Y(n121) );
  INVX4M U37 ( .A(n10), .Y(n116) );
  INVX4M U38 ( .A(n10), .Y(n115) );
  AND3X2M U39 ( .A(n140), .B(n138), .C(n15), .Y(n7) );
  AND3X2M U40 ( .A(n140), .B(n138), .C(n21), .Y(n8) );
  INVX6M U41 ( .A(n111), .Y(n109) );
  INVX6M U42 ( .A(n111), .Y(n110) );
  NOR2BX4M U43 ( .AN(n19), .B(N13), .Y(n15) );
  CLKBUFX8M U44 ( .A(n17), .Y(n120) );
  NAND3X2M U45 ( .A(n15), .B(n140), .C(N12), .Y(n17) );
  CLKBUFX8M U46 ( .A(n18), .Y(n119) );
  NAND3X2M U47 ( .A(N11), .B(n15), .C(N12), .Y(n18) );
  CLKBUFX8M U48 ( .A(n23), .Y(n114) );
  NAND3X2M U49 ( .A(N12), .B(n140), .C(n21), .Y(n23) );
  CLKBUFX8M U50 ( .A(n24), .Y(n113) );
  NAND3X2M U51 ( .A(N12), .B(N11), .C(n21), .Y(n24) );
  BUFX10M U52 ( .A(N12), .Y(n112) );
  AND3X2M U53 ( .A(n15), .B(n138), .C(N11), .Y(n9) );
  AND3X2M U54 ( .A(N11), .B(n138), .C(n21), .Y(n10) );
  INVX4M U55 ( .A(WrData[5]), .Y(n134) );
  INVX4M U56 ( .A(WrData[7]), .Y(n132) );
  INVX2M U57 ( .A(N11), .Y(n111) );
  INVX4M U58 ( .A(WrData[0]), .Y(n141) );
  INVX4M U59 ( .A(WrData[1]), .Y(n139) );
  INVX4M U60 ( .A(WrData[2]), .Y(n137) );
  INVX4M U61 ( .A(WrData[3]), .Y(n136) );
  INVX4M U62 ( .A(WrData[4]), .Y(n135) );
  INVX4M U63 ( .A(WrData[6]), .Y(n133) );
  OAI2BB2X1M U64 ( .B0(n141), .B1(n122), .A0N(REG1[0]), .A1N(n122), .Y(n42) );
  OAI2BB2X1M U65 ( .B0(n139), .B1(n121), .A0N(REG1[1]), .A1N(n121), .Y(n43) );
  OAI2BB2X1M U66 ( .B0(n137), .B1(n122), .A0N(REG1[2]), .A1N(n122), .Y(n44) );
  OAI2BB2X1M U67 ( .B0(n136), .B1(n121), .A0N(REG1[3]), .A1N(n121), .Y(n45) );
  OAI2BB2X1M U68 ( .B0(n135), .B1(n122), .A0N(REG1[4]), .A1N(n122), .Y(n46) );
  OAI2BB2X1M U69 ( .B0(n134), .B1(n121), .A0N(REG1[5]), .A1N(n121), .Y(n47) );
  OAI2BB2X1M U70 ( .B0(n133), .B1(n122), .A0N(REG1[6]), .A1N(n122), .Y(n48) );
  OAI2BB2X1M U71 ( .B0(n132), .B1(n121), .A0N(REG1[7]), .A1N(n121), .Y(n49) );
  OAI2BB2X1M U72 ( .B0(n139), .B1(n120), .A0N(REG2[1]), .A1N(n120), .Y(n51) );
  OAI2BB2X1M U73 ( .B0(n137), .B1(n120), .A0N(REG2[2]), .A1N(n120), .Y(n52) );
  OAI2BB2X1M U74 ( .B0(n136), .B1(n120), .A0N(REG2[3]), .A1N(n120), .Y(n53) );
  OAI2BB2X1M U75 ( .B0(n135), .B1(n120), .A0N(REG2[4]), .A1N(n120), .Y(n54) );
  OAI2BB2X1M U76 ( .B0(n134), .B1(n120), .A0N(REG2[5]), .A1N(n120), .Y(n55) );
  OAI2BB2X1M U77 ( .B0(n133), .B1(n120), .A0N(REG2[6]), .A1N(n120), .Y(n56) );
  OAI2BB2X1M U78 ( .B0(n141), .B1(n119), .A0N(REG3[0]), .A1N(n119), .Y(n58) );
  OAI2BB2X1M U79 ( .B0(n139), .B1(n119), .A0N(REG3[1]), .A1N(n119), .Y(n59) );
  OAI2BB2X1M U80 ( .B0(n137), .B1(n119), .A0N(REG3[2]), .A1N(n119), .Y(n60) );
  OAI2BB2X1M U81 ( .B0(n136), .B1(n119), .A0N(REG3[3]), .A1N(n119), .Y(n61) );
  OAI2BB2X1M U82 ( .B0(n135), .B1(n119), .A0N(REG3[4]), .A1N(n119), .Y(n62) );
  OAI2BB2X1M U83 ( .B0(n133), .B1(n119), .A0N(REG3[6]), .A1N(n119), .Y(n64) );
  OAI2BB2X1M U84 ( .B0(n132), .B1(n119), .A0N(REG3[7]), .A1N(n119), .Y(n65) );
  OAI2BB2X1M U85 ( .B0(n141), .B1(n118), .A0N(\Reg_File[4][0] ), .A1N(n118), 
        .Y(n66) );
  OAI2BB2X1M U86 ( .B0(n139), .B1(n117), .A0N(\Reg_File[4][1] ), .A1N(n117), 
        .Y(n67) );
  OAI2BB2X1M U87 ( .B0(n137), .B1(n118), .A0N(\Reg_File[4][2] ), .A1N(n118), 
        .Y(n68) );
  OAI2BB2X1M U88 ( .B0(n136), .B1(n117), .A0N(\Reg_File[4][3] ), .A1N(n117), 
        .Y(n69) );
  OAI2BB2X1M U89 ( .B0(n135), .B1(n118), .A0N(\Reg_File[4][4] ), .A1N(n118), 
        .Y(n70) );
  OAI2BB2X1M U90 ( .B0(n134), .B1(n117), .A0N(\Reg_File[4][5] ), .A1N(n117), 
        .Y(n71) );
  OAI2BB2X1M U91 ( .B0(n133), .B1(n118), .A0N(\Reg_File[4][6] ), .A1N(n118), 
        .Y(n72) );
  OAI2BB2X1M U92 ( .B0(n132), .B1(n117), .A0N(\Reg_File[4][7] ), .A1N(n117), 
        .Y(n73) );
  OAI2BB2X1M U93 ( .B0(n141), .B1(n116), .A0N(\Reg_File[5][0] ), .A1N(n116), 
        .Y(n74) );
  OAI2BB2X1M U94 ( .B0(n139), .B1(n115), .A0N(\Reg_File[5][1] ), .A1N(n115), 
        .Y(n75) );
  OAI2BB2X1M U95 ( .B0(n137), .B1(n116), .A0N(\Reg_File[5][2] ), .A1N(n116), 
        .Y(n76) );
  OAI2BB2X1M U96 ( .B0(n136), .B1(n115), .A0N(\Reg_File[5][3] ), .A1N(n115), 
        .Y(n77) );
  OAI2BB2X1M U97 ( .B0(n135), .B1(n116), .A0N(\Reg_File[5][4] ), .A1N(n116), 
        .Y(n78) );
  OAI2BB2X1M U98 ( .B0(n134), .B1(n115), .A0N(\Reg_File[5][5] ), .A1N(n115), 
        .Y(n79) );
  OAI2BB2X1M U99 ( .B0(n133), .B1(n116), .A0N(\Reg_File[5][6] ), .A1N(n116), 
        .Y(n80) );
  OAI2BB2X1M U100 ( .B0(n132), .B1(n115), .A0N(\Reg_File[5][7] ), .A1N(n115), 
        .Y(n81) );
  OAI2BB2X1M U101 ( .B0(n141), .B1(n114), .A0N(\Reg_File[6][0] ), .A1N(n114), 
        .Y(n82) );
  OAI2BB2X1M U102 ( .B0(n139), .B1(n114), .A0N(\Reg_File[6][1] ), .A1N(n114), 
        .Y(n83) );
  OAI2BB2X1M U103 ( .B0(n137), .B1(n114), .A0N(\Reg_File[6][2] ), .A1N(n114), 
        .Y(n84) );
  OAI2BB2X1M U104 ( .B0(n136), .B1(n114), .A0N(\Reg_File[6][3] ), .A1N(n114), 
        .Y(n85) );
  OAI2BB2X1M U105 ( .B0(n135), .B1(n114), .A0N(\Reg_File[6][4] ), .A1N(n114), 
        .Y(n86) );
  OAI2BB2X1M U106 ( .B0(n134), .B1(n114), .A0N(\Reg_File[6][5] ), .A1N(n114), 
        .Y(n87) );
  OAI2BB2X1M U107 ( .B0(n133), .B1(n114), .A0N(\Reg_File[6][6] ), .A1N(n114), 
        .Y(n88) );
  OAI2BB2X1M U108 ( .B0(n132), .B1(n114), .A0N(\Reg_File[6][7] ), .A1N(n114), 
        .Y(n89) );
  OAI2BB2X1M U109 ( .B0(n141), .B1(n113), .A0N(\Reg_File[7][0] ), .A1N(n113), 
        .Y(n90) );
  OAI2BB2X1M U110 ( .B0(n139), .B1(n113), .A0N(\Reg_File[7][1] ), .A1N(n113), 
        .Y(n91) );
  OAI2BB2X1M U111 ( .B0(n137), .B1(n113), .A0N(\Reg_File[7][2] ), .A1N(n113), 
        .Y(n92) );
  OAI2BB2X1M U112 ( .B0(n136), .B1(n113), .A0N(\Reg_File[7][3] ), .A1N(n113), 
        .Y(n93) );
  OAI2BB2X1M U113 ( .B0(n135), .B1(n113), .A0N(\Reg_File[7][4] ), .A1N(n113), 
        .Y(n94) );
  OAI2BB2X1M U114 ( .B0(n134), .B1(n113), .A0N(\Reg_File[7][5] ), .A1N(n113), 
        .Y(n95) );
  OAI2BB2X1M U115 ( .B0(n133), .B1(n113), .A0N(\Reg_File[7][6] ), .A1N(n113), 
        .Y(n96) );
  OAI2BB2X1M U116 ( .B0(n132), .B1(n113), .A0N(\Reg_File[7][7] ), .A1N(n113), 
        .Y(n97) );
  OAI2BB2X1M U117 ( .B0(n124), .B1(n141), .A0N(REG0[0]), .A1N(n124), .Y(n34)
         );
  OAI2BB2X1M U118 ( .B0(n123), .B1(n139), .A0N(REG0[1]), .A1N(n123), .Y(n35)
         );
  OAI2BB2X1M U119 ( .B0(n124), .B1(n137), .A0N(REG0[2]), .A1N(n124), .Y(n36)
         );
  OAI2BB2X1M U120 ( .B0(n123), .B1(n136), .A0N(REG0[3]), .A1N(n123), .Y(n37)
         );
  OAI2BB2X1M U121 ( .B0(n124), .B1(n135), .A0N(REG0[4]), .A1N(n124), .Y(n38)
         );
  OAI2BB2X1M U122 ( .B0(n123), .B1(n134), .A0N(REG0[5]), .A1N(n123), .Y(n39)
         );
  OAI2BB2X1M U123 ( .B0(n124), .B1(n133), .A0N(REG0[6]), .A1N(n124), .Y(n40)
         );
  OAI2BB2X1M U124 ( .B0(n123), .B1(n132), .A0N(REG0[7]), .A1N(n123), .Y(n41)
         );
  OAI2BB2X1M U125 ( .B0(n141), .B1(n120), .A0N(REG2[0]), .A1N(n120), .Y(n50)
         );
  OAI2BB2X1M U126 ( .B0(n132), .B1(n120), .A0N(REG2[7]), .A1N(n120), .Y(n57)
         );
  OAI2BB2X1M U127 ( .B0(n134), .B1(n119), .A0N(REG3[5]), .A1N(n119), .Y(n63)
         );
  AO22X1M U128 ( .A0(N34), .A1(n142), .B0(RdData[0]), .B1(n125), .Y(n25) );
  MX2XLM U129 ( .A(n14), .B(n11), .S0(N13), .Y(N34) );
  MX4X1M U130 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(n109), .S1(n112), .Y(n11)
         );
  AO22X1M U131 ( .A0(N33), .A1(n142), .B0(RdData[1]), .B1(n125), .Y(n26) );
  MX2XLM U132 ( .A(n20), .B(n16), .S0(N13), .Y(N33) );
  MX4X1M U133 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n109), .S1(n112), .Y(n16)
         );
  AO22X1M U134 ( .A0(N32), .A1(n142), .B0(RdData[2]), .B1(n125), .Y(n27) );
  MX2XLM U135 ( .A(n98), .B(n22), .S0(N13), .Y(N32) );
  MX4X1M U136 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n109), .S1(n112), .Y(n22)
         );
  AO22X1M U137 ( .A0(N31), .A1(n142), .B0(RdData[3]), .B1(n125), .Y(n28) );
  MX2XLM U138 ( .A(n100), .B(n99), .S0(N13), .Y(N31) );
  MX4X1M U139 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n109), .S1(n112), .Y(n99)
         );
  AO22X1M U140 ( .A0(N30), .A1(n142), .B0(RdData[4]), .B1(n125), .Y(n29) );
  MX2XLM U141 ( .A(n102), .B(n101), .S0(N13), .Y(N30) );
  MX4X1M U142 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n109), .S1(n112), .Y(n101) );
  AO22X1M U143 ( .A0(N29), .A1(n142), .B0(RdData[5]), .B1(n125), .Y(n30) );
  MX2XLM U144 ( .A(n104), .B(n103), .S0(N13), .Y(N29) );
  MX4X1M U145 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n109), .S1(n112), .Y(n103) );
  AO22X1M U146 ( .A0(N28), .A1(n142), .B0(RdData[6]), .B1(n125), .Y(n31) );
  MX2XLM U147 ( .A(n106), .B(n105), .S0(N13), .Y(N28) );
  MX4X1M U148 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n109), .S1(n112), .Y(n105) );
  AO22X1M U149 ( .A0(N27), .A1(n142), .B0(RdData[7]), .B1(n125), .Y(n32) );
  MX2XLM U150 ( .A(n108), .B(n107), .S0(N13), .Y(N27) );
  MX4X1M U151 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n109), .S1(n112), .Y(n107) );
  OAI2BB1X2M U152 ( .A0N(RdData_Valid), .A1N(n13), .B0(n125), .Y(n33) );
endmodule


module ALU_data_width8_out_width16_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n26, n27, n28, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
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
         \u_div/PartRem[6][2] , \u_div/PartRem[7][1] , n1, n2, n3, n5, n7, n8,
         n9, n10, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25;

  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n18), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n18), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n21), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n21), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n21), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n17), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n21), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n18), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n20), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n20), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n20), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n18), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n17), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(n2), .B(n19), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n19), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n19), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n19), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n21), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n15), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n21), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n20), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n17), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n16), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n21), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_5_2  ( .A(n1), .B(n20), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n20), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n19), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n16), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  MX2X3M U1 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  INVX32M U2 ( .A(b[0]), .Y(n22) );
  BUFX16M U3 ( .A(\u_div/PartRem[6][2] ), .Y(n1) );
  INVX32M U4 ( .A(b[5]), .Y(n17) );
  MX2X8M U5 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  AND2X12M U6 ( .A(\u_div/CryTmp[1][7] ), .B(n15), .Y(quotient[1]) );
  MX2X3M U7 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  MX2X6M U8 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKINVX32M U9 ( .A(n5), .Y(quotient[3]) );
  CLKINVX16M U10 ( .A(n28), .Y(n5) );
  INVX12M U11 ( .A(b[1]), .Y(n21) );
  BUFX14M U12 ( .A(n26), .Y(quotient[5]) );
  INVX18M U13 ( .A(b[2]), .Y(n20) );
  MX2X2M U14 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X2M U15 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  INVX2M U16 ( .A(b[6]), .Y(n16) );
  MX2X2M U17 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  MX2X2M U18 ( .A(n2), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][4] ) );
  BUFX2M U19 ( .A(\u_div/PartRem[5][3] ), .Y(n2) );
  MX2XLM U20 ( .A(n1), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][3] ) );
  CLKINVX32M U21 ( .A(n27), .Y(n3) );
  INVX32M U22 ( .A(n3), .Y(quotient[4]) );
  MX2X6M U23 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  AND2X6M U24 ( .A(\u_div/CryTmp[4][4] ), .B(n24), .Y(n27) );
  AND3X4M U25 ( .A(n25), .B(n17), .C(\u_div/CryTmp[3][5] ), .Y(n28) );
  MX2X6M U26 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2XLM U28 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  AND2X12M U29 ( .A(\u_div/CryTmp[6][2] ), .B(n13), .Y(quotient[6]) );
  CLKNAND2X16M U30 ( .A(n9), .B(n10), .Y(\u_div/PartRem[7][1] ) );
  NAND2X12M U31 ( .A(a[7]), .B(n8), .Y(n9) );
  AND2X12M U32 ( .A(\u_div/CryTmp[2][6] ), .B(n25), .Y(quotient[2]) );
  AND3X12M U33 ( .A(n25), .B(n18), .C(n17), .Y(n24) );
  AND2X12M U34 ( .A(n24), .B(n19), .Y(n23) );
  INVX10M U35 ( .A(b[3]), .Y(n19) );
  AND2X4M U36 ( .A(\u_div/CryTmp[5][3] ), .B(n23), .Y(n26) );
  INVX18M U37 ( .A(b[4]), .Y(n18) );
  CLKAND2X16M U38 ( .A(n23), .B(n12), .Y(n7) );
  AND2X12M U39 ( .A(\u_div/CryTmp[7][1] ), .B(n7), .Y(quotient[7]) );
  OR2X2M U40 ( .A(a[7]), .B(n22), .Y(\u_div/CryTmp[7][1] ) );
  CLKAND2X3M U41 ( .A(n21), .B(n20), .Y(n12) );
  NAND2X6M U42 ( .A(\u_div/SumTmp[7][0] ), .B(quotient[7]), .Y(n10) );
  CLKINVX16M U43 ( .A(quotient[7]), .Y(n8) );
  XNOR2X2M U44 ( .A(n22), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  AND2X1M U45 ( .A(n23), .B(n20), .Y(n13) );
  MX2X1M U46 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U47 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U48 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U49 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U52 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U53 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U54 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  XNOR2X1M U55 ( .A(n22), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X1M U56 ( .A(n22), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U57 ( .A(n22), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U58 ( .A(n22), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U59 ( .A(n22), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  OR2X1M U60 ( .A(a[5]), .B(n22), .Y(\u_div/CryTmp[5][1] ) );
  OR2X1M U61 ( .A(a[4]), .B(n22), .Y(\u_div/CryTmp[4][1] ) );
  OR2X1M U62 ( .A(a[3]), .B(n22), .Y(\u_div/CryTmp[3][1] ) );
  OR2X1M U63 ( .A(a[2]), .B(n22), .Y(\u_div/CryTmp[2][1] ) );
  OR2X1M U64 ( .A(a[1]), .B(n22), .Y(\u_div/CryTmp[1][1] ) );
  XNOR2X1M U65 ( .A(n22), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X1M U66 ( .A(a[6]), .B(n22), .Y(\u_div/CryTmp[6][1] ) );
  INVXLM U67 ( .A(n22), .Y(n14) );
  NOR2X12M U68 ( .A(b[6]), .B(b[7]), .Y(n25) );
  NAND2BX2M U69 ( .AN(a[0]), .B(n14), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U70 ( .A(b[7]), .Y(n15) );
  CLKMX2X2M U71 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U72 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U73 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U74 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U75 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
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
  INVXLM U1 ( .A(B[4]), .Y(n5) );
  INVXLM U2 ( .A(B[5]), .Y(n4) );
  INVXLM U3 ( .A(B[2]), .Y(n7) );
  INVXLM U4 ( .A(B[3]), .Y(n6) );
  CLKINVX1M U5 ( .A(B[0]), .Y(n9) );
  INVX2M U6 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U7 ( .A(B[1]), .Y(n8) );
  OR2X2M U8 ( .A(A[0]), .B(n9), .Y(carry[1]) );
  INVX2M U9 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U10 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
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

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X1M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
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
  NOR2X2M U4 ( .A(B[8]), .B(A[8]), .Y(n7) );
  OAI2BB1XLM U5 ( .A0N(n10), .A1N(A[12]), .B0(n11), .Y(n9) );
  NOR2X2M U6 ( .A(B[9]), .B(A[9]), .Y(n4) );
  NOR2X2M U7 ( .A(B[10]), .B(A[10]), .Y(n16) );
  NOR2X2M U8 ( .A(B[11]), .B(A[11]), .Y(n12) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n6) );
  CLKXOR2X2M U10 ( .A(B[13]), .B(n9), .Y(SUM[13]) );
  CLKXOR2X2M U11 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
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

  ALU_data_width8_out_width16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, 
        n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  NOR2X2M U10 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U11 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U12 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U13 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  CLKXOR2X2M U14 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  NOR2X2M U15 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U16 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U17 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  CLKXOR2X2M U18 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  NOR2X2M U19 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U20 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U21 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U22 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U23 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U24 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X2M U25 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U26 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  CLKINVX4M U27 ( .A(A[4]), .Y(n28) );
  CLKINVX4M U28 ( .A(A[6]), .Y(n26) );
  CLKINVX4M U29 ( .A(A[7]), .Y(n25) );
  CLKINVX4M U30 ( .A(B[2]), .Y(n22) );
  CLKINVX4M U31 ( .A(B[3]), .Y(n21) );
  CLKINVX4M U32 ( .A(B[4]), .Y(n20) );
  CLKINVX4M U33 ( .A(B[5]), .Y(n19) );
  CLKINVX4M U34 ( .A(B[0]), .Y(n24) );
  CLKXOR2X2M U35 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  AND2X2M U36 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U38 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX4M U39 ( .A(A[1]), .Y(n31) );
  AND2X2M U40 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  XOR2X1M U41 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  AND2X2M U42 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U43 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  INVX4M U44 ( .A(A[3]), .Y(n29) );
  INVX4M U45 ( .A(A[2]), .Y(n30) );
  AND2X2M U46 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  CLKXOR2X2M U47 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX4M U48 ( .A(A[5]), .Y(n27) );
  AND2X2M U49 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U50 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U51 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XOR2X1M U52 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  INVX4M U53 ( .A(B[6]), .Y(n18) );
  INVX4M U54 ( .A(A[0]), .Y(n32) );
  XOR2X1M U55 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U56 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX4M U57 ( .A(B[1]), .Y(n23) );
  XOR2X1M U58 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX4M U59 ( .A(B[7]), .Y(n17) );
  CLKXOR2X2M U60 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
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
endmodule


module ALU_data_width8_out_width16 ( A, B, ALU_FUN, CLK, RST, En, ALU_OUT, 
        ALU_Valid, Arith_Flag, Logic_Flag, CMP_Flag, Shift_Flag );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, En;
  output ALU_Valid, Arith_Flag, Logic_Flag, CMP_Flag, Shift_Flag;
  wire   N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84,
         N117, N118, N119, n10, n11, n12, n13, n14, n16, n17, n19, n20, n22,
         n23, n24, n27, n29, n31, n32, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n45, n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n60,
         n61, n62, n63, n64, n65, n68, n69, n70, n71, n72, n73, n76, n77, n78,
         n79, n80, n81, n84, n85, n86, n87, n88, n89, n92, n93, n94, n95, n96,
         n97, n98, n100, n101, n103, n106, n107, n108, n111, n112, n113, n114,
         n115, n116, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n3, n4, n5, n6, n7, n8, n9, n15, n18, n21, n25, n26,
         n28, n30, n33, n34, n44, n51, n58, n59, n66, n67, n74, n75, n82, n83,
         n90, n91, n99, n102, n104, n105, n109, n110, n117, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194;

  NOR3X12M U74 ( .A(n92), .B(n15), .C(n93), .Y(n35) );
  NOR3BX4M U116 ( .AN(Arith_Flag), .B(n15), .C(n186), .Y(n98) );
  AOI22X4M U125 ( .A0(n185), .A1(n49), .B0(n179), .B1(n183), .Y(n47) );
  ALU_data_width8_out_width16_DW_div_uns_0 div_30 ( .a({A[7:6], n90, n75, n66, 
        n51, n33, n28}), .b({B[7:2], n25, B[0]}), .quotient({N84, N83, N82, 
        N81, N80, N79, N78, N77}) );
  ALU_data_width8_out_width16_DW01_sub_0 sub_24 ( .A({1'b0, n105, n102, n90, 
        n75, n66, n51, n33, n28}), .B({1'b0, B[7], n26, B[5:2], n25, B[0]}), 
        .CI(1'b0), .DIFF({N60, N59, N58, N57, N56, N55, N54, N53, N52}) );
  ALU_data_width8_out_width16_DW01_add_0 add_21 ( .A({1'b0, n105, A[6], n90, 
        n75, n66, n51, n33, n28}), .B({1'b0, B[7], n26, B[5:2], n25, B[0]}), 
        .CI(1'b0), .SUM({N51, N50, N49, N48, N47, N46, N45, N44, N43}) );
  ALU_data_width8_out_width16_DW02_mult_0 mult_27 ( .A({n105, n102, n90, n75, 
        n66, n51, n33, n28}), .B({B[7], n26, B[5:2], n25, B[0]}), .TC(1'b0), 
        .PRODUCT({N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61}) );
  DFFRQX2M ALU_Valid_reg ( .D(En), .CK(CLK), .RN(n110), .Q(ALU_Valid) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n140), .CK(CLK), .RN(n109), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n139), .CK(CLK), .RN(n109), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n138), .CK(CLK), .RN(n109), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n137), .CK(CLK), .RN(n109), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n136), .CK(CLK), .RN(n109), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n135), .CK(CLK), .RN(n109), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n134), .CK(CLK), .RN(n109), .Q(ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n132), .CK(CLK), .RN(n109), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n131), .CK(CLK), .RN(n109), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n130), .CK(CLK), .RN(n109), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n129), .CK(CLK), .RN(n109), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n128), .CK(CLK), .RN(n110), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n127), .CK(CLK), .RN(n110), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n133), .CK(CLK), .RN(n109), .Q(ALU_OUT[8]) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(n126), .CK(CLK), .RN(n110), .Q(ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(n125), .CK(CLK), .RN(n110), .Q(ALU_OUT[0]) );
  CLKINVX2M U3 ( .A(B[0]), .Y(n169) );
  NOR3X2M U4 ( .A(n4), .B(n5), .C(n6), .Y(n38) );
  CLKINVX2M U7 ( .A(B[2]), .Y(n171) );
  INVX2M U8 ( .A(A[7]), .Y(n104) );
  AND3X2M U9 ( .A(n12), .B(n10), .C(n11), .Y(n3) );
  INVX4M U10 ( .A(A[5]), .Y(n83) );
  INVX2M U11 ( .A(B[3]), .Y(n173) );
  XNOR2X4M U12 ( .A(n102), .B(n26), .Y(n160) );
  OAI31X2M U13 ( .A0(n153), .A1(n144), .A2(n143), .B0(n154), .Y(n146) );
  AOI211X2M U14 ( .A0(n34), .A1(n170), .B0(n150), .C0(n142), .Y(n143) );
  OAI21X2M U15 ( .A0(n163), .A1(n148), .B0(n164), .Y(N119) );
  NAND2X6M U16 ( .A(n13), .B(n3), .Y(n125) );
  AOI211X4M U17 ( .A0(N77), .A1(n14), .B0(n176), .C0(n16), .Y(n13) );
  NAND4X2M U18 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n126) );
  AND2X2M U19 ( .A(N44), .B(n8), .Y(n4) );
  AND2X1M U20 ( .A(N78), .B(n14), .Y(n5) );
  AND2X2M U21 ( .A(N53), .B(n7), .Y(n6) );
  INVX4M U22 ( .A(A[6]), .Y(n99) );
  NOR2X2M U23 ( .A(n169), .B(n28), .Y(n141) );
  NOR2X2M U24 ( .A(n171), .B(n58), .Y(n144) );
  AOI211X2M U25 ( .A0(n151), .A1(n167), .B0(n150), .C0(n149), .Y(n152) );
  NOR2X2M U26 ( .A(n173), .B(n67), .Y(n153) );
  INVX2M U27 ( .A(A[4]), .Y(n74) );
  NAND4X6M U28 ( .A(n183), .B(En), .C(n186), .D(n179), .Y(n27) );
  INVX4M U29 ( .A(ALU_FUN[3]), .Y(n179) );
  NAND4X2M U30 ( .A(ALU_FUN[3]), .B(n186), .C(n185), .D(n182), .Y(n107) );
  CLKINVX2M U31 ( .A(n75), .Y(n191) );
  AOI22X1M U32 ( .A0(n184), .A1(n186), .B0(ALU_FUN[1]), .B1(n182), .Y(n124) );
  CLKINVX2M U33 ( .A(n19), .Y(n176) );
  INVX4M U34 ( .A(n30), .Y(n33) );
  OAI21X1M U35 ( .A0(n25), .A1(n43), .B0(n19), .Y(n42) );
  BUFX32M U36 ( .A(B[1]), .Y(n25) );
  INVXLM U37 ( .A(B[5]), .Y(n189) );
  NOR2X2M U38 ( .A(n168), .B(B[7]), .Y(n163) );
  INVXLM U39 ( .A(B[4]), .Y(n190) );
  CLKBUFX4M U40 ( .A(B[6]), .Y(n26) );
  OR2X4M U41 ( .A(n47), .B(n15), .Y(n24) );
  INVX8M U42 ( .A(n45), .Y(n180) );
  INVX4M U43 ( .A(n27), .Y(n178) );
  BUFX4M U44 ( .A(n187), .Y(n15) );
  BUFX4M U45 ( .A(n187), .Y(n18) );
  BUFX4M U46 ( .A(n187), .Y(n21) );
  INVX4M U47 ( .A(n9), .Y(n177) );
  NAND2X4M U48 ( .A(En), .B(n50), .Y(n31) );
  OAI2BB1X2M U49 ( .A0N(n185), .A1N(n49), .B0(n108), .Y(n50) );
  NOR2X4M U50 ( .A(n107), .B(n15), .Y(n45) );
  INVX2M U51 ( .A(n92), .Y(n184) );
  INVX2M U52 ( .A(n100), .Y(n183) );
  NAND2X2M U53 ( .A(n184), .B(n179), .Y(n108) );
  NOR2BX8M U54 ( .AN(n98), .B(n185), .Y(n14) );
  NOR2BX8M U55 ( .AN(n17), .B(n100), .Y(n41) );
  NOR2BX4M U56 ( .AN(n101), .B(n179), .Y(n17) );
  INVX8M U57 ( .A(n111), .Y(n181) );
  INVX2M U58 ( .A(En), .Y(n187) );
  AND2X2M U59 ( .A(Arith_Flag), .B(n101), .Y(n115) );
  NAND3X2M U60 ( .A(n108), .B(n107), .C(n47), .Y(Logic_Flag) );
  NOR2X2M U61 ( .A(n124), .B(n179), .Y(CMP_Flag) );
  NAND3X1M U62 ( .A(n184), .B(n17), .C(N119), .Y(n19) );
  INVX2M U63 ( .A(n33), .Y(n167) );
  INVX4M U64 ( .A(n114), .Y(n175) );
  OAI221X1M U65 ( .A0(n105), .A1(n24), .B0(n180), .B1(n168), .C0(n27), .Y(n103) );
  OAI221X1M U66 ( .A0(n58), .A1(n24), .B0(n180), .B1(n193), .C0(n27), .Y(n57)
         );
  OAI221X1M U67 ( .A0(n67), .A1(n24), .B0(n180), .B1(n192), .C0(n27), .Y(n65)
         );
  OAI221X1M U68 ( .A0(n82), .A1(n24), .B0(n180), .B1(n191), .C0(n27), .Y(n73)
         );
  OAI221X1M U69 ( .A0(n31), .A1(n193), .B0(n58), .B1(n180), .C0(n9), .Y(n56)
         );
  OAI221X1M U70 ( .A0(n31), .A1(n192), .B0(n67), .B1(n180), .C0(n9), .Y(n64)
         );
  OAI221X1M U71 ( .A0(n31), .A1(n191), .B0(n82), .B1(n180), .C0(n9), .Y(n72)
         );
  INVX4M U72 ( .A(ALU_FUN[1]), .Y(n185) );
  NAND2X2M U73 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n100) );
  NOR2X4M U75 ( .A(n93), .B(ALU_FUN[2]), .Y(n49) );
  INVX2M U76 ( .A(ALU_FUN[0]), .Y(n186) );
  NAND2X2M U77 ( .A(ALU_FUN[2]), .B(n185), .Y(n92) );
  OAI21X2M U78 ( .A0(n34), .A1(n180), .B0(n9), .Y(n40) );
  CLKBUFX6M U79 ( .A(n32), .Y(n9) );
  NAND4X2M U80 ( .A(ALU_FUN[0]), .B(n184), .C(En), .D(n179), .Y(n32) );
  CLKBUFX6M U81 ( .A(n22), .Y(n7) );
  NOR2BX2M U82 ( .AN(n98), .B(ALU_FUN[1]), .Y(n22) );
  NOR2X4M U83 ( .A(n15), .B(ALU_FUN[0]), .Y(n101) );
  NAND2X2M U84 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n93) );
  NAND2X2M U85 ( .A(n115), .B(ALU_FUN[1]), .Y(n111) );
  INVX2M U86 ( .A(ALU_FUN[2]), .Y(n182) );
  NOR2X2M U87 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .Y(Arith_Flag) );
  CLKBUFX6M U88 ( .A(n23), .Y(n8) );
  NOR2BX2M U89 ( .AN(n115), .B(ALU_FUN[1]), .Y(n23) );
  INVX2M U90 ( .A(n105), .Y(n168) );
  INVX2M U91 ( .A(n51), .Y(n193) );
  INVX2M U92 ( .A(n66), .Y(n192) );
  OAI32X1M U93 ( .A0(n100), .A1(ALU_FUN[0]), .A2(n179), .B0(n92), .B1(n93), 
        .Y(Shift_Flag) );
  INVX6M U94 ( .A(n117), .Y(n109) );
  INVX4M U95 ( .A(n117), .Y(n110) );
  AND4X2M U96 ( .A(N117), .B(ALU_FUN[1]), .C(n17), .D(n182), .Y(n16) );
  INVX4M U97 ( .A(n83), .Y(n90) );
  AOI222X2M U98 ( .A0(N54), .A1(n7), .B0(n41), .B1(n34), .C0(N79), .C1(n14), 
        .Y(n55) );
  INVX4M U99 ( .A(n74), .Y(n75) );
  INVX4M U100 ( .A(n59), .Y(n66) );
  INVX4M U101 ( .A(n44), .Y(n51) );
  AOI222X2M U102 ( .A0(N55), .A1(n7), .B0(n58), .B1(n41), .C0(N80), .C1(n14), 
        .Y(n63) );
  INVXLM U103 ( .A(n141), .Y(n170) );
  AOI222X2M U104 ( .A0(N56), .A1(n7), .B0(n67), .B1(n41), .C0(N81), .C1(n14), 
        .Y(n71) );
  INVXLM U105 ( .A(n152), .Y(n172) );
  OAI31X2M U106 ( .A0(n47), .A1(n25), .A2(n34), .B0(n48), .Y(n46) );
  AOI33X2M U107 ( .A0(n49), .A1(ALU_FUN[1]), .A2(N118), .B0(n34), .B1(n50), 
        .B2(n25), .Y(n48) );
  INVX2M U108 ( .A(n166), .Y(N118) );
  INVX2M U109 ( .A(n26), .Y(n174) );
  AOI21X2M U110 ( .A0(n34), .A1(n45), .B0(n178), .Y(n43) );
  INVX4M U111 ( .A(n44), .Y(n58) );
  AOI222X2M U112 ( .A0(n26), .A1(n88), .B0(N49), .B1(n8), .C0(n89), .C1(n174), 
        .Y(n86) );
  OAI221X1M U113 ( .A0(n31), .A1(n99), .B0(n102), .B1(n180), .C0(n9), .Y(n88)
         );
  OAI221X1M U114 ( .A0(n102), .A1(n24), .B0(n180), .B1(n99), .C0(n27), .Y(n89)
         );
  OAI221X1M U115 ( .A0(n28), .A1(n24), .B0(n180), .B1(n194), .C0(n27), .Y(n20)
         );
  OAI221X1M U117 ( .A0(n194), .A1(n31), .B0(n28), .B1(n180), .C0(n9), .Y(n29)
         );
  OAI2BB1X2M U118 ( .A0N(N60), .A1N(n7), .B0(n24), .Y(n114) );
  INVX4M U119 ( .A(n30), .Y(n34) );
  INVX4M U120 ( .A(n59), .Y(n67) );
  INVX4M U121 ( .A(n74), .Y(n82) );
  INVX4M U122 ( .A(n99), .Y(n102) );
  INVX4M U123 ( .A(n83), .Y(n91) );
  INVX4M U124 ( .A(n104), .Y(n105) );
  INVX2M U126 ( .A(n28), .Y(n194) );
  INVX2M U127 ( .A(RST), .Y(n117) );
  AOI222X2M U128 ( .A0(ALU_OUT[0]), .A1(n18), .B0(n178), .B1(n194), .C0(n34), 
        .C1(n35), .Y(n10) );
  AOI222X2M U129 ( .A0(n177), .A1(n28), .B0(B[0]), .B1(n29), .C0(N61), .C1(
        n181), .Y(n11) );
  AOI222X2M U130 ( .A0(n20), .A1(n169), .B0(N52), .B1(n7), .C0(N43), .C1(n8), 
        .Y(n12) );
  AOI222X2M U131 ( .A0(ALU_OUT[1]), .A1(n21), .B0(n178), .B1(n167), .C0(n58), 
        .C1(n35), .Y(n36) );
  AOI222X2M U132 ( .A0(n34), .A1(n177), .B0(En), .B1(n46), .C0(N62), .C1(n181), 
        .Y(n37) );
  AOI221X2M U133 ( .A0(n25), .A1(n40), .B0(n41), .B1(n28), .C0(n42), .Y(n39)
         );
  NAND2X2M U134 ( .A(n123), .B(n175), .Y(n140) );
  AOI22X1M U135 ( .A0(N76), .A1(n181), .B0(ALU_OUT[15]), .B1(n18), .Y(n123) );
  CLKBUFX8M U136 ( .A(A[0]), .Y(n28) );
  NAND4X2M U137 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n127) );
  AOI22X1M U138 ( .A0(n67), .A1(n35), .B0(ALU_OUT[2]), .B1(n18), .Y(n52) );
  AOI222X2M U139 ( .A0(n178), .A1(n193), .B0(N63), .B1(n181), .C0(n58), .C1(
        n177), .Y(n53) );
  AOI222X2M U140 ( .A0(B[2]), .A1(n56), .B0(N45), .B1(n8), .C0(n57), .C1(n171), 
        .Y(n54) );
  NAND2X2M U141 ( .A(n122), .B(n175), .Y(n139) );
  AOI22X1M U142 ( .A0(N75), .A1(n181), .B0(ALU_OUT[14]), .B1(n21), .Y(n122) );
  INVX2M U143 ( .A(A[1]), .Y(n30) );
  INVX2M U144 ( .A(A[3]), .Y(n59) );
  INVX2M U145 ( .A(A[2]), .Y(n44) );
  NAND4X2M U146 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n128) );
  AOI22X1M U147 ( .A0(n82), .A1(n35), .B0(ALU_OUT[3]), .B1(n21), .Y(n60) );
  AOI222X2M U148 ( .A0(n178), .A1(n192), .B0(N64), .B1(n181), .C0(n67), .C1(
        n177), .Y(n61) );
  AOI222X2M U149 ( .A0(B[3]), .A1(n64), .B0(N46), .B1(n8), .C0(n65), .C1(n173), 
        .Y(n62) );
  NAND2X2M U150 ( .A(n121), .B(n175), .Y(n138) );
  AOI22X1M U151 ( .A0(N74), .A1(n181), .B0(ALU_OUT[13]), .B1(n18), .Y(n121) );
  NAND2X2M U152 ( .A(n120), .B(n175), .Y(n137) );
  AOI22X1M U153 ( .A0(N73), .A1(n181), .B0(ALU_OUT[12]), .B1(n21), .Y(n120) );
  NAND4X2M U154 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n129) );
  AOI22X1M U155 ( .A0(n91), .A1(n35), .B0(ALU_OUT[4]), .B1(n18), .Y(n68) );
  AOI222X2M U156 ( .A0(n178), .A1(n191), .B0(N65), .B1(n181), .C0(n82), .C1(
        n177), .Y(n69) );
  AOI222X2M U157 ( .A0(B[4]), .A1(n72), .B0(N47), .B1(n8), .C0(n73), .C1(n190), 
        .Y(n70) );
  NAND2X2M U158 ( .A(n119), .B(n175), .Y(n136) );
  AOI22X1M U159 ( .A0(N72), .A1(n181), .B0(ALU_OUT[11]), .B1(n18), .Y(n119) );
  NAND2X2M U160 ( .A(n118), .B(n175), .Y(n135) );
  AOI22X1M U161 ( .A0(N71), .A1(n181), .B0(ALU_OUT[10]), .B1(n21), .Y(n118) );
  AOI222X2M U162 ( .A0(n105), .A1(n177), .B0(B[7]), .B1(n106), .C0(N68), .C1(
        n181), .Y(n95) );
  OAI221X1M U163 ( .A0(n31), .A1(n168), .B0(n105), .B1(n180), .C0(n9), .Y(n106) );
  AOI222X2M U164 ( .A0(B[5]), .A1(n80), .B0(N48), .B1(n8), .C0(n81), .C1(n189), 
        .Y(n78) );
  OAI221X1M U165 ( .A0(n31), .A1(n83), .B0(n91), .B1(n180), .C0(n9), .Y(n80)
         );
  OAI221X1M U166 ( .A0(n91), .A1(n24), .B0(n180), .B1(n83), .C0(n27), .Y(n81)
         );
  OAI2B11X2M U167 ( .A1N(N69), .A0(n111), .B0(n112), .C0(n113), .Y(n133) );
  AOI32X1M U168 ( .A0(n183), .A1(n101), .A2(n105), .B0(N51), .B1(n8), .Y(n112)
         );
  AOI21X2M U169 ( .A0(ALU_OUT[8]), .A1(n15), .B0(n114), .Y(n113) );
  NAND4X2M U170 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n130) );
  AOI22X1M U171 ( .A0(n102), .A1(n35), .B0(ALU_OUT[5]), .B1(n21), .Y(n76) );
  AOI222X2M U172 ( .A0(N57), .A1(n7), .B0(n82), .B1(n41), .C0(N82), .C1(n14), 
        .Y(n79) );
  AOI222X2M U173 ( .A0(n178), .A1(n83), .B0(N66), .B1(n181), .C0(n91), .C1(
        n177), .Y(n77) );
  NAND4X2M U174 ( .A(n84), .B(n85), .C(n86), .D(n87), .Y(n131) );
  AOI22X1M U175 ( .A0(n105), .A1(n35), .B0(ALU_OUT[6]), .B1(n18), .Y(n84) );
  AOI222X2M U176 ( .A0(N58), .A1(n7), .B0(n91), .B1(n41), .C0(N83), .C1(n14), 
        .Y(n87) );
  AOI222X2M U177 ( .A0(n178), .A1(n99), .B0(N67), .B1(n181), .C0(n102), .C1(
        n177), .Y(n85) );
  NAND4X2M U178 ( .A(n94), .B(n95), .C(n96), .D(n97), .Y(n132) );
  AOI22X1M U179 ( .A0(n178), .A1(n104), .B0(ALU_OUT[7]), .B1(n21), .Y(n94) );
  AOI222X2M U180 ( .A0(N59), .A1(n7), .B0(n102), .B1(n41), .C0(N84), .C1(n14), 
        .Y(n97) );
  AOI22X1M U181 ( .A0(N50), .A1(n8), .B0(n103), .B1(n188), .Y(n96) );
  NAND2X2M U182 ( .A(n116), .B(n175), .Y(n134) );
  AOI22X1M U183 ( .A0(N70), .A1(n181), .B0(ALU_OUT[9]), .B1(n18), .Y(n116) );
  INVX2M U184 ( .A(B[7]), .Y(n188) );
  NAND2BX1M U185 ( .AN(B[4]), .B(n82), .Y(n156) );
  NAND2BX1M U186 ( .AN(n82), .B(B[4]), .Y(n145) );
  CLKNAND2X2M U187 ( .A(n156), .B(n145), .Y(n158) );
  CLKNAND2X2M U188 ( .A(n58), .B(n171), .Y(n155) );
  NAND2BX1M U189 ( .AN(n144), .B(n155), .Y(n150) );
  AOI21X1M U190 ( .A0(n141), .A1(n167), .B0(n25), .Y(n142) );
  CLKNAND2X2M U191 ( .A(n67), .B(n173), .Y(n154) );
  NAND2BX1M U192 ( .AN(n91), .B(B[5]), .Y(n161) );
  OAI211X1M U193 ( .A0(n158), .A1(n146), .B0(n145), .C0(n161), .Y(n147) );
  NAND2BX1M U194 ( .AN(B[5]), .B(n91), .Y(n157) );
  AOI32X1M U195 ( .A0(n147), .A1(n157), .A2(n160), .B0(n26), .B1(n99), .Y(n148) );
  CLKNAND2X2M U196 ( .A(B[7]), .B(n168), .Y(n164) );
  CLKNAND2X2M U197 ( .A(n28), .B(n169), .Y(n151) );
  OA21X1M U198 ( .A0(n151), .A1(n167), .B0(n25), .Y(n149) );
  AOI31X1M U199 ( .A0(n172), .A1(n155), .A2(n154), .B0(n153), .Y(n159) );
  OAI2B11X1M U200 ( .A1N(n159), .A0(n158), .B0(n157), .C0(n156), .Y(n162) );
  AOI32X1M U201 ( .A0(n162), .A1(n161), .A2(n160), .B0(n102), .B1(n174), .Y(
        n165) );
  AOI2B1X1M U202 ( .A1N(n165), .A0(n164), .B0(n163), .Y(n166) );
  NOR2X1M U203 ( .A(N119), .B(N118), .Y(N117) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module serializer_data_width8 ( P_DATA, DATA_VALID, ser_en, CLK, RST, ser_data, 
        ser_done );
  input [7:0] P_DATA;
  input DATA_VALID, ser_en, CLK, RST;
  output ser_data, ser_done;
  wire   n7, n8, n9, n10, n11, n12, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n35, n36, n37, n38, n1, n2, n3, n4,
         n5, n6, n13, n29, n30, n31;
  wire   [3:0] counter;
  wire   [7:0] mem;

  EDFFHQX1M \mem_reg[4]  ( .D(P_DATA[4]), .E(n2), .CK(CLK), .Q(mem[4]) );
  EDFFHQX1M \mem_reg[0]  ( .D(P_DATA[0]), .E(n2), .CK(CLK), .Q(mem[0]) );
  DFFSQX2M \counter_reg[3]  ( .D(n37), .CK(CLK), .SN(n3), .Q(counter[3]) );
  EDFFX1M \mem_reg[7]  ( .D(P_DATA[7]), .E(n22), .CK(CLK), .QN(n7) );
  EDFFX1M \mem_reg[6]  ( .D(P_DATA[6]), .E(n2), .CK(CLK), .QN(n8) );
  EDFFX1M \mem_reg[5]  ( .D(P_DATA[5]), .E(n2), .CK(CLK), .QN(n9) );
  EDFFX1M \mem_reg[3]  ( .D(P_DATA[3]), .E(n2), .CK(CLK), .QN(n10) );
  EDFFX1M \mem_reg[2]  ( .D(P_DATA[2]), .E(n2), .CK(CLK), .QN(n11) );
  EDFFX1M \mem_reg[1]  ( .D(P_DATA[1]), .E(n2), .CK(CLK), .QN(n12) );
  DFFRX1M ser_data_reg ( .D(n28), .CK(CLK), .RN(n3), .Q(ser_data) );
  DFFRX4M \counter_reg[0]  ( .D(n38), .CK(CLK), .RN(RST), .Q(counter[0]), .QN(
        n29) );
  DFFRX4M \counter_reg[1]  ( .D(n36), .CK(CLK), .RN(n3), .Q(counter[1]), .QN(
        n30) );
  DFFRX4M \counter_reg[2]  ( .D(n35), .CK(CLK), .RN(n3), .Q(counter[2]), .QN(
        n31) );
  INVXLM U3 ( .A(RST), .Y(n4) );
  AOI32X1M U4 ( .A0(counter[0]), .A1(n30), .A2(mem[0]), .B0(counter[1]), .B1(
        n21), .Y(n20) );
  AOI32X1M U5 ( .A0(counter[0]), .A1(n30), .A2(mem[4]), .B0(counter[1]), .B1(
        n19), .Y(n18) );
  AOI21X2M U6 ( .A0(counter[0]), .A1(n27), .B0(n6), .Y(n25) );
  INVX4M U7 ( .A(n1), .Y(n2) );
  BUFX2M U8 ( .A(RST), .Y(n3) );
  INVX2M U9 ( .A(n23), .Y(n6) );
  INVX2M U10 ( .A(n22), .Y(n1) );
  NOR2X2M U11 ( .A(n23), .B(n4), .Y(n22) );
  INVX4M U12 ( .A(n27), .Y(n13) );
  NAND2X2M U13 ( .A(DATA_VALID), .B(n13), .Y(n23) );
  OAI21X2M U14 ( .A0(n30), .A1(n13), .B0(n25), .Y(n24) );
  NOR2BX4M U15 ( .AN(ser_en), .B(ser_done), .Y(n27) );
  NAND2X4M U16 ( .A(n29), .B(n30), .Y(n17) );
  OAI22X1M U17 ( .A0(n25), .A1(n30), .B0(n17), .B1(n13), .Y(n36) );
  NOR3X8M U18 ( .A(counter[2]), .B(counter[3]), .C(n17), .Y(ser_done) );
  OAI32X2M U19 ( .A0(n13), .A1(counter[2]), .A2(n17), .B0(n5), .B1(n31), .Y(
        n35) );
  INVX2M U20 ( .A(n24), .Y(n5) );
  OAI2B2X1M U21 ( .A1N(counter[3]), .A0(n26), .B0(n27), .B1(n6), .Y(n37) );
  NOR2X2M U22 ( .A(counter[2]), .B(n24), .Y(n26) );
  OAI22X1M U23 ( .A0(n29), .A1(n23), .B0(counter[0]), .B1(n13), .Y(n38) );
  OAI2BB2X1M U24 ( .B0(n14), .B1(n13), .A0N(ser_data), .A1N(n13), .Y(n28) );
  AOI22X1M U25 ( .A0(n15), .A1(n31), .B0(counter[2]), .B1(n16), .Y(n14) );
  OAI21X2M U26 ( .A0(n17), .A1(n7), .B0(n20), .Y(n15) );
  OAI21X2M U27 ( .A0(n17), .A1(n10), .B0(n18), .Y(n16) );
  OAI22X1M U28 ( .A0(n29), .A1(n8), .B0(counter[0]), .B1(n9), .Y(n19) );
  OAI22X1M U29 ( .A0(n29), .A1(n11), .B0(counter[0]), .B1(n12), .Y(n21) );
endmodule


module fsm ( DATA_VALID, PAR_EN, ser_done, CLK, RST, ser_en, busy, mux_sel );
  output [1:0] mux_sel;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST;
  output ser_en, busy;
  wire   busy_c, n5, n6, n7, n8, n9, n10, n11, n12, n1, n2, n4;
  wire   [31:0] current_state;
  wire   [2:0] next_state;

  DFFRX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]), .QN(n2) );
  DFFRX1M busy_reg ( .D(busy_c), .CK(CLK), .RN(RST), .Q(busy) );
  DFFRX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n1) );
  DFFRX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]), .QN(n4) );
  NAND2X2M U3 ( .A(current_state[1]), .B(n4), .Y(n8) );
  OAI21X2M U4 ( .A0(n8), .A1(n1), .B0(n12), .Y(mux_sel[0]) );
  INVX2M U5 ( .A(n8), .Y(mux_sel[1]) );
  NAND2X2M U6 ( .A(n5), .B(n6), .Y(ser_en) );
  NAND2X2M U7 ( .A(mux_sel[1]), .B(n1), .Y(n6) );
  OAI21X2M U8 ( .A0(n9), .A1(n6), .B0(n5), .Y(next_state[1]) );
  AND2X2M U9 ( .A(n10), .B(ser_done), .Y(n9) );
  NAND3X2M U10 ( .A(n1), .B(n2), .C(current_state[2]), .Y(n12) );
  NAND3X2M U11 ( .A(n4), .B(n2), .C(current_state[0]), .Y(n5) );
  OAI32X2M U12 ( .A0(n11), .A1(current_state[1]), .A2(current_state[0]), .B0(
        n6), .B1(n10), .Y(next_state[0]) );
  NAND2X2M U13 ( .A(DATA_VALID), .B(n4), .Y(n11) );
  NAND2X2M U14 ( .A(PAR_EN), .B(ser_done), .Y(n10) );
  NOR2X2M U15 ( .A(n7), .B(n8), .Y(next_state[2]) );
  AOI2B1X1M U16 ( .A1N(PAR_EN), .A0(ser_done), .B0(current_state[0]), .Y(n7)
         );
  OAI211X2M U17 ( .A0(current_state[2]), .A1(n1), .B0(n12), .C0(n8), .Y(busy_c) );
endmodule


module parity_calc_data_width8 ( P_DATA, DATA_VALID, PAR_TYP, CLK, RST, 
        PAR_BIT );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_TYP, CLK, RST;
  output PAR_BIT;
  wire   n2, n3, n4, n5, n6, n7, n1;

  DFFRX4M PAR_BIT_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(PAR_BIT) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  OAI2BB2X1M U6 ( .B0(n2), .B1(n1), .A0N(PAR_BIT), .A1N(n1), .Y(n7) );
  INVX2M U7 ( .A(DATA_VALID), .Y(n1) );
  XOR3XLM U8 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n2) );
  XOR3XLM U9 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module UART_TX_width8 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, 
        busy );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit, n2, n3, n1, n4, n5;
  wire   [1:0] mux_sel;

  serializer_data_width8 S ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), 
        .ser_en(ser_en), .CLK(CLK), .RST(n1), .ser_data(ser_data), .ser_done(
        ser_done) );
  fsm F ( .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(ser_done), .CLK(
        CLK), .RST(n1), .ser_en(ser_en), .busy(busy), .mux_sel(mux_sel) );
  parity_calc_data_width8 P ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), 
        .PAR_TYP(PAR_TYP), .CLK(CLK), .RST(n1), .PAR_BIT(par_bit) );
  INVX4M U3 ( .A(n4), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n4) );
  NOR2BX4M U5 ( .AN(n1), .B(n2), .Y(TX_OUT) );
  AOI31X2M U6 ( .A0(mux_sel[1]), .A1(n5), .A2(ser_data), .B0(n3), .Y(n2) );
  AOI2B1X1M U7 ( .A1N(par_bit), .A0(mux_sel[1]), .B0(n5), .Y(n3) );
  INVX2M U8 ( .A(mux_sel[0]), .Y(n5) );
endmodule


module FSM ( RX_IN, CLK, RST, PAR_EN, BIT_CNT, EDGE_CNT, PRESCALE, PAR_ERR, 
        STRT_GLITCH, STP_ERR, ENABLE, DATA_SAMP_EN, DESER_EN, DATA_VALID, 
        PAR_CHK_EN, STRT_CHK_EN, STP_CHK_EN );
  input [3:0] BIT_CNT;
  input [4:0] EDGE_CNT;
  input [5:0] PRESCALE;
  input RX_IN, CLK, RST, PAR_EN, PAR_ERR, STRT_GLITCH, STP_ERR;
  output ENABLE, DATA_SAMP_EN, DESER_EN, DATA_VALID, PAR_CHK_EN, STRT_CHK_EN,
         STP_CHK_EN;
  wire   N164, N165, N166, N167, N168, N169, N170, n16, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n33, n34, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17, n32,
         n35, n36, n37, n39, n40;
  wire   [31:0] current_state;
  wire   [2:0] next_state;
  assign DATA_SAMP_EN = 1'b1;

  NOR3BX4M U46 ( .AN(n28), .B(STRT_GLITCH), .C(BIT_CNT[3]), .Y(n26) );
  DFFRQX2M \current_state_reg[2]  ( .D(n17), .CK(CLK), .RN(n3), .Q(
        current_state[2]) );
  DFFRQX4M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n3), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n3), .Q(
        current_state[1]) );
  NOR3X8M U3 ( .A(n1), .B(current_state[0]), .C(n25), .Y(DESER_EN) );
  NAND3BX2M U4 ( .AN(current_state[1]), .B(n37), .C(current_state[2]), .Y(n21)
         );
  OR4X2M U5 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(n1) );
  AND3X2M U6 ( .A(n32), .B(n35), .C(n36), .Y(n2) );
  NOR3X2M U7 ( .A(BIT_CNT[2]), .B(STP_ERR), .C(BIT_CNT[3]), .Y(n20) );
  NOR4X1M U8 ( .A(STP_ERR), .B(RX_IN), .C(BIT_CNT[3]), .D(BIT_CNT[2]), .Y(n33)
         );
  NOR3X6M U9 ( .A(BIT_CNT[1]), .B(BIT_CNT[2]), .C(n32), .Y(n28) );
  AOI32X2M U10 ( .A0(PAR_EN), .A1(BIT_CNT[3]), .A2(n28), .B0(n23), .B1(
        current_state[0]), .Y(n27) );
  NAND3BX1M U11 ( .AN(PAR_EN), .B(BIT_CNT[3]), .C(n28), .Y(n22) );
  NAND4X2M U12 ( .A(BIT_CNT[3]), .B(BIT_CNT[1]), .C(n34), .D(n32), .Y(n23) );
  NOR2BX2M U13 ( .AN(N164), .B(EDGE_CNT[0]), .Y(n9) );
  NOR2BX2M U14 ( .AN(EDGE_CNT[0]), .B(N164), .Y(n8) );
  NOR2X2M U15 ( .A(n7), .B(PRESCALE[5]), .Y(N170) );
  NAND2BX2M U16 ( .AN(PRESCALE[1]), .B(N164), .Y(n4) );
  OR2X2M U17 ( .A(n6), .B(PRESCALE[4]), .Y(n7) );
  OR2X2M U18 ( .A(n4), .B(PRESCALE[2]), .Y(n5) );
  OR2X2M U19 ( .A(n5), .B(PRESCALE[3]), .Y(n6) );
  OAI2BB1XLM U20 ( .A0N(n6), .A1N(PRESCALE[4]), .B0(n7), .Y(N168) );
  OAI2BB1XLM U21 ( .A0N(n5), .A1N(PRESCALE[3]), .B0(n6), .Y(N167) );
  OAI2BB1XLM U22 ( .A0N(n4), .A1N(PRESCALE[2]), .B0(n5), .Y(N166) );
  NAND2X2M U23 ( .A(current_state[1]), .B(n39), .Y(n25) );
  INVX2M U24 ( .A(BIT_CNT[0]), .Y(n32) );
  BUFX2M U25 ( .A(RST), .Y(n3) );
  NOR2X2M U26 ( .A(n21), .B(n1), .Y(STP_CHK_EN) );
  NOR3X2M U27 ( .A(n1), .B(n37), .C(n25), .Y(PAR_CHK_EN) );
  NAND3X2M U28 ( .A(n31), .B(n37), .C(RX_IN), .Y(ENABLE) );
  OAI2BB2X1M U29 ( .B0(n24), .B1(n25), .A0N(n26), .A1N(STRT_CHK_EN), .Y(
        next_state[1]) );
  AOI21BX2M U30 ( .A0(n22), .A1(n37), .B0N(n27), .Y(n24) );
  INVX2M U31 ( .A(n21), .Y(n36) );
  INVX2M U32 ( .A(n29), .Y(STRT_CHK_EN) );
  NOR3BX2M U33 ( .AN(STP_CHK_EN), .B(STP_ERR), .C(PAR_ERR), .Y(DATA_VALID) );
  INVX2M U34 ( .A(PRESCALE[0]), .Y(N164) );
  NOR2X4M U35 ( .A(current_state[1]), .B(current_state[2]), .Y(n31) );
  INVX4M U36 ( .A(current_state[0]), .Y(n37) );
  INVX2M U37 ( .A(current_state[2]), .Y(n39) );
  OAI221X1M U38 ( .A0(n27), .A1(n25), .B0(n26), .B1(n29), .C0(n30), .Y(
        next_state[0]) );
  AOI32X1M U39 ( .A0(n40), .A1(n37), .A2(n31), .B0(n2), .B1(n33), .Y(n30) );
  INVX2M U40 ( .A(RX_IN), .Y(n40) );
  NOR2X2M U41 ( .A(PAR_ERR), .B(BIT_CNT[2]), .Y(n34) );
  INVX2M U42 ( .A(BIT_CNT[1]), .Y(n35) );
  INVX2M U43 ( .A(n16), .Y(n17) );
  AOI31X2M U44 ( .A0(n18), .A1(n39), .A2(current_state[1]), .B0(n19), .Y(n16)
         );
  AOI31X2M U45 ( .A0(n32), .A1(n35), .A2(n20), .B0(n21), .Y(n19) );
  OAI22X1M U47 ( .A0(current_state[0]), .A1(n22), .B0(n23), .B1(n37), .Y(n18)
         );
  NAND2X2M U48 ( .A(n31), .B(current_state[0]), .Y(n29) );
  OAI2BB1X1M U49 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n4), .Y(N165) );
  AO21XLM U50 ( .A0(n7), .A1(PRESCALE[5]), .B0(N170), .Y(N169) );
  OAI2B2X1M U51 ( .A1N(N165), .A0(n8), .B0(EDGE_CNT[1]), .B1(n8), .Y(n11) );
  OAI2B2X1M U52 ( .A1N(EDGE_CNT[1]), .A0(n9), .B0(N165), .B1(n9), .Y(n10) );
  NAND4BBX1M U53 ( .AN(N170), .BN(N169), .C(n11), .D(n10), .Y(n15) );
  CLKXOR2X2M U54 ( .A(N168), .B(EDGE_CNT[4]), .Y(n14) );
  CLKXOR2X2M U55 ( .A(N166), .B(EDGE_CNT[2]), .Y(n13) );
  CLKXOR2X2M U56 ( .A(N167), .B(EDGE_CNT[3]), .Y(n12) );
endmodule


module data_sampling ( CLK, RST, RX_IN, PRESCALE, DATA_SAMP_EN, EDGE_CNT, 
        SAMPLED_BIT );
  input [5:0] PRESCALE;
  input [4:0] EDGE_CNT;
  input CLK, RST, RX_IN, DATA_SAMP_EN;
  output SAMPLED_BIT;
  wire   sample1, sample2, sample3, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n1, n2, n3, n4, n5, n6, n7,
         n25;

  OAI32X4M U11 ( .A0(n17), .A1(n10), .A2(n2), .B0(EDGE_CNT[4]), .B1(n18), .Y(
        n15) );
  OAI2BB1X4M U19 ( .A0N(sample1), .A1N(sample2), .B0(n21), .Y(SAMPLED_BIT) );
  DFFRQX1M sample3_reg ( .D(n24), .CK(CLK), .RN(n1), .Q(sample3) );
  DFFRQX2M sample2_reg ( .D(n23), .CK(CLK), .RN(n1), .Q(sample2) );
  DFFRQX2M sample1_reg ( .D(n22), .CK(CLK), .RN(n1), .Q(sample1) );
  NOR2X2M U3 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .Y(n20) );
  AOI33X2M U4 ( .A0(EDGE_CNT[3]), .A1(n4), .A2(n12), .B0(EDGE_CNT[2]), .B1(n3), 
        .B2(n13), .Y(n18) );
  NAND4X2M U5 ( .A(EDGE_CNT[1]), .B(EDGE_CNT[0]), .C(n9), .D(n2), .Y(n8) );
  BUFX2M U6 ( .A(RST), .Y(n1) );
  INVX2M U7 ( .A(RX_IN), .Y(n25) );
  NAND2X2M U8 ( .A(n4), .B(n3), .Y(n17) );
  INVX2M U9 ( .A(EDGE_CNT[2]), .Y(n4) );
  OAI2BB2X1M U10 ( .B0(n25), .B1(n14), .A0N(n14), .A1N(sample2), .Y(n23) );
  NAND3BX2M U12 ( .AN(EDGE_CNT[0]), .B(n15), .C(n5), .Y(n14) );
  INVX2M U13 ( .A(EDGE_CNT[4]), .Y(n2) );
  INVX2M U14 ( .A(EDGE_CNT[3]), .Y(n3) );
  OAI2BB2X1M U15 ( .B0(n25), .B1(n16), .A0N(n16), .A1N(sample3), .Y(n24) );
  NAND3X2M U16 ( .A(n5), .B(n15), .C(EDGE_CNT[0]), .Y(n16) );
  OAI21X2M U17 ( .A0(sample1), .A1(sample2), .B0(sample3), .Y(n21) );
  OAI2BB2X1M U18 ( .B0(n8), .B1(n25), .A0N(n8), .A1N(sample1), .Y(n22) );
  OAI32X2M U20 ( .A0(n3), .A1(n10), .A2(n4), .B0(EDGE_CNT[3]), .B1(n11), .Y(n9) );
  AOI22X1M U21 ( .A0(n12), .A1(EDGE_CNT[2]), .B0(n13), .B1(n4), .Y(n11) );
  INVX2M U22 ( .A(EDGE_CNT[1]), .Y(n5) );
  NAND3BX2M U23 ( .AN(PRESCALE[0]), .B(DATA_SAMP_EN), .C(n20), .Y(n19) );
  NAND4BX2M U24 ( .AN(n19), .B(PRESCALE[5]), .C(n7), .D(n6), .Y(n10) );
  NOR4X4M U25 ( .A(n6), .B(n19), .C(PRESCALE[3]), .D(PRESCALE[5]), .Y(n12) );
  NOR4X4M U26 ( .A(n7), .B(n19), .C(PRESCALE[4]), .D(PRESCALE[5]), .Y(n13) );
  INVX2M U27 ( .A(PRESCALE[4]), .Y(n6) );
  INVX2M U28 ( .A(PRESCALE[3]), .Y(n7) );
endmodule


module deserializer ( CLK, RST, SAMPLED_BIT, DESER_EN, P_DATA );
  output [7:0] P_DATA;
  input CLK, RST, SAMPLED_BIT, DESER_EN;
  wire   n1, n2, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n3,
         n4, n5, n7, n33, n34, n35, n36, n37, n38;
  wire   [2:0] counter;

  DFFRQX2M \P_DATA_reg[5]  ( .D(n30), .CK(CLK), .RN(n33), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n26), .CK(CLK), .RN(n33), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n29), .CK(CLK), .RN(n33), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n25), .CK(CLK), .RN(n33), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n32), .CK(CLK), .RN(n33), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n28), .CK(CLK), .RN(n33), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n31), .CK(CLK), .RN(n33), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n27), .CK(CLK), .RN(n33), .Q(P_DATA[2]) );
  DFFSX1M \counter_reg[1]  ( .D(n23), .CK(CLK), .SN(n33), .Q(counter[1]), .QN(
        n38) );
  DFFSX1M \counter_reg[2]  ( .D(n22), .CK(CLK), .SN(n33), .QN(n3) );
  DFFSX2M \counter_reg[0]  ( .D(n24), .CK(CLK), .SN(RST), .Q(counter[0]), .QN(
        n37) );
  INVX2M U3 ( .A(n4), .Y(n5) );
  NAND2X4M U4 ( .A(n5), .B(n37), .Y(n2) );
  INVXLM U5 ( .A(n38), .Y(n4) );
  INVX2M U6 ( .A(n3), .Y(n7) );
  NOR2X2M U7 ( .A(n36), .B(n7), .Y(n15) );
  NAND2X2M U8 ( .A(counter[0]), .B(n5), .Y(n10) );
  NAND2X2M U9 ( .A(counter[1]), .B(n37), .Y(n12) );
  INVX6M U10 ( .A(n34), .Y(n33) );
  INVX2M U11 ( .A(RST), .Y(n34) );
  NAND2BX2M U12 ( .AN(n18), .B(SAMPLED_BIT), .Y(n16) );
  NAND2X2M U13 ( .A(SAMPLED_BIT), .B(n15), .Y(n8) );
  INVX2M U14 ( .A(DESER_EN), .Y(n36) );
  INVX4M U15 ( .A(n15), .Y(n35) );
  OAI221X1M U16 ( .A0(n2), .A1(n36), .B0(DESER_EN), .B1(n5), .C0(n6), .Y(n23)
         );
  XNOR2X2M U17 ( .A(n37), .B(DESER_EN), .Y(n24) );
  NAND2X4M U18 ( .A(n7), .B(DESER_EN), .Y(n18) );
  OAI2B2X1M U19 ( .A1N(n7), .A0(n1), .B0(n2), .B1(n35), .Y(n22) );
  NOR2X2M U20 ( .A(n2), .B(n36), .Y(n1) );
  OAI21X2M U21 ( .A0(n2), .A1(n8), .B0(n9), .Y(n25) );
  OAI21X2M U22 ( .A0(n2), .A1(n35), .B0(P_DATA[0]), .Y(n9) );
  OAI21X2M U23 ( .A0(n2), .A1(n16), .B0(n17), .Y(n29) );
  OAI21X2M U24 ( .A0(n2), .A1(n18), .B0(P_DATA[4]), .Y(n17) );
  OAI21X2M U25 ( .A0(n8), .A1(n10), .B0(n11), .Y(n26) );
  OAI21X2M U26 ( .A0(n35), .A1(n10), .B0(P_DATA[1]), .Y(n11) );
  OAI21X2M U27 ( .A0(n8), .A1(n12), .B0(n13), .Y(n27) );
  OAI21X2M U28 ( .A0(n35), .A1(n12), .B0(P_DATA[2]), .Y(n13) );
  OAI21X2M U29 ( .A0(n8), .A1(n6), .B0(n14), .Y(n28) );
  OAI21X2M U30 ( .A0(n35), .A1(n6), .B0(P_DATA[3]), .Y(n14) );
  OAI21X2M U31 ( .A0(n10), .A1(n16), .B0(n19), .Y(n30) );
  OAI21X2M U32 ( .A0(n10), .A1(n18), .B0(P_DATA[5]), .Y(n19) );
  OAI21X2M U33 ( .A0(n12), .A1(n16), .B0(n20), .Y(n31) );
  OAI21X2M U34 ( .A0(n12), .A1(n18), .B0(P_DATA[6]), .Y(n20) );
  OAI21X2M U35 ( .A0(n6), .A1(n16), .B0(n21), .Y(n32) );
  OAI21X2M U36 ( .A0(n6), .A1(n18), .B0(P_DATA[7]), .Y(n21) );
  NAND2X4M U37 ( .A(counter[1]), .B(counter[0]), .Y(n6) );
endmodule


module edge_bit_counter ( ENABLE, PAR_EN, CLK, RST, PRESCALE, BIT_CNT, 
        EDGE_CNT );
  input [5:0] PRESCALE;
  output [3:0] BIT_CNT;
  output [4:0] EDGE_CNT;
  input ENABLE, PAR_EN, CLK, RST;
  wire   n58, n59, n60, N5, N6, N9, N10, N11, N12, N14, N18, N19, N20, N21,
         N22, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, \add_19/carry[4] ,
         \add_19/carry[3] , \add_19/carry[2] , n1, n2, n3, n5, n7, n9, n10,
         n11, n12, n13, n14, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;

  OAI33X4M U14 ( .A0(n23), .A1(n54), .A2(n57), .B0(n24), .B1(n53), .B2(n56), 
        .Y(n20) );
  DFFRQX2M \BIT_CNT_reg[0]  ( .D(n29), .CK(CLK), .RN(n10), .Q(BIT_CNT[0]) );
  DFFRQX4M \EDGE_CNT_reg[4]  ( .D(n33), .CK(CLK), .RN(n10), .Q(EDGE_CNT[4]) );
  DFFRQX4M \BIT_CNT_reg[3]  ( .D(n27), .CK(CLK), .RN(n10), .Q(BIT_CNT[3]) );
  DFFRQX4M \EDGE_CNT_reg[3]  ( .D(n30), .CK(CLK), .RN(n10), .Q(EDGE_CNT[3]) );
  DFFRQX1M \EDGE_CNT_reg[1]  ( .D(n32), .CK(CLK), .RN(n10), .Q(n60) );
  DFFRQX1M \EDGE_CNT_reg[2]  ( .D(n31), .CK(CLK), .RN(n10), .Q(n59) );
  DFFRQX4M \BIT_CNT_reg[1]  ( .D(n28), .CK(CLK), .RN(n10), .Q(BIT_CNT[1]) );
  DFFRQX1M \BIT_CNT_reg[2]  ( .D(n51), .CK(CLK), .RN(n10), .Q(n58) );
  DFFRHQX8M \EDGE_CNT_reg[0]  ( .D(n34), .CK(CLK), .RN(n10), .Q(EDGE_CNT[0])
         );
  AOI21BX2M U3 ( .A0(n12), .A1(PRESCALE[2]), .B0N(n13), .Y(n1) );
  AOI21BX2M U4 ( .A0(n13), .A1(PRESCALE[3]), .B0N(n14), .Y(n2) );
  INVX6M U5 ( .A(n11), .Y(n10) );
  NAND4X2M U6 ( .A(BIT_CNT[2]), .B(n17), .C(BIT_CNT[1]), .D(n56), .Y(n16) );
  OAI221X1M U7 ( .A0(EDGE_CNT[2]), .A1(n1), .B0(EDGE_CNT[3]), .B1(n2), .C0(n40), .Y(n41) );
  INVXLM U8 ( .A(n58), .Y(n3) );
  INVX4M U9 ( .A(n3), .Y(BIT_CNT[2]) );
  INVXLM U10 ( .A(n59), .Y(n5) );
  INVX4M U11 ( .A(n5), .Y(EDGE_CNT[2]) );
  INVXLM U12 ( .A(n60), .Y(n7) );
  INVX4M U13 ( .A(n7), .Y(EDGE_CNT[1]) );
  NOR4BBX2M U15 ( .AN(n46), .BN(n45), .C(n44), .D(N12), .Y(N14) );
  BUFX2M U16 ( .A(n20), .Y(n9) );
  NOR3X6M U17 ( .A(n9), .B(n53), .C(n22), .Y(n17) );
  NOR2BX2M U18 ( .AN(EDGE_CNT[0]), .B(N5), .Y(n36) );
  NOR2BX2M U19 ( .AN(N5), .B(EDGE_CNT[0]), .Y(n39) );
  OAI2B11X2M U20 ( .A1N(N9), .A0(EDGE_CNT[4]), .B0(n43), .C0(n42), .Y(N12) );
  NOR2X2M U21 ( .A(n35), .B(PRESCALE[5]), .Y(N11) );
  OAI2BB1X2M U22 ( .A0N(n14), .A1N(PRESCALE[4]), .B0(n35), .Y(N9) );
  NAND2BX2M U23 ( .AN(PRESCALE[1]), .B(N5), .Y(n12) );
  OR2X2M U24 ( .A(n14), .B(PRESCALE[4]), .Y(n35) );
  OR2X2M U25 ( .A(n12), .B(PRESCALE[2]), .Y(n13) );
  OR2X2M U26 ( .A(n13), .B(PRESCALE[3]), .Y(n14) );
  INVX2M U27 ( .A(BIT_CNT[1]), .Y(n54) );
  INVX2M U28 ( .A(BIT_CNT[2]), .Y(n55) );
  INVX2M U29 ( .A(RST), .Y(n11) );
  NOR2X6M U30 ( .A(n49), .B(n50), .Y(n25) );
  INVX4M U31 ( .A(n26), .Y(n49) );
  AOI21X2M U32 ( .A0(n53), .A1(n52), .B0(n22), .Y(n21) );
  OAI2BB2X1M U33 ( .B0(n21), .B1(n54), .A0N(n54), .A1N(n17), .Y(n28) );
  INVX2M U34 ( .A(n22), .Y(n50) );
  NAND2X1M U35 ( .A(N12), .B(ENABLE), .Y(n26) );
  CLKINVX1M U36 ( .A(n9), .Y(n52) );
  OAI32X2M U37 ( .A0(n22), .A1(BIT_CNT[0]), .A2(n9), .B0(n50), .B1(n53), .Y(
        n29) );
  OAI21X2M U38 ( .A0(BIT_CNT[1]), .A1(n9), .B0(n21), .Y(n18) );
  NAND3X3M U39 ( .A(ENABLE), .B(n26), .C(N14), .Y(n22) );
  OAI21X2M U40 ( .A0(n15), .A1(n56), .B0(n16), .Y(n27) );
  AOI21X2M U41 ( .A0(n52), .A1(n55), .B0(n18), .Y(n15) );
  INVX2M U42 ( .A(EDGE_CNT[1]), .Y(n47) );
  INVX2M U43 ( .A(n19), .Y(n51) );
  AOI32X1M U44 ( .A0(n17), .A1(n55), .A2(BIT_CNT[1]), .B0(n18), .B1(BIT_CNT[2]), .Y(n19) );
  AO22X1M U45 ( .A0(EDGE_CNT[0]), .A1(n25), .B0(N18), .B1(n49), .Y(n34) );
  INVX2M U46 ( .A(EDGE_CNT[0]), .Y(N18) );
  AO22X1M U47 ( .A0(EDGE_CNT[1]), .A1(n25), .B0(N19), .B1(n49), .Y(n32) );
  AO22X1M U48 ( .A0(EDGE_CNT[3]), .A1(n25), .B0(N21), .B1(n49), .Y(n30) );
  AO22X1M U49 ( .A0(EDGE_CNT[2]), .A1(n25), .B0(N20), .B1(n49), .Y(n31) );
  AO22X1M U50 ( .A0(EDGE_CNT[4]), .A1(n25), .B0(N22), .B1(n49), .Y(n33) );
  INVX2M U51 ( .A(EDGE_CNT[4]), .Y(n48) );
  NAND3X2M U52 ( .A(n53), .B(n55), .C(BIT_CNT[3]), .Y(n23) );
  NAND3X2M U53 ( .A(n55), .B(n57), .C(n54), .Y(n24) );
  INVX2M U54 ( .A(PAR_EN), .Y(n57) );
  INVX2M U55 ( .A(BIT_CNT[3]), .Y(n56) );
  INVX4M U56 ( .A(BIT_CNT[0]), .Y(n53) );
  ADDHX1M U57 ( .A(EDGE_CNT[1]), .B(EDGE_CNT[0]), .CO(\add_19/carry[2] ), .S(
        N19) );
  ADDHX1M U58 ( .A(EDGE_CNT[2]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N20) );
  ADDHX1M U59 ( .A(EDGE_CNT[3]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N21) );
  INVX2M U60 ( .A(PRESCALE[0]), .Y(N5) );
  OAI2BB1X1M U61 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n12), .Y(N6) );
  AO21XLM U62 ( .A0(n35), .A1(PRESCALE[5]), .B0(N11), .Y(N10) );
  CLKXOR2X2M U63 ( .A(\add_19/carry[4] ), .B(EDGE_CNT[4]), .Y(N22) );
  CLKNAND2X2M U64 ( .A(EDGE_CNT[2]), .B(n1), .Y(n46) );
  CLKNAND2X2M U65 ( .A(EDGE_CNT[3]), .B(n2), .Y(n45) );
  OAI2B2X1M U66 ( .A1N(N6), .A0(n36), .B0(EDGE_CNT[1]), .B1(n36), .Y(n37) );
  OAI21X1M U67 ( .A0(N9), .A1(n48), .B0(n37), .Y(n44) );
  AO21XLM U68 ( .A0(n47), .A1(n39), .B0(N6), .Y(n38) );
  OAI211X1M U69 ( .A0(n39), .A1(n47), .B0(n38), .C0(n46), .Y(n40) );
  OAI211X1M U70 ( .A0(N9), .A1(n48), .B0(n41), .C0(n45), .Y(n43) );
  NOR2X1M U71 ( .A(N11), .B(N10), .Y(n42) );
endmodule


module PARITY_CHECK ( CLK, RST, PAR_CHK_EN, SAMPLED_BIT, PAR_TYP, P_DATA, 
        PAR_ERR );
  input [7:0] P_DATA;
  input CLK, RST, PAR_CHK_EN, SAMPLED_BIT, PAR_TYP;
  output PAR_ERR;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX4M PAR_ERR_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(PAR_ERR) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(PAR_ERR), .A1N(n2), .Y(n8) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(PAR_CHK_EN), .Y(n2) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U6 ( .A(SAMPLED_BIT), .B(PAR_TYP), .Y(n5) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module STRT_CHECK ( CLK, RST, STRT_CHK_EN, SAMPLED_BIT, STRT_GLITCH );
  input CLK, RST, STRT_CHK_EN, SAMPLED_BIT;
  output STRT_GLITCH;
  wire   n1;

  DFFRQX1M STRT_GLITCH_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(STRT_GLITCH) );
  AO2B2X2M U2 ( .B0(STRT_CHK_EN), .B1(SAMPLED_BIT), .A0(STRT_GLITCH), .A1N(
        STRT_CHK_EN), .Y(n1) );
endmodule


module STOP_CHECK ( CLK, RST, STP_CHK_EN, SAMPLED_BIT, STP_ERR );
  input CLK, RST, STP_CHK_EN, SAMPLED_BIT;
  output STP_ERR;
  wire   n5, n2, n1, n4;

  DFFRQX1M STP_ERR_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(n5) );
  CLKINVX4M U2 ( .A(n1), .Y(STP_ERR) );
  INVXLM U3 ( .A(n5), .Y(n1) );
  OAI2BB2X1M U4 ( .B0(SAMPLED_BIT), .B1(n4), .A0N(STP_ERR), .A1N(n4), .Y(n2)
         );
  INVX2M U5 ( .A(STP_CHK_EN), .Y(n4) );
endmodule


module UART_RX_width8 ( CLK, RST, RX_IN, PRESCALE, PAR_TYP, PAR_EN, DATA_VALID, 
        P_DATA, PAR_ERR, STP_ERR );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN;
  output DATA_VALID, PAR_ERR, STP_ERR;
  wire   STRT_GLITCH, ENABLE, DESER_EN, PAR_CHK_EN, STRT_CHK_EN, STP_CHK_EN,
         SAMPLED_BIT, n1, n2;
  wire   [3:0] BIT_CNT;
  wire   [4:0] EDGE_CNT;

  FSM F ( .RX_IN(RX_IN), .CLK(CLK), .RST(n1), .PAR_EN(PAR_EN), .BIT_CNT(
        BIT_CNT), .EDGE_CNT(EDGE_CNT), .PRESCALE(PRESCALE), .PAR_ERR(PAR_ERR), 
        .STRT_GLITCH(STRT_GLITCH), .STP_ERR(STP_ERR), .ENABLE(ENABLE), 
        .DESER_EN(DESER_EN), .DATA_VALID(DATA_VALID), .PAR_CHK_EN(PAR_CHK_EN), 
        .STRT_CHK_EN(STRT_CHK_EN), .STP_CHK_EN(STP_CHK_EN) );
  data_sampling D0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PRESCALE(PRESCALE), 
        .DATA_SAMP_EN(1'b1), .EDGE_CNT(EDGE_CNT), .SAMPLED_BIT(SAMPLED_BIT) );
  deserializer D1 ( .CLK(CLK), .RST(n1), .SAMPLED_BIT(SAMPLED_BIT), .DESER_EN(
        DESER_EN), .P_DATA(P_DATA) );
  edge_bit_counter E ( .ENABLE(ENABLE), .PAR_EN(PAR_EN), .CLK(CLK), .RST(n1), 
        .PRESCALE(PRESCALE), .BIT_CNT(BIT_CNT), .EDGE_CNT(EDGE_CNT) );
  PARITY_CHECK P ( .CLK(CLK), .RST(n1), .PAR_CHK_EN(PAR_CHK_EN), .SAMPLED_BIT(
        SAMPLED_BIT), .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .PAR_ERR(PAR_ERR) );
  STRT_CHECK S0 ( .CLK(CLK), .RST(n1), .STRT_CHK_EN(STRT_CHK_EN), 
        .SAMPLED_BIT(SAMPLED_BIT), .STRT_GLITCH(STRT_GLITCH) );
  STOP_CHECK S1 ( .CLK(CLK), .RST(n1), .STP_CHK_EN(STP_CHK_EN), .SAMPLED_BIT(
        SAMPLED_BIT), .STP_ERR(STP_ERR) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_width8 ( UART_CONFIG, TX_CLK, RX_CLK, RST, RX_IN, F_EMPTY, RdData, 
        TX_OUT, busy, RX_OUT, sync_en, PAR_ERR, STP_ERR );
  input [7:0] UART_CONFIG;
  input [7:0] RdData;
  output [7:0] RX_OUT;
  input TX_CLK, RX_CLK, RST, RX_IN, F_EMPTY;
  output TX_OUT, busy, sync_en, PAR_ERR, STP_ERR;
  wire   n1;

  UART_TX_width8 dut0 ( .P_DATA(RdData), .DATA_VALID(n1), .PAR_EN(
        UART_CONFIG[0]), .PAR_TYP(UART_CONFIG[1]), .CLK(TX_CLK), .RST(RST), 
        .TX_OUT(TX_OUT), .busy(busy) );
  UART_RX_width8 dut1 ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN), .PRESCALE(
        UART_CONFIG[7:2]), .PAR_TYP(UART_CONFIG[1]), .PAR_EN(UART_CONFIG[0]), 
        .DATA_VALID(sync_en), .P_DATA(RX_OUT), .PAR_ERR(PAR_ERR), .STP_ERR(
        STP_ERR) );
  INVX2M U1 ( .A(F_EMPTY), .Y(n1) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] Q;

  DFFRQX2M \Q_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(Q[0]) );
  DFFRX1M SYNC_RST_reg ( .D(Q[1]), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRX1M \Q_reg[1]  ( .D(Q[0]), .CK(CLK), .RN(RST), .Q(Q[1]) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] Q;

  DFFRQX2M SYNC_RST_reg ( .D(Q[1]), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \Q_reg[1]  ( .D(Q[0]), .CK(CLK), .RN(RST), .Q(Q[1]) );
  DFFRQX2M \Q_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(Q[0]) );
endmodule


module Pulse_Gen ( CLK, RST, LVL_SIG, Pulse_SIG );
  input CLK, RST, LVL_SIG;
  output Pulse_SIG;

  wire   [1:0] Q;

  DFFRQX1M \Q_reg[1]  ( .D(Q[0]), .CK(CLK), .RN(RST), .Q(Q[1]) );
  DFFRQX1M \Q_reg[0]  ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(Q[0]) );
  NOR2BX2M U3 ( .AN(Q[0]), .B(Q[1]), .Y(Pulse_SIG) );
endmodule


module FIFO_MEM_DATA_WIDTH8 ( WR_DATA, W_CLKEN, W_ADDR, R_ADDR, W_CLK, W_RST, 
        RD_DATA );
  input [7:0] WR_DATA;
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  output [7:0] RD_DATA;
  input W_CLKEN, W_CLK, W_RST;
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
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n12,
         n17, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n13, n14, n15, n16, n18, n19, n20, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130;
  assign N10 = R_ADDR[0];
  assign N11 = R_ADDR[1];
  assign N12 = R_ADDR[2];

  DFFRQX2M \mem_reg[1][7]  ( .D(n76), .CK(W_CLK), .RN(n113), .Q(\mem[1][7] )
         );
  DFFRQX2M \mem_reg[1][6]  ( .D(n75), .CK(W_CLK), .RN(n113), .Q(\mem[1][6] )
         );
  DFFRQX2M \mem_reg[1][5]  ( .D(n74), .CK(W_CLK), .RN(n113), .Q(\mem[1][5] )
         );
  DFFRQX2M \mem_reg[1][4]  ( .D(n73), .CK(W_CLK), .RN(n113), .Q(\mem[1][4] )
         );
  DFFRQX2M \mem_reg[1][3]  ( .D(n72), .CK(W_CLK), .RN(n114), .Q(\mem[1][3] )
         );
  DFFRQX2M \mem_reg[1][2]  ( .D(n71), .CK(W_CLK), .RN(n114), .Q(\mem[1][2] )
         );
  DFFRQX2M \mem_reg[1][1]  ( .D(n70), .CK(W_CLK), .RN(n114), .Q(\mem[1][1] )
         );
  DFFRQX2M \mem_reg[1][0]  ( .D(n69), .CK(W_CLK), .RN(n114), .Q(\mem[1][0] )
         );
  DFFRQX2M \mem_reg[5][0]  ( .D(n37), .CK(W_CLK), .RN(n116), .Q(\mem[5][0] )
         );
  DFFRQX2M \mem_reg[3][7]  ( .D(n60), .CK(W_CLK), .RN(n115), .Q(\mem[3][7] )
         );
  DFFRQX2M \mem_reg[3][6]  ( .D(n59), .CK(W_CLK), .RN(n115), .Q(\mem[3][6] )
         );
  DFFRQX2M \mem_reg[3][5]  ( .D(n58), .CK(W_CLK), .RN(n115), .Q(\mem[3][5] )
         );
  DFFRQX2M \mem_reg[3][4]  ( .D(n57), .CK(W_CLK), .RN(n115), .Q(\mem[3][4] )
         );
  DFFRQX2M \mem_reg[3][3]  ( .D(n56), .CK(W_CLK), .RN(n115), .Q(\mem[3][3] )
         );
  DFFRQX2M \mem_reg[3][2]  ( .D(n55), .CK(W_CLK), .RN(n115), .Q(\mem[3][2] )
         );
  DFFRQX2M \mem_reg[3][1]  ( .D(n54), .CK(W_CLK), .RN(n115), .Q(\mem[3][1] )
         );
  DFFRQX2M \mem_reg[3][0]  ( .D(n53), .CK(W_CLK), .RN(n115), .Q(\mem[3][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n28), .CK(W_CLK), .RN(n117), .Q(\mem[7][7] )
         );
  DFFRQX2M \mem_reg[7][6]  ( .D(n27), .CK(W_CLK), .RN(n117), .Q(\mem[7][6] )
         );
  DFFRQX2M \mem_reg[7][5]  ( .D(n26), .CK(W_CLK), .RN(n117), .Q(\mem[7][5] )
         );
  DFFRQX2M \mem_reg[7][4]  ( .D(n25), .CK(W_CLK), .RN(n117), .Q(\mem[7][4] )
         );
  DFFRQX2M \mem_reg[7][3]  ( .D(n24), .CK(W_CLK), .RN(n118), .Q(\mem[7][3] )
         );
  DFFRQX2M \mem_reg[7][2]  ( .D(n23), .CK(W_CLK), .RN(n118), .Q(\mem[7][2] )
         );
  DFFRQX2M \mem_reg[7][1]  ( .D(n22), .CK(W_CLK), .RN(n118), .Q(\mem[7][1] )
         );
  DFFRQX2M \mem_reg[7][0]  ( .D(n21), .CK(W_CLK), .RN(n118), .Q(\mem[7][0] )
         );
  DFFRQX2M \mem_reg[2][7]  ( .D(n68), .CK(W_CLK), .RN(n114), .Q(\mem[2][7] )
         );
  DFFRQX2M \mem_reg[2][6]  ( .D(n67), .CK(W_CLK), .RN(n114), .Q(\mem[2][6] )
         );
  DFFRQX2M \mem_reg[2][5]  ( .D(n66), .CK(W_CLK), .RN(n114), .Q(\mem[2][5] )
         );
  DFFRQX2M \mem_reg[2][4]  ( .D(n65), .CK(W_CLK), .RN(n114), .Q(\mem[2][4] )
         );
  DFFRQX2M \mem_reg[2][3]  ( .D(n64), .CK(W_CLK), .RN(n114), .Q(\mem[2][3] )
         );
  DFFRQX2M \mem_reg[2][2]  ( .D(n63), .CK(W_CLK), .RN(n114), .Q(\mem[2][2] )
         );
  DFFRQX2M \mem_reg[2][1]  ( .D(n62), .CK(W_CLK), .RN(n114), .Q(\mem[2][1] )
         );
  DFFRQX2M \mem_reg[2][0]  ( .D(n61), .CK(W_CLK), .RN(n114), .Q(\mem[2][0] )
         );
  DFFRQX2M \mem_reg[0][7]  ( .D(n84), .CK(W_CLK), .RN(n113), .Q(\mem[0][7] )
         );
  DFFRQX2M \mem_reg[0][6]  ( .D(n83), .CK(W_CLK), .RN(n113), .Q(\mem[0][6] )
         );
  DFFRQX2M \mem_reg[0][5]  ( .D(n82), .CK(W_CLK), .RN(n113), .Q(\mem[0][5] )
         );
  DFFRQX2M \mem_reg[0][4]  ( .D(n81), .CK(W_CLK), .RN(n113), .Q(\mem[0][4] )
         );
  DFFRQX2M \mem_reg[0][3]  ( .D(n80), .CK(W_CLK), .RN(n113), .Q(\mem[0][3] )
         );
  DFFRQX2M \mem_reg[0][2]  ( .D(n79), .CK(W_CLK), .RN(n113), .Q(\mem[0][2] )
         );
  DFFRQX2M \mem_reg[0][1]  ( .D(n78), .CK(W_CLK), .RN(n113), .Q(\mem[0][1] )
         );
  DFFRQX2M \mem_reg[0][0]  ( .D(n77), .CK(W_CLK), .RN(n113), .Q(\mem[0][0] )
         );
  DFFRX1M \mem_reg[4][7]  ( .D(n52), .CK(W_CLK), .RN(n115), .Q(\mem[4][7] ) );
  DFFRX1M \mem_reg[4][6]  ( .D(n51), .CK(W_CLK), .RN(n115), .Q(\mem[4][6] ) );
  DFFRX1M \mem_reg[4][5]  ( .D(n50), .CK(W_CLK), .RN(n115), .Q(\mem[4][5] ) );
  DFFRX1M \mem_reg[4][4]  ( .D(n49), .CK(W_CLK), .RN(n115), .Q(\mem[4][4] ) );
  DFFRX1M \mem_reg[4][3]  ( .D(n48), .CK(W_CLK), .RN(n116), .Q(\mem[4][3] ) );
  DFFRX1M \mem_reg[4][2]  ( .D(n47), .CK(W_CLK), .RN(n116), .Q(\mem[4][2] ) );
  DFFRX1M \mem_reg[4][1]  ( .D(n46), .CK(W_CLK), .RN(n116), .Q(\mem[4][1] ) );
  DFFRX1M \mem_reg[4][0]  ( .D(n45), .CK(W_CLK), .RN(n116), .Q(\mem[4][0] ) );
  DFFRX1M \mem_reg[6][7]  ( .D(n36), .CK(W_CLK), .RN(n117), .Q(\mem[6][7] ) );
  DFFRX1M \mem_reg[6][6]  ( .D(n35), .CK(W_CLK), .RN(n117), .Q(\mem[6][6] ) );
  DFFRX1M \mem_reg[6][5]  ( .D(n34), .CK(W_CLK), .RN(n117), .Q(\mem[6][5] ) );
  DFFRX1M \mem_reg[6][4]  ( .D(n33), .CK(W_CLK), .RN(n117), .Q(\mem[6][4] ) );
  DFFRX1M \mem_reg[6][3]  ( .D(n32), .CK(W_CLK), .RN(n117), .Q(\mem[6][3] ) );
  DFFRX1M \mem_reg[6][2]  ( .D(n31), .CK(W_CLK), .RN(n117), .Q(\mem[6][2] ) );
  DFFRX1M \mem_reg[6][1]  ( .D(n30), .CK(W_CLK), .RN(n117), .Q(\mem[6][1] ) );
  DFFRX1M \mem_reg[6][0]  ( .D(n29), .CK(W_CLK), .RN(n117), .Q(\mem[6][0] ) );
  DFFRX1M \mem_reg[5][7]  ( .D(n44), .CK(W_CLK), .RN(n116), .Q(\mem[5][7] ) );
  DFFRX1M \mem_reg[5][6]  ( .D(n43), .CK(W_CLK), .RN(n116), .Q(\mem[5][6] ) );
  DFFRX1M \mem_reg[5][5]  ( .D(n42), .CK(W_CLK), .RN(n116), .Q(\mem[5][5] ) );
  DFFRX1M \mem_reg[5][4]  ( .D(n41), .CK(W_CLK), .RN(n116), .Q(\mem[5][4] ) );
  DFFRX1M \mem_reg[5][3]  ( .D(n40), .CK(W_CLK), .RN(n116), .Q(\mem[5][3] ) );
  DFFRX1M \mem_reg[5][2]  ( .D(n39), .CK(W_CLK), .RN(n116), .Q(\mem[5][2] ) );
  DFFRX1M \mem_reg[5][1]  ( .D(n38), .CK(W_CLK), .RN(n116), .Q(\mem[5][1] ) );
  NOR2BX4M U2 ( .AN(W_CLKEN), .B(W_ADDR[2]), .Y(n17) );
  AND2X2M U3 ( .A(W_CLKEN), .B(W_ADDR[2]), .Y(n12) );
  INVX2M U4 ( .A(W_ADDR[1]), .Y(n130) );
  INVX2M U5 ( .A(W_ADDR[0]), .Y(n129) );
  BUFX6M U6 ( .A(n120), .Y(n117) );
  BUFX6M U7 ( .A(n119), .Y(n116) );
  BUFX6M U8 ( .A(n119), .Y(n115) );
  BUFX6M U9 ( .A(n120), .Y(n114) );
  BUFX6M U10 ( .A(n120), .Y(n113) );
  BUFX2M U11 ( .A(n119), .Y(n118) );
  BUFX2M U12 ( .A(n120), .Y(n119) );
  INVX4M U13 ( .A(n1), .Y(n98) );
  INVX4M U14 ( .A(n1), .Y(n97) );
  INVX4M U15 ( .A(n2), .Y(n106) );
  INVX4M U16 ( .A(n2), .Y(n105) );
  BUFX2M U17 ( .A(W_RST), .Y(n120) );
  AND3X2M U18 ( .A(n129), .B(n130), .C(n17), .Y(n1) );
  INVX4M U19 ( .A(n5), .Y(n100) );
  INVX4M U20 ( .A(n5), .Y(n99) );
  INVX4M U21 ( .A(n3), .Y(n104) );
  INVX4M U22 ( .A(n3), .Y(n103) );
  INVX4M U23 ( .A(n4), .Y(n102) );
  INVX4M U24 ( .A(n4), .Y(n101) );
  AND3X2M U25 ( .A(n129), .B(n130), .C(n12), .Y(n2) );
  INVX4M U26 ( .A(n6), .Y(n110) );
  INVX4M U27 ( .A(n6), .Y(n109) );
  INVX4M U28 ( .A(n7), .Y(n108) );
  INVX4M U29 ( .A(n7), .Y(n107) );
  INVX4M U30 ( .A(n8), .Y(n112) );
  INVX4M U31 ( .A(n8), .Y(n111) );
  INVX6M U32 ( .A(n93), .Y(n91) );
  INVX6M U33 ( .A(n93), .Y(n92) );
  INVX4M U34 ( .A(n96), .Y(n94) );
  INVX4M U35 ( .A(n96), .Y(n95) );
  INVX4M U36 ( .A(WR_DATA[0]), .Y(n128) );
  INVX4M U37 ( .A(WR_DATA[1]), .Y(n127) );
  INVX4M U38 ( .A(WR_DATA[2]), .Y(n126) );
  INVX4M U39 ( .A(WR_DATA[3]), .Y(n125) );
  INVX4M U40 ( .A(WR_DATA[4]), .Y(n124) );
  INVX4M U41 ( .A(WR_DATA[5]), .Y(n123) );
  INVX4M U42 ( .A(WR_DATA[6]), .Y(n122) );
  INVX4M U43 ( .A(WR_DATA[7]), .Y(n121) );
  OAI2BB2X1M U44 ( .B0(n128), .B1(n110), .A0N(\mem[6][0] ), .A1N(n110), .Y(n29) );
  OAI2BB2X1M U45 ( .B0(n127), .B1(n109), .A0N(\mem[6][1] ), .A1N(n109), .Y(n30) );
  OAI2BB2X1M U46 ( .B0(n126), .B1(n110), .A0N(\mem[6][2] ), .A1N(n110), .Y(n31) );
  OAI2BB2X1M U47 ( .B0(n125), .B1(n109), .A0N(\mem[6][3] ), .A1N(n109), .Y(n32) );
  OAI2BB2X1M U48 ( .B0(n124), .B1(n110), .A0N(\mem[6][4] ), .A1N(n110), .Y(n33) );
  OAI2BB2X1M U49 ( .B0(n123), .B1(n109), .A0N(\mem[6][5] ), .A1N(n109), .Y(n34) );
  OAI2BB2X1M U50 ( .B0(n122), .B1(n110), .A0N(\mem[6][6] ), .A1N(n110), .Y(n35) );
  OAI2BB2X1M U51 ( .B0(n121), .B1(n109), .A0N(\mem[6][7] ), .A1N(n109), .Y(n36) );
  OAI2BB2X1M U52 ( .B0(n128), .B1(n108), .A0N(\mem[5][0] ), .A1N(n108), .Y(n37) );
  OAI2BB2X1M U53 ( .B0(n127), .B1(n107), .A0N(\mem[5][1] ), .A1N(n107), .Y(n38) );
  OAI2BB2X1M U54 ( .B0(n126), .B1(n108), .A0N(\mem[5][2] ), .A1N(n108), .Y(n39) );
  OAI2BB2X1M U55 ( .B0(n125), .B1(n107), .A0N(\mem[5][3] ), .A1N(n107), .Y(n40) );
  OAI2BB2X1M U56 ( .B0(n124), .B1(n108), .A0N(\mem[5][4] ), .A1N(n108), .Y(n41) );
  OAI2BB2X1M U57 ( .B0(n123), .B1(n107), .A0N(\mem[5][5] ), .A1N(n107), .Y(n42) );
  OAI2BB2X1M U58 ( .B0(n122), .B1(n108), .A0N(\mem[5][6] ), .A1N(n108), .Y(n43) );
  OAI2BB2X1M U59 ( .B0(n121), .B1(n107), .A0N(\mem[5][7] ), .A1N(n107), .Y(n44) );
  OAI2BB2X1M U60 ( .B0(n128), .B1(n106), .A0N(\mem[4][0] ), .A1N(n106), .Y(n45) );
  OAI2BB2X1M U61 ( .B0(n127), .B1(n105), .A0N(\mem[4][1] ), .A1N(n105), .Y(n46) );
  OAI2BB2X1M U62 ( .B0(n126), .B1(n106), .A0N(\mem[4][2] ), .A1N(n106), .Y(n47) );
  OAI2BB2X1M U63 ( .B0(n125), .B1(n105), .A0N(\mem[4][3] ), .A1N(n105), .Y(n48) );
  OAI2BB2X1M U64 ( .B0(n124), .B1(n106), .A0N(\mem[4][4] ), .A1N(n106), .Y(n49) );
  OAI2BB2X1M U65 ( .B0(n123), .B1(n105), .A0N(\mem[4][5] ), .A1N(n105), .Y(n50) );
  OAI2BB2X1M U66 ( .B0(n122), .B1(n106), .A0N(\mem[4][6] ), .A1N(n106), .Y(n51) );
  OAI2BB2X1M U67 ( .B0(n121), .B1(n105), .A0N(\mem[4][7] ), .A1N(n105), .Y(n52) );
  OAI2BB2X1M U68 ( .B0(n128), .B1(n104), .A0N(\mem[3][0] ), .A1N(n104), .Y(n53) );
  OAI2BB2X1M U69 ( .B0(n127), .B1(n103), .A0N(\mem[3][1] ), .A1N(n103), .Y(n54) );
  OAI2BB2X1M U70 ( .B0(n126), .B1(n104), .A0N(\mem[3][2] ), .A1N(n104), .Y(n55) );
  OAI2BB2X1M U71 ( .B0(n125), .B1(n103), .A0N(\mem[3][3] ), .A1N(n103), .Y(n56) );
  OAI2BB2X1M U72 ( .B0(n124), .B1(n104), .A0N(\mem[3][4] ), .A1N(n104), .Y(n57) );
  OAI2BB2X1M U73 ( .B0(n123), .B1(n103), .A0N(\mem[3][5] ), .A1N(n103), .Y(n58) );
  OAI2BB2X1M U74 ( .B0(n122), .B1(n104), .A0N(\mem[3][6] ), .A1N(n104), .Y(n59) );
  OAI2BB2X1M U75 ( .B0(n121), .B1(n103), .A0N(\mem[3][7] ), .A1N(n103), .Y(n60) );
  OAI2BB2X1M U76 ( .B0(n128), .B1(n102), .A0N(\mem[2][0] ), .A1N(n102), .Y(n61) );
  OAI2BB2X1M U77 ( .B0(n127), .B1(n101), .A0N(\mem[2][1] ), .A1N(n101), .Y(n62) );
  OAI2BB2X1M U78 ( .B0(n126), .B1(n102), .A0N(\mem[2][2] ), .A1N(n102), .Y(n63) );
  OAI2BB2X1M U79 ( .B0(n125), .B1(n101), .A0N(\mem[2][3] ), .A1N(n101), .Y(n64) );
  OAI2BB2X1M U80 ( .B0(n124), .B1(n102), .A0N(\mem[2][4] ), .A1N(n102), .Y(n65) );
  OAI2BB2X1M U81 ( .B0(n123), .B1(n101), .A0N(\mem[2][5] ), .A1N(n101), .Y(n66) );
  OAI2BB2X1M U82 ( .B0(n122), .B1(n102), .A0N(\mem[2][6] ), .A1N(n102), .Y(n67) );
  OAI2BB2X1M U83 ( .B0(n121), .B1(n101), .A0N(\mem[2][7] ), .A1N(n101), .Y(n68) );
  OAI2BB2X1M U84 ( .B0(n128), .B1(n100), .A0N(\mem[1][0] ), .A1N(n100), .Y(n69) );
  OAI2BB2X1M U85 ( .B0(n127), .B1(n99), .A0N(\mem[1][1] ), .A1N(n99), .Y(n70)
         );
  OAI2BB2X1M U86 ( .B0(n126), .B1(n100), .A0N(\mem[1][2] ), .A1N(n100), .Y(n71) );
  OAI2BB2X1M U87 ( .B0(n125), .B1(n99), .A0N(\mem[1][3] ), .A1N(n99), .Y(n72)
         );
  OAI2BB2X1M U88 ( .B0(n124), .B1(n100), .A0N(\mem[1][4] ), .A1N(n100), .Y(n73) );
  OAI2BB2X1M U89 ( .B0(n123), .B1(n99), .A0N(\mem[1][5] ), .A1N(n99), .Y(n74)
         );
  OAI2BB2X1M U90 ( .B0(n122), .B1(n100), .A0N(\mem[1][6] ), .A1N(n100), .Y(n75) );
  OAI2BB2X1M U91 ( .B0(n121), .B1(n99), .A0N(\mem[1][7] ), .A1N(n99), .Y(n76)
         );
  OAI2BB2X1M U92 ( .B0(n128), .B1(n98), .A0N(\mem[0][0] ), .A1N(n98), .Y(n77)
         );
  OAI2BB2X1M U93 ( .B0(n127), .B1(n97), .A0N(\mem[0][1] ), .A1N(n97), .Y(n78)
         );
  OAI2BB2X1M U94 ( .B0(n126), .B1(n98), .A0N(\mem[0][2] ), .A1N(n98), .Y(n79)
         );
  OAI2BB2X1M U95 ( .B0(n125), .B1(n97), .A0N(\mem[0][3] ), .A1N(n97), .Y(n80)
         );
  OAI2BB2X1M U96 ( .B0(n124), .B1(n98), .A0N(\mem[0][4] ), .A1N(n98), .Y(n81)
         );
  OAI2BB2X1M U97 ( .B0(n123), .B1(n97), .A0N(\mem[0][5] ), .A1N(n97), .Y(n82)
         );
  OAI2BB2X1M U98 ( .B0(n122), .B1(n98), .A0N(\mem[0][6] ), .A1N(n98), .Y(n83)
         );
  OAI2BB2X1M U99 ( .B0(n121), .B1(n97), .A0N(\mem[0][7] ), .A1N(n97), .Y(n84)
         );
  OAI2BB2X1M U100 ( .B0(n112), .B1(n128), .A0N(\mem[7][0] ), .A1N(n112), .Y(
        n21) );
  OAI2BB2X1M U101 ( .B0(n111), .B1(n127), .A0N(\mem[7][1] ), .A1N(n111), .Y(
        n22) );
  OAI2BB2X1M U102 ( .B0(n112), .B1(n126), .A0N(\mem[7][2] ), .A1N(n112), .Y(
        n23) );
  OAI2BB2X1M U103 ( .B0(n111), .B1(n125), .A0N(\mem[7][3] ), .A1N(n111), .Y(
        n24) );
  OAI2BB2X1M U104 ( .B0(n112), .B1(n124), .A0N(\mem[7][4] ), .A1N(n112), .Y(
        n25) );
  OAI2BB2X1M U105 ( .B0(n111), .B1(n123), .A0N(\mem[7][5] ), .A1N(n111), .Y(
        n26) );
  OAI2BB2X1M U106 ( .B0(n112), .B1(n122), .A0N(\mem[7][6] ), .A1N(n112), .Y(
        n27) );
  OAI2BB2X1M U107 ( .B0(n111), .B1(n121), .A0N(\mem[7][7] ), .A1N(n111), .Y(
        n28) );
  AND3X2M U108 ( .A(W_ADDR[1]), .B(W_ADDR[0]), .C(n17), .Y(n3) );
  AND3X2M U109 ( .A(W_ADDR[1]), .B(n129), .C(n17), .Y(n4) );
  AND3X2M U110 ( .A(W_ADDR[0]), .B(n130), .C(n17), .Y(n5) );
  AND3X2M U111 ( .A(n12), .B(n129), .C(W_ADDR[1]), .Y(n6) );
  AND3X2M U112 ( .A(n12), .B(n130), .C(W_ADDR[0]), .Y(n7) );
  AND3X2M U113 ( .A(W_ADDR[0]), .B(n12), .C(W_ADDR[1]), .Y(n8) );
  MX2X2M U114 ( .A(n88), .B(n87), .S0(N12), .Y(RD_DATA[6]) );
  MX4X1M U115 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n92), .S1(n95), .Y(n88) );
  MX4X1M U116 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n91), .S1(n94), .Y(n87) );
  MX2X2M U117 ( .A(n86), .B(n85), .S0(N12), .Y(RD_DATA[5]) );
  MX4X1M U118 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n92), .S1(n95), .Y(n86) );
  MX4X1M U119 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n91), .S1(n94), .Y(n85) );
  MX2X2M U120 ( .A(n20), .B(n19), .S0(N12), .Y(RD_DATA[4]) );
  MX4X1M U121 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n92), .S1(n95), .Y(n20) );
  MX4X1M U122 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n91), .S1(n94), .Y(n19) );
  MX2X2M U123 ( .A(n90), .B(n89), .S0(N12), .Y(RD_DATA[7]) );
  MX4X1M U124 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n92), .S1(n95), .Y(n90) );
  MX4X1M U125 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n91), .S1(n94), .Y(n89) );
  INVX2M U126 ( .A(N11), .Y(n96) );
  INVX2M U127 ( .A(N10), .Y(n93) );
  MX2X2M U128 ( .A(n15), .B(n14), .S0(N12), .Y(RD_DATA[2]) );
  MX4X1M U129 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n92), .S1(n95), .Y(n15) );
  MX4X1M U130 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n91), .S1(n94), .Y(n14) );
  MX2X2M U131 ( .A(n18), .B(n16), .S0(N12), .Y(RD_DATA[3]) );
  MX4X1M U132 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n92), .S1(n95), .Y(n18) );
  MX4X1M U133 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n91), .S1(n94), .Y(n16) );
  MX2X2M U134 ( .A(n13), .B(n11), .S0(N12), .Y(RD_DATA[1]) );
  MX4X1M U135 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n92), .S1(n95), .Y(n13) );
  MX4X1M U136 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n91), .S1(n94), .Y(n11) );
  MX2X2M U137 ( .A(n10), .B(n9), .S0(N12), .Y(RD_DATA[0]) );
  MX4X1M U138 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n92), .S1(n95), .Y(n10) );
  MX4X1M U139 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n91), .S1(n94), .Y(n9) );
endmodule


module DATA_SYNC_0 ( CLK, RST, IN, OUT );
  input [3:0] IN;
  output [3:0] OUT;
  input CLK, RST;
  wire   n1, n2;
  wire   [3:0] Q;

  EDFFHQX2M \Q_reg[3]  ( .D(IN[3]), .E(n1), .CK(CLK), .Q(Q[3]) );
  EDFFHQX2M \Q_reg[2]  ( .D(IN[2]), .E(n1), .CK(CLK), .Q(Q[2]) );
  EDFFHQX2M \Q_reg[1]  ( .D(IN[1]), .E(n1), .CK(CLK), .Q(Q[1]) );
  EDFFHQX2M \Q_reg[0]  ( .D(IN[0]), .E(n1), .CK(CLK), .Q(Q[0]) );
  DFFRX1M \OUT_reg[3]  ( .D(Q[3]), .CK(CLK), .RN(n1), .Q(OUT[3]) );
  DFFRX1M \OUT_reg[2]  ( .D(Q[2]), .CK(CLK), .RN(n1), .Q(OUT[2]) );
  DFFRX1M \OUT_reg[1]  ( .D(Q[1]), .CK(CLK), .RN(n1), .Q(OUT[1]) );
  DFFRX1M \OUT_reg[0]  ( .D(Q[0]), .CK(CLK), .RN(n1), .Q(OUT[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module DATA_SYNC_1 ( CLK, RST, IN, OUT );
  input [3:0] IN;
  output [3:0] OUT;
  input CLK, RST;
  wire   n1, n2;
  wire   [3:0] Q;

  DFFRQX1M \OUT_reg[3]  ( .D(Q[3]), .CK(CLK), .RN(n1), .Q(OUT[3]) );
  DFFRQX1M \OUT_reg[2]  ( .D(Q[2]), .CK(CLK), .RN(n1), .Q(OUT[2]) );
  DFFRQX1M \OUT_reg[1]  ( .D(Q[1]), .CK(CLK), .RN(n1), .Q(OUT[1]) );
  DFFRQX1M \OUT_reg[0]  ( .D(Q[0]), .CK(CLK), .RN(n1), .Q(OUT[0]) );
  EDFFHQX1M \Q_reg[3]  ( .D(IN[3]), .E(n1), .CK(CLK), .Q(Q[3]) );
  EDFFHQX1M \Q_reg[2]  ( .D(IN[2]), .E(n1), .CK(CLK), .Q(Q[2]) );
  EDFFHQX1M \Q_reg[1]  ( .D(IN[1]), .E(n1), .CK(CLK), .Q(Q[1]) );
  EDFFHQX1M \Q_reg[0]  ( .D(IN[0]), .E(n1), .CK(CLK), .Q(Q[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module FIFO_WR ( W_CLK, W_RST, W_INC, RD_WR_PTR, W_ADDR, w_gray_out, FULL );
  input [3:0] RD_WR_PTR;
  output [2:0] W_ADDR;
  output [3:0] w_gray_out;
  input W_CLK, W_RST, W_INC;
  output FULL;
  wire   N89, N90, N91, N92, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n1, n2, n17;

  DFFRX1M \w_gray_out_reg[3]  ( .D(N92), .CK(W_CLK), .RN(n1), .Q(w_gray_out[3]) );
  DFFRX1M \w_gray_out_reg[1]  ( .D(N90), .CK(W_CLK), .RN(n1), .Q(w_gray_out[1]) );
  DFFRX1M \w_gray_out_reg[2]  ( .D(N91), .CK(W_CLK), .RN(n1), .Q(w_gray_out[2]) );
  DFFRX1M \w_gray_out_reg[0]  ( .D(N89), .CK(W_CLK), .RN(n1), .Q(w_gray_out[0]) );
  DFFRX4M \W_PTR_reg[0]  ( .D(n16), .CK(W_CLK), .RN(W_RST), .Q(W_ADDR[0]), 
        .QN(n17) );
  DFFRQX4M \W_PTR_reg[2]  ( .D(n14), .CK(W_CLK), .RN(n1), .Q(W_ADDR[2]) );
  DFFRX2M \W_PTR_reg[3]  ( .D(n13), .CK(W_CLK), .RN(n1), .Q(N92) );
  DFFRQX4M \W_PTR_reg[1]  ( .D(n15), .CK(W_CLK), .RN(n1), .Q(W_ADDR[1]) );
  CLKXOR2X2M U3 ( .A(W_ADDR[2]), .B(N92), .Y(N91) );
  INVX4M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(W_RST), .Y(n2) );
  NOR2X2M U6 ( .A(n17), .B(n7), .Y(n5) );
  INVX2M U7 ( .A(n8), .Y(FULL) );
  NAND2X2M U8 ( .A(W_INC), .B(n8), .Y(n7) );
  CLKXOR2X2M U9 ( .A(w_gray_out[3]), .B(RD_WR_PTR[3]), .Y(n12) );
  CLKXOR2X2M U10 ( .A(W_ADDR[1]), .B(n5), .Y(n15) );
  NAND2X2M U11 ( .A(W_ADDR[1]), .B(n5), .Y(n4) );
  XNOR2X2M U12 ( .A(W_ADDR[2]), .B(n4), .Y(n14) );
  XNOR2X2M U13 ( .A(W_ADDR[0]), .B(n7), .Y(n16) );
  XNOR2X2M U14 ( .A(N92), .B(n3), .Y(n13) );
  NAND2BX2M U15 ( .AN(n4), .B(W_ADDR[2]), .Y(n3) );
  NAND4X2M U16 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n8) );
  XNOR2X2M U17 ( .A(w_gray_out[0]), .B(RD_WR_PTR[0]), .Y(n9) );
  XNOR2X2M U18 ( .A(w_gray_out[1]), .B(RD_WR_PTR[1]), .Y(n10) );
  CLKXOR2X2M U19 ( .A(w_gray_out[2]), .B(RD_WR_PTR[2]), .Y(n11) );
  CLKXOR2X2M U20 ( .A(W_ADDR[2]), .B(W_ADDR[1]), .Y(N90) );
  XNOR2X2M U21 ( .A(W_ADDR[1]), .B(n17), .Y(N89) );
endmodule


module FIFO_RD ( R_CLK, R_RST, R_INC, WR_RD_PTR, R_ADDR, r_gray_out, EMPTY );
  input [3:0] WR_RD_PTR;
  output [2:0] R_ADDR;
  output [3:0] r_gray_out;
  input R_CLK, R_RST, R_INC;
  output EMPTY;
  wire   N89, N90, N91, N92, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n2, n3, n5, n6, n7, n22;

  DFFRQX1M \r_gray_out_reg[0]  ( .D(N89), .CK(R_CLK), .RN(n2), .Q(
        r_gray_out[0]) );
  DFFRQX1M \r_gray_out_reg[3]  ( .D(N92), .CK(R_CLK), .RN(n2), .Q(
        r_gray_out[3]) );
  DFFRQX1M \r_gray_out_reg[2]  ( .D(N91), .CK(R_CLK), .RN(n2), .Q(
        r_gray_out[2]) );
  DFFRQX1M \r_gray_out_reg[1]  ( .D(N90), .CK(R_CLK), .RN(n2), .Q(
        r_gray_out[1]) );
  DFFRQX4M \R_PTR_reg[1]  ( .D(n20), .CK(R_CLK), .RN(n2), .Q(R_ADDR[1]) );
  DFFRX1M \R_PTR_reg[0]  ( .D(n21), .CK(R_CLK), .RN(R_RST), .Q(R_ADDR[0]), 
        .QN(n6) );
  DFFRX4M \R_PTR_reg[2]  ( .D(n19), .CK(R_CLK), .RN(R_RST), .QN(n7) );
  DFFRX4M \R_PTR_reg[3]  ( .D(n18), .CK(R_CLK), .RN(n2), .Q(N92), .QN(n22) );
  INVX6M U3 ( .A(n7), .Y(R_ADDR[2]) );
  INVX4M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(R_RST), .Y(n3) );
  INVX2M U6 ( .A(n13), .Y(EMPTY) );
  NOR2X2M U7 ( .A(n6), .B(n12), .Y(n11) );
  XNOR2X2M U8 ( .A(r_gray_out[2]), .B(WR_RD_PTR[2]), .Y(n17) );
  NAND4X2M U9 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n13) );
  XNOR2X2M U10 ( .A(r_gray_out[1]), .B(WR_RD_PTR[1]), .Y(n14) );
  XNOR2X2M U11 ( .A(r_gray_out[3]), .B(WR_RD_PTR[3]), .Y(n16) );
  XNOR2X2M U12 ( .A(r_gray_out[0]), .B(WR_RD_PTR[0]), .Y(n15) );
  CLKXOR2X2M U13 ( .A(R_ADDR[1]), .B(n11), .Y(n20) );
  XNOR2X2M U14 ( .A(n7), .B(R_ADDR[1]), .Y(N90) );
  XNOR2X2M U15 ( .A(R_ADDR[2]), .B(n10), .Y(n19) );
  XNOR2X2M U16 ( .A(R_ADDR[0]), .B(n12), .Y(n21) );
  OAI21X2M U17 ( .A0(N92), .A1(n7), .B0(n9), .Y(N91) );
  NAND2X2M U18 ( .A(R_ADDR[1]), .B(n11), .Y(n10) );
  NAND2X2M U19 ( .A(N92), .B(n7), .Y(n9) );
  NAND2X2M U20 ( .A(R_INC), .B(n13), .Y(n12) );
  OAI211X2M U21 ( .A0(n5), .A1(n22), .B0(n8), .C0(n9), .Y(n18) );
  NAND3X2M U22 ( .A(n5), .B(n22), .C(R_ADDR[2]), .Y(n8) );
  INVX2M U23 ( .A(n10), .Y(n5) );
  XNOR2X2M U24 ( .A(R_ADDR[1]), .B(n6), .Y(N89) );
endmodule


module FIFO_DATA_WIDTH8 ( WR_DATA, W_INC, W_CLK, W_RST, R_CLK, R_RST, R_INC, 
        RD_DATA, FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_INC, W_CLK, W_RST, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   _0_net_, n1, n2, n3, n4;
  wire   [2:0] W_ADDR;
  wire   [2:0] R_ADDR;
  wire   [3:0] r_gray_out;
  wire   [3:0] RD_WR_PTR;
  wire   [3:0] w_gray_out;
  wire   [3:0] WR_RD_PTR;

  FIFO_MEM_DATA_WIDTH8 U0 ( .WR_DATA(WR_DATA), .W_CLKEN(_0_net_), .W_ADDR(
        W_ADDR), .R_ADDR(R_ADDR), .W_CLK(W_CLK), .W_RST(n3), .RD_DATA(RD_DATA)
         );
  DATA_SYNC_0 D0 ( .CLK(W_CLK), .RST(n3), .IN(r_gray_out), .OUT(RD_WR_PTR) );
  DATA_SYNC_1 D1 ( .CLK(R_CLK), .RST(n1), .IN(w_gray_out), .OUT(WR_RD_PTR) );
  FIFO_WR U1 ( .W_CLK(W_CLK), .W_RST(n3), .W_INC(W_INC), .RD_WR_PTR(RD_WR_PTR), 
        .W_ADDR(W_ADDR), .w_gray_out(w_gray_out), .FULL(FULL) );
  FIFO_RD U2 ( .R_CLK(R_CLK), .R_RST(n1), .R_INC(R_INC), .WR_RD_PTR(WR_RD_PTR), 
        .R_ADDR(R_ADDR), .r_gray_out(r_gray_out), .EMPTY(EMPTY) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  NOR2BX2M U4 ( .AN(W_INC), .B(FULL), .Y(_0_net_) );
  INVX2M U5 ( .A(W_RST), .Y(n4) );
  INVX2M U6 ( .A(n2), .Y(n1) );
  INVX2M U7 ( .A(R_RST), .Y(n2) );
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


module Clock_Divider_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, flag, N9, N11, N12, N13, N14, N15, N16, N17, N23, N24, N25,
         N26, N27, N28, N29, N30, N52, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53;
  wire   [7:0] counter;

  Clock_Divider_0_DW01_inc_0 add_40 ( .A(counter), .SUM({N30, N29, N28, N27, 
        N26, N25, N24, N23}) );
  DFFRQX2M div_clk_reg ( .D(n20), .CK(i_ref_clk), .RN(n3), .Q(div_clk) );
  DFFRQX2M flag_reg ( .D(n21), .CK(i_ref_clk), .RN(n3), .Q(flag) );
  DFFRQX2M \counter_reg[7]  ( .D(n22), .CK(i_ref_clk), .RN(n3), .Q(counter[7])
         );
  DFFRQX4M \counter_reg[1]  ( .D(n28), .CK(i_ref_clk), .RN(n3), .Q(counter[1])
         );
  DFFRQX4M \counter_reg[0]  ( .D(n29), .CK(i_ref_clk), .RN(n3), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[6]  ( .D(n23), .CK(i_ref_clk), .RN(n3), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[5]  ( .D(n24), .CK(i_ref_clk), .RN(n3), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[4]  ( .D(n25), .CK(i_ref_clk), .RN(n3), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[3]  ( .D(n26), .CK(i_ref_clk), .RN(n3), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[2]  ( .D(n27), .CK(i_ref_clk), .RN(n3), .Q(counter[2])
         );
  AOI21BX2M U3 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n5), .Y(n1) );
  NOR3X2M U4 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), .Y(
        n18) );
  NOR4X1M U5 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), .D(
        i_div_ratio[4]), .Y(n19) );
  NOR3X4M U6 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n8), .Y(N16) );
  OAI21X2M U7 ( .A0(i_div_ratio[6]), .A1(n8), .B0(i_div_ratio[7]), .Y(n9) );
  NOR3X2M U8 ( .A(n31), .B(N16), .C(counter[7]), .Y(n37) );
  NOR2X2M U9 ( .A(n40), .B(N9), .Y(n10) );
  NOR2BX2M U10 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n42) );
  NOR2BX2M U11 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n41) );
  OR2X2M U12 ( .A(n7), .B(i_div_ratio[5]), .Y(n8) );
  NAND2BX2M U13 ( .AN(i_div_ratio[2]), .B(N9), .Y(n5) );
  OR2X2M U14 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OR2X2M U15 ( .A(n6), .B(i_div_ratio[4]), .Y(n7) );
  OAI2BB1XLM U16 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N11) );
  BUFX6M U17 ( .A(n13), .Y(n2) );
  NOR2BX8M U18 ( .AN(n12), .B(n2), .Y(n16) );
  INVX6M U19 ( .A(n4), .Y(n3) );
  INVX2M U20 ( .A(i_rst_n), .Y(n4) );
  INVX2M U21 ( .A(n2), .Y(n53) );
  AOI2B1X2M U22 ( .A1N(i_div_ratio[0]), .A0(N17), .B0(n52), .Y(n12) );
  INVX2M U23 ( .A(n15), .Y(n52) );
  CLKXOR2X2M U24 ( .A(div_clk), .B(n11), .Y(n20) );
  NOR2X2M U25 ( .A(n12), .B(n2), .Y(n11) );
  NAND2X2M U26 ( .A(i_div_ratio[0]), .B(n17), .Y(n15) );
  AO2B2X2M U27 ( .B0(N17), .B1(flag), .A0(N52), .A1N(flag), .Y(n17) );
  INVX2M U28 ( .A(counter[0]), .Y(n40) );
  AO22X1M U29 ( .A0(counter[1]), .A1(n2), .B0(N24), .B1(n16), .Y(n28) );
  AO22X1M U30 ( .A0(counter[2]), .A1(n2), .B0(N25), .B1(n16), .Y(n27) );
  AO22X1M U31 ( .A0(counter[3]), .A1(n2), .B0(N26), .B1(n16), .Y(n26) );
  AO22X1M U32 ( .A0(counter[4]), .A1(n2), .B0(N27), .B1(n16), .Y(n25) );
  AO22X1M U33 ( .A0(counter[5]), .A1(n2), .B0(N28), .B1(n16), .Y(n24) );
  AO22X1M U34 ( .A0(counter[6]), .A1(n2), .B0(N29), .B1(n16), .Y(n23) );
  AO22X1M U35 ( .A0(counter[7]), .A1(n2), .B0(N30), .B1(n16), .Y(n22) );
  AO22X1M U36 ( .A0(counter[0]), .A1(n2), .B0(N23), .B1(n16), .Y(n29) );
  CLKXOR2X2M U37 ( .A(flag), .B(n14), .Y(n21) );
  NOR2X2M U38 ( .A(n2), .B(n15), .Y(n14) );
  OAI2BB1X2M U39 ( .A0N(n18), .A1N(n19), .B0(i_clk_en), .Y(n13) );
  INVX2M U40 ( .A(i_div_ratio[1]), .Y(N9) );
  OAI2BB1X1M U41 ( .A0N(n6), .A1N(i_div_ratio[4]), .B0(n7), .Y(N12) );
  OAI2BB1X1M U42 ( .A0N(n7), .A1N(i_div_ratio[5]), .B0(n8), .Y(N13) );
  XNOR2X1M U43 ( .A(i_div_ratio[6]), .B(n8), .Y(N14) );
  NAND2BX1M U44 ( .AN(N16), .B(n9), .Y(N15) );
  MX2X6M U45 ( .A(i_ref_clk), .B(div_clk), .S0(n53), .Y(o_div_clk) );
  XNOR2X1M U46 ( .A(N11), .B(counter[2]), .Y(n39) );
  OAI22X1M U47 ( .A0(counter[1]), .A1(n10), .B0(n10), .B1(n1), .Y(n38) );
  CLKNAND2X2M U48 ( .A(N9), .B(n40), .Y(n30) );
  AOI22X1M U49 ( .A0(n30), .A1(n1), .B0(n30), .B1(counter[1]), .Y(n31) );
  CLKXOR2X2M U50 ( .A(N12), .B(counter[3]), .Y(n35) );
  CLKXOR2X2M U51 ( .A(N13), .B(counter[4]), .Y(n34) );
  CLKXOR2X2M U52 ( .A(N14), .B(counter[5]), .Y(n33) );
  CLKXOR2X2M U53 ( .A(N15), .B(counter[6]), .Y(n32) );
  NOR4X1M U54 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(n36) );
  AND4X1M U55 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(N17) );
  OAI2B2X1M U56 ( .A1N(i_div_ratio[2]), .A0(n41), .B0(counter[1]), .B1(n41), 
        .Y(n45) );
  XNOR2X1M U57 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n44) );
  OAI2B2X1M U58 ( .A1N(counter[1]), .A0(n42), .B0(i_div_ratio[2]), .B1(n42), 
        .Y(n43) );
  NAND4BX1M U59 ( .AN(counter[7]), .B(n45), .C(n44), .D(n43), .Y(n51) );
  XNOR2X1M U60 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n49) );
  XNOR2X1M U61 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n48) );
  XNOR2X1M U62 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n47) );
  XNOR2X1M U63 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n46) );
  NAND4X1M U64 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(n50) );
  NOR2X1M U65 ( .A(n51), .B(n50), .Y(N52) );
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


module Clock_Divider_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, flag, N9, N11, N12, N13, N14, N15, N16, N17, N23, N24, N25,
         N26, N27, N28, N29, N30, N52, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72;
  wire   [7:0] counter;

  Clock_Divider_1_DW01_inc_0 add_40 ( .A(counter), .SUM({N30, N29, N28, N27, 
        N26, N25, N24, N23}) );
  DFFRQX2M div_clk_reg ( .D(n63), .CK(i_ref_clk), .RN(n3), .Q(div_clk) );
  DFFRQX2M flag_reg ( .D(n62), .CK(i_ref_clk), .RN(n3), .Q(flag) );
  DFFRQX2M \counter_reg[7]  ( .D(n61), .CK(i_ref_clk), .RN(n3), .Q(counter[7])
         );
  DFFRQX4M \counter_reg[1]  ( .D(n55), .CK(i_ref_clk), .RN(n3), .Q(counter[1])
         );
  DFFRQX4M \counter_reg[0]  ( .D(n54), .CK(i_ref_clk), .RN(n3), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[6]  ( .D(n60), .CK(i_ref_clk), .RN(n3), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[5]  ( .D(n59), .CK(i_ref_clk), .RN(n3), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[4]  ( .D(n58), .CK(i_ref_clk), .RN(n3), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[3]  ( .D(n57), .CK(i_ref_clk), .RN(n3), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[2]  ( .D(n56), .CK(i_ref_clk), .RN(n3), .Q(counter[2])
         );
  AOI21BX2M U3 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n5), .Y(n1) );
  NOR3X2M U4 ( .A(n31), .B(N16), .C(counter[7]), .Y(n37) );
  NOR3X4M U5 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n8), .Y(N16) );
  NOR2X2M U6 ( .A(n40), .B(N9), .Y(n10) );
  NAND2BX2M U7 ( .AN(i_div_ratio[2]), .B(N9), .Y(n5) );
  NOR2BX2M U8 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n41) );
  NOR2BX2M U9 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n42) );
  OR2X2M U10 ( .A(n7), .B(i_div_ratio[5]), .Y(n8) );
  OR2X2M U11 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OR2X2M U12 ( .A(n6), .B(i_div_ratio[4]), .Y(n7) );
  OAI2BB1XLM U13 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N11) );
  BUFX6M U14 ( .A(n70), .Y(n2) );
  INVX2M U15 ( .A(i_div_ratio[1]), .Y(N9) );
  NOR2BX8M U16 ( .AN(n71), .B(n2), .Y(n67) );
  AOI2B1X2M U17 ( .A1N(i_div_ratio[0]), .A0(N17), .B0(n52), .Y(n71) );
  INVX2M U18 ( .A(n68), .Y(n52) );
  INVX6M U19 ( .A(n4), .Y(n3) );
  INVX2M U20 ( .A(i_rst_n), .Y(n4) );
  CLKXOR2X2M U21 ( .A(div_clk), .B(n72), .Y(n63) );
  NOR2X2M U22 ( .A(n71), .B(n2), .Y(n72) );
  NAND2X2M U23 ( .A(i_div_ratio[0]), .B(n66), .Y(n68) );
  AO2B2X2M U24 ( .B0(N17), .B1(flag), .A0(N52), .A1N(flag), .Y(n66) );
  INVX2M U25 ( .A(counter[0]), .Y(n40) );
  AO22X1M U26 ( .A0(counter[1]), .A1(n2), .B0(N24), .B1(n67), .Y(n55) );
  AO22X1M U27 ( .A0(counter[2]), .A1(n2), .B0(N25), .B1(n67), .Y(n56) );
  AO22X1M U28 ( .A0(counter[3]), .A1(n2), .B0(N26), .B1(n67), .Y(n57) );
  AO22X1M U29 ( .A0(counter[4]), .A1(n2), .B0(N27), .B1(n67), .Y(n58) );
  AO22X1M U30 ( .A0(counter[5]), .A1(n2), .B0(N28), .B1(n67), .Y(n59) );
  AO22X1M U31 ( .A0(counter[6]), .A1(n2), .B0(N29), .B1(n67), .Y(n60) );
  AO22X1M U32 ( .A0(counter[7]), .A1(n2), .B0(N30), .B1(n67), .Y(n61) );
  AO22X1M U33 ( .A0(counter[0]), .A1(n2), .B0(N23), .B1(n67), .Y(n54) );
  CLKXOR2X2M U34 ( .A(flag), .B(n69), .Y(n62) );
  NOR2X2M U35 ( .A(n2), .B(n68), .Y(n69) );
  OAI2BB1X2M U36 ( .A0N(n65), .A1N(n64), .B0(i_clk_en), .Y(n70) );
  NOR4X2M U37 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n64) );
  NOR3X2M U38 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n65) );
  INVX2M U39 ( .A(n2), .Y(n53) );
  OAI2BB1X1M U40 ( .A0N(n6), .A1N(i_div_ratio[4]), .B0(n7), .Y(N12) );
  OAI2BB1X1M U41 ( .A0N(n7), .A1N(i_div_ratio[5]), .B0(n8), .Y(N13) );
  XNOR2X1M U42 ( .A(i_div_ratio[6]), .B(n8), .Y(N14) );
  OAI21X1M U43 ( .A0(i_div_ratio[6]), .A1(n8), .B0(i_div_ratio[7]), .Y(n9) );
  NAND2BX1M U44 ( .AN(N16), .B(n9), .Y(N15) );
  MX2X6M U45 ( .A(i_ref_clk), .B(div_clk), .S0(n53), .Y(o_div_clk) );
  XNOR2X1M U46 ( .A(N11), .B(counter[2]), .Y(n39) );
  OAI22X1M U47 ( .A0(counter[1]), .A1(n10), .B0(n10), .B1(n1), .Y(n38) );
  CLKNAND2X2M U48 ( .A(N9), .B(n40), .Y(n30) );
  AOI22X1M U49 ( .A0(n30), .A1(n1), .B0(n30), .B1(counter[1]), .Y(n31) );
  CLKXOR2X2M U50 ( .A(N12), .B(counter[3]), .Y(n35) );
  CLKXOR2X2M U51 ( .A(N13), .B(counter[4]), .Y(n34) );
  CLKXOR2X2M U52 ( .A(N14), .B(counter[5]), .Y(n33) );
  CLKXOR2X2M U53 ( .A(N15), .B(counter[6]), .Y(n32) );
  NOR4X1M U54 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(n36) );
  AND4X1M U55 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(N17) );
  OAI2B2X1M U56 ( .A1N(i_div_ratio[2]), .A0(n41), .B0(counter[1]), .B1(n41), 
        .Y(n45) );
  XNOR2X1M U57 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n44) );
  OAI2B2X1M U58 ( .A1N(counter[1]), .A0(n42), .B0(i_div_ratio[2]), .B1(n42), 
        .Y(n43) );
  NAND4BX1M U59 ( .AN(counter[7]), .B(n45), .C(n44), .D(n43), .Y(n51) );
  XNOR2X1M U60 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n49) );
  XNOR2X1M U61 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n48) );
  XNOR2X1M U62 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n47) );
  XNOR2X1M U63 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n46) );
  NAND4X1M U64 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(n50) );
  NOR2X1M U65 ( .A(n51), .B(n50), .Y(N52) );
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

  NOR3BX4M U7 ( .AN(IN[4]), .B(IN[3]), .C(IN[5]), .Y(n3) );
  NOR3BX4M U8 ( .AN(IN[3]), .B(IN[4]), .C(IN[5]), .Y(n1) );
  NOR3X6M U3 ( .A(IN[2]), .B(IN[1]), .C(IN[0]), .Y(n2) );
  OAI21X2M U4 ( .A0(n1), .A1(n3), .B0(n2), .Y(div_ratio_rx[0]) );
  CLKAND2X4M U5 ( .A(n2), .B(n3), .Y(div_ratio_rx[1]) );
  CLKAND2X4M U6 ( .A(n1), .B(n2), .Y(div_ratio_rx[2]) );
endmodule


module data_synchronizer_data_width8 ( unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_ff, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [1:0] Q;

  DFFRQX2M \Q_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(n11), .Q(Q[0]) );
  DFFRX1M \Q_reg[1]  ( .D(Q[0]), .CK(CLK), .RN(n11), .Q(Q[1]) );
  DFFRX1M pulse_ff_reg ( .D(Q[1]), .CK(CLK), .RN(n11), .Q(pulse_ff) );
  DFFRX1M enable_pulse_reg ( .D(n13), .CK(CLK), .RN(n11), .Q(enable_pulse) );
  DFFRX1M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(n11), .Q(sync_bus[7]) );
  DFFRX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(n11), .Q(sync_bus[5]) );
  DFFRX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(n11), .Q(sync_bus[6]) );
  DFFRQX4M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(n11), .Q(sync_bus[0]) );
  DFFRX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(n11), .Q(sync_bus[3]) );
  DFFRX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(n11), .Q(sync_bus[4]) );
  DFFRQX4M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(n11), .Q(sync_bus[2]) );
  DFFRQX4M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(n11), .Q(sync_bus[1]) );
  INVX4M U3 ( .A(n1), .Y(n13) );
  BUFX4M U4 ( .A(n1), .Y(n10) );
  INVX6M U5 ( .A(n12), .Y(n11) );
  INVX2M U6 ( .A(RST), .Y(n12) );
  NAND2BX2M U7 ( .AN(pulse_ff), .B(Q[1]), .Y(n1) );
  AO22X1M U8 ( .A0(unsync_bus[0]), .A1(n13), .B0(sync_bus[0]), .B1(n10), .Y(n2) );
  AO22X1M U9 ( .A0(unsync_bus[2]), .A1(n13), .B0(sync_bus[2]), .B1(n10), .Y(n4) );
  AO22X1M U10 ( .A0(unsync_bus[1]), .A1(n13), .B0(sync_bus[1]), .B1(n10), .Y(
        n3) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n13), .B0(sync_bus[6]), .B1(n10), .Y(
        n8) );
  AO22X1M U12 ( .A0(unsync_bus[5]), .A1(n13), .B0(sync_bus[5]), .B1(n10), .Y(
        n7) );
  AO22X1M U13 ( .A0(unsync_bus[3]), .A1(n13), .B0(sync_bus[3]), .B1(n10), .Y(
        n5) );
  AO22X1M U14 ( .A0(unsync_bus[4]), .A1(n13), .B0(sync_bus[4]), .B1(n10), .Y(
        n6) );
  AO22X1M U15 ( .A0(unsync_bus[7]), .A1(n13), .B0(sync_bus[7]), .B1(n10), .Y(
        n9) );
endmodule


module system_top ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PAR_ERR, STP_ERR );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PAR_ERR, STP_ERR;
  wire   SYNC_RST_REF, OUT_Valid, RdData_Valid, RX_D_VLD, EN, CLK_EN, WrEn,
         RdEn, TX_D_VLD, F_FULL, ALU_CLK, TX_CLK, RX_CLK, SYNC_RST_UART,
         F_EMPTY, busy, sync_en, RD_INC, n1, n2, n3, n4;
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

  SYS_CTRL_data_width8_addr4_out_width16 U0 ( .CLK(REF_CLK), .RST(n3), 
        .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_Valid), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD), .fifo_full(F_FULL), .ALU_FUN(ALU_FUN), .EN(EN), .CLK_EN(CLK_EN), .Address(
        Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), .TX_P_DATA(
        TX_P_DATA), .TX_D_VLD(TX_D_VLD) );
  Register_File_addr4_width8 U1 ( .WrData(WrData), .Address(Address), .WrEn(
        WrEn), .RdEn(RdEn), .CLK(REF_CLK), .RST(n3), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .REG0(operandA), .REG1(operandB), .REG2(
        UART_CONFIG), .REG3(div_ratio) );
  ALU_data_width8_out_width16 U2 ( .A(operandA), .B(operandB), .ALU_FUN(
        ALU_FUN), .CLK(ALU_CLK), .RST(n3), .En(EN), .ALU_OUT(ALU_OUT), 
        .ALU_Valid(OUT_Valid) );
  CLK_GATE U3 ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK) );
  UART_width8 U4 ( .UART_CONFIG(UART_CONFIG), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), 
        .RST(n1), .RX_IN(RX_IN), .F_EMPTY(F_EMPTY), .RdData(F_RdData), 
        .TX_OUT(TX_OUT), .busy(busy), .RX_OUT(RX_OUT), .sync_en(sync_en), 
        .PAR_ERR(PAR_ERR), .STP_ERR(STP_ERR) );
  RST_SYNC_NUM_STAGES2_0 U5 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(SYNC_RST_REF) );
  RST_SYNC_NUM_STAGES2_1 U6 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        SYNC_RST_UART) );
  Pulse_Gen U7 ( .CLK(TX_CLK), .RST(n1), .LVL_SIG(busy), .Pulse_SIG(RD_INC) );
  FIFO_DATA_WIDTH8 U8 ( .WR_DATA(TX_P_DATA), .W_INC(TX_D_VLD), .W_CLK(REF_CLK), 
        .W_RST(n3), .R_CLK(TX_CLK), .R_RST(n1), .R_INC(RD_INC), .RD_DATA(
        F_RdData), .FULL(F_FULL), .EMPTY(F_EMPTY) );
  Clock_Divider_0 U10 ( .i_ref_clk(UART_CLK), .i_rst_n(n1), .i_clk_en(1'b1), 
        .i_div_ratio(div_ratio), .o_div_clk(TX_CLK) );
  Clock_Divider_1 U11 ( .i_ref_clk(UART_CLK), .i_rst_n(n1), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, div_ratio_rx[2:0]}), 
        .o_div_clk(RX_CLK) );
  clk_div_mux U12 ( .IN(UART_CONFIG[7:2]), .div_ratio_rx({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, div_ratio_rx[2:0]}) );
  data_synchronizer_data_width8 du ( .unsync_bus(RX_OUT), .bus_enable(sync_en), 
        .CLK(REF_CLK), .RST(n3), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VLD)
         );
  INVX4M U9 ( .A(n4), .Y(n3) );
  INVX4M U13 ( .A(n2), .Y(n1) );
  INVX2M U14 ( .A(SYNC_RST_REF), .Y(n4) );
  INVX2M U15 ( .A(SYNC_RST_UART), .Y(n2) );
endmodule


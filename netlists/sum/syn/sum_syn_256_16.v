
module sum_N256_CC16 ( clk, rst, a, b, c );
  input [15:0] a;
  input [15:0] b;
  output [15:0] c;
  input clk, rst;
  wire   carry_on, carry_on_d, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  DFF carry_on_reg ( .D(carry_on_d), .CLK(clk), .RST(rst), .Q(carry_on) );
  XOR U3 ( .A(a[3]), .B(n53), .Z(n11) );
  XOR U4 ( .A(a[6]), .B(n44), .Z(n8) );
  XOR U5 ( .A(a[9]), .B(n35), .Z(n5) );
  XOR U6 ( .A(a[12]), .B(n23), .Z(n25) );
  XOR U7 ( .A(a[1]), .B(n59), .Z(n13) );
  XOR U8 ( .A(a[4]), .B(n50), .Z(n10) );
  XOR U9 ( .A(a[7]), .B(n41), .Z(n7) );
  XOR U10 ( .A(a[10]), .B(n31), .Z(n33) );
  XOR U11 ( .A(a[13]), .B(n19), .Z(n21) );
  XOR U12 ( .A(a[2]), .B(n56), .Z(n12) );
  XOR U13 ( .A(a[5]), .B(n47), .Z(n9) );
  XOR U14 ( .A(a[8]), .B(n38), .Z(n6) );
  XOR U15 ( .A(a[11]), .B(n27), .Z(n29) );
  XOR U16 ( .A(a[14]), .B(n15), .Z(n17) );
  XOR U17 ( .A(n1), .B(n2), .Z(carry_on_d) );
  ANDN U18 ( .B(n3), .A(n4), .Z(n1) );
  XOR U19 ( .A(b[15]), .B(n2), .Z(n3) );
  XNOR U20 ( .A(b[9]), .B(n5), .Z(c[9]) );
  XNOR U21 ( .A(b[8]), .B(n6), .Z(c[8]) );
  XNOR U22 ( .A(b[7]), .B(n7), .Z(c[7]) );
  XNOR U23 ( .A(b[6]), .B(n8), .Z(c[6]) );
  XNOR U24 ( .A(b[5]), .B(n9), .Z(c[5]) );
  XNOR U25 ( .A(b[4]), .B(n10), .Z(c[4]) );
  XNOR U26 ( .A(b[3]), .B(n11), .Z(c[3]) );
  XNOR U27 ( .A(b[2]), .B(n12), .Z(c[2]) );
  XNOR U28 ( .A(b[1]), .B(n13), .Z(c[1]) );
  XNOR U29 ( .A(b[15]), .B(n4), .Z(c[15]) );
  XNOR U30 ( .A(a[15]), .B(n2), .Z(n4) );
  XNOR U31 ( .A(n14), .B(n15), .Z(n2) );
  ANDN U32 ( .B(n16), .A(n17), .Z(n14) );
  XNOR U33 ( .A(b[14]), .B(n15), .Z(n16) );
  XNOR U34 ( .A(b[14]), .B(n17), .Z(c[14]) );
  XOR U35 ( .A(n18), .B(n19), .Z(n15) );
  ANDN U36 ( .B(n20), .A(n21), .Z(n18) );
  XNOR U37 ( .A(b[13]), .B(n19), .Z(n20) );
  XNOR U38 ( .A(b[13]), .B(n21), .Z(c[13]) );
  XOR U39 ( .A(n22), .B(n23), .Z(n19) );
  ANDN U40 ( .B(n24), .A(n25), .Z(n22) );
  XNOR U41 ( .A(b[12]), .B(n23), .Z(n24) );
  XNOR U42 ( .A(b[12]), .B(n25), .Z(c[12]) );
  XOR U43 ( .A(n26), .B(n27), .Z(n23) );
  ANDN U44 ( .B(n28), .A(n29), .Z(n26) );
  XNOR U45 ( .A(b[11]), .B(n27), .Z(n28) );
  XNOR U46 ( .A(b[11]), .B(n29), .Z(c[11]) );
  XOR U47 ( .A(n30), .B(n31), .Z(n27) );
  ANDN U48 ( .B(n32), .A(n33), .Z(n30) );
  XNOR U49 ( .A(b[10]), .B(n31), .Z(n32) );
  XNOR U50 ( .A(b[10]), .B(n33), .Z(c[10]) );
  XOR U51 ( .A(n34), .B(n35), .Z(n31) );
  ANDN U52 ( .B(n36), .A(n5), .Z(n34) );
  XNOR U53 ( .A(b[9]), .B(n35), .Z(n36) );
  XOR U54 ( .A(n37), .B(n38), .Z(n35) );
  ANDN U55 ( .B(n39), .A(n6), .Z(n37) );
  XNOR U56 ( .A(b[8]), .B(n38), .Z(n39) );
  XOR U57 ( .A(n40), .B(n41), .Z(n38) );
  ANDN U58 ( .B(n42), .A(n7), .Z(n40) );
  XNOR U59 ( .A(b[7]), .B(n41), .Z(n42) );
  XOR U60 ( .A(n43), .B(n44), .Z(n41) );
  ANDN U61 ( .B(n45), .A(n8), .Z(n43) );
  XNOR U62 ( .A(b[6]), .B(n44), .Z(n45) );
  XOR U63 ( .A(n46), .B(n47), .Z(n44) );
  ANDN U64 ( .B(n48), .A(n9), .Z(n46) );
  XNOR U65 ( .A(b[5]), .B(n47), .Z(n48) );
  XOR U66 ( .A(n49), .B(n50), .Z(n47) );
  ANDN U67 ( .B(n51), .A(n10), .Z(n49) );
  XNOR U68 ( .A(b[4]), .B(n50), .Z(n51) );
  XOR U69 ( .A(n52), .B(n53), .Z(n50) );
  ANDN U70 ( .B(n54), .A(n11), .Z(n52) );
  XNOR U71 ( .A(b[3]), .B(n53), .Z(n54) );
  XOR U72 ( .A(n55), .B(n56), .Z(n53) );
  ANDN U73 ( .B(n57), .A(n12), .Z(n55) );
  XNOR U74 ( .A(b[2]), .B(n56), .Z(n57) );
  XOR U75 ( .A(n58), .B(n59), .Z(n56) );
  ANDN U76 ( .B(n60), .A(n13), .Z(n58) );
  XNOR U77 ( .A(b[1]), .B(n59), .Z(n60) );
  XOR U78 ( .A(carry_on), .B(n61), .Z(n59) );
  NANDN U79 ( .A(n62), .B(n63), .Z(n61) );
  XOR U80 ( .A(carry_on), .B(b[0]), .Z(n63) );
  XNOR U81 ( .A(b[0]), .B(n62), .Z(c[0]) );
  XNOR U82 ( .A(a[0]), .B(carry_on), .Z(n62) );
endmodule

module top(a, b, clk, reset, out);
  input a, b, clk, reset;
  output out;
  wire y;
  wire y1;
  wire y2;
  INV I1 ( .I(b), .ZN(y1)); 
  DFFRNQ F1 ( .CLK(clk), .D(y1), .Q(y2), .RN(reset));
  INV I2 ( .I(y2), .ZN(y3)); 
  BUF B1 ( .I(y3), .Z(y4));
  NAND2 N1( .A1(a), .A2(y4), .ZN(y5));
  INV I3 ( .I(y5), .ZN(y6)); 
  DFFRNQ F2 ( .CLK(clk), .D(y6), .Q(y7), .RN(reset));
  DFFRNQ F3 ( .CLK(clk), .D(y7), .Q(y8), .RN(reset));
  BUF B2 ( .I(y8), .Z(out));
endmodule

module top(a, out);
  input a;
  output out;
  INV I1 ( .I(a), .ZN(out)); 
endmodule

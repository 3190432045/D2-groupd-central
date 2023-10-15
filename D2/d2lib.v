`timescale 1ns/1ps

// d2lib.v
//   verilog models for simulation of TSMC 0.18um standard cells for D2
//   - note that delays are not accurate
//
// version
//   5.3 relax and adjust timing violations for DFFR clock
//   5.2 rise faster than fall for DFFR
//   5.1 modified DFFR ports 14/10/2019
//   5.0 removes AMS cells 13/10/2019
//   4.0 includes TSMC 180 D2 cells designed by Tom Wheal
//   3.0 includes setup and hold times 16/4/2015
//   2.0 INV1_H added 16/5/2010
//   1.0 initial version 28/4/2008


module INV1 ( A, Q );
parameter delay = 1;
input A;
output Q;
  assign #delay Q = !A;
endmodule


module INV10 ( A, Q );
parameter delay = 1;
input A;
output Q;
  assign #delay Q = !A;
endmodule


module BUF4 ( A, Q ); 
parameter delay = 1;
input A;
output Q;
  assign #delay Q = A;
endmodule


module TIE0 ( Q ); 
parameter delay = 1;
output Q;
  assign Q = 0;
endmodule


module TIE1 ( Q ); 
parameter delay = 1;
output Q;
  assign Q = 1;
endmodule


module XNR2 ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ! ( A ^ B );
endmodule


module XOR2 ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ( A ^ B );
endmodule


module NAND2 ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ! ( A && B );
endmodule


module NAND3 ( A, B, C, Q ); 
parameter delay = 1;
input A;
input B;
input C;
output Q;
  assign #delay Q = ! ( A && B && C );
endmodule


module NAND4 ( A, B, C, D, Q ); 
parameter delay = 1;
input A;
input B;
input C;
input D;
output Q;
  assign #delay Q = ! ( A && B && C && D );
endmodule


module NOR2 ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ! ( A || B );
endmodule


module NOR3 ( A, B, C, Q ); 
parameter delay = 1;

input A;
input B;
input C;
output Q;
  assign #delay Q = ! ( A || B || C );
endmodule


module NOR4 ( A, B, C, D, Q ); 
parameter delay = 1;
input A;
input B;
input C;
input D;
output Q;
  assign #delay Q = ! ( A || B || C || D );
endmodule


module DFFR ( D, Clk, nRst, Q, nQ );
parameter delay = 1;
input D, Clk, nRst;
output Q, nQ;

  specify
    // T_setup = 2x1ns
    // T_hold  = 2x1ns
    $setuphold(posedge Clk &&& nRst, D, 2, 2);
    // T_clock_high  = 3x1ns
    $width(posedge Clk &&& nRst, 3);
    // T_clock_low  = 3x1ns
    $width(negedge Clk &&& nRst, 3);
    // T_nrst_low  = 10x1ns
    $width(negedge nRst, 10);
  endspecify

  reg state;
  always @(posedge Clk or negedge nRst)
    if ( ! nRst )
      state <= 0;
    else
      state <= D;

  // fall delay is greater than rise delay
  assign #(delay*2,delay*3) Q = state;
  assign #(delay*2,delay*3) nQ = !state;

endmodule


module MUX2 ( A, B, S, Q ); 
parameter delay = 1;
input A;
input B;
input S;
output Q;
  assign #delay Q = (B && S) || (A && (! S));
endmodule

//----------------------------------

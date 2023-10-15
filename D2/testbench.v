`timescale 1ns/1ps

module testbench;

  reg A, B;

  wire SUM, CARRY;

  TEAMD_HALFADDER ha1 (.A(A), .B(B), .SUM(SUM), .CARRY(CARRY));

  initial

    begin

      A=0;

      B=0;

      #200 B=1;

      #200 A=1;

      #200 B=0;

      #200 A=0;

    end

endmodule

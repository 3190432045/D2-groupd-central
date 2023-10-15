// Verilog netlist created by S-Edit 2021.2.0
// Written on Mon Oct  9 12:32:17 2023

// Library:               TEAMD_Schematics1
// Cell:                  TEAMD_DESIGN
// View name:             HALFADDER_SIM
// Design path:           H:\s1_23_24\d2\Schematic\TEAMD_Schematics1
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <yes>



module Design_Globals(
);
wire Vdd;
wire Gnd;
endmodule // Design_Globals

module TEAMD_HALFADDER(
	A,
	B,
	CARRY,
	SUM
);
input A;
input B;
output CARRY;
output SUM;

wire nCARRY;

INV1 INV1_1(
	.A(nCARRY),
	.Q(CARRY)
);
NAND2 NAND2_1(
	.A(A),
	.B(B),
	.Q(nCARRY)
);
XOR2 XOR2_1(
	.A(A),
	.B(B),
	.Q(SUM)
);
endmodule // TEAMD_HALFADDER


module TEAMD_INCREMENTER(
	CarryOut,
	D0,
	D1,
	D2,
	S0,
	S1,
	S2
);
output CarryOut;
input D0;
input D1;
input D2;
output S0;
output S1;
output S2;

wire N_1;
wire N_2;
wire N_3;

TEAMD_HALFADDER TEAMD_HALFADDER_1(
	.A(N_1),
	.B(D0),
	.CARRY(N_2),
	.SUM(S0)
);
TEAMD_HALFADDER TEAMD_HALFADDER_2(
	.A(N_2),
	.B(D1),
	.CARRY(N_3),
	.SUM(S1)
);
TEAMD_HALFADDER TEAMD_HALFADDER_3(
	.A(N_3),
	.B(D2),
	.CARRY(CarryOut),
	.SUM(S2)
);
TIE1 TIE1_1(
	.Q(N_1)
);
endmodule // TEAMD_INCREMENTER


module TEAMD_DESIGN(
	A0,
	A1,
	A2,
	A3,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4
);
input A0;
input A1;
input A2;
input A3;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;

INV1 INV1_1(
	.A(A0),
	.Q(Q0)
);
TEAMD_INCREMENTER TEAMD_INCREMENTER_1(
	.CarryOut(Q1),
	.D0(A1),
	.D1(A2),
	.D2(A3),
	.S0(Q2),
	.S1(Q3),
	.S2(Q4)
);
endmodule // TEAMD_DESIGN


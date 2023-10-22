// Verilog netlist created by S-Edit 2021.2.0
// Written on Sun Oct 22 14:52:22 2023

// Library:               TEAMD_Schematics1
// Cell:                  TEAMD_DESIGN
// View name:             HALFADDER_SIM
// Design path:           C:\Users\jw26u22\Downloads\D2-groupd-central\D2\Schematic\TEAMD_Schematics1
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <no>



module TEAMD_4_bit_regesister(
	ClockSeq,
	DataIn,
	Gnd,
	MatchAll,
	nResetSeq,
	Vdd
);
input ClockSeq;
input DataIn;
inout Gnd;
output MatchAll;
input nResetSeq;
inout Vdd;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;
wire N_29;
wire N_30;
wire N_31;
wire N_32;
wire N_33;
wire N_34;

DFFR DFFR_1(
	.Clk(ClockSeq),
	.D(N_22),
	.Gnd(Gnd),
	.nQ(N_24),
	.nRst(nResetSeq),
	.Q(N_5),
	.Vdd(Vdd)
);
DFFR DFFR_2(
	.Clk(ClockSeq),
	.D(N_1),
	.Gnd(Gnd),
	.nQ(N_25),
	.nRst(nResetSeq),
	.Q(N_4),
	.Vdd(Vdd)
);
DFFR DFFR_3(
	.Clk(ClockSeq),
	.D(N_3),
	.Gnd(Gnd),
	.nQ(N_26),
	.nRst(nResetSeq),
	.Q(N_30),
	.Vdd(Vdd)
);
DFFR DFFR_4(
	.Clk(ClockSeq),
	.D(N_18),
	.Gnd(Gnd),
	.nQ(N_27),
	.nRst(nResetSeq),
	.Q(N_32),
	.Vdd(Vdd)
);
INV1 INV1_1(
	.A(N_11),
	.Gnd(Gnd),
	.Q(N_1),
	.Vdd(Vdd)
);
INV1 INV1_2(
	.A(N_2),
	.Gnd(Gnd),
	.Q(N_6),
	.Vdd(Vdd)
);
INV1 INV1_3(
	.A(N_17),
	.Gnd(Gnd),
	.Q(N_3),
	.Vdd(Vdd)
);
INV1 INV1_4(
	.A(DataIn),
	.Gnd(Gnd),
	.Q(N_7),
	.Vdd(Vdd)
);
INV1 INV1_5(
	.A(N_34),
	.Gnd(Gnd),
	.Q(MatchAll),
	.Vdd(Vdd)
);
NAND2 NAND2_1(
	.A(N_12),
	.B(N_9),
	.Gnd(Gnd),
	.Q(N_8),
	.Vdd(Vdd)
);
NAND2 NAND2_2(
	.A(N_26),
	.B(N_33),
	.Gnd(Gnd),
	.Q(N_11),
	.Vdd(Vdd)
);
NAND2 NAND2_3(
	.A(N_23),
	.B(N_21),
	.Gnd(Gnd),
	.Q(N_14),
	.Vdd(Vdd)
);
NAND2 NAND2_4(
	.A(DataIn),
	.B(N_14),
	.Gnd(Gnd),
	.Q(N_17),
	.Vdd(Vdd)
);
NAND3 NAND3_1(
	.A(N_5),
	.B(N_26),
	.C(DataIn),
	.Gnd(Gnd),
	.Q(N_9),
	.Vdd(Vdd)
);
NAND3 NAND3_2(
	.A(N_24),
	.B(N_30),
	.C(N_7),
	.Gnd(Gnd),
	.Q(N_12),
	.Vdd(Vdd)
);
NAND3 NAND3_3(
	.A(N_8),
	.B(N_25),
	.C(N_32),
	.Gnd(Gnd),
	.Q(N_15),
	.Vdd(Vdd)
);
NAND3 NAND3_4(
	.A(N_13),
	.B(N_10),
	.C(N_15),
	.Gnd(Gnd),
	.Q(N_18),
	.Vdd(Vdd)
);
NAND3 NAND3_5(
	.A(N_27),
	.B(N_5),
	.C(N_26),
	.Gnd(Gnd),
	.Q(N_20),
	.Vdd(Vdd)
);
NAND3 NAND3_6(
	.A(N_20),
	.B(N_19),
	.C(N_16),
	.Gnd(Gnd),
	.Q(N_22),
	.Vdd(Vdd)
);
NAND3 NAND3_7(
	.A(N_24),
	.B(N_4),
	.C(DataIn),
	.Gnd(Gnd),
	.Q(N_31),
	.Vdd(Vdd)
);
NAND3 NAND3_8(
	.A(N_5),
	.B(N_4),
	.C(N_7),
	.Gnd(Gnd),
	.Q(N_29),
	.Vdd(Vdd)
);
NAND3 NAND3_9(
	.A(N_32),
	.B(N_5),
	.C(N_7),
	.Gnd(Gnd),
	.Q(N_28),
	.Vdd(Vdd)
);
NAND3 NAND3_10(
	.A(N_28),
	.B(N_29),
	.C(N_31),
	.Gnd(Gnd),
	.Q(N_33),
	.Vdd(Vdd)
);
NAND3 NAND3_11(
	.A(DataIn),
	.B(N_30),
	.C(N_32),
	.Gnd(Gnd),
	.Q(N_34),
	.Vdd(Vdd)
);
NAND4 NAND4_1(
	.A(N_27),
	.B(N_24),
	.C(DataIn),
	.D(N_6),
	.Gnd(Gnd),
	.Q(N_10),
	.Vdd(Vdd)
);
NAND4 NAND4_2(
	.A(N_27),
	.B(N_5),
	.C(N_26),
	.D(N_7),
	.Gnd(Gnd),
	.Q(N_13),
	.Vdd(Vdd)
);
NAND4 NAND4_3(
	.A(N_32),
	.B(N_24),
	.C(N_26),
	.D(DataIn),
	.Gnd(Gnd),
	.Q(N_16),
	.Vdd(Vdd)
);
NAND4 NAND4_4(
	.A(N_32),
	.B(N_24),
	.C(N_25),
	.D(N_30),
	.Gnd(Gnd),
	.Q(N_19),
	.Vdd(Vdd)
);
NAND4 NAND4_5(
	.A(N_26),
	.B(N_4),
	.C(N_5),
	.D(N_32),
	.Gnd(Gnd),
	.Q(N_21),
	.Vdd(Vdd)
);
NAND4 NAND4_6(
	.A(N_30),
	.B(N_25),
	.C(N_24),
	.D(N_27),
	.Gnd(Gnd),
	.Q(N_23),
	.Vdd(Vdd)
);
NOR2 NOR2_1(
	.A(N_26),
	.B(N_25),
	.Gnd(Gnd),
	.Q(N_2),
	.Vdd(Vdd)
);
endmodule // TEAMD_4_bit_regesister


module TEAMD_9_bit_recogniser(
	A3,
	A4,
	A5,
	Gnd,
	Q2,
	Vdd
);
input A3;
input A4;
input A5;
inout Gnd;
output Q2;
inout Vdd;

TEAMD_4_bit_regesister TEAMD_4_bit_regesister_1(
	.ClockSeq(A3),
	.DataIn(A5),
	.Gnd(Gnd),
	.MatchAll(Q2),
	.nResetSeq(A4),
	.Vdd(Vdd)
);
endmodule // TEAMD_9_bit_recogniser


module TEAMD_CIRCUIT1(
	A1,
	A2,
	Gnd,
	Q1,
	Vdd
);
input A1;
input A2;
inout Gnd;
output Q1;
inout Vdd;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;
wire N_29;
wire N_30;
wire N_31;
wire N_32;
wire N_33;
wire N_34;
wire N_35;
wire N_36;
wire N_37;
wire N_38;
wire N_39;
wire N_40;
wire N_41;
wire N_42;
wire N_43;
wire N_44;

DFFR DFFR_2(
	.Clk(N_37),
	.D(N_38),
	.Gnd(Gnd),
	.nQ(N_38),
	.nRst(A1),
	.Q(N_5),
	.Vdd(Vdd)
);
DFFR DFFR_10(
	.Clk(N_38),
	.D(N_39),
	.Gnd(Gnd),
	.nQ(N_39),
	.nRst(A1),
	.Q(N_14),
	.Vdd(Vdd)
);
DFFR DFFR_11(
	.Clk(N_39),
	.D(N_40),
	.Gnd(Gnd),
	.nQ(N_40),
	.nRst(A1),
	.Q(N_17),
	.Vdd(Vdd)
);
DFFR DFFR_12(
	.Clk(N_40),
	.D(N_41),
	.Gnd(Gnd),
	.nQ(N_41),
	.nRst(A1),
	.Q(N_20),
	.Vdd(Vdd)
);
DFFR DFFR_13(
	.Clk(N_41),
	.D(N_42),
	.Gnd(Gnd),
	.nQ(N_42),
	.nRst(A1),
	.Q(N_23),
	.Vdd(Vdd)
);
DFFR DFFR_14(
	.Clk(N_42),
	.D(N_43),
	.Gnd(Gnd),
	.nQ(N_43),
	.nRst(A1),
	.Q(N_26),
	.Vdd(Vdd)
);
DFFR DFFR_15(
	.Clk(N_43),
	.D(N_44),
	.Gnd(Gnd),
	.nQ(N_44),
	.nRst(A1),
	.Q(N_29),
	.Vdd(Vdd)
);
DFFR DFFR_16(
	.Clk(N_44),
	.D(N_36),
	.Gnd(Gnd),
	.nQ(N_36),
	.nRst(A1),
	.Q(Q1),
	.Vdd(Vdd)
);
INV1 INV1_1(
	.A(N_3),
	.Gnd(Gnd),
	.Q(N_2),
	.Vdd(Vdd)
);
INV1 INV1_2(
	.A(N_2),
	.Gnd(Gnd),
	.Q(N_4),
	.Vdd(Vdd)
);
INV1 INV1_3(
	.A(N_4),
	.Gnd(Gnd),
	.Q(N_6),
	.Vdd(Vdd)
);
INV1 INV1_4(
	.A(N_6),
	.Gnd(Gnd),
	.Q(N_7),
	.Vdd(Vdd)
);
INV1 INV1_5(
	.A(N_7),
	.Gnd(Gnd),
	.Q(N_8),
	.Vdd(Vdd)
);
INV1 INV1_6(
	.A(N_8),
	.Gnd(Gnd),
	.Q(N_9),
	.Vdd(Vdd)
);
INV1 INV1_7(
	.A(N_9),
	.Gnd(Gnd),
	.Q(N_10),
	.Vdd(Vdd)
);
INV1 INV1_8(
	.A(N_10),
	.Gnd(Gnd),
	.Q(N_11),
	.Vdd(Vdd)
);
INV1 INV1_9(
	.A(N_11),
	.Gnd(Gnd),
	.Q(N_12),
	.Vdd(Vdd)
);
INV1 INV1_10(
	.A(N_12),
	.Gnd(Gnd),
	.Q(N_13),
	.Vdd(Vdd)
);
INV1 INV1_11(
	.A(N_13),
	.Gnd(Gnd),
	.Q(N_16),
	.Vdd(Vdd)
);
INV1 INV1_12(
	.A(N_16),
	.Gnd(Gnd),
	.Q(N_19),
	.Vdd(Vdd)
);
INV1 INV1_13(
	.A(N_19),
	.Gnd(Gnd),
	.Q(N_22),
	.Vdd(Vdd)
);
INV1 INV1_14(
	.A(N_22),
	.Gnd(Gnd),
	.Q(N_25),
	.Vdd(Vdd)
);
INV1 INV1_15(
	.A(N_25),
	.Gnd(Gnd),
	.Q(N_28),
	.Vdd(Vdd)
);
INV1 INV1_16(
	.A(N_28),
	.Gnd(Gnd),
	.Q(N_31),
	.Vdd(Vdd)
);
INV1 INV1_17(
	.A(N_31),
	.Gnd(Gnd),
	.Q(N_33),
	.Vdd(Vdd)
);
INV1 INV1_18(
	.A(N_33),
	.Gnd(Gnd),
	.Q(N_34),
	.Vdd(Vdd)
);
INV1 INV1_19(
	.A(N_34),
	.Gnd(Gnd),
	.Q(N_35),
	.Vdd(Vdd)
);
INV1 INV1_20(
	.A(N_35),
	.Gnd(Gnd),
	.Q(N_15),
	.Vdd(Vdd)
);
INV1 INV1_21(
	.A(N_15),
	.Gnd(Gnd),
	.Q(N_18),
	.Vdd(Vdd)
);
INV1 INV1_22(
	.A(N_18),
	.Gnd(Gnd),
	.Q(N_21),
	.Vdd(Vdd)
);
INV1 INV1_23(
	.A(N_21),
	.Gnd(Gnd),
	.Q(N_24),
	.Vdd(Vdd)
);
INV1 INV1_24(
	.A(N_24),
	.Gnd(Gnd),
	.Q(N_27),
	.Vdd(Vdd)
);
INV1 INV1_25(
	.A(N_27),
	.Gnd(Gnd),
	.Q(N_30),
	.Vdd(Vdd)
);
INV1 INV1_26(
	.A(N_30),
	.Gnd(Gnd),
	.Q(N_32),
	.Vdd(Vdd)
);
INV1 INV1_27(
	.A(N_32),
	.Gnd(Gnd),
	.Q(N_37),
	.Vdd(Vdd)
);
MUX2 MUX2_1(
	.A(N_1),
	.B(N_37),
	.Gnd(Gnd),
	.Q(N_3),
	.S(A2),
	.Vdd(Vdd)
);
TIE1 TIE1_1(
	.Gnd(Gnd),
	.Q(N_1),
	.Vdd(Vdd)
);
endmodule // TEAMD_CIRCUIT1


module TEAMD_Control_Unit(
	CLK,
	Gnd,
	iLoad,
	nReset,
	Rx,
	Vdd
);
input CLK;
inout Gnd;
output iLoad;
input nReset;
input Rx;
inout Vdd;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_6),
	.Gnd(Gnd),
	.nQ(N_21),
	.nRst(nReset),
	.Q(N_1),
	.Vdd(Vdd)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_12),
	.Gnd(Gnd),
	.nQ(N_22),
	.nRst(nReset),
	.Q(N_3),
	.Vdd(Vdd)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(N_9),
	.Gnd(Gnd),
	.nQ(N_23),
	.nRst(nReset),
	.Q(N_4),
	.Vdd(Vdd)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(N_17),
	.Gnd(Gnd),
	.nQ(N_24),
	.nRst(nReset),
	.Q(N_5),
	.Vdd(Vdd)
);
INV1 INV1_1(
	.A(Rx),
	.Gnd(Gnd),
	.Q(N_2),
	.Vdd(Vdd)
);
NAND2 NAND2_1(
	.A(N_8),
	.B(N_11),
	.Gnd(Gnd),
	.Q(N_6),
	.Vdd(Vdd)
);
NAND2 NAND2_2(
	.A(N_14),
	.B(N_16),
	.Gnd(Gnd),
	.Q(N_9),
	.Vdd(Vdd)
);
NAND3 NAND3_1(
	.A(N_21),
	.B(N_3),
	.C(N_23),
	.Gnd(Gnd),
	.Q(N_7),
	.Vdd(Vdd)
);
NAND3 NAND3_2(
	.A(N_21),
	.B(N_3),
	.C(N_24),
	.Gnd(Gnd),
	.Q(N_10),
	.Vdd(Vdd)
);
NAND3 NAND3_3(
	.A(N_13),
	.B(N_7),
	.C(N_10),
	.Gnd(Gnd),
	.Q(N_12),
	.Vdd(Vdd)
);
NAND3 NAND3_4(
	.A(N_21),
	.B(N_23),
	.C(N_5),
	.Gnd(Gnd),
	.Q(N_14),
	.Vdd(Vdd)
);
NAND3 NAND3_5(
	.A(N_21),
	.B(N_4),
	.C(N_24),
	.Gnd(Gnd),
	.Q(N_16),
	.Vdd(Vdd)
);
NAND3 NAND3_6(
	.A(N_21),
	.B(N_4),
	.C(N_24),
	.Gnd(Gnd),
	.Q(N_18),
	.Vdd(Vdd)
);
NAND3 NAND3_7(
	.A(N_21),
	.B(N_3),
	.C(N_24),
	.Gnd(Gnd),
	.Q(N_19),
	.Vdd(Vdd)
);
NAND3 NAND3_8(
	.A(N_2),
	.B(N_21),
	.C(N_24),
	.Gnd(Gnd),
	.Q(N_20),
	.Vdd(Vdd)
);
NAND4 NAND4_1(
	.A(N_1),
	.B(N_22),
	.C(N_23),
	.D(N_24),
	.Gnd(Gnd),
	.Q(N_8),
	.Vdd(Vdd)
);
NAND4 NAND4_2(
	.A(N_21),
	.B(N_3),
	.C(N_4),
	.D(N_5),
	.Gnd(Gnd),
	.Q(N_11),
	.Vdd(Vdd)
);
NAND4 NAND4_3(
	.A(N_21),
	.B(N_22),
	.C(N_4),
	.D(N_5),
	.Gnd(Gnd),
	.Q(N_13),
	.Vdd(Vdd)
);
NAND4 NAND4_4(
	.A(N_1),
	.B(N_22),
	.C(N_23),
	.D(N_24),
	.Gnd(Gnd),
	.Q(N_15),
	.Vdd(Vdd)
);
NAND4 NAND4_5(
	.A(N_18),
	.B(N_15),
	.C(N_19),
	.D(N_20),
	.Gnd(Gnd),
	.Q(N_17),
	.Vdd(Vdd)
);
NOR4 NOR4_1(
	.A(N_21),
	.B(N_3),
	.C(N_4),
	.D(N_24),
	.Gnd(Gnd),
	.Q(iLoad),
	.Vdd(Vdd)
);
endmodule // TEAMD_Control_Unit


module TEAMD_Asynchronous_Serial_Interface(
	CLK,
	Gnd,
	iD0,
	iD1,
	iD2,
	iD3,
	iD4,
	iD5,
	iD6,
	iLoad,
	nReset,
	Rx,
	Vdd
);
input CLK;
inout Gnd;
output iD0;
output iD1;
output iD2;
output iD3;
output iD4;
output iD5;
output iD6;
output iLoad;
input nReset;
input Rx;
inout Vdd;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;

DFFR DFFR_1(
	.Clk(CLK),
	.D(Rx),
	.Gnd(Gnd),
	.nQ(N_1),
	.nRst(nReset),
	.Q(iD6),
	.Vdd(Vdd)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(iD6),
	.Gnd(Gnd),
	.nQ(N_2),
	.nRst(nReset),
	.Q(iD5),
	.Vdd(Vdd)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(iD5),
	.Gnd(Gnd),
	.nQ(N_3),
	.nRst(nReset),
	.Q(iD4),
	.Vdd(Vdd)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(iD4),
	.Gnd(Gnd),
	.nQ(N_4),
	.nRst(nReset),
	.Q(iD3),
	.Vdd(Vdd)
);
DFFR DFFR_5(
	.Clk(CLK),
	.D(iD3),
	.Gnd(Gnd),
	.nQ(N_5),
	.nRst(nReset),
	.Q(iD2),
	.Vdd(Vdd)
);
DFFR DFFR_6(
	.Clk(CLK),
	.D(iD2),
	.Gnd(Gnd),
	.nQ(N_6),
	.nRst(nReset),
	.Q(iD1),
	.Vdd(Vdd)
);
DFFR DFFR_7(
	.Clk(CLK),
	.D(iD1),
	.Gnd(Gnd),
	.nQ(N_7),
	.nRst(nReset),
	.Q(iD0),
	.Vdd(Vdd)
);
TEAMD_Control_Unit TEAMD_Control_Unit_2(
	.CLK(CLK),
	.Gnd(Gnd),
	.iLoad(iLoad),
	.nReset(nReset),
	.Rx(Rx),
	.Vdd(Vdd)
);
endmodule // TEAMD_Asynchronous_Serial_Interface


module TEAMD_DESIGN(
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	A6,
	A8,
	A9,
	Gnd,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7,
	Q8,
	Q9,
	Q11,
	Vdd
);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input A6;
input A8;
input A9;
inout Gnd;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
output Q8;
output Q9;
output Q11;
inout Vdd;

INV1 INV1_1(
	.A(A0),
	.Gnd(Gnd),
	.Q(Q0),
	.Vdd(Vdd)
);
TEAMD_9_bit_recogniser TEAMD_9_bit_recogniser_1(
	.A3(A3),
	.A4(A4),
	.A5(A5),
	.Gnd(Gnd),
	.Q2(Q2),
	.Vdd(Vdd)
);
TEAMD_Asynchronous_Serial_Interface TEAMD_Asynchronous_Serial_Interface_1(
	.CLK(A6),
	.Gnd(Gnd),
	.iD0(Q3),
	.iD1(Q4),
	.iD2(Q5),
	.iD3(Q6),
	.iD4(Q7),
	.iD5(Q8),
	.iD6(Q9),
	.iLoad(Q11),
	.nReset(A8),
	.Rx(A9),
	.Vdd(Vdd)
);
TEAMD_CIRCUIT1 TEAMD_RINGOSC_1(
	.A1(A1),
	.A2(A2),
	.Gnd(Gnd),
	.Q1(Q1),
	.Vdd(Vdd)
);
endmodule // TEAMD_DESIGN


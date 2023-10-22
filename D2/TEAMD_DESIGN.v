// Verilog netlist created by S-Edit 2021.2.0
// Written on Sun Oct 22 13:18:09 2023

// Library:               TEAMD_Schematics1
// Cell:                  TEAMD_DESIGN
// View name:             HALFADDER_SIM
// Design path:           C:\Users\jw26u22\Downloads\D2-groupd-central\D2\Schematic\TEAMD_Schematics1
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <yes>



module Design_Globals(
);
wire Vdd;
wire Gnd;
endmodule // Design_Globals

module TEAMD_4_bit_regesister(
	ClockSeq,
	DataIn,
	MatchAll,
	nResetSeq
);
input ClockSeq;
input DataIn;
output MatchAll;
input nResetSeq;

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
	.nQ(N_24),
	.nRst(nResetSeq),
	.Q(N_5)
);
DFFR DFFR_2(
	.Clk(ClockSeq),
	.D(N_1),
	.nQ(N_25),
	.nRst(nResetSeq),
	.Q(N_4)
);
DFFR DFFR_3(
	.Clk(ClockSeq),
	.D(N_3),
	.nQ(N_26),
	.nRst(nResetSeq),
	.Q(N_30)
);
DFFR DFFR_4(
	.Clk(ClockSeq),
	.D(N_18),
	.nQ(N_27),
	.nRst(nResetSeq),
	.Q(N_32)
);
INV1 INV1_1(
	.A(N_11),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_2),
	.Q(N_6)
);
INV1 INV1_3(
	.A(N_17),
	.Q(N_3)
);
INV1 INV1_4(
	.A(DataIn),
	.Q(N_7)
);
INV1 INV1_5(
	.A(N_34),
	.Q(MatchAll)
);
NAND2 NAND2_1(
	.A(N_12),
	.B(N_9),
	.Q(N_8)
);
NAND2 NAND2_2(
	.A(N_26),
	.B(N_33),
	.Q(N_11)
);
NAND2 NAND2_3(
	.A(N_23),
	.B(N_21),
	.Q(N_14)
);
NAND2 NAND2_4(
	.A(DataIn),
	.B(N_14),
	.Q(N_17)
);
NAND3 NAND3_1(
	.A(N_5),
	.B(N_26),
	.C(DataIn),
	.Q(N_9)
);
NAND3 NAND3_2(
	.A(N_24),
	.B(N_30),
	.C(N_7),
	.Q(N_12)
);
NAND3 NAND3_3(
	.A(N_8),
	.B(N_25),
	.C(N_32),
	.Q(N_15)
);
NAND3 NAND3_4(
	.A(N_13),
	.B(N_10),
	.C(N_15),
	.Q(N_18)
);
NAND3 NAND3_5(
	.A(N_27),
	.B(N_5),
	.C(N_26),
	.Q(N_20)
);
NAND3 NAND3_6(
	.A(N_20),
	.B(N_19),
	.C(N_16),
	.Q(N_22)
);
NAND3 NAND3_7(
	.A(N_24),
	.B(N_4),
	.C(DataIn),
	.Q(N_31)
);
NAND3 NAND3_8(
	.A(N_5),
	.B(N_4),
	.C(N_7),
	.Q(N_29)
);
NAND3 NAND3_9(
	.A(N_32),
	.B(N_5),
	.C(N_7),
	.Q(N_28)
);
NAND3 NAND3_10(
	.A(N_28),
	.B(N_29),
	.C(N_31),
	.Q(N_33)
);
NAND3 NAND3_11(
	.A(DataIn),
	.B(N_30),
	.C(N_32),
	.Q(N_34)
);
NAND4 NAND4_1(
	.A(N_27),
	.B(N_24),
	.C(DataIn),
	.D(N_6),
	.Q(N_10)
);
NAND4 NAND4_2(
	.A(N_27),
	.B(N_5),
	.C(N_26),
	.D(N_7),
	.Q(N_13)
);
NAND4 NAND4_3(
	.A(N_32),
	.B(N_24),
	.C(N_26),
	.D(DataIn),
	.Q(N_16)
);
NAND4 NAND4_4(
	.A(N_32),
	.B(N_24),
	.C(N_25),
	.D(N_30),
	.Q(N_19)
);
NAND4 NAND4_5(
	.A(N_26),
	.B(N_4),
	.C(N_5),
	.D(N_32),
	.Q(N_21)
);
NAND4 NAND4_6(
	.A(N_30),
	.B(N_25),
	.C(N_24),
	.D(N_27),
	.Q(N_23)
);
NOR2 NOR2_1(
	.A(N_26),
	.B(N_25),
	.Q(N_2)
);
endmodule // TEAMD_4_bit_regesister


module TEAMD_9_bit_recogniser(
	A3,
	A4,
	A5,
	Q2
);
input A3;
input A4;
input A5;
output Q2;

TEAMD_4_bit_regesister TEAMD_4_bit_regesister_1(
	.ClockSeq(A3),
	.DataIn(A5),
	.MatchAll(Q2),
	.nResetSeq(A4)
);
endmodule // TEAMD_9_bit_recogniser


module TEAMD_CIRCUIT1(
	A1,
	A2,
	Q1
);
input A1;
input A2;
output Q1;

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
	.nQ(N_38),
	.nRst(A1),
	.Q(N_5)
);
DFFR DFFR_10(
	.Clk(N_38),
	.D(N_39),
	.nQ(N_39),
	.nRst(A1),
	.Q(N_14)
);
DFFR DFFR_11(
	.Clk(N_39),
	.D(N_40),
	.nQ(N_40),
	.nRst(A1),
	.Q(N_17)
);
DFFR DFFR_12(
	.Clk(N_40),
	.D(N_41),
	.nQ(N_41),
	.nRst(A1),
	.Q(N_20)
);
DFFR DFFR_13(
	.Clk(N_41),
	.D(N_42),
	.nQ(N_42),
	.nRst(A1),
	.Q(N_23)
);
DFFR DFFR_14(
	.Clk(N_42),
	.D(N_43),
	.nQ(N_43),
	.nRst(A1),
	.Q(N_26)
);
DFFR DFFR_15(
	.Clk(N_43),
	.D(N_44),
	.nQ(N_44),
	.nRst(A1),
	.Q(N_29)
);
DFFR DFFR_16(
	.Clk(N_44),
	.D(N_36),
	.nQ(N_36),
	.nRst(A1),
	.Q(Q1)
);
INV1 INV1_1(
	.A(N_3),
	.Q(N_2)
);
INV1 INV1_2(
	.A(N_2),
	.Q(N_4)
);
INV1 INV1_3(
	.A(N_4),
	.Q(N_6)
);
INV1 INV1_4(
	.A(N_6),
	.Q(N_7)
);
INV1 INV1_5(
	.A(N_7),
	.Q(N_8)
);
INV1 INV1_6(
	.A(N_8),
	.Q(N_9)
);
INV1 INV1_7(
	.A(N_9),
	.Q(N_10)
);
INV1 INV1_8(
	.A(N_10),
	.Q(N_11)
);
INV1 INV1_9(
	.A(N_11),
	.Q(N_12)
);
INV1 INV1_10(
	.A(N_12),
	.Q(N_13)
);
INV1 INV1_11(
	.A(N_13),
	.Q(N_16)
);
INV1 INV1_12(
	.A(N_16),
	.Q(N_19)
);
INV1 INV1_13(
	.A(N_19),
	.Q(N_22)
);
INV1 INV1_14(
	.A(N_22),
	.Q(N_25)
);
INV1 INV1_15(
	.A(N_25),
	.Q(N_28)
);
INV1 INV1_16(
	.A(N_28),
	.Q(N_31)
);
INV1 INV1_17(
	.A(N_31),
	.Q(N_33)
);
INV1 INV1_18(
	.A(N_33),
	.Q(N_34)
);
INV1 INV1_19(
	.A(N_34),
	.Q(N_35)
);
INV1 INV1_20(
	.A(N_35),
	.Q(N_15)
);
INV1 INV1_21(
	.A(N_15),
	.Q(N_18)
);
INV1 INV1_22(
	.A(N_18),
	.Q(N_21)
);
INV1 INV1_23(
	.A(N_21),
	.Q(N_24)
);
INV1 INV1_24(
	.A(N_24),
	.Q(N_27)
);
INV1 INV1_25(
	.A(N_27),
	.Q(N_30)
);
INV1 INV1_26(
	.A(N_30),
	.Q(N_32)
);
INV1 INV1_27(
	.A(N_32),
	.Q(N_37)
);
MUX2 MUX2_1(
	.A(N_1),
	.B(N_37),
	.Q(N_3),
	.S(A2)
);
TIE1 TIE1_1(
	.Q(N_1)
);
endmodule // TEAMD_CIRCUIT1


module TEAMD_Control_Unit(
	CLK,
	iLoad,
	nReset,
	Rx
);
input CLK;
output iLoad;
input nReset;
input Rx;

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
	.nQ(N_21),
	.nRst(nReset),
	.Q(N_1)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_12),
	.nQ(N_22),
	.nRst(nReset),
	.Q(N_3)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(N_9),
	.nQ(N_23),
	.nRst(nReset),
	.Q(N_4)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(N_17),
	.nQ(N_24),
	.nRst(nReset),
	.Q(N_5)
);
INV1 INV1_1(
	.A(Rx),
	.Q(N_2)
);
NAND2 NAND2_1(
	.A(N_8),
	.B(N_11),
	.Q(N_6)
);
NAND2 NAND2_2(
	.A(N_14),
	.B(N_16),
	.Q(N_9)
);
NAND3 NAND3_1(
	.A(N_21),
	.B(N_3),
	.C(N_23),
	.Q(N_7)
);
NAND3 NAND3_2(
	.A(N_21),
	.B(N_3),
	.C(N_24),
	.Q(N_10)
);
NAND3 NAND3_3(
	.A(N_13),
	.B(N_7),
	.C(N_10),
	.Q(N_12)
);
NAND3 NAND3_4(
	.A(N_21),
	.B(N_23),
	.C(N_5),
	.Q(N_14)
);
NAND3 NAND3_5(
	.A(N_21),
	.B(N_4),
	.C(N_24),
	.Q(N_16)
);
NAND3 NAND3_6(
	.A(N_21),
	.B(N_4),
	.C(N_24),
	.Q(N_18)
);
NAND3 NAND3_7(
	.A(N_21),
	.B(N_3),
	.C(N_24),
	.Q(N_19)
);
NAND3 NAND3_8(
	.A(N_2),
	.B(N_21),
	.C(N_24),
	.Q(N_20)
);
NAND4 NAND4_1(
	.A(N_1),
	.B(N_22),
	.C(N_23),
	.D(N_24),
	.Q(N_8)
);
NAND4 NAND4_2(
	.A(N_21),
	.B(N_3),
	.C(N_4),
	.D(N_5),
	.Q(N_11)
);
NAND4 NAND4_3(
	.A(N_21),
	.B(N_22),
	.C(N_4),
	.D(N_5),
	.Q(N_13)
);
NAND4 NAND4_4(
	.A(N_1),
	.B(N_22),
	.C(N_23),
	.D(N_24),
	.Q(N_15)
);
NAND4 NAND4_5(
	.A(N_18),
	.B(N_15),
	.C(N_19),
	.D(N_20),
	.Q(N_17)
);
NOR4 NOR4_1(
	.A(N_21),
	.B(N_3),
	.C(N_4),
	.D(N_24),
	.Q(iLoad)
);
endmodule // TEAMD_Control_Unit


module TEAMD_Asynchronous_Serial_Interface(
	CLK,
	iD0,
	iD1,
	iD2,
	iD3,
	iD4,
	iD5,
	iD6,
	iLoad,
	nReset,
	Rx
);
input CLK;
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
	.nQ(N_1),
	.nRst(nReset),
	.Q(iD6)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(iD6),
	.nQ(N_2),
	.nRst(nReset),
	.Q(iD5)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(iD5),
	.nQ(N_3),
	.nRst(nReset),
	.Q(iD4)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(iD4),
	.nQ(N_4),
	.nRst(nReset),
	.Q(iD3)
);
DFFR DFFR_5(
	.Clk(CLK),
	.D(iD3),
	.nQ(N_5),
	.nRst(nReset),
	.Q(iD2)
);
DFFR DFFR_6(
	.Clk(CLK),
	.D(iD2),
	.nQ(N_6),
	.nRst(nReset),
	.Q(iD1)
);
DFFR DFFR_7(
	.Clk(CLK),
	.D(iD1),
	.nQ(N_7),
	.nRst(nReset),
	.Q(iD0)
);
TEAMD_Control_Unit TEAMD_Control_Unit_2(
	.CLK(CLK),
	.iLoad(iLoad),
	.nReset(nReset),
	.Rx(Rx)
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
	Q11
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

INV1 INV1_1(
	.A(A0),
	.Q(Q0)
);
TEAMD_9_bit_recogniser TEAMD_9_bit_recogniser_1(
	.A3(A3),
	.A4(A4),
	.A5(A5),
	.Q2(Q2)
);
TEAMD_Asynchronous_Serial_Interface TEAMD_Asynchronous_Serial_Interface_1(
	.CLK(A6),
	.iD0(Q3),
	.iD1(Q4),
	.iD2(Q5),
	.iD3(Q6),
	.iD4(Q7),
	.iD5(Q8),
	.iD6(Q9),
	.iLoad(Q11),
	.nReset(A8),
	.Rx(A9)
);
TEAMD_CIRCUIT1 TEAMD_RINGOSC_1(
	.A1(A1),
	.A2(A2),
	.Q1(Q1)
);
endmodule // TEAMD_DESIGN


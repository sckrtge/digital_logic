//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Oct  9 14:30:29 2023
//Host        : gexuanming running 64-bit major release  (build 9200)
//Command     : generate_target mux4x3.bd
//Design      : mux4x3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mux4x3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mux4x3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mux4x3.hwdef" *) 
module mux4x3
   (led,
    s0,
    s1,
    s14,
    s15,
    s2,
    s3);
  output [2:0]led;
  input [2:0]s0;
  input [2:0]s1;
  input [0:0]s14;
  input [0:0]s15;
  input [2:0]s2;
  input [2:0]s3;

  wire [2:0]and_gate_3_0_d;
  wire [2:0]and_gate_3_1_d;
  wire [2:0]and_gate_3_2_d;
  wire [2:0]and_gate_3_3_d;
  wire [2:0]not_gate_0_c;
  wire [2:0]not_gate_1_c;
  wire [2:0]or_gate_4_0_e;
  wire [2:0]s0_1;
  wire [2:0]s14_1;
  wire [0:0]s14_2;
  wire [2:0]s15_1;
  wire [0:0]s15_2;
  wire [2:0]s1_1;
  wire [2:0]s2_1;
  wire [2:0]s3_1;

  assign led[2:0] = or_gate_4_0_e;
  assign s0_1 = s0[2:0];
  assign s14_2 = s14[0];
  assign s15_2 = s15[0];
  assign s1_1 = s1[2:0];
  assign s2_1 = s2[2:0];
  assign s3_1 = s3[2:0];
  mux4x3_and_gate_3_0_0 and_gate_3_0
       (.a(not_gate_1_c),
        .b(s0_1),
        .c(not_gate_0_c),
        .d(and_gate_3_0_d));
  mux4x3_and_gate_3_0_1 and_gate_3_1
       (.a(not_gate_1_c),
        .b(s1_1),
        .c(s14_1),
        .d(and_gate_3_1_d));
  mux4x3_and_gate_3_0_2 and_gate_3_2
       (.a(s15_1),
        .b(s2_1),
        .c(not_gate_0_c),
        .d(and_gate_3_2_d));
  mux4x3_and_gate_3_0_3 and_gate_3_3
       (.a(s15_1),
        .b(s3_1),
        .c(s14_1),
        .d(and_gate_3_3_d));
  mux4x3_invert_1_digit_to_ma_0_0 invert_1_digit_to_ma_0
       (.a(s14_2),
        .b(s14_1));
  mux4x3_invert_1_digit_to_ma_0_1 invert_1_digit_to_ma_1
       (.a(s15_2),
        .b(s15_1));
  mux4x3_not_gate_0_0 not_gate_0
       (.a(s15_1),
        .c(not_gate_1_c));
  mux4x3_not_gate_0_1 not_gate_1
       (.a(s14_1),
        .c(not_gate_0_c));
  mux4x3_or_gate_4_0_0 or_gate_4_0
       (.a(and_gate_3_0_d),
        .b(and_gate_3_1_d),
        .c(and_gate_3_2_d),
        .d(and_gate_3_3_d),
        .e(or_gate_4_0_e));
endmodule

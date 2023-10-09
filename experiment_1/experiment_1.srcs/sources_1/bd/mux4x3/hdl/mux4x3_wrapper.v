//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Oct  9 14:30:29 2023
//Host        : gexuanming running 64-bit major release  (build 9200)
//Command     : generate_target mux4x3_wrapper.bd
//Design      : mux4x3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux4x3_wrapper
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

  wire [2:0]led;
  wire [2:0]s0;
  wire [2:0]s1;
  wire [0:0]s14;
  wire [0:0]s15;
  wire [2:0]s2;
  wire [2:0]s3;

  mux4x3 mux4x3_i
       (.led(led),
        .s0(s0),
        .s1(s1),
        .s14(s14),
        .s15(s15),
        .s2(s2),
        .s3(s3));
endmodule

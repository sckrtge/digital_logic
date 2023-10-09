`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 08:45:15
// Design Name: 
// Module Name: mux4x3_verilog
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4x3_verilog(
        input [2:0] s0,
        input [2:0] s1,
        input [2:0] s2,
        input [2:0] s3,
        input [0:0] s14,
        input [0:0] s15,
        output [2:0] led
    );
    wire [2:0] s4;
    wire [2:0] s5;
    assign s4[2] = s14[0];
    assign s4[1] = s14[0];
    assign s4[0] = s14[0];
    assign s5[2] = s15[0];
    assign s5[1] = s15[0];
    assign s5[0] = s15[0];
    assign led = (~s5&~s4&s0)|(~s5&s4&s1)|(s5&~s4&s2)|(s5&s4&s3);
endmodule

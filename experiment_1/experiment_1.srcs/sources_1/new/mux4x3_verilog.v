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
        input [2:0] s14,
        input [2:0] s15,
        output [2:0] led
    );
    assign led = (~s15&~s14&s0)|(~s15&s14&s1)|(s15&~s14&s2)|(s15&s14&s3);
endmodule

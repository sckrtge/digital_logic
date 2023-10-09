`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 09:06:47
// Design Name: 
// Module Name: mux4x3_sim
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


module mux4x3_sim(

    );
    reg [2:0] s0 = 000;
    reg [2:0] s1 = 111;
    reg [2:0] s2 = 010;
    reg [2:0] s3 = 110;
    reg [2:0] s14 = 000;
    reg [2:0] s15 = 000;
    wire [2:0] led;
    
    mux4x3_verilog u(.s0(s0), .s1(s1), .s2(s2), .s3(s3), .s14(s14), .s15(s15), .led(led));
    
    initial begin
    #100 s14 = 111;
    #100 s15 = 111;
    #100 s14 = 000;
endmodule

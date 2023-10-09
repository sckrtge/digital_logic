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
    reg [2:0] s0 = 3'b000;
    reg [2:0] s1 = 3'b111;
    reg [2:0] s2 = 3'b010;
    reg [2:0] s3 = 3'b110;
    reg [2:0] s14 = 3'b000;
    reg [2:0] s15 = 3'b000;
    wire [2:0] led;
    
    mux4x3_verilog u(.s0(s0), .s1(s1), .s2(s2), .s3(s3), .s14(s14), .s15(s15), .led(led));
    
    initial begin
    #100 s0 = 3'b001;
    #100 s14 = 3'b111;
    #100 s1 = 3'b101;
    #100 s15 = 3'b111;
    #100 s3 = 3'b011;
    #100 s14 = 3'b000;
    #100 s2 = 3'b100;
    end
endmodule

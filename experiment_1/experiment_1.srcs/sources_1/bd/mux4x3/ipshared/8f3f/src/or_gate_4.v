`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 09:51:24
// Design Name: 
// Module Name: or_gate_4
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


module or_gate_4 #(parameter WIDTH=3)(
    input [(WIDTH-1):0] a,
    input [(WIDTH-1):0] b,
    input [(WIDTH-1):0] c,
    input [(WIDTH-1):0] d,
    output [(WIDTH-1):0] e
    );
    assign e = a | b | c | d; //or_gate
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 12:38:29
// Design Name: 
// Module Name: invert_1_digit_to_many
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


module invert_1_digit_to_many (
       input [0:0] a,
       output reg [2:0] b
    );
    always @(*) begin
    if (a == 1) begin
        b = 111;
    end 
    else begin
        b = 000;
    end
end
endmodule

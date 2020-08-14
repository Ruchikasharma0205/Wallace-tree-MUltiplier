`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2019 14:24:39
// Design Name: 
// Module Name: fulladd
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


module fulladd(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
    assign #2 sum=a^b^cin;
    assign #5 carry=(a&b)|(a&cin)|(b&cin);
endmodule

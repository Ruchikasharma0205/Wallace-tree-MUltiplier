`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 23:49:03
// Design Name: 
// Module Name: adder64
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


module adder64(
    input [63:0] x,
    input [63:0] y,
    output [63:0] z
    );
    wire [63:0] cin;
    wire [64:0] carry;
    halfadder H(x[0],y[0],z[0],carry[0]);
    genvar i;
    generate for(i=0;i<63;i=i+1)
    begin 
    fulladd f(x[1+i],y[1+i],carry[0+i],z[1+i],carry[1+i]);
    end
    endgenerate
endmodule

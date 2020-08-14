`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2019 23:50:50
// Design Name: 
// Module Name: testbench
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


module testbench;
reg[31:0] a,b;
wire[63:0] z;
wallace i1(a,b,z);
initial begin
a=145556;
b=1200000;

end
always 
begin
#100 assign a=a+90217771;
#50 assign b=b+7455000;
 $display("%b +%b =%b",a,b,z);
end


endmodule


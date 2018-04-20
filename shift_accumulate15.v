`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 26.02.2018 19:01:38
// Design Name:
// Module Name: adder
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

module shift_accumulate15(
input [31:0] x,
input [31:0] y,
input [31:0] z,
input [31:0] tan,
input clk,
output reg [31:0] x_out,
output reg [31:0] y_out,
output reg [31:0] z_out,
    );
    always @(posedge clk)
       begin
           if(z>0)
           begin
              x_out<=x-(y>>15);
              y_out<=y+(x>>15);
              z<=z-tan;
           end
           else
           begin
               x_out<=x+(y>>15);
               y_out<=y-(x>>15);
               z<=z+tan;
           end
       end
endmodule

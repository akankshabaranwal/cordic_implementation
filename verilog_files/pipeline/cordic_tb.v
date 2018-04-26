`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 19.01.2018 23:16:39
// Design Name:
// Module Name: fsm_tb
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

  module pipelined_tb;
    reg clk;
    reg [31:0] x0;
    reg [31:0] y0;
    reg [31:0] z0;
    wire [31:0] x;
    wire [31:0] y;

   cordic uut(
    .clk(clk),
    .x0(x0),
    .y0(y0),
    .z0(z0),
    .x(x),
    .y(y)
    );

    initial
    begin
      clk <= 0;
      x0<=32'd65536;
      y0<=32'd0;
      z0<=32'd102943;
    end

    always
       begin
       #5  clk =  ! clk;
        $display(y);
       end

 endmodule

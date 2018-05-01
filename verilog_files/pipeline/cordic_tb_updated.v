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

  module cordic_tb_updated (input ready,input cl,output reg valid,output reg clk_test);
    
    reg [31:0] x0;
    reg [31:0] y0;
    reg [31:0] z0;
    wire [31:0] x;
    wire [31:0] y;

   cordic_updated uut(
    .clk(cl),
    .x0(x0),
    .y0(y0),
    .z0(z0),
    .X(x),
    .Y(y)
    );

    initial
    begin
      x0<=32'd0;
      y0<=32'd0;
      z0<=32'd0;
      valid<=0;
    end

    always @(posedge ready)
       begin
         x0<=32'd65536;
         y0<=32'd0;
         z0<=32'd102943;
       end
    always 
        begin
        clk_test<=cl;
        end
    always @(posedge cl)
        begin            
            if((x==32'd0)&&(y==32'd107923))
                begin
                    valid<=1;
                end
             else
                begin
                    valid<=0;
                end
        end


 endmodule

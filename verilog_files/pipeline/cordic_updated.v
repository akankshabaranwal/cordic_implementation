`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 14.01.2018 22:45:55
// Design Name:
// Module Name: asynchfifo
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
module cordic(
input wire [31:0] x0,
input wire [31:0] y0,
input wire [31:0] z0,
input wire clk,
output reg [31:0] x,
output reg [31:0] y
);

	reg [31:0] tanarray [0:15];
	parameter i0=0;
	parameter i1=1;
	parameter i2=2;
	parameter i3=3;
	parameter i4=4;
	parameter i5=5;
	parameter i6=6;
	parameter i7=7;
	parameter i8=8;
	parameter i9=9;
	parameter i10=10;
	parameter i11=11;
	parameter i12=12;
	parameter i13=13;
	parameter i14=14;
	parameter i15=15;

	initial begin
		tanarray[0]<=32'd804;
		tanarray[1]<=32'd474;
		tanarray[2]<=32'd250;
		tanarray[3]<=32'd127;
		tanarray[4]<=32'd63;
		tanarray[5]<=32'd31;
		tanarray[6]<=32'd15;
		tanarray[7]<=32'd7;
		tanarray[8]<=32'd3;
		tanarray[9]<=32'd1;
		tanarray[10]<=32'd0;
		tanarray[11]<=32'd0;
		tanarray[12]<=32'd0;
		tanarray[13]<=32'd0;
		tanarray[14]<=32'd0;
		tanarray[15]<=32'd0;
	end

	  shift_accumulate shift_accumulate0(.x(x0),.y(y0),.z(z0),.clk(clk),.i(i0),.x_out(x1),.y_out(y1),.z_out(z1));
	  shift_accumulate shift_accumulate1(.x(x1),.y(y1),.z(z1),.clk(clk),.i(i1),.x_out(x2),.y_out(y2),.z_out(z2));
	  shift_accumulate shift_accumulate2(.x(x2),.y(y2),.z(z2),.clk(clk),.i(i2),.x_out(x3),.y_out(y3),.z_out(z3));
	  shift_accumulate shift_accumulate3(.x(x3),.y(y3),.z(z3),.clk(clk),.i(i3),.x_out(x4),.y_out(y4),.z_out(z4));
	  shift_accumulate shift_accumulate4(.x(x4),.y(y4),.z(z4),.clk(clk),.i(i4),.x_out(x5),.y_out(y5),.z_out(z5));
	  shift_accumulate shift_accumulate5(.x(x5),.y(y5),.z(z5),.clk(clk),.i(i5),.x_out(x6),.y_out(y6),.z_out(z6));
	  shift_accumulate shift_accumulate6(.x(x6),.y(y6),.z(z6),.clk(clk),.i(i6),.x_out(x7),.y_out(y7),.z_out(z7));
	  shift_accumulate shift_accumulate7(.x(x7),.y(y7),.z(z7),.clk(clk),.i(i7),.x_out(x8),.y_out(y8),.z_out(z8));
	  shift_accumulate shift_accumulate8(.x(x8),.y(y8),.z(z8),.clk(clk),.i(i8),.x_out(x9),.y_out(y9),.z_out(z9));
	  shift_accumulate shift_accumulate9(.x(x9),.y(y9),.z(z9),.clk(clk),.i(i9),.x_out(x10),.y_out(y10),.z_out(z10));
	  shift_accumulate shift_accumulate10(.x(x10),.y(y10),.z(z10),.clk(clk),.i(i10),.x_out(x11),.y_out(y11),.z_out(z11));
	  shift_accumulate shift_accumulate11(.x(x11),.y(y11),.z(z11),.clk(clk),.i(i11),.x_out(x12),.y_out(y12),.z_out(z12));
	  shift_accumulate shift_accumulate12(.x(x12),.y(y12),.z(z12),.clk(clk),.i(i12),.x_out(x13),.y_out(y13),.z_out(z13));
	  shift_accumulate shift_accumulate13(.x(x13),.y(y13),.z(z13),.clk(clk),.i(i13),.x_out(x14),.y_out(y14),.z_out(z14));
	  shift_accumulate shift_accumulate14(.x(x14),.y(y14),.z(z14),.clk(clk),.i(i14),.x_out(x15),.y_out(y15),.z_out(z15));
	  shift_accumulate shift_accumulate15(.x(x15),.y(y15),.z(z15),.clk(clk),.i(i15),.x_out(x16),.y_out(y16),.z_out(z16));

	always@(posedge clk)
	  begin
	    y<=y16;
	    x<=x16;
	  end

endmodule

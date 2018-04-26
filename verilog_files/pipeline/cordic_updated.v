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
module cordic_update(
input wire [31:0] x0,
input wire [31:0] y0,
input wire [31:0] z0,
input wire clk,
output reg [31:0] x,
output reg [31:0] y
);

	reg [31:0] tanarray [0:15];
	wire [31:0] x [0:15];
	wire [31:0] y [0:15];
	wire [31:0] z [0:15];
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

	shift_accumulate shift_accumulate0(.x(x0),.y(y0),.z(z0),.clk(clk),.i(i0),.x_out(x[1]),.y_out(y[1]),.z_out(z[1]),.tan(tanarray[0]));
	shift_accumulate shift_accumulate1(.x(x[1]),.y(y[1]),.z(z[1]),.clk(clk),.i(i1),.x_out(x[2]),.y_out(y[2]),.z_out(z[2]),.tan(tanarray[1]));
	shift_accumulate shift_accumulate2(.x(x[2]),.y(y[2]),.z(z[2]),.clk(clk),.i(i2),.x_out(x[3]),.y_out(y[3]),.z_out(z[3]),.tan(tanarray[2]));
	shift_accumulate shift_accumulate3(.x(x[3]),.y(y[3]),.z(z[3]),.clk(clk),.i(i3),.x_out(x[4]),.y_out(y[4]),.z_out(z[4]),.tan(tanarray[3]));
	shift_accumulate shift_accumulate4(.x(x[4]),.y(y[4]),.z(z[4]),.clk(clk),.i(i4),.x_out(x[5]),.y_out(y[5]),.z_out(z[5]),.tan(tanarray[4]));
	shift_accumulate shift_accumulate5(.x(x[5]),.y(y[5]),.z(z[5]),.clk(clk),.i(i5),.x_out(x[6]),.y_out(y[6]),.z_out(z[6]),.tan(tanarray[5]));
	shift_accumulate shift_accumulate6(.x(x[6]),.y(y[6]),.z(z[6]),.clk(clk),.i(i6),.x_out(x[7]),.y_out(y[7]),.z_out(z[7]),.tan(tanarray[6]));
	shift_accumulate shift_accumulate7(.x(x[7]),.y(y[7]),.z(z[7]),.clk(clk),.i(i7),.x_out(x[8]),.y_out(y[8]),.z_out(z[8]),.tan(tanarray[7]));
	shift_accumulate shift_accumulate8(.x(x[8]),.y(y[8]),.z(z[8]),.clk(clk),.i(i8),.x_out(x[9]),.y_out(y[9]),.z_out(z[9]),.tan(tanarray[8]));
	shift_accumulate shift_accumulate9(.x(x[9]),.y(y[9]),.z(z[9]),.clk(clk),.i(i9),.x_out(x[10]),.y_out(y[10]),.z_out(z[10]),.tan(tanarray[9]));
	shift_accumulate shift_accumulate10(.x(x[10]),.y(y[10]),.z(z[10]),.clk(clk),.i(i10),.x_out(x[11]),.y_out(y[11]),.z_out(z[11]),.tan(tanarray[10]));
	shift_accumulate shift_accumulate11(.x(x[11]),.y(y[11]),.z(z[11]),.clk(clk),.i(i11),.x_out(x[12]),.y_out(y[12]),.z_out(z[12]),.tan(tanarray[11]));
	shift_accumulate shift_accumulate12(.x(x[12]),.y(y[12]),.z(z[12]),.clk(clk),.i(i12),.x_out(x[13]),.y_out(y[13]),.z_out(z[13]),.tan(tanarray[12]));
	shift_accumulate shift_accumulate13(.x(x[13]),.y(y[13]),.z(z[13]),.clk(clk),.i(i13),.x_out(x[14]),.y_out(y[14]),.z_out(z[14]),.tan(tanarray[13]));
	shift_accumulate shift_accumulate14(.x(x[14]),.y(y[14]),.z(z[14]),.clk(clk),.i(i14),.x_out(x[15]),.y_out(y[15]),.z_out(z[15]),.tan(tanarray[14]));
	shift_accumulate shift_accumulate15(.x(x[15]),.y(y[15]),.z(z[15]),.clk(clk),.i(i15),.x_out(x[16]),.y_out(y[16]),.z_out(z[16]),.tan(tanarray[15]));

	always@(posedge clk)
	  begin
	    y<=y16;
	    x<=x16;
	  end

endmodule

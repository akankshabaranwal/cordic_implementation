module test_bench();
	
	reg valid;
	reg clk;
	reg [31:0]x0;
	reg [31:0]y0;
	reg [31:0]z0;
	reg [31:0]n;
	wire [31:0]x;
	wire [31:0]y;
	wire [31:0]z;

	cordic_block cd1(valid,x0,y0,z0,n,clk,x,y,z);

	initial
		begin
			x0=32'd1000000;
			y0=32'd1000000;
			z0=32'd33;
			valid=1;
			clk=0;
			n=32'd15;
			#5
			clk=1;
			#5
			clk=0;
			valid=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
		end


endmodule
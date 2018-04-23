module cordic_block(valid,x0,y0,z0,n,clk,x,y,z);

	input [31:0]x0;
	input [31:0]y0;
	input [31:0]z0;
	input [31:0]n;
	input clk;
	input valid;

	output reg [31:0]x;
	output reg [31:0]y;
	output reg [31:0]z;

	reg [31:0]i;
	// reg flag;
	// reg d;
	// reg [31:0]x_temp;
	// reg [31:0]y_temp;
	wire [31:0]rom;

	lookup_table lu1(i,rom);

	initial
		begin
			x=32'b0;
			y=32'b0;
			z=32'b0;
			i=32'b0;
			// flag=0;
			// x_temp=32'b0;
			// y_temp=32'b0;

			// d=1; // 0 means -1 and 1 means 1 
		end

	always@(posedge clk)
		begin
			if(valid==1)
				begin
					// flag<=1;
					z<=z0;
					x<=x0;
					y<=y0;
					i<=0;
				end
			else if (i<n)
				begin
					if ($signed(z)<$signed(0))
						begin
							x<=x+(y>>i);
							y<=y-(x>>i);
							z<=z+rom;
							i<=i+1;
						end
					else
						begin
							x<=x-(y>>i);
							y<=y+(x>>i);
							z<=z-rom;
							i<=i+1;
						end

				end
		end

	// always@(negedge clk)
	// 	begin
	// 		i<=i+1;				
	// 	end




endmodule
module test_bench(input ready, input clk, output reg correct);
	
	reg [31:0]x0;
	reg [31:0]y0;
	reg [31:0]z0;
	reg [31:0]n;
	wire [31:0]x;
	wire [31:0]y;
	wire [31:0]z;

	cordic_block cd1(ready,x0,y0,z0,n,clk,x,y,z);

	initial
		begin
			x0<=32'd0;
			y0<=32'd0;
			z0<=32'd0;
			correct<=0;
			n<=32'd0;
		end

    always @(posedge ready)
        begin
            x0<=32'd65536;
            y0<=32'd0;
            z0<=32'd102943;
            n<=32'd16;
        end

    always @(posedge clk)
       begin
            if((x==32'd0)&&(y==32'd107923))
                begin
                    correct<=1;
                end
      	 
       end
       
   


endmodule
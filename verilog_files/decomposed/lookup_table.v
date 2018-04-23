module lookup_table(i,out);
	input [31:0]i;
	output reg [31:0]out;

	reg [31:0]lu[0:15];
	
	initial
		begin
			lu[0]=32'd45;
			lu[1]=32'd22;
			lu[2]=32'd11;
			lu[3]=32'd10;
			lu[4]=32'd5;
			lu[5]=32'd2;
			lu[6]=32'd1;
			lu[7]=32'd0;
			lu[8]=32'd0;
			lu[9]=32'd0;
			lu[10]=32'd0;
			lu[11]=32'd0;
			lu[12]=32'd0;
			lu[13]=32'd0;
			lu[14]=32'd0;
			lu[15]=32'd0;

			out=32'b0;
		end

	always@(i)
		begin
			out<=lu[i];
		end


endmodule
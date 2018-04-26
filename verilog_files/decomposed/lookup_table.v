module lookup_table(i,out);
	input [31:0]i;
	output reg [31:0]out;

	reg [31:0]lu[0:15];
	
	initial
		begin
			lu[0]=32'd51471;
			lu[1]=32'd30385;
			lu[2]=32'd16054;
			lu[3]=32'd8149;
			lu[4]=32'd4090;
			lu[5]=32'd2047;
			lu[6]=32'd1023;
			lu[7]=32'd511;
			lu[8]=32'd255;
			lu[9]=32'd127;
			lu[10]=32'd63;
			lu[11]=32'd31;
			lu[12]=32'd15;
			lu[13]=32'd7;
			lu[14]=32'd3;
			lu[15]=32'd1;

			out=32'b0;
		end

	always@(i)
		begin
			out<=lu[i];
		end


endmodule
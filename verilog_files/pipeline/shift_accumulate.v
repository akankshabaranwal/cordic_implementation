module shift_accumulate(
  input [31:0] x,
  input [31:0] y,
  input [31:0] z,
  input [31:0] tan,
  input clk,
  input [31:0] i,
  output reg [31:0] x_out,
  output reg [31:0] y_out,
  output reg [31:0] z_out,
      );
      always @(posedge clk)
         begin
             if(z>0)
             begin
                x_out<=x-(y>>i);
                y_out<=y+(x>>i);
                z<=z-tan;
             end
             else
             begin
                 x_out<=x+(y>>i);
                 y_out<=y-(x>>i);
                 z<=z+tan;
             end
         end
endmodule

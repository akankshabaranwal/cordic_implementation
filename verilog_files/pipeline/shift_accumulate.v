module shift_accumulate(
  input signed [31:0] x,
  input signed [31:0] y,
  input signed [31:0] z,
  input signed [31:0] tan,
  input clk,
  input [31:0] i,
  output reg signed [31:0] x_out,
  output reg signed [31:0] y_out,
  output reg signed [31:0] z_out
      );

      always @(posedge clk)
         begin
             if($signed(z)>$signed(0))
               begin
                  x_out<=x-($signed(y)>>>i);
                  y_out<=y+($signed(x)>>>i);
                  z_out<=z-tan;
             end
             else
               begin
                   x_out<=x+($signed(y)>>>i);
                   y_out<=y-($signed(x)>>>i);
                   z_out<=z+tan;
               end
         end

endmodule

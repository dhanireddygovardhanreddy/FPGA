module andtest;
reg a;
reg b;
wire c;
// instantiate the design block
andgate  t1(c, a, b);
initial
begin
 #50 a =1'b0; b=1'b0;
 #50 a =1'b0; b =1'b1;
 #50 a =1'b1; b =1'b0;
 #50 a =1'b1; b =1'b1;




end
endmodule


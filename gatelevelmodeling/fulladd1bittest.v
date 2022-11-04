// Define the fulladdersinglebittest(top level module)
module fulladdonebitbittest;
// Set up variables
reg A, B;
reg C_IN;
wire SUM;
wire C_OUT;
// Instantiate the 4-bit full adder. call it FA1_4
fulladd FA1(SUM, C_OUT, A, B, C_IN);
// Set up the monitoring for the signal values
initial
begin
$monitor($time," A= %b, B=%b, C_IN= %b, --- C_OUT= %b, SUM= %b\n",A, B, C_IN, C_OUT, SUM);
end
// Stimulate inputs
initial
begin
#10 A = 1'b0; B = 1'b0; C_IN = 1'b0;
#10 A = 1'b0; B = 1'b1;
#100 A = 1'b1; B = 4'd0;
#100 A = 1'b1; B = 4'b1; C_IN = 1'b0;

end
endmodule
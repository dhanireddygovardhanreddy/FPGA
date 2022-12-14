// Define the fulladderfourbittest(top level module)
module fulladdfourtest;
// Set up variables
reg [3:0] A, B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;
// Instantiate the 4-bit full adder. call it FA1_4
fulladd4 FA1_4(SUM, C_OUT, A, B, C_IN);
// Set up the monitoring for the signal values
initial
begin
$monitor($time," A= %b, B=%b, C_IN= %b, --- C_OUT= %b, SUM= %b\n",A, B, C_IN, C_OUT, SUM);
end
// Stimulate inputs
initial
begin
#10 A = 4'd0; B = 4'd0; C_IN = 1'b0;
#10 A = 4'd1; B = 4'd2;
#50 A = 4'd2; B = 4'd3;
#50 A = 4'd4; B = 4'd5;
#50 A = 4'd6; B = 4'd7;

end
endmodule
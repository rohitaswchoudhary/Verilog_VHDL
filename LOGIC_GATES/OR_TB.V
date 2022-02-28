`include "OR.V"
module OR_2_behavioral_tb;
reg A, B;
wire Y;
OR_2_behavioral Indtance0 (Y, A, B);
initial begin
    A = 0; B = 0;
 #10 A = 0; B = 1;
 #10 A = 1; B = 0;
 #10 A = 1; B = 1;  
 #10 ;                               
end
initial begin
    $monitor ("%t | A = %d| B = %d| Y = %d", $time, A, B, Y);
    $dumpfile("OR.vcd");
    $dumpvars();
end
endmodule
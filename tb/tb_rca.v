`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2025 16:59:24
// Design Name: 
// Module Name: tb_rca
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_rca;
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire cout;
ripple_carry_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
    $monitor("Time=%0t A=%b B=%b Cin=%b | Sum=%b Cout=%b",$time,a,b,cin,sum,cout);
    a=8'b00000001; b=8'b00000001;cin=0; #10;
    a=8'b00001111; b=8'b00000001;cin=0; #10;
    a=8'b11111111; b=8'b00000001;cin=0; #10;
    a=8'b10101010; b=8'b01010101;cin=1; #10;
    $finish;
 end   

endmodule

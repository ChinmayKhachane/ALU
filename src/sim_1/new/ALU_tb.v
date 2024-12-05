`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 07:06:12 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

reg [7:0] A,B;
reg [3:0] Sel;
wire [7:0] ALU_out;
wire Carryout;

ALU uut(
.A(A),
.B(B),
.Sel(Sel),
.ALU_out(ALU_out),
.Carryout(Carryout)
);

initial begin
    A = 8'b1001001;
    B = 8'b1101000;
    

    for(integer i = 0; i < 16; i = i +1)begin
        Sel = i[3:0];
        #10;
        $display("A : %b , B : %b , Sel : %b , Output : %b , Carryout : %b", A, B, Sel, ALU_out, Carryout);
    end
       
    

 end
 


endmodule

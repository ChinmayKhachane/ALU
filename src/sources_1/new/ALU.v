`timescale 1ns / 1ps



module ALU(

input [7:0] A,B,
input [3:0] Sel,
output reg [7:0] ALU_out,
output Carryout


    );
    
reg [8:0] temp;

always @(*) begin
    temp = A + B;
 end
 
 assign Carryout = temp[8];
 
 always @(*) begin
 
 case(Sel)
    4'b0000:
        ALU_out = A+B;
    4'b0001:
        ALU_out = A-B;
    4'b0010:
        ALU_out = A*B;
    4'b0011:
        ALU_out = A/B;
    4'b0100:
        ALU_out = A<<1;
    4'b0101:
        ALU_out = A>>1;
    4'b0110:
        ALU_out = {A[6:0], A[7]};
    4'b0111:
        ALU_out = {A[0], A[7:1]};
    4'b1000:
        ALU_out = A & B;
    4'b1001:
        ALU_out = A | B;
    4'b1010:
        ALU_out = A ^ B;
    4'b1011:
        ALU_out = ~(A | B);
    4'b1100:
        ALU_out = ~(A & B);
    4'b1101:
        ALU_out = ~(A ^ B);
    4'b1110:
        ALU_out = (A > B)? 8'b1 : 8'b0;
    4'b1111:
        ALU_out = (A == B)? 8'b1 : 8'b0;
    default:
        ALU_out = A + B;
        
    endcase
 
 end


    
endmodule

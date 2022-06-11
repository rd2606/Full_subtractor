`timescale 1ns / 1ps

module full_subtractor(a1,b1,c1,diff_out,borrow_out);
input a1,b1,c1;
output diff_out,borrow_out;
wire [2:0] t;
 
Half_subtractor HS1(.a(a1),.b(b1),.diff(t[0]),.borrow(t[1]));
Half_subtractor HS2(.a(t[0]),.b(c1),.diff(diff_out),.borrow(t[2]));
or or1(borrow_out,t[1],t[2]);
endmodule

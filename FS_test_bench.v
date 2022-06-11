`timescale 1ns / 1ps

module FS_test_bench();
reg x,y,z;
//reg x,y;
wire diff_out,borrow_out;
//wire diff,borrow;
full_subtractor FS(x,y,z,diff_out,borrow_out);
//Half_subtractor HS1(x,y,diff,borrow);

integer i;
initial
begin
for(i=0;i<8;i=i+1)
begin
{x,y,z}=i;
#10;
end
end

initial
$monitor($time,"input x=%b,y=%b,z=%b,output diff_out=%b,borrow_out=%b",x,y,z,diff_out,borrow_out);
//$monitor($time,"input x=%b,y=%b,output diff=%b,borrow=%b",x,y,diff,borrow);

initial
#40 $finish;

endmodule

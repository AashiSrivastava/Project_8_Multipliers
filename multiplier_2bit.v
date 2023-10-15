//Developed by: Aashi Srivastava
// TITLE:2-bit multiplier
// Date: 15.10.23, 09.53 IST
module multiplier_2bit (in1,in2,p);
input [1:0] in1,in2;
output [3:0] p ;
wire wire1,wire2,wire3,wire4;

and a1 (p[0], in1[0], in2[0]);
and a2 (wire1, in1[1],in2[0]);
and a3(wire2, in1[0], in2[1]);
and a4(wire3, in1[1], in2[1]);
half_adder h1 (p[1], wire4,wire1,wire2);
half_adder h2(p[2],p[3],wire3,wire4);
endmodule

module half_adder (
    sum,carry,in1,in2
);
    input in1,in2;
    output sum,carry;
    assign sum= in1^in2;
    assign carry = in1&in2;    
endmodule
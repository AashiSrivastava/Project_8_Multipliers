//Developed by: Aashi Srivastava
// TITLE:3-bit multiplier
// Date: 15.10.23, 09.53 IST
module multiplier_3bit (
    in1,in2,p
);
    input [2:0] in1,in2;
    output [5:0] p;
    wire wire1,wire2,wire3,wire4,wire5,wire6,wire7,wire8,wire9,wirea,wireb,wirec,wired,wiree,wiref,wireg;

    and a1(p[0],in1[0],in2[0]);
    and a2(wire1, in1[1], in2[0]);
    and a3(wire2,in1[2],in2[0]);
    and a4(wire3,in1[0],in2[1]);
    and a5(wire4,in1[1],in2[1]);
    and a6(wire5,in1[2],in2[1]);
    and a7(wire6,in1[0],in2[2]);
    and a8(wire7,in1[1],in2[2]);
    and a9(wire8,in1[2],in2[2]);

    half_adder h1(p[1], wirea, wire1, wire3);
    half_adder h2(wireb, wirec, wire2, wire4);
    full_adder f1(p[2], wired, wireb ,wire6, wirea);
    full_adder f2(wiree, wiref, wireb, wire6, wirea);
    half_adder h3(p[3], wireg, wired, wiree);
    full_adder f3(p[4],p[5],wire8,wiref,wireg);

endmodule

module half_adder (
    sum,carry,in1,in2
);
    input in1,in2;
    output sum,carry;
    assign sum= in1^in2;
    assign carry = in1&in2;    
endmodule


module full_adder (
    sum,carry,in1,in2,carry_in
);
    input in1,in2, carry_in;
    output sum,carry;
    assign sum= in1^in2^carry_in;
    assign carry = in1&in2 | in2&carry_in | carry_in&in1;    
endmodule
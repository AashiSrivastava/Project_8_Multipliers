//Developed by: Aashi Srivastava
// TITLE:3-bit multiplier test bench
// Date: 15.10.23, 09.53 IST
module multiplier_3bit_tb (

);
    reg [2:0] in1,in2;
    wire [5:0] p;

    multiplier_3bit p1(in1,in2,p);

    initial begin
        $dumpfile("multiplier_3bit.vcd");
        $dumpvars(0,multiplier_3bit_tb);
        $monitor($time, "in1=%b in2=%b p=%b", in1,in2,p);
        in1=3'b111; in2=3'b010;
        #50 $finish();
    end
    
endmodule
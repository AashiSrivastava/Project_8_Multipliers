//Developed by: Aashi Srivastava
// TITLE:2-bit multiplier test bench
// Date: 15.10.23, 09.53 IST
module multiplier_2bit_tb (

);
    reg [1:0] in1,in2;
    wire [3:0] p;

    multiplier_2bit p1(in1,in2,p);

    initial begin
        $dumpfile("multiplier_2bit.vcd");
        $dumpvars(0,multiplier_2bit_tb);
        $monitor($time, "in1=%b in2=%b p=%b", in1,in2,p);
        in1=2'b11; in2=2'b10;
        #50 $finish();
    end
    
endmodule
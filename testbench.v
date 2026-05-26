module testbench;
reg [1:0] a;
reg [1:0]b;
reg [1:0]sel;
reg [1:0]c;
reg [1:0]d;
wire [1:0]y;
mux uut(.a(a),.b(b),.c(c),.d(d),.sel(sel),.y(y));
initial begin 
    $dumpfile("waveform.vcd");
    $dumpvars(0,testbench);
    $monitor("time=%t a=%b b=%b c=%b d=%b sel=%b y=%b",$time,a,b,c,d,sel,y);
    //samples
    a=2'b00;b=2'b01;c=2'b10;d=2'b11;
    sel=2'b00;
    #10;
    a=00;b=01;c=10;d=11;
    sel=2'b11;
    #10;
    a=00;b=01;c=10;d=11;
    sel=2'b01;
    #10;
    a=00;b=01;c=10;d=11;
    sel=2'b10;
    #10;
    $finish;
end 
endmodule
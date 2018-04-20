`timescale 1ns / 1ps
module FIFO_tb;
reg rst, clk, enable, rnw;
reg [3:0] in;
wire empty, full;
wire [3:0] out;
integer i;
FIFO DUT (.clk(clk), .rst(rst), .rnw(rnw), .enable(enable), .in(in), .out(out), .full(full), .empty(empty));
initial 
    begin
    rst = 0;
    clk = 0;
    enable = 0;
    rnw = 0;
    in = 0;
    #100;
    rst = 1;#10;
    clk = 1;#10;
    clk = 0;#10;
    rst = 0;#10;
    enable = 1;#10;
    for(i = 0; i < 8; i = i + 1) begin
    if(i == 0) 
        begin
            if(empty != 1) 
                begin
                $display("Partially Empty.");
                $stop;
            end
        end
        else if(empty == 1 || full == 1) 
            begin
                $display("Wrong");
                $stop;
            end
        in = i;
        rnw = 1;#10;
        clk = 1;#10;
        clk = 0;#10;
        rnw = 0;
    end
    rnw = 0;
    for(i = 0; i < 8; i = i + 1)
    begin
    if(i == 0) 
        begin
            if(full != 1) 
                begin
                    $display("Partially Full.");
                    $stop;
                end
            end
            else if(empty == 1 || full == 1) 
                begin
                    $display("Wrong2");
                    $stop;
                end
                #10;
                clk = 1;#10;
                clk = 0;#10;
            end
            $display("Success");
        end
endmodule

`timescale 1ns / 1ps
module top_level(input clk100MHz, rst, button, wnr, en, input[3:0]a, output[3:0]LEDOUT, aled, output emptyLED, fullLED);
    wire[3:0]fifoOut;
    wire isEmpty, isFull;
    wire clk_5kHz, useless, debounceClk;


    clk_gen CLK(clk100MHz, rst, useless, clk_5kHz);
    debounce db(clk_5kHz, button, debounceClk);

    FIFO ay(debounceClk, rst, wnr, en, a, fifoOut, isFull, isEmpty);
    assign emptyLED = isEmpty;      
    assign fullLED = isFull;
    assign aled = a;                
    assign LEDOUT = fifoOut;
endmodule
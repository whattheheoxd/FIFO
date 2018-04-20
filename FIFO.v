`timescale 1ns / 1ps
module FIFO(
input clk, rst, rnw, enable, 
input [3:0] in, 
output reg [3:0] out, 
output reg full, empty);

reg [3:0] read, write;
reg[3:0] mem [7:0]; // memoryused by the FIFO
always@ (posedge clk)
    begin
        if(rst)
            begin
                read = 0; 
                write = 0; 
                out = 0; 
            end
        else if(!enable)
            begin
                out = 4'bz; 
            end
        else if(!rnw && !empty) 
            begin
                out = mem[read[2:0]]; 
                read = read + 1; 
            end
        else if(rnw && !full)
            begin
                mem[write[2:0]]= in; 
                write = write + 1; 
            end
        else  
            begin
                out = 4'bz; 
            end
    end
always@ (read, write)
    begin
        if(read == write)
            begin
                empty = 1; 
                full = 0; 
            end
        else if(read[2:0] == write[2:0])
            begin
                empty = 0; 
                full = 1; 
            end
        else
            begin
                empty = 0; 
                full = 0; 
            end
    end
endmodule


`timescale 1ns / 1ps
module tb_my_pe_controller #(
    parameter L_RAM_SIZE = 4,
    parameter BITWIDTH = 32
)();
    reg [BITWIDTH-1:0] gb[0:2**(L_RAM_SIZE+1)-1];
    reg [BITWIDTH-1:0] rddata;
    wire [BITWIDTH-1:0] out;
    wire [L_RAM_SIZE:0] rdaddr;
    wire done;
    wire [1:0] state;           // TO BE REMOVED
    wire [BITWIDTH-1:0] ain;    // TO BE REMOVED
    wire [BITWIDTH-1:0] bin;    // TO BE REMOVED
    wire [BITWIDTH-1:0] dout;   // TO BE REMOVED
    
    reg start, clk, reset;
    integer i;
    
    initial begin
        for(i = 0; i < 2**L_RAM_SIZE; i = i+1) begin
            gb[i]                 = $urandom_range(2**30, 2**30+2**24);
            gb[2**L_RAM_SIZE + i] = $urandom_range(2**30, 2**30+2**24);
        end
    
        clk <= 0;
        start <= 0;
        reset <= 1; #20;
        
        start <= 1;
        reset <= 0; #20;
    end
    
    always #5 clk = ~clk;
    always @(rdaddr) begin
        rddata = gb[rdaddr];
    end
    
    my_pe_controller #(L_RAM_SIZE, BITWIDTH) MY_PE_CONTROLLER(
        .start(start),
        .reset(reset),
        .clk(clk),
        .rdaddr(rdaddr),
        .rddata(rddata),
        .out(out),
        .done(done),
        .state(state),  // TO BE REMOVED
        .sth1(ain),     // TO BE REMOVED
        .sth2(bin),     // TO BE REMOVED
        .sth3(dout)     // TO BE REMOVED
    );

endmodule
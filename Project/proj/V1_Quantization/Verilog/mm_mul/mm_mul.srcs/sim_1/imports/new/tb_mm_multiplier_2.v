`timescale 1ns / 1ps

module tb_mm_multiplier #(
    parameter L_RAM_SIZE = 3,
    parameter BITWIDTH = 32,
    parameter INFILE = "global_buffer_in.txt",
    parameter OUTFILE = "global_buffer_out.txt"
)();
    localparam MATRIX_SIZE = 2**(L_RAM_SIZE*2);
    localparam VECTOR_SIZE = 2**(L_RAM_SIZE);
    reg [BITWIDTH-1:0] rdgb[0:MATRIX_SIZE*2-1];
    reg [BITWIDTH-1:0] wrgb[0:MATRIX_SIZE-1];
    wire [BITWIDTH-1:0] rddata;
    wire [BITWIDTH-1:0] wrdata;
    wire [2*L_RAM_SIZE:0] addr;
    wire done, we;
    
    reg start, clk, reset;
    integer i, j;
    
    // write
    initial begin
        for(i = 0; i < VECTOR_SIZE; i = i+1) begin
            for(j = 0; j < VECTOR_SIZE; j = j+1) begin
                rdgb[j*VECTOR_SIZE + i]               = j < i;
                rdgb[MATRIX_SIZE + i*VECTOR_SIZE + j] = j < i;
            end
        end
        $writememh(INFILE, rdgb);
    end
    
    assign rddata = start ? rdgb[addr] : 0;
    
    // read
    initial begin
        $readmemh(INFILE, rdgb);
        for (i = 0; i < MATRIX_SIZE; i = i+1) wrgb[i] <= 0;
        clk <= 0;
        start <= 0; reset <= 1; 
        #10 start <= 1; reset <= 0;
    end
    
    always @(*)
        if (we) wrgb[addr] = wrdata;
    always @(posedge done) begin
        $writememh(OUTFILE, wrgb);
    end
    
    always #1 clk = ~clk;
    mm_multiplier #(L_RAM_SIZE, BITWIDTH) MM_MULTIPLIER(
        .start(start),
        .reset(reset),
        .clk(clk),
        .addr(addr),
        .rddata(rddata),
        .wrdata(wrdata),
        .we(we),
        .done(done)
    );
endmodule

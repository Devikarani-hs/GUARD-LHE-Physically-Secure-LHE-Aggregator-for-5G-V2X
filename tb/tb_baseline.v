`timescale 1ns / 1ps
module tb_baseline();
    parameter DATA_WIDTH = 54;
    reg clk, rst_n, stream_valid_in, auth_flag_in;
    reg [DATA_WIDTH-1:0] ciphertext_stream_in;
    wire [DATA_WIDTH-1:0] aggregated_coeff_out;
    wire aggregated_valid_out;

    aggregator_baseline #(.DATA_WIDTH(DATA_WIDTH)) uut (
        .clk(clk), .rst_n(rst_n), .ciphertext_stream_in(ciphertext_stream_in),
        .stream_valid_in(stream_valid_in), .auth_flag_in(auth_flag_in),
        .aggregated_coeff_out(aggregated_coeff_out), .aggregated_valid_out(aggregated_valid_out)
    );

    initial begin clk = 0; forever #1.0 clk = ~clk; end

    initial begin
        rst_n = 0; ciphertext_stream_in = 0; stream_valid_in = 0; auth_flag_in = 1;
        repeat(10) @(posedge clk); rst_n = 1; repeat(5) @(posedge clk);
        
        // Phase 1: Valid Execution (8192 cycles)
        repeat(8192) begin
            @(posedge clk); stream_valid_in = 1; auth_flag_in = 1; ciphertext_stream_in = $random;
        end
        
        // Phase 2: Invalid Execution / Early Exit (8192 cycles)
        repeat(8192) begin
            @(posedge clk); stream_valid_in = 1; auth_flag_in = 0; ciphertext_stream_in = 54'd0; 
        end
        
        @(posedge clk); stream_valid_in = 0;
        repeat(50) @(posedge clk); $stop; 
    end
endmodule

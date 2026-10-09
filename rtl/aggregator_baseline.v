`timescale 1ns / 1ps

module aggregator_baseline #(
    parameter DATA_WIDTH = 54
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire [DATA_WIDTH-1:0] ciphertext_stream_in,
    input  wire                  stream_valid_in,
    input  wire                  auth_flag_in,
    output wire [DATA_WIDTH-1:0] aggregated_coeff_out,
    output wire                  aggregated_valid_out
);
    // VULNERABILITY: If auth_flag is 0, it simply stops processing. 
    // This creates massive timing variations (control-flow leakage).
    wire process_enable = stream_valid_in & auth_flag_in;

    spa_csa_segment #(.DATA_WIDTH(DATA_WIDTH)) u_spa (
        .clk(clk),
        .rst_n(rst_n),
        .op_a(ciphertext_stream_in),
        .op_b({DATA_WIDTH{1'b0}}),
        .op_c({DATA_WIDTH{1'b0}}),
        .sum_out(aggregated_coeff_out),
        .carry_out()
    );

    assign aggregated_valid_out = process_enable;
endmodule

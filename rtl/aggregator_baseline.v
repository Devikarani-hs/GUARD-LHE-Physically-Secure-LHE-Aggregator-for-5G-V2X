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
    wire process_enable = stream_valid_in & auth_flag_in;
    wire [DATA_WIDTH-1:0] ch1_out, ch2_out;
    wire val1, val2;

    // BASELINE DUAL-CHANNEL BARRETT REDUCTION (Unprotected against Faults/TVLA)
    (* DONT_TOUCH = "yes", KEEP_HIERARCHY = "yes" *)
    modular_reduction #(.DATA_WIDTH(DATA_WIDTH)) u_barrett_ch1 (
        .clk(clk), .rst_n(rst_n), .data_valid_in(process_enable),
        .raw_sum_in({1'b0, ciphertext_stream_in}),
        .reduced_coeff_out(ch1_out), .data_valid_out(val1)
    );

    (* DONT_TOUCH = "yes", KEEP_HIERARCHY = "yes" *)
    modular_reduction #(.DATA_WIDTH(DATA_WIDTH)) u_barrett_ch2 (
        .clk(clk), .rst_n(rst_n), .data_valid_in(process_enable),
        .raw_sum_in({1'b0, ciphertext_stream_in}),
        .reduced_coeff_out(ch2_out), .data_valid_out(val2)
    );

    assign aggregated_coeff_out = ch1_out ^ ch2_out;
    assign aggregated_valid_out = val1 & val2;
endmodule

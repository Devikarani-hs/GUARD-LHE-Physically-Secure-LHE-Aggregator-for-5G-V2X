`timescale 1ns / 1ps
module aggregator_top #(
    parameter DATA_WIDTH = 54,
    parameter POLY_DEGREE = 4096,
    parameter NUM_NODES = 4
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire                  start_aggregation,
    input  wire [DATA_WIDTH-1:0] ciphertext_stream_in,
    input  wire [DATA_WIDTH-1:0] dummy_stream_in,
    input  wire                  stream_valid_in,
    input  wire                  auth_flag_in,
    output wire [11:0]           bram_read_addr,
    output wire [DATA_WIDTH-1:0] aggregated_coeff_out,
    output wire                  aggregated_valid_out,
    output wire                  aggregation_done,
    output wire                  fault_alarm_out // ARCHITECTURAL REQUIREMENT FOR DMR
);
    wire [DATA_WIDTH-1:0] handler_ct_out;
    wire                  handler_valid_out;
    wire [1:0]            ctrl_fsm_state;
    wire                  ctrl_stage_en, ctrl_bram_en;

    input_handler #(.DATA_WIDTH(DATA_WIDTH), .POLY_DEGREE(POLY_DEGREE), .Q_MODULUS(54'd18014398509481983)) u_handler (
        .clk(clk), .rst_n(rst_n), .ct_in(ciphertext_stream_in), .ct_dummy_in(dummy_stream_in),
        .ct_valid(stream_valid_in), .auth_flag(auth_flag_in), .ct_out(handler_ct_out), .out_valid(handler_valid_out)
    );

    constant_schedule_ctrl #(.POLY_DEGREE(POLY_DEGREE), .NUM_NODES(NUM_NODES)) u_ctrl (
        .clk(clk), .rst_n(rst_n), .start_aggregation(start_aggregation),
        .fsm_state(ctrl_fsm_state), .bram_read_addr(bram_read_addr),
        .bram_en(ctrl_bram_en), .stage_en(ctrl_stage_en), .aggregation_done(aggregation_done)
    );

    // DUAL MODULAR REDUNDANCY (DMR) DATAPATH
    wire [DATA_WIDTH-1:0] ch1_out, ch2_out;
    wire val1, val2;

    (* DONT_TOUCH = "yes", KEEP_HIERARCHY = "yes" *)
    modular_reduction #(.DATA_WIDTH(DATA_WIDTH)) u_barrett_ch1 (
        .clk(clk), .rst_n(rst_n), .data_valid_in(handler_valid_out),
        .raw_sum_in({1'b0, handler_ct_out}),
        .reduced_coeff_out(ch1_out), .data_valid_out(val1)
    );

    (* DONT_TOUCH = "yes", KEEP_HIERARCHY = "yes" *)
    modular_reduction #(.DATA_WIDTH(DATA_WIDTH)) u_barrett_ch2 (
        .clk(clk), .rst_n(rst_n), .data_valid_in(handler_valid_out),
        .raw_sum_in({1'b0, handler_ct_out}), 
        .reduced_coeff_out(ch2_out), .data_valid_out(val2)
    );

    // TRUE ARCHITECTURAL DMR VOTER
    // If ch1 and ch2 mismatch, raise fault alarm and zeroize the ciphertext output
    wire fault_detected = (ch1_out != ch2_out);
    
    assign fault_alarm_out      = fault_detected;
    assign aggregated_coeff_out = fault_detected ? {DATA_WIDTH{1'b0}} : ch1_out;
    assign aggregated_valid_out = (val1 & val2) & ~fault_detected;

endmodule

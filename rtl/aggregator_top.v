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
    output wire                  aggregation_done
);

    wire [DATA_WIDTH-1:0] handler_ct_out;
    wire                  handler_valid_out;
    wire [1:0]            ctrl_fsm_state;
    wire                  ctrl_stage_en;
    wire                  ctrl_bram_en;
    
    wire [DATA_WIDTH-1:0] spa_sum_out;
    wire [DATA_WIDTH-1:0] spa_carry_out;

    // 1. Schedule-Preserving Input Handler
    input_handler #(.DATA_WIDTH(DATA_WIDTH), .POLY_DEGREE(POLY_DEGREE), .Q_MODULUS(54'd18014398509481983)) u_handler (
        .clk(clk),
        .rst_n(rst_n),
        .ct_in(ciphertext_stream_in),
        .ct_dummy_in(dummy_stream_in),
        .ct_valid(stream_valid_in),
        .auth_flag(auth_flag_in),
        .ct_out(handler_ct_out),
        .out_valid(handler_valid_out)
    );

    // 2. Constant-Schedule Controller
    constant_schedule_ctrl #(
        .POLY_DEGREE(POLY_DEGREE),
        .NUM_NODES(NUM_NODES)
    ) u_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        .start_aggregation(start_aggregation),
        .fsm_state(ctrl_fsm_state),
        .bram_read_addr(bram_read_addr),
        .bram_en(ctrl_bram_en),
        .stage_en(ctrl_stage_en),
        .aggregation_done(aggregation_done)
    );

    // 3. Inherited SPA Datapath
    spa_csa_segment #(.DATA_WIDTH(DATA_WIDTH)) u_spa (
        .clk(clk),
        .rst_n(rst_n),
        .op_a(handler_ct_out),
        .op_b({DATA_WIDTH{1'b0}}), 
        .op_c({DATA_WIDTH{1'b0}}),
        .sum_out(spa_sum_out),
        .carry_out(spa_carry_out)
    );

    // ANTI-OPTIMIZATION TIE-OFF: Wire the datapath results directly to the module outputs
    // This forces Vivado to synthesize and route the entire mathematical and control logic
    assign aggregated_coeff_out = spa_sum_out ^ spa_carry_out; 
    assign aggregated_valid_out = handler_valid_out;

endmodule

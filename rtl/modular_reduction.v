`timescale 1ns / 1ps

module modular_reduction #(
    parameter DATA_WIDTH = 54
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire                  data_valid_in,
    input  wire [DATA_WIDTH:0]   raw_sum_in,
    output reg  [DATA_WIDTH-1:0] reduced_coeff_out,
    output reg                   data_valid_out
);
    // Hardcoded Modulus for LHE (e.g., 54-bit prime)
    localparam [DATA_WIDTH-1:0] Q_MOD = 54'd18014398509481983; 
    
    // Barrett Reduction pre-computed constant (mu = 2^108 / Q_MOD)
    localparam [DATA_WIDTH-1:0] MU  = 54'd18014398509481985; 

    // Pipeline Registers to force DSP48E2 mapping
    reg [DATA_WIDTH:0]   stage1_val;
    reg                  stage1_valid;
    
    reg [107:0]          stage2_mult1; // Requires 4 DSPs
    reg                  stage2_valid;

    reg [107:0]          stage3_mult2; // Requires 4 DSPs
    reg                  stage3_valid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            stage1_val <= 0; stage1_valid <= 0;
            stage2_mult1 <= 0; stage2_valid <= 0;
            stage3_mult2 <= 0; stage3_valid <= 0;
            reduced_coeff_out <= 0; data_valid_out <= 0;
        end else begin
            // Stage 1: Register Input
            stage1_val   <= raw_sum_in;
            stage1_valid <= data_valid_in;

            // Stage 2: First Barrett Multiplication (Estimate quotient)
            stage2_mult1 <= stage1_val * MU;
            stage2_valid <= stage1_valid;

            // Stage 3: Second Barrett Multiplication (Multiply quotient by Modulus)
            // We shift right by 54 bits implicitly by taking the upper half
            stage3_mult2 <= stage2_mult1[107:54] * Q_MOD;
            stage3_valid <= stage2_valid;

            // Stage 4: Subtraction (Final Reduction)
            reduced_coeff_out <= stage1_val - stage3_mult2[DATA_WIDTH-1:0];
            data_valid_out    <= stage3_valid;
        end
    end
endmodule

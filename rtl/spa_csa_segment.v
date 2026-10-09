`timescale 1ns / 1ps

module spa_csa_segment #(
    parameter DATA_WIDTH = 54
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire [DATA_WIDTH-1:0] op_a,
    input  wire [DATA_WIDTH-1:0] op_b,
    input  wire [DATA_WIDTH-1:0] op_c,
    output reg  [DATA_WIDTH-1:0] sum_out,
    output reg  [DATA_WIDTH-1:0] carry_out
);

    // Internal combinatorial signals for the Carry-Save Adder stage
    wire [DATA_WIDTH-1:0] csa_sum;
    wire [DATA_WIDTH-1:0] csa_carry;

    // Bitwise Carry-Save Addition logic
    genvar i;
    generate
        for (i = 0; i < DATA_WIDTH; i = i + 1) begin : gen_csa
            assign csa_sum[i]   = op_a[i] ^ op_b[i] ^ op_c[i];
            assign csa_carry[i] = (op_a[i] & op_b[i]) | (op_b[i] & op_c[i]) | (op_a[i] & op_c[i]);
        end
    endgenerate

    // Pipeline Glitch Isolation Registers: Physically bounds switching activity
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum_out   <= {DATA_WIDTH{1'b0}};
            carry_out <= {DATA_WIDTH{1'b0}};
        end else begin
            sum_out   <= csa_sum;
            carry_out <= {csa_carry[DATA_WIDTH-2:0], 1'b0};
        end
    end

endmodule

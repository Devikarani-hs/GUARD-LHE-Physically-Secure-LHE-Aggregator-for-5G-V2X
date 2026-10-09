`timescale 1ns / 1ps

module modular_reduction #(
    parameter DATA_WIDTH = 54,
    parameter MODULUS    = 54'd18014398509481983
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire                  data_valid_in,
    input  wire [DATA_WIDTH:0]   raw_sum_in,
    output reg  [DATA_WIDTH-1:0] reduced_coeff_out,
    output reg                   data_valid_out
);

    reg [DATA_WIDTH:0] sum_stage1;
    reg                valid_stage1;

    // Pipeline Stage 1: Register input to decouple timing closure
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum_stage1   <= {(DATA_WIDTH+1){1'b0}};
            valid_stage1 <= 1'b0;
        end else begin
            sum_stage1   <= raw_sum_in;
            valid_stage1 <= data_valid_in;
        end
    end

    // Pipeline Stage 2: Constant-time substraction for reduction modulo q
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reduced_coeff_out <= {DATA_WIDTH{1'b0}};
            data_valid_out    <= 1'b0;
        end else begin
            data_valid_out <= valid_stage1;
            if (sum_stage1 >= MODULUS) begin
                reduced_coeff_out <= sum_stage1 - MODULUS;
            end else begin
                reduced_coeff_out <= sum_stage1[DATA_WIDTH-1:0];
            end
        end
    end

endmodule

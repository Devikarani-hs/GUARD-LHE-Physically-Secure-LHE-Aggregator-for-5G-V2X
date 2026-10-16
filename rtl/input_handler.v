`timescale 1ns / 1ps

module input_handler #(
    parameter DATA_WIDTH = 54,
    parameter POLY_DEGREE = 4096,
    parameter Q_MODULUS = 54'd18014398509481983
)(
    input  wire                  clk,
    input  wire                  rst_n,
    input  wire [DATA_WIDTH-1:0] ct_in,           
    input  wire [DATA_WIDTH-1:0] ct_dummy_in,     
    input  wire                  ct_valid,        
    input  wire                  auth_flag,
    output reg  [DATA_WIDTH-1:0] ct_out,
    output reg                   out_valid
);

    reg [12:0] coeff_counter;
    
    // DMR Path A (Primary)
    reg        sticky_err_a;
    wire       coeff_oob_a = (ct_in >= Q_MODULUS);
    
    // DMR Path B (Redundant)
    reg        sticky_err_b;
    wire       coeff_oob_b = (ct_in >= Q_MODULUS);

    // FIA Detection: Mismatch between paths indicates an active fault injection
    wire fault_detected = (sticky_err_a != sticky_err_b) | (coeff_oob_a != coeff_oob_b);
    
    wire current_node_rejected = (!auth_flag) | sticky_err_a | (coeff_oob_a & ct_valid) | fault_detected;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ct_out        <= {DATA_WIDTH{1'b0}};
            out_valid     <= 1'b0;
            coeff_counter <= 13'd0;
            sticky_err_a  <= 1'b0;
            sticky_err_b  <= 1'b0;
        end else begin
            out_valid <= ct_valid;
            
            if (ct_valid) begin
                if (coeff_oob_a) sticky_err_a <= 1'b1;
                if (coeff_oob_b) sticky_err_b <= 1'b1;
                
                ct_out <= (current_node_rejected) ? ct_dummy_in : ct_in;
                
                if (coeff_counter == POLY_DEGREE - 1) begin
                    coeff_counter <= 13'd0;
                    sticky_err_a  <= 1'b0; 
                    sticky_err_b  <= 1'b0; 
                end else begin
                    coeff_counter <= coeff_counter + 1'b1;
                end
            end else begin
                ct_out <= {DATA_WIDTH{1'b0}};
            end
        end
    end
endmodule

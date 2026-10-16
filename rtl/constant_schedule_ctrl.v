`timescale 1ns / 1ps

module constant_schedule_ctrl #(
    parameter POLY_DEGREE = 4096,
    parameter NUM_NODES = 4
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_aggregation,
    output reg  [1:0]  fsm_state,
    output reg  [11:0] bram_read_addr,
    output reg         bram_en,
    output reg         stage_en,
    output reg         aggregation_done
);

    localparam IDLE      = 2'b00;
    localparam PROCESS   = 2'b01;
    localparam FINALIZE  = 2'b10;

    reg [11:0] coeff_counter;
    reg [2:0]  node_counter;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            fsm_state        <= IDLE;
            bram_read_addr   <= 12'd0;
            bram_en          <= 1'b0;
            stage_en         <= 1'b0;
            coeff_counter    <= 12'd0;
            node_counter     <= 3'd0;
            aggregation_done <= 1'b0;
        end else begin
            case (fsm_state)
                IDLE: begin
                    aggregation_done <= 1'b0;
                    bram_en          <= 1'b0;
                    stage_en         <= 1'b0;
                    if (start_aggregation) begin
                        fsm_state <= PROCESS;
                    end
                end
                PROCESS: begin
                    // Deterministic execution trace regardless of ciphertext validity
                    bram_en        <= 1'b1;
                    stage_en       <= 1'b1;
                    bram_read_addr <= coeff_counter;
                    
                    if (coeff_counter == (POLY_DEGREE - 1)) begin
                        coeff_counter <= 12'd0;
                        if (node_counter == (NUM_NODES - 1)) begin
                            fsm_state <= FINALIZE;
                        end else begin
                            node_counter <= node_counter + 1'b1;
                        end
                    end else begin
                        coeff_counter <= coeff_counter + 1'b1;
                    end
                end
                FINALIZE: begin
                    aggregation_done <= 1'b1;
                    bram_en          <= 1'b0;
                    stage_en         <= 1'b0;
                    fsm_state        <= IDLE;
                end
                default: fsm_state <= IDLE;
            endcase
        end
    end
endmodule

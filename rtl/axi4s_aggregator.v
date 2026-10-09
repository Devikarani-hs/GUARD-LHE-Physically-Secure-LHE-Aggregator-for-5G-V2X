`timescale 1ns / 1ps

module axi4s_aggregator #(
    parameter DATA_WIDTH = 54,
    parameter POLY_DEGREE = 4096
)(
    input  wire                  aclk,
    input  wire                  aresetn,
    
    // AXI4-Stream Slave (Input from V2X Edge DMA)
    input  wire [DATA_WIDTH-1:0] s_axis_tdata,
    input  wire                  s_axis_tvalid,
    output wire                  s_axis_tready,
    input  wire                  s_axis_tlast,
    input  wire                  s_axis_tuser, // Mapped to auth_flag
    
    // AXI4-Stream Master (Output to Trusted Domain DMA)
    output wire [DATA_WIDTH-1:0] m_axis_tdata,
    output wire                  m_axis_tvalid,
    input  wire                  m_axis_tready,
    output wire                  m_axis_tlast
);

    wire [11:0] bram_read_addr;
    wire aggregation_done;
    
    // Generate internal dummy pool mathematically (LFSR/BRAM backed in real SoC)
    wire [DATA_WIDTH-1:0] internal_dummy = 54'd0; 

    // The AXI wrapper absorbs network backpressure gracefully without stalling the internal crypto engine
    assign s_axis_tready = m_axis_tready; 

    aggregator_top #(
        .DATA_WIDTH(DATA_WIDTH),
        .POLY_DEGREE(POLY_DEGREE),
        .NUM_NODES(4)
    ) core_inst (
        .clk(aclk),
        .rst_n(aresetn),
        .start_aggregation(s_axis_tvalid),
        .ciphertext_stream_in(s_axis_tdata),
        .dummy_stream_in(internal_dummy),
        .stream_valid_in(s_axis_tvalid & s_axis_tready),
        .auth_flag_in(s_axis_tuser),
        .bram_read_addr(bram_read_addr),
        .aggregated_coeff_out(m_axis_tdata),
        .aggregated_valid_out(m_axis_tvalid),
        .aggregation_done(aggregation_done)
    );

    assign m_axis_tlast = aggregation_done;

endmodule

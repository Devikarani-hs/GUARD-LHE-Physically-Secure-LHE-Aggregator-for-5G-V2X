`timescale 1ns / 1ps

module tb_aggregator();
    parameter DATA_WIDTH = 54;
    parameter POLY_DEGREE = 4096;
    parameter NUM_NODES = 4;
    
    reg clk;
    reg rst_n;
    reg start_aggregation;
    reg [DATA_WIDTH-1:0] ciphertext_stream_in;
    reg [DATA_WIDTH-1:0] dummy_stream_in;
    reg stream_valid_in;
    reg auth_flag_in;
    
    wire [11:0] bram_read_addr;
    wire [DATA_WIDTH-1:0] aggregated_coeff_out;
    wire aggregated_valid_out;
    wire aggregation_done;

    integer n, i, fd;
    reg [DATA_WIDTH-1:0] hw_captured_score;

    aggregator_top uut (
        .clk(clk),
        .rst_n(rst_n),
        .start_aggregation(start_aggregation),
        .ciphertext_stream_in(ciphertext_stream_in),
        .dummy_stream_in(dummy_stream_in),
        .stream_valid_in(stream_valid_in),
        .auth_flag_in(auth_flag_in),
        .bram_read_addr(bram_read_addr),
        .aggregated_coeff_out(aggregated_coeff_out),
        .aggregated_valid_out(aggregated_valid_out),
        .aggregation_done(aggregation_done)
    );

    // 500 MHz Clock
    initial begin
        clk = 0;
        forever #1.0 clk = ~clk; 
    end
    
    initial begin
        hw_captured_score = 0;
    end

    // DYNAMIC SCORE MONITOR: Accumulate the hardware's filtered output at coefficient index 10.
    // Node 1 & 2: Valid (Outputs 1)
    // Node 3: MAC Failure (Substituted with dummy 0)
    // Node 4: OOB Attack at index 5. By index 10, the sticky error forces a dummy 0.
    always @(posedge clk) begin
        if (uut.u_handler.out_valid && uut.u_ctrl.coeff_counter == 12'd10) begin
            hw_captured_score <= hw_captured_score + uut.u_handler.ct_out;
        end
    end

    initial begin
        #100000; 
        $stop; 
    end

    initial begin
        rst_n = 0;
        start_aggregation = 0;
        ciphertext_stream_in = 0;
        dummy_stream_in = 0;
        stream_valid_in = 0;
        auth_flag_in = 1;
        
        repeat(10) @(posedge clk);
        rst_n = 1;
        repeat(5) @(posedge clk);
        
        @(posedge clk);
        start_aggregation = 1;
        @(posedge clk);
        start_aggregation = 0;
        
        for (n = 0; n < NUM_NODES; n = n + 1) begin
            for (i = 0; i < POLY_DEGREE; i = i + 1) begin
                @(posedge clk);
                stream_valid_in = 1;
                auth_flag_in = (n == 2) ? 1'b0 : 1'b1; 
                
                if (n == 3 && i == 5) begin
                    ciphertext_stream_in = 54'h3FFFFFFFFFFFFF; // OOB Injection
                end else begin
                    ciphertext_stream_in = (n == 0 || n == 1) ? 54'd1 : 54'd0;
                end
                dummy_stream_in = 54'd0;
            end
        end
        
        @(posedge clk);
        stream_valid_in = 0;
        
        repeat(50) @(posedge clk);
        
        // Write the dynamically captured score to the handoff file
        fd = $fopen("hardware_handoff.txt", "w");
        if (fd) begin
            $fdisplay(fd, "%d", hw_captured_score);
            $fclose(fd);
        end
        
        $display("[SUCCESS] Constant-time schedule completed. Score captured.");
        $stop; 
    end
endmodule

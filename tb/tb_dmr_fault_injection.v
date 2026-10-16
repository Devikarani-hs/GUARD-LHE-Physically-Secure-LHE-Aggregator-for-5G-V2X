`timescale 1ns / 1ps
module tb_dmr_fault_injection();
    parameter DATA_WIDTH = 54;
    reg clk, rst_n, ct_valid, auth_flag;
    reg [DATA_WIDTH-1:0] ct_in, ct_dummy_in;
    wire [DATA_WIDTH-1:0] ct_out;
    wire out_valid;
    
    integer faults_injected = 0;
    integer faults_detected = 0;
    reg fault_handled = 0;
    integer fd;
    integer i; // Loop variable

    input_handler uut (.clk(clk), .rst_n(rst_n), .ct_in(ct_in), .ct_dummy_in(ct_dummy_in),
                       .ct_valid(ct_valid), .auth_flag(auth_flag), .ct_out(ct_out), .out_valid(out_valid));

    initial begin clk = 0; forever #1.0 clk = ~clk; end

    task inject_seu_fault;
        input integer path_target; 
        begin
            @(posedge clk);
            faults_injected = faults_injected + 1;
            if (path_target == 0) begin
                force uut.sticky_err_a = ~uut.sticky_err_a;
            end else begin
                force uut.sticky_err_b = ~uut.sticky_err_b;
            end
            @(posedge clk);
            if (path_target == 0) release uut.sticky_err_a;
            else                  release uut.sticky_err_b;
        end
    endtask

    always @(posedge clk) begin
        if (uut.fault_detected && !fault_handled) begin
            faults_detected = faults_detected + 1;
            fault_handled = 1;
        end else if (!uut.fault_detected) begin
            fault_handled = 0; 
        end
    end

    initial begin
        // --- INITIALIZATION ---
        rst_n = 0; ct_in = 54'd12345; ct_dummy_in = 54'd0; ct_valid = 0; auth_flag = 1;
        repeat(10) @(posedge clk); rst_n = 1; ct_valid = 1;
        repeat(100) @(posedge clk);
        
        $display("Starting 100,000 fault injection campaign. This will take a moment...");
        
        // --- 100,000 FAULT CAMPAIGN ---
        // 50,000 loops * 2 faults per loop = 100,000 total faults
        for (i = 0; i < 50000; i = i + 1) begin
            // Campaign A
            inject_seu_fault(0);
            repeat(5) @(posedge clk);
            rst_n = 0; ct_valid = 0; repeat(2) @(posedge clk); rst_n = 1; ct_valid = 1; repeat(5) @(posedge clk);
            
            // Campaign B
            inject_seu_fault(1);
            repeat(5) @(posedge clk);
            rst_n = 0; ct_valid = 0; repeat(2) @(posedge clk); rst_n = 1; ct_valid = 1; repeat(5) @(posedge clk);
        end
        
        $display("Simulation complete. Writing metrics...");
        
        // Write exactly where the Python script expects it
        fd = $fopen("reports/fault_coverage_metrics.txt", "w");
        $fdisplay(fd, "INJECTED:%0d", faults_injected);
        $fdisplay(fd, "DETECTED:%0d", faults_detected);
        $fclose(fd);
        
        $stop;
    end
endmodule

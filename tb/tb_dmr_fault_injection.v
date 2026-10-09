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
                $display("[T=%0t] FAULT INJECTED: Path A", $time);
            end else begin
                force uut.sticky_err_b = ~uut.sticky_err_b;
                $display("[T=%0t] FAULT INJECTED: Path B", $time);
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
            $display("[T=%0t] HARDWARE DEFENSE TRIGGERED.", $time);
        end else if (!uut.fault_detected) begin
            fault_handled = 0; 
        end
    end

    initial begin
        // --- INITIALIZATION ---
        rst_n = 0; ct_in = 54'd12345; ct_dummy_in = 54'd0; ct_valid = 0; auth_flag = 1;
        repeat(10) @(posedge clk); rst_n = 1; ct_valid = 1;
        repeat(100) @(posedge clk);
        
        // --- CAMPAIGN 1: Attack Primary Path A ---
        inject_seu_fault(0);
        repeat(50) @(posedge clk);
        
        // --- SYSTEM RESET (Isolating the campaigns) ---
        rst_n = 0; ct_valid = 0;
        repeat(10) @(posedge clk);
        rst_n = 1; ct_valid = 1;
        repeat(100) @(posedge clk);
        
        // --- CAMPAIGN 2: Attack Redundant Path B ---
        inject_seu_fault(1);
        repeat(50) @(posedge clk);
        
        fd = $fopen("fault_metrics.txt", "w");
        $fdisplay(fd, "INJECTED:%0d", faults_injected);
        $fdisplay(fd, "DETECTED:%0d", faults_detected);
        $fclose(fd);
        $stop;
    end
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Sep 28 15:56:32 2026
// Host        : ihs08 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /media/ihs08/ddda4ade-cc4b-4ec0-850c-a754a93b6a2c/CHES-2026/vivado_project/CHES_Aggregator.sim/sim_1/impl/func/xsim/tb_aggregator_func_impl.v
// Design      : aggregator_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_WIDTH = "54" *) (* ECO_CHECKSUM = "ff9b846" *) (* NUM_NODES = "4" *) 
(* POLY_DEGREE = "4096" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module aggregator_top
   (clk,
    rst_n,
    start_aggregation,
    ciphertext_stream_in,
    dummy_stream_in,
    stream_valid_in,
    auth_flag_in,
    bram_read_addr,
    aggregated_coeff_out,
    aggregated_valid_out,
    aggregation_done);
  input clk;
  input rst_n;
  input start_aggregation;
  input [53:0]ciphertext_stream_in;
  input [53:0]dummy_stream_in;
  input stream_valid_in;
  input auth_flag_in;
  output [11:0]bram_read_addr;
  output [53:0]aggregated_coeff_out;
  output aggregated_valid_out;
  output aggregation_done;

  wire [53:0]aggregated_coeff_out;
  wire [53:0]aggregated_coeff_out_OBUF;
  wire aggregated_valid_out;
  wire aggregated_valid_out_OBUF;
  wire aggregation_done;
  wire aggregation_done_OBUF;
  wire auth_flag_in;
  wire auth_flag_in_IBUF;
  wire [11:0]bram_read_addr;
  wire [11:0]bram_read_addr_OBUF;
  wire [53:0]ciphertext_stream_in;
  wire [53:0]ciphertext_stream_in_IBUF;
  wire clk;
  wire clk_IBUF;
  (* MAX_PROG_DELAY = "1" *) wire clk_IBUF_BUFG;
  wire [53:0]dummy_stream_in;
  wire [53:0]dummy_stream_in_IBUF;
  wire [53:0]handler_ct_out;
  wire rst_n;
  wire rst_n_IBUF;
  wire start_aggregation;
  wire start_aggregation_IBUF;
  wire stream_valid_in;
  wire stream_valid_in_IBUF;
  wire u_handler_n_1;

  OBUF \aggregated_coeff_out_OBUF[0]_inst 
       (.I(aggregated_coeff_out_OBUF[0]),
        .O(aggregated_coeff_out[0]));
  OBUF \aggregated_coeff_out_OBUF[10]_inst 
       (.I(aggregated_coeff_out_OBUF[10]),
        .O(aggregated_coeff_out[10]));
  OBUF \aggregated_coeff_out_OBUF[11]_inst 
       (.I(aggregated_coeff_out_OBUF[11]),
        .O(aggregated_coeff_out[11]));
  OBUF \aggregated_coeff_out_OBUF[12]_inst 
       (.I(aggregated_coeff_out_OBUF[12]),
        .O(aggregated_coeff_out[12]));
  OBUF \aggregated_coeff_out_OBUF[13]_inst 
       (.I(aggregated_coeff_out_OBUF[13]),
        .O(aggregated_coeff_out[13]));
  OBUF \aggregated_coeff_out_OBUF[14]_inst 
       (.I(aggregated_coeff_out_OBUF[14]),
        .O(aggregated_coeff_out[14]));
  OBUF \aggregated_coeff_out_OBUF[15]_inst 
       (.I(aggregated_coeff_out_OBUF[15]),
        .O(aggregated_coeff_out[15]));
  OBUF \aggregated_coeff_out_OBUF[16]_inst 
       (.I(aggregated_coeff_out_OBUF[16]),
        .O(aggregated_coeff_out[16]));
  OBUF \aggregated_coeff_out_OBUF[17]_inst 
       (.I(aggregated_coeff_out_OBUF[17]),
        .O(aggregated_coeff_out[17]));
  OBUF \aggregated_coeff_out_OBUF[18]_inst 
       (.I(aggregated_coeff_out_OBUF[18]),
        .O(aggregated_coeff_out[18]));
  OBUF \aggregated_coeff_out_OBUF[19]_inst 
       (.I(aggregated_coeff_out_OBUF[19]),
        .O(aggregated_coeff_out[19]));
  OBUF \aggregated_coeff_out_OBUF[1]_inst 
       (.I(aggregated_coeff_out_OBUF[1]),
        .O(aggregated_coeff_out[1]));
  OBUF \aggregated_coeff_out_OBUF[20]_inst 
       (.I(aggregated_coeff_out_OBUF[20]),
        .O(aggregated_coeff_out[20]));
  OBUF \aggregated_coeff_out_OBUF[21]_inst 
       (.I(aggregated_coeff_out_OBUF[21]),
        .O(aggregated_coeff_out[21]));
  OBUF \aggregated_coeff_out_OBUF[22]_inst 
       (.I(aggregated_coeff_out_OBUF[22]),
        .O(aggregated_coeff_out[22]));
  OBUF \aggregated_coeff_out_OBUF[23]_inst 
       (.I(aggregated_coeff_out_OBUF[23]),
        .O(aggregated_coeff_out[23]));
  OBUF \aggregated_coeff_out_OBUF[24]_inst 
       (.I(aggregated_coeff_out_OBUF[24]),
        .O(aggregated_coeff_out[24]));
  OBUF \aggregated_coeff_out_OBUF[25]_inst 
       (.I(aggregated_coeff_out_OBUF[25]),
        .O(aggregated_coeff_out[25]));
  OBUF \aggregated_coeff_out_OBUF[26]_inst 
       (.I(aggregated_coeff_out_OBUF[26]),
        .O(aggregated_coeff_out[26]));
  OBUF \aggregated_coeff_out_OBUF[27]_inst 
       (.I(aggregated_coeff_out_OBUF[27]),
        .O(aggregated_coeff_out[27]));
  OBUF \aggregated_coeff_out_OBUF[28]_inst 
       (.I(aggregated_coeff_out_OBUF[28]),
        .O(aggregated_coeff_out[28]));
  OBUF \aggregated_coeff_out_OBUF[29]_inst 
       (.I(aggregated_coeff_out_OBUF[29]),
        .O(aggregated_coeff_out[29]));
  OBUF \aggregated_coeff_out_OBUF[2]_inst 
       (.I(aggregated_coeff_out_OBUF[2]),
        .O(aggregated_coeff_out[2]));
  OBUF \aggregated_coeff_out_OBUF[30]_inst 
       (.I(aggregated_coeff_out_OBUF[30]),
        .O(aggregated_coeff_out[30]));
  OBUF \aggregated_coeff_out_OBUF[31]_inst 
       (.I(aggregated_coeff_out_OBUF[31]),
        .O(aggregated_coeff_out[31]));
  OBUF \aggregated_coeff_out_OBUF[32]_inst 
       (.I(aggregated_coeff_out_OBUF[32]),
        .O(aggregated_coeff_out[32]));
  OBUF \aggregated_coeff_out_OBUF[33]_inst 
       (.I(aggregated_coeff_out_OBUF[33]),
        .O(aggregated_coeff_out[33]));
  OBUF \aggregated_coeff_out_OBUF[34]_inst 
       (.I(aggregated_coeff_out_OBUF[34]),
        .O(aggregated_coeff_out[34]));
  OBUF \aggregated_coeff_out_OBUF[35]_inst 
       (.I(aggregated_coeff_out_OBUF[35]),
        .O(aggregated_coeff_out[35]));
  OBUF \aggregated_coeff_out_OBUF[36]_inst 
       (.I(aggregated_coeff_out_OBUF[36]),
        .O(aggregated_coeff_out[36]));
  OBUF \aggregated_coeff_out_OBUF[37]_inst 
       (.I(aggregated_coeff_out_OBUF[37]),
        .O(aggregated_coeff_out[37]));
  OBUF \aggregated_coeff_out_OBUF[38]_inst 
       (.I(aggregated_coeff_out_OBUF[38]),
        .O(aggregated_coeff_out[38]));
  OBUF \aggregated_coeff_out_OBUF[39]_inst 
       (.I(aggregated_coeff_out_OBUF[39]),
        .O(aggregated_coeff_out[39]));
  OBUF \aggregated_coeff_out_OBUF[3]_inst 
       (.I(aggregated_coeff_out_OBUF[3]),
        .O(aggregated_coeff_out[3]));
  OBUF \aggregated_coeff_out_OBUF[40]_inst 
       (.I(aggregated_coeff_out_OBUF[40]),
        .O(aggregated_coeff_out[40]));
  OBUF \aggregated_coeff_out_OBUF[41]_inst 
       (.I(aggregated_coeff_out_OBUF[41]),
        .O(aggregated_coeff_out[41]));
  OBUF \aggregated_coeff_out_OBUF[42]_inst 
       (.I(aggregated_coeff_out_OBUF[42]),
        .O(aggregated_coeff_out[42]));
  OBUF \aggregated_coeff_out_OBUF[43]_inst 
       (.I(aggregated_coeff_out_OBUF[43]),
        .O(aggregated_coeff_out[43]));
  OBUF \aggregated_coeff_out_OBUF[44]_inst 
       (.I(aggregated_coeff_out_OBUF[44]),
        .O(aggregated_coeff_out[44]));
  OBUF \aggregated_coeff_out_OBUF[45]_inst 
       (.I(aggregated_coeff_out_OBUF[45]),
        .O(aggregated_coeff_out[45]));
  OBUF \aggregated_coeff_out_OBUF[46]_inst 
       (.I(aggregated_coeff_out_OBUF[46]),
        .O(aggregated_coeff_out[46]));
  OBUF \aggregated_coeff_out_OBUF[47]_inst 
       (.I(aggregated_coeff_out_OBUF[47]),
        .O(aggregated_coeff_out[47]));
  OBUF \aggregated_coeff_out_OBUF[48]_inst 
       (.I(aggregated_coeff_out_OBUF[48]),
        .O(aggregated_coeff_out[48]));
  OBUF \aggregated_coeff_out_OBUF[49]_inst 
       (.I(aggregated_coeff_out_OBUF[49]),
        .O(aggregated_coeff_out[49]));
  OBUF \aggregated_coeff_out_OBUF[4]_inst 
       (.I(aggregated_coeff_out_OBUF[4]),
        .O(aggregated_coeff_out[4]));
  OBUF \aggregated_coeff_out_OBUF[50]_inst 
       (.I(aggregated_coeff_out_OBUF[50]),
        .O(aggregated_coeff_out[50]));
  OBUF \aggregated_coeff_out_OBUF[51]_inst 
       (.I(aggregated_coeff_out_OBUF[51]),
        .O(aggregated_coeff_out[51]));
  OBUF \aggregated_coeff_out_OBUF[52]_inst 
       (.I(aggregated_coeff_out_OBUF[52]),
        .O(aggregated_coeff_out[52]));
  OBUF \aggregated_coeff_out_OBUF[53]_inst 
       (.I(aggregated_coeff_out_OBUF[53]),
        .O(aggregated_coeff_out[53]));
  OBUF \aggregated_coeff_out_OBUF[5]_inst 
       (.I(aggregated_coeff_out_OBUF[5]),
        .O(aggregated_coeff_out[5]));
  OBUF \aggregated_coeff_out_OBUF[6]_inst 
       (.I(aggregated_coeff_out_OBUF[6]),
        .O(aggregated_coeff_out[6]));
  OBUF \aggregated_coeff_out_OBUF[7]_inst 
       (.I(aggregated_coeff_out_OBUF[7]),
        .O(aggregated_coeff_out[7]));
  OBUF \aggregated_coeff_out_OBUF[8]_inst 
       (.I(aggregated_coeff_out_OBUF[8]),
        .O(aggregated_coeff_out[8]));
  OBUF \aggregated_coeff_out_OBUF[9]_inst 
       (.I(aggregated_coeff_out_OBUF[9]),
        .O(aggregated_coeff_out[9]));
  OBUF aggregated_valid_out_OBUF_inst
       (.I(aggregated_valid_out_OBUF),
        .O(aggregated_valid_out));
  OBUF aggregation_done_OBUF_inst
       (.I(aggregation_done_OBUF),
        .O(aggregation_done));
  IBUF auth_flag_in_IBUF_inst
       (.I(auth_flag_in),
        .O(auth_flag_in_IBUF));
  OBUF \bram_read_addr_OBUF[0]_inst 
       (.I(bram_read_addr_OBUF[0]),
        .O(bram_read_addr[0]));
  OBUF \bram_read_addr_OBUF[10]_inst 
       (.I(bram_read_addr_OBUF[10]),
        .O(bram_read_addr[10]));
  OBUF \bram_read_addr_OBUF[11]_inst 
       (.I(bram_read_addr_OBUF[11]),
        .O(bram_read_addr[11]));
  OBUF \bram_read_addr_OBUF[1]_inst 
       (.I(bram_read_addr_OBUF[1]),
        .O(bram_read_addr[1]));
  OBUF \bram_read_addr_OBUF[2]_inst 
       (.I(bram_read_addr_OBUF[2]),
        .O(bram_read_addr[2]));
  OBUF \bram_read_addr_OBUF[3]_inst 
       (.I(bram_read_addr_OBUF[3]),
        .O(bram_read_addr[3]));
  OBUF \bram_read_addr_OBUF[4]_inst 
       (.I(bram_read_addr_OBUF[4]),
        .O(bram_read_addr[4]));
  OBUF \bram_read_addr_OBUF[5]_inst 
       (.I(bram_read_addr_OBUF[5]),
        .O(bram_read_addr[5]));
  OBUF \bram_read_addr_OBUF[6]_inst 
       (.I(bram_read_addr_OBUF[6]),
        .O(bram_read_addr[6]));
  OBUF \bram_read_addr_OBUF[7]_inst 
       (.I(bram_read_addr_OBUF[7]),
        .O(bram_read_addr[7]));
  OBUF \bram_read_addr_OBUF[8]_inst 
       (.I(bram_read_addr_OBUF[8]),
        .O(bram_read_addr[8]));
  OBUF \bram_read_addr_OBUF[9]_inst 
       (.I(bram_read_addr_OBUF[9]),
        .O(bram_read_addr[9]));
  IBUF \ciphertext_stream_in_IBUF[0]_inst 
       (.I(ciphertext_stream_in[0]),
        .O(ciphertext_stream_in_IBUF[0]));
  IBUF \ciphertext_stream_in_IBUF[10]_inst 
       (.I(ciphertext_stream_in[10]),
        .O(ciphertext_stream_in_IBUF[10]));
  IBUF \ciphertext_stream_in_IBUF[11]_inst 
       (.I(ciphertext_stream_in[11]),
        .O(ciphertext_stream_in_IBUF[11]));
  IBUF \ciphertext_stream_in_IBUF[12]_inst 
       (.I(ciphertext_stream_in[12]),
        .O(ciphertext_stream_in_IBUF[12]));
  IBUF \ciphertext_stream_in_IBUF[13]_inst 
       (.I(ciphertext_stream_in[13]),
        .O(ciphertext_stream_in_IBUF[13]));
  IBUF \ciphertext_stream_in_IBUF[14]_inst 
       (.I(ciphertext_stream_in[14]),
        .O(ciphertext_stream_in_IBUF[14]));
  IBUF \ciphertext_stream_in_IBUF[15]_inst 
       (.I(ciphertext_stream_in[15]),
        .O(ciphertext_stream_in_IBUF[15]));
  IBUF \ciphertext_stream_in_IBUF[16]_inst 
       (.I(ciphertext_stream_in[16]),
        .O(ciphertext_stream_in_IBUF[16]));
  IBUF \ciphertext_stream_in_IBUF[17]_inst 
       (.I(ciphertext_stream_in[17]),
        .O(ciphertext_stream_in_IBUF[17]));
  IBUF \ciphertext_stream_in_IBUF[18]_inst 
       (.I(ciphertext_stream_in[18]),
        .O(ciphertext_stream_in_IBUF[18]));
  IBUF \ciphertext_stream_in_IBUF[19]_inst 
       (.I(ciphertext_stream_in[19]),
        .O(ciphertext_stream_in_IBUF[19]));
  IBUF \ciphertext_stream_in_IBUF[1]_inst 
       (.I(ciphertext_stream_in[1]),
        .O(ciphertext_stream_in_IBUF[1]));
  IBUF \ciphertext_stream_in_IBUF[20]_inst 
       (.I(ciphertext_stream_in[20]),
        .O(ciphertext_stream_in_IBUF[20]));
  IBUF \ciphertext_stream_in_IBUF[21]_inst 
       (.I(ciphertext_stream_in[21]),
        .O(ciphertext_stream_in_IBUF[21]));
  IBUF \ciphertext_stream_in_IBUF[22]_inst 
       (.I(ciphertext_stream_in[22]),
        .O(ciphertext_stream_in_IBUF[22]));
  IBUF \ciphertext_stream_in_IBUF[23]_inst 
       (.I(ciphertext_stream_in[23]),
        .O(ciphertext_stream_in_IBUF[23]));
  IBUF \ciphertext_stream_in_IBUF[24]_inst 
       (.I(ciphertext_stream_in[24]),
        .O(ciphertext_stream_in_IBUF[24]));
  IBUF \ciphertext_stream_in_IBUF[25]_inst 
       (.I(ciphertext_stream_in[25]),
        .O(ciphertext_stream_in_IBUF[25]));
  IBUF \ciphertext_stream_in_IBUF[26]_inst 
       (.I(ciphertext_stream_in[26]),
        .O(ciphertext_stream_in_IBUF[26]));
  IBUF \ciphertext_stream_in_IBUF[27]_inst 
       (.I(ciphertext_stream_in[27]),
        .O(ciphertext_stream_in_IBUF[27]));
  IBUF \ciphertext_stream_in_IBUF[28]_inst 
       (.I(ciphertext_stream_in[28]),
        .O(ciphertext_stream_in_IBUF[28]));
  IBUF \ciphertext_stream_in_IBUF[29]_inst 
       (.I(ciphertext_stream_in[29]),
        .O(ciphertext_stream_in_IBUF[29]));
  IBUF \ciphertext_stream_in_IBUF[2]_inst 
       (.I(ciphertext_stream_in[2]),
        .O(ciphertext_stream_in_IBUF[2]));
  IBUF \ciphertext_stream_in_IBUF[30]_inst 
       (.I(ciphertext_stream_in[30]),
        .O(ciphertext_stream_in_IBUF[30]));
  IBUF \ciphertext_stream_in_IBUF[31]_inst 
       (.I(ciphertext_stream_in[31]),
        .O(ciphertext_stream_in_IBUF[31]));
  IBUF \ciphertext_stream_in_IBUF[32]_inst 
       (.I(ciphertext_stream_in[32]),
        .O(ciphertext_stream_in_IBUF[32]));
  IBUF \ciphertext_stream_in_IBUF[33]_inst 
       (.I(ciphertext_stream_in[33]),
        .O(ciphertext_stream_in_IBUF[33]));
  IBUF \ciphertext_stream_in_IBUF[34]_inst 
       (.I(ciphertext_stream_in[34]),
        .O(ciphertext_stream_in_IBUF[34]));
  IBUF \ciphertext_stream_in_IBUF[35]_inst 
       (.I(ciphertext_stream_in[35]),
        .O(ciphertext_stream_in_IBUF[35]));
  IBUF \ciphertext_stream_in_IBUF[36]_inst 
       (.I(ciphertext_stream_in[36]),
        .O(ciphertext_stream_in_IBUF[36]));
  IBUF \ciphertext_stream_in_IBUF[37]_inst 
       (.I(ciphertext_stream_in[37]),
        .O(ciphertext_stream_in_IBUF[37]));
  IBUF \ciphertext_stream_in_IBUF[38]_inst 
       (.I(ciphertext_stream_in[38]),
        .O(ciphertext_stream_in_IBUF[38]));
  IBUF \ciphertext_stream_in_IBUF[39]_inst 
       (.I(ciphertext_stream_in[39]),
        .O(ciphertext_stream_in_IBUF[39]));
  IBUF \ciphertext_stream_in_IBUF[3]_inst 
       (.I(ciphertext_stream_in[3]),
        .O(ciphertext_stream_in_IBUF[3]));
  IBUF \ciphertext_stream_in_IBUF[40]_inst 
       (.I(ciphertext_stream_in[40]),
        .O(ciphertext_stream_in_IBUF[40]));
  IBUF \ciphertext_stream_in_IBUF[41]_inst 
       (.I(ciphertext_stream_in[41]),
        .O(ciphertext_stream_in_IBUF[41]));
  IBUF \ciphertext_stream_in_IBUF[42]_inst 
       (.I(ciphertext_stream_in[42]),
        .O(ciphertext_stream_in_IBUF[42]));
  IBUF \ciphertext_stream_in_IBUF[43]_inst 
       (.I(ciphertext_stream_in[43]),
        .O(ciphertext_stream_in_IBUF[43]));
  IBUF \ciphertext_stream_in_IBUF[44]_inst 
       (.I(ciphertext_stream_in[44]),
        .O(ciphertext_stream_in_IBUF[44]));
  IBUF \ciphertext_stream_in_IBUF[45]_inst 
       (.I(ciphertext_stream_in[45]),
        .O(ciphertext_stream_in_IBUF[45]));
  IBUF \ciphertext_stream_in_IBUF[46]_inst 
       (.I(ciphertext_stream_in[46]),
        .O(ciphertext_stream_in_IBUF[46]));
  IBUF \ciphertext_stream_in_IBUF[47]_inst 
       (.I(ciphertext_stream_in[47]),
        .O(ciphertext_stream_in_IBUF[47]));
  IBUF \ciphertext_stream_in_IBUF[48]_inst 
       (.I(ciphertext_stream_in[48]),
        .O(ciphertext_stream_in_IBUF[48]));
  IBUF \ciphertext_stream_in_IBUF[49]_inst 
       (.I(ciphertext_stream_in[49]),
        .O(ciphertext_stream_in_IBUF[49]));
  IBUF \ciphertext_stream_in_IBUF[4]_inst 
       (.I(ciphertext_stream_in[4]),
        .O(ciphertext_stream_in_IBUF[4]));
  IBUF \ciphertext_stream_in_IBUF[50]_inst 
       (.I(ciphertext_stream_in[50]),
        .O(ciphertext_stream_in_IBUF[50]));
  IBUF \ciphertext_stream_in_IBUF[51]_inst 
       (.I(ciphertext_stream_in[51]),
        .O(ciphertext_stream_in_IBUF[51]));
  IBUF \ciphertext_stream_in_IBUF[52]_inst 
       (.I(ciphertext_stream_in[52]),
        .O(ciphertext_stream_in_IBUF[52]));
  IBUF \ciphertext_stream_in_IBUF[53]_inst 
       (.I(ciphertext_stream_in[53]),
        .O(ciphertext_stream_in_IBUF[53]));
  IBUF \ciphertext_stream_in_IBUF[5]_inst 
       (.I(ciphertext_stream_in[5]),
        .O(ciphertext_stream_in_IBUF[5]));
  IBUF \ciphertext_stream_in_IBUF[6]_inst 
       (.I(ciphertext_stream_in[6]),
        .O(ciphertext_stream_in_IBUF[6]));
  IBUF \ciphertext_stream_in_IBUF[7]_inst 
       (.I(ciphertext_stream_in[7]),
        .O(ciphertext_stream_in_IBUF[7]));
  IBUF \ciphertext_stream_in_IBUF[8]_inst 
       (.I(ciphertext_stream_in[8]),
        .O(ciphertext_stream_in_IBUF[8]));
  IBUF \ciphertext_stream_in_IBUF[9]_inst 
       (.I(ciphertext_stream_in[9]),
        .O(ciphertext_stream_in_IBUF[9]));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \dummy_stream_in_IBUF[0]_inst 
       (.I(dummy_stream_in[0]),
        .O(dummy_stream_in_IBUF[0]));
  IBUF \dummy_stream_in_IBUF[10]_inst 
       (.I(dummy_stream_in[10]),
        .O(dummy_stream_in_IBUF[10]));
  IBUF \dummy_stream_in_IBUF[11]_inst 
       (.I(dummy_stream_in[11]),
        .O(dummy_stream_in_IBUF[11]));
  IBUF \dummy_stream_in_IBUF[12]_inst 
       (.I(dummy_stream_in[12]),
        .O(dummy_stream_in_IBUF[12]));
  IBUF \dummy_stream_in_IBUF[13]_inst 
       (.I(dummy_stream_in[13]),
        .O(dummy_stream_in_IBUF[13]));
  IBUF \dummy_stream_in_IBUF[14]_inst 
       (.I(dummy_stream_in[14]),
        .O(dummy_stream_in_IBUF[14]));
  IBUF \dummy_stream_in_IBUF[15]_inst 
       (.I(dummy_stream_in[15]),
        .O(dummy_stream_in_IBUF[15]));
  IBUF \dummy_stream_in_IBUF[16]_inst 
       (.I(dummy_stream_in[16]),
        .O(dummy_stream_in_IBUF[16]));
  IBUF \dummy_stream_in_IBUF[17]_inst 
       (.I(dummy_stream_in[17]),
        .O(dummy_stream_in_IBUF[17]));
  IBUF \dummy_stream_in_IBUF[18]_inst 
       (.I(dummy_stream_in[18]),
        .O(dummy_stream_in_IBUF[18]));
  IBUF \dummy_stream_in_IBUF[19]_inst 
       (.I(dummy_stream_in[19]),
        .O(dummy_stream_in_IBUF[19]));
  IBUF \dummy_stream_in_IBUF[1]_inst 
       (.I(dummy_stream_in[1]),
        .O(dummy_stream_in_IBUF[1]));
  IBUF \dummy_stream_in_IBUF[20]_inst 
       (.I(dummy_stream_in[20]),
        .O(dummy_stream_in_IBUF[20]));
  IBUF \dummy_stream_in_IBUF[21]_inst 
       (.I(dummy_stream_in[21]),
        .O(dummy_stream_in_IBUF[21]));
  IBUF \dummy_stream_in_IBUF[22]_inst 
       (.I(dummy_stream_in[22]),
        .O(dummy_stream_in_IBUF[22]));
  IBUF \dummy_stream_in_IBUF[23]_inst 
       (.I(dummy_stream_in[23]),
        .O(dummy_stream_in_IBUF[23]));
  IBUF \dummy_stream_in_IBUF[24]_inst 
       (.I(dummy_stream_in[24]),
        .O(dummy_stream_in_IBUF[24]));
  IBUF \dummy_stream_in_IBUF[25]_inst 
       (.I(dummy_stream_in[25]),
        .O(dummy_stream_in_IBUF[25]));
  IBUF \dummy_stream_in_IBUF[26]_inst 
       (.I(dummy_stream_in[26]),
        .O(dummy_stream_in_IBUF[26]));
  IBUF \dummy_stream_in_IBUF[27]_inst 
       (.I(dummy_stream_in[27]),
        .O(dummy_stream_in_IBUF[27]));
  IBUF \dummy_stream_in_IBUF[28]_inst 
       (.I(dummy_stream_in[28]),
        .O(dummy_stream_in_IBUF[28]));
  IBUF \dummy_stream_in_IBUF[29]_inst 
       (.I(dummy_stream_in[29]),
        .O(dummy_stream_in_IBUF[29]));
  IBUF \dummy_stream_in_IBUF[2]_inst 
       (.I(dummy_stream_in[2]),
        .O(dummy_stream_in_IBUF[2]));
  IBUF \dummy_stream_in_IBUF[30]_inst 
       (.I(dummy_stream_in[30]),
        .O(dummy_stream_in_IBUF[30]));
  IBUF \dummy_stream_in_IBUF[31]_inst 
       (.I(dummy_stream_in[31]),
        .O(dummy_stream_in_IBUF[31]));
  IBUF \dummy_stream_in_IBUF[32]_inst 
       (.I(dummy_stream_in[32]),
        .O(dummy_stream_in_IBUF[32]));
  IBUF \dummy_stream_in_IBUF[33]_inst 
       (.I(dummy_stream_in[33]),
        .O(dummy_stream_in_IBUF[33]));
  IBUF \dummy_stream_in_IBUF[34]_inst 
       (.I(dummy_stream_in[34]),
        .O(dummy_stream_in_IBUF[34]));
  IBUF \dummy_stream_in_IBUF[35]_inst 
       (.I(dummy_stream_in[35]),
        .O(dummy_stream_in_IBUF[35]));
  IBUF \dummy_stream_in_IBUF[36]_inst 
       (.I(dummy_stream_in[36]),
        .O(dummy_stream_in_IBUF[36]));
  IBUF \dummy_stream_in_IBUF[37]_inst 
       (.I(dummy_stream_in[37]),
        .O(dummy_stream_in_IBUF[37]));
  IBUF \dummy_stream_in_IBUF[38]_inst 
       (.I(dummy_stream_in[38]),
        .O(dummy_stream_in_IBUF[38]));
  IBUF \dummy_stream_in_IBUF[39]_inst 
       (.I(dummy_stream_in[39]),
        .O(dummy_stream_in_IBUF[39]));
  IBUF \dummy_stream_in_IBUF[3]_inst 
       (.I(dummy_stream_in[3]),
        .O(dummy_stream_in_IBUF[3]));
  IBUF \dummy_stream_in_IBUF[40]_inst 
       (.I(dummy_stream_in[40]),
        .O(dummy_stream_in_IBUF[40]));
  IBUF \dummy_stream_in_IBUF[41]_inst 
       (.I(dummy_stream_in[41]),
        .O(dummy_stream_in_IBUF[41]));
  IBUF \dummy_stream_in_IBUF[42]_inst 
       (.I(dummy_stream_in[42]),
        .O(dummy_stream_in_IBUF[42]));
  IBUF \dummy_stream_in_IBUF[43]_inst 
       (.I(dummy_stream_in[43]),
        .O(dummy_stream_in_IBUF[43]));
  IBUF \dummy_stream_in_IBUF[44]_inst 
       (.I(dummy_stream_in[44]),
        .O(dummy_stream_in_IBUF[44]));
  IBUF \dummy_stream_in_IBUF[45]_inst 
       (.I(dummy_stream_in[45]),
        .O(dummy_stream_in_IBUF[45]));
  IBUF \dummy_stream_in_IBUF[46]_inst 
       (.I(dummy_stream_in[46]),
        .O(dummy_stream_in_IBUF[46]));
  IBUF \dummy_stream_in_IBUF[47]_inst 
       (.I(dummy_stream_in[47]),
        .O(dummy_stream_in_IBUF[47]));
  IBUF \dummy_stream_in_IBUF[48]_inst 
       (.I(dummy_stream_in[48]),
        .O(dummy_stream_in_IBUF[48]));
  IBUF \dummy_stream_in_IBUF[49]_inst 
       (.I(dummy_stream_in[49]),
        .O(dummy_stream_in_IBUF[49]));
  IBUF \dummy_stream_in_IBUF[4]_inst 
       (.I(dummy_stream_in[4]),
        .O(dummy_stream_in_IBUF[4]));
  IBUF \dummy_stream_in_IBUF[50]_inst 
       (.I(dummy_stream_in[50]),
        .O(dummy_stream_in_IBUF[50]));
  IBUF \dummy_stream_in_IBUF[51]_inst 
       (.I(dummy_stream_in[51]),
        .O(dummy_stream_in_IBUF[51]));
  IBUF \dummy_stream_in_IBUF[52]_inst 
       (.I(dummy_stream_in[52]),
        .O(dummy_stream_in_IBUF[52]));
  IBUF \dummy_stream_in_IBUF[53]_inst 
       (.I(dummy_stream_in[53]),
        .O(dummy_stream_in_IBUF[53]));
  IBUF \dummy_stream_in_IBUF[5]_inst 
       (.I(dummy_stream_in[5]),
        .O(dummy_stream_in_IBUF[5]));
  IBUF \dummy_stream_in_IBUF[6]_inst 
       (.I(dummy_stream_in[6]),
        .O(dummy_stream_in_IBUF[6]));
  IBUF \dummy_stream_in_IBUF[7]_inst 
       (.I(dummy_stream_in[7]),
        .O(dummy_stream_in_IBUF[7]));
  IBUF \dummy_stream_in_IBUF[8]_inst 
       (.I(dummy_stream_in[8]),
        .O(dummy_stream_in_IBUF[8]));
  IBUF \dummy_stream_in_IBUF[9]_inst 
       (.I(dummy_stream_in[9]),
        .O(dummy_stream_in_IBUF[9]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF start_aggregation_IBUF_inst
       (.I(start_aggregation),
        .O(start_aggregation_IBUF));
  IBUF stream_valid_in_IBUF_inst
       (.I(stream_valid_in),
        .O(stream_valid_in_IBUF));
  constant_schedule_ctrl u_ctrl
       (.CLK(clk_IBUF_BUFG),
        .Q(bram_read_addr_OBUF),
        .aggregation_done_OBUF(aggregation_done_OBUF),
        .\bram_read_addr_reg[11]_0 (u_handler_n_1),
        .start_aggregation_IBUF(start_aggregation_IBUF));
  input_handler u_handler
       (.CLK(clk_IBUF_BUFG),
        .Q(handler_ct_out),
        .aggregated_valid_out_OBUF(aggregated_valid_out_OBUF),
        .auth_flag_in_IBUF(auth_flag_in_IBUF),
        .ciphertext_stream_in_IBUF(ciphertext_stream_in_IBUF),
        .dummy_stream_in_IBUF(dummy_stream_in_IBUF),
        .rst_n(u_handler_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .stream_valid_in_IBUF(stream_valid_in_IBUF));
  spa_csa_segment u_spa
       (.CLK(clk_IBUF_BUFG),
        .D(handler_ct_out),
        .Q(aggregated_coeff_out_OBUF),
        .\sum_out_reg[0]_0 (u_handler_n_1));
endmodule

module constant_schedule_ctrl
   (aggregation_done_OBUF,
    Q,
    CLK,
    \bram_read_addr_reg[11]_0 ,
    start_aggregation_IBUF);
  output aggregation_done_OBUF;
  output [11:0]Q;
  input CLK;
  input \bram_read_addr_reg[11]_0 ;
  input start_aggregation_IBUF;

  wire CLK;
  wire \FSM_onehot_fsm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_fsm_state[2]_i_3_n_0 ;
  wire \FSM_onehot_fsm_state[2]_i_4_n_0 ;
  wire \FSM_onehot_fsm_state[2]_i_5_n_0 ;
  wire \FSM_onehot_fsm_state[2]_i_6_n_0 ;
  wire \FSM_onehot_fsm_state[2]_i_7_n_0 ;
  wire \FSM_onehot_fsm_state_reg_n_0_[0] ;
  wire \FSM_onehot_fsm_state_reg_n_0_[1] ;
  wire \FSM_onehot_fsm_state_reg_n_0_[2] ;
  wire [11:0]Q;
  wire aggregation_done_OBUF;
  wire aggregation_done_i_1_n_0;
  wire \bram_read_addr_reg[11]_0 ;
  wire [11:0]coeff_counter;
  wire \coeff_counter[10]_i_2__0_n_0 ;
  wire \coeff_counter[11]_i_2__0_n_0 ;
  wire \coeff_counter[4]_i_1__0_n_0 ;
  wire \coeff_counter[8]_i_1__0_n_0 ;
  wire \coeff_counter_reg_n_0_[0] ;
  wire \coeff_counter_reg_n_0_[10] ;
  wire \coeff_counter_reg_n_0_[11] ;
  wire \coeff_counter_reg_n_0_[1] ;
  wire \coeff_counter_reg_n_0_[2] ;
  wire \coeff_counter_reg_n_0_[3] ;
  wire \coeff_counter_reg_n_0_[4] ;
  wire \coeff_counter_reg_n_0_[5] ;
  wire \coeff_counter_reg_n_0_[6] ;
  wire \coeff_counter_reg_n_0_[7] ;
  wire \coeff_counter_reg_n_0_[8] ;
  wire \coeff_counter_reg_n_0_[9] ;
  wire [2:0]node_counter;
  wire \node_counter[0]_i_1_n_0 ;
  wire \node_counter[1]_i_1_n_0 ;
  wire \node_counter[2]_i_2_n_0 ;
  wire node_counter_0;
  wire start_aggregation_IBUF;

  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \FSM_onehot_fsm_state[2]_i_1 
       (.I0(\FSM_onehot_fsm_state_reg_n_0_[0] ),
        .I1(start_aggregation_IBUF),
        .I2(\FSM_onehot_fsm_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_fsm_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_fsm_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_fsm_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \FSM_onehot_fsm_state[2]_i_3 
       (.I0(\FSM_onehot_fsm_state[2]_i_5_n_0 ),
        .I1(\coeff_counter_reg_n_0_[10] ),
        .I2(\coeff_counter_reg_n_0_[5] ),
        .I3(\coeff_counter_reg_n_0_[8] ),
        .I4(\FSM_onehot_fsm_state[2]_i_6_n_0 ),
        .I5(\FSM_onehot_fsm_state[2]_i_7_n_0 ),
        .O(\FSM_onehot_fsm_state[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_fsm_state[2]_i_4 
       (.I0(node_counter[0]),
        .I1(node_counter[1]),
        .I2(node_counter[2]),
        .O(\FSM_onehot_fsm_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_fsm_state[2]_i_5 
       (.I0(\coeff_counter_reg_n_0_[7] ),
        .I1(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .I2(\coeff_counter_reg_n_0_[11] ),
        .I3(\coeff_counter_reg_n_0_[4] ),
        .O(\FSM_onehot_fsm_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h70FFFFFF70707070)) 
    \FSM_onehot_fsm_state[2]_i_6 
       (.I0(\coeff_counter_reg_n_0_[10] ),
        .I1(\coeff_counter_reg_n_0_[9] ),
        .I2(\coeff_counter_reg_n_0_[11] ),
        .I3(\coeff_counter_reg_n_0_[4] ),
        .I4(\coeff_counter_reg_n_0_[3] ),
        .I5(\coeff_counter_reg_n_0_[5] ),
        .O(\FSM_onehot_fsm_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFF7FFF7FFF7F)) 
    \FSM_onehot_fsm_state[2]_i_7 
       (.I0(\coeff_counter_reg_n_0_[2] ),
        .I1(\coeff_counter_reg_n_0_[1] ),
        .I2(\coeff_counter_reg_n_0_[0] ),
        .I3(\coeff_counter_reg_n_0_[8] ),
        .I4(\coeff_counter_reg_n_0_[7] ),
        .I5(\coeff_counter_reg_n_0_[6] ),
        .O(\FSM_onehot_fsm_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,PROCESS:010,FINALIZE:100," *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_PRE_INVERTED(1'b1)) 
    \FSM_onehot_fsm_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_fsm_state_reg_n_0_[2] ),
        .PRE(\bram_read_addr_reg[11]_0 ),
        .Q(\FSM_onehot_fsm_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:001,PROCESS:010,FINALIZE:100," *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \FSM_onehot_fsm_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state[2]_i_1_n_0 ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\FSM_onehot_fsm_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_fsm_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:001,PROCESS:010,FINALIZE:100," *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \FSM_onehot_fsm_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state[2]_i_1_n_0 ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_fsm_state_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    aggregation_done_i_1
       (.I0(\FSM_onehot_fsm_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_fsm_state_reg_n_0_[0] ),
        .O(aggregation_done_i_1_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    aggregation_done_reg
       (.C(CLK),
        .CE(aggregation_done_i_1_n_0),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\FSM_onehot_fsm_state_reg_n_0_[2] ),
        .Q(aggregation_done_OBUF));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[0] ),
        .Q(Q[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[10] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[10] ),
        .Q(Q[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[11] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[11] ),
        .Q(Q[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[1] ),
        .Q(Q[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[2] ),
        .Q(Q[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[3] ),
        .Q(Q[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[4] ),
        .Q(Q[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[5] ),
        .Q(Q[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[6] ),
        .Q(Q[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[7] ),
        .Q(Q[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[8] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[8] ),
        .Q(Q[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \bram_read_addr_reg[9] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter_reg_n_0_[9] ),
        .Q(Q[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \coeff_counter[0]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[0] ),
        .O(coeff_counter[0]));
  LUT6 #(
    .INIT(64'hDFFF2000FFFF0000)) 
    \coeff_counter[10]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[8] ),
        .I1(\coeff_counter[10]_i_2__0_n_0 ),
        .I2(\coeff_counter_reg_n_0_[7] ),
        .I3(\coeff_counter_reg_n_0_[6] ),
        .I4(\coeff_counter_reg_n_0_[10] ),
        .I5(\coeff_counter_reg_n_0_[9] ),
        .O(coeff_counter[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \coeff_counter[10]_i_2__0 
       (.I0(\coeff_counter_reg_n_0_[4] ),
        .I1(\coeff_counter_reg_n_0_[0] ),
        .I2(\coeff_counter_reg_n_0_[1] ),
        .I3(\coeff_counter_reg_n_0_[3] ),
        .I4(\coeff_counter_reg_n_0_[2] ),
        .I5(\coeff_counter_reg_n_0_[5] ),
        .O(\coeff_counter[10]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \coeff_counter[11]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[11] ),
        .I1(\coeff_counter[11]_i_2__0_n_0 ),
        .I2(\coeff_counter_reg_n_0_[10] ),
        .I3(\coeff_counter_reg_n_0_[9] ),
        .O(coeff_counter[11]));
  LUT4 #(
    .INIT(16'h2000)) 
    \coeff_counter[11]_i_2__0 
       (.I0(\coeff_counter_reg_n_0_[8] ),
        .I1(\coeff_counter[10]_i_2__0_n_0 ),
        .I2(\coeff_counter_reg_n_0_[7] ),
        .I3(\coeff_counter_reg_n_0_[6] ),
        .O(\coeff_counter[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \coeff_counter[1]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[1] ),
        .I1(\coeff_counter_reg_n_0_[0] ),
        .O(coeff_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \coeff_counter[2]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[2] ),
        .I1(\coeff_counter_reg_n_0_[1] ),
        .I2(\coeff_counter_reg_n_0_[0] ),
        .O(coeff_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \coeff_counter[3]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[3] ),
        .I1(\coeff_counter_reg_n_0_[0] ),
        .I2(\coeff_counter_reg_n_0_[1] ),
        .I3(\coeff_counter_reg_n_0_[2] ),
        .O(coeff_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \coeff_counter[4]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[4] ),
        .I1(\coeff_counter_reg_n_0_[2] ),
        .I2(\coeff_counter_reg_n_0_[3] ),
        .I3(\coeff_counter_reg_n_0_[1] ),
        .I4(\coeff_counter_reg_n_0_[0] ),
        .O(\coeff_counter[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \coeff_counter[5]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[5] ),
        .I1(\coeff_counter_reg_n_0_[2] ),
        .I2(\coeff_counter_reg_n_0_[3] ),
        .I3(\coeff_counter_reg_n_0_[1] ),
        .I4(\coeff_counter_reg_n_0_[0] ),
        .I5(\coeff_counter_reg_n_0_[4] ),
        .O(coeff_counter[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \coeff_counter[6]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[6] ),
        .I1(\coeff_counter[10]_i_2__0_n_0 ),
        .O(coeff_counter[6]));
  LUT3 #(
    .INIT(8'h9A)) 
    \coeff_counter[7]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[7] ),
        .I1(\coeff_counter[10]_i_2__0_n_0 ),
        .I2(\coeff_counter_reg_n_0_[6] ),
        .O(coeff_counter[7]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \coeff_counter[8]_i_1__0 
       (.I0(\coeff_counter_reg_n_0_[8] ),
        .I1(\coeff_counter[10]_i_2__0_n_0 ),
        .I2(\coeff_counter_reg_n_0_[7] ),
        .I3(\coeff_counter_reg_n_0_[6] ),
        .O(\coeff_counter[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \coeff_counter[9]_i_1 
       (.I0(\coeff_counter_reg_n_0_[9] ),
        .I1(\coeff_counter_reg_n_0_[6] ),
        .I2(\coeff_counter_reg_n_0_[7] ),
        .I3(\coeff_counter[10]_i_2__0_n_0 ),
        .I4(\coeff_counter_reg_n_0_[8] ),
        .O(coeff_counter[9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[0]),
        .Q(\coeff_counter_reg_n_0_[0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[10] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[10]),
        .Q(\coeff_counter_reg_n_0_[10] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[11] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[11]),
        .Q(\coeff_counter_reg_n_0_[11] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[1]),
        .Q(\coeff_counter_reg_n_0_[1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[2]),
        .Q(\coeff_counter_reg_n_0_[2] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[3]),
        .Q(\coeff_counter_reg_n_0_[3] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter[4]_i_1__0_n_0 ),
        .Q(\coeff_counter_reg_n_0_[4] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[5]),
        .Q(\coeff_counter_reg_n_0_[5] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[6]),
        .Q(\coeff_counter_reg_n_0_[6] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[7]),
        .Q(\coeff_counter_reg_n_0_[7] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[8] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\coeff_counter[8]_i_1__0_n_0 ),
        .Q(\coeff_counter_reg_n_0_[8] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[9] 
       (.C(CLK),
        .CE(\FSM_onehot_fsm_state_reg_n_0_[1] ),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(coeff_counter[9]),
        .Q(\coeff_counter_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \node_counter[0]_i_1 
       (.I0(node_counter[0]),
        .O(\node_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \node_counter[1]_i_1 
       (.I0(node_counter[1]),
        .I1(node_counter[0]),
        .O(\node_counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00BF)) 
    \node_counter[2]_i_1 
       (.I0(node_counter[2]),
        .I1(node_counter[1]),
        .I2(node_counter[0]),
        .I3(\FSM_onehot_fsm_state[2]_i_3_n_0 ),
        .O(node_counter_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \node_counter[2]_i_2 
       (.I0(node_counter[2]),
        .I1(node_counter[0]),
        .I2(node_counter[1]),
        .O(\node_counter[2]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \node_counter_reg[0] 
       (.C(CLK),
        .CE(node_counter_0),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\node_counter[0]_i_1_n_0 ),
        .Q(node_counter[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \node_counter_reg[1] 
       (.C(CLK),
        .CE(node_counter_0),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\node_counter[1]_i_1_n_0 ),
        .Q(node_counter[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \node_counter_reg[2] 
       (.C(CLK),
        .CE(node_counter_0),
        .CLR(\bram_read_addr_reg[11]_0 ),
        .D(\node_counter[2]_i_2_n_0 ),
        .Q(node_counter[2]));
endmodule

module input_handler
   (aggregated_valid_out_OBUF,
    rst_n,
    Q,
    stream_valid_in_IBUF,
    CLK,
    rst_n_IBUF,
    dummy_stream_in_IBUF,
    ciphertext_stream_in_IBUF,
    auth_flag_in_IBUF);
  output aggregated_valid_out_OBUF;
  output rst_n;
  output [53:0]Q;
  input stream_valid_in_IBUF;
  input CLK;
  input rst_n_IBUF;
  input [53:0]dummy_stream_in_IBUF;
  input [53:0]ciphertext_stream_in_IBUF;
  input auth_flag_in_IBUF;

  wire CLK;
  wire [53:0]Q;
  wire aggregated_valid_out_OBUF;
  wire auth_flag_in_IBUF;
  wire [53:0]ciphertext_stream_in_IBUF;
  wire [11:0]coeff_counter;
  wire \coeff_counter[10]_i_2_n_0 ;
  wire \coeff_counter[11]_i_2_n_0 ;
  wire \coeff_counter[9]_i_1__0_n_0 ;
  wire [11:0]coeff_counter_0;
  wire \ct_out[0]_i_1_n_0 ;
  wire \ct_out[10]_i_1_n_0 ;
  wire \ct_out[11]_i_1_n_0 ;
  wire \ct_out[12]_i_1_n_0 ;
  wire \ct_out[13]_i_1_n_0 ;
  wire \ct_out[14]_i_1_n_0 ;
  wire \ct_out[15]_i_1_n_0 ;
  wire \ct_out[16]_i_1_n_0 ;
  wire \ct_out[17]_i_1_n_0 ;
  wire \ct_out[18]_i_1_n_0 ;
  wire \ct_out[19]_i_1_n_0 ;
  wire \ct_out[1]_i_1_n_0 ;
  wire \ct_out[20]_i_1_n_0 ;
  wire \ct_out[21]_i_1_n_0 ;
  wire \ct_out[22]_i_1_n_0 ;
  wire \ct_out[23]_i_1_n_0 ;
  wire \ct_out[24]_i_1_n_0 ;
  wire \ct_out[25]_i_1_n_0 ;
  wire \ct_out[26]_i_1_n_0 ;
  wire \ct_out[27]_i_1_n_0 ;
  wire \ct_out[28]_i_1_n_0 ;
  wire \ct_out[29]_i_1_n_0 ;
  wire \ct_out[2]_i_1_n_0 ;
  wire \ct_out[30]_i_1_n_0 ;
  wire \ct_out[31]_i_1_n_0 ;
  wire \ct_out[32]_i_1_n_0 ;
  wire \ct_out[33]_i_1_n_0 ;
  wire \ct_out[34]_i_1_n_0 ;
  wire \ct_out[35]_i_1_n_0 ;
  wire \ct_out[36]_i_1_n_0 ;
  wire \ct_out[37]_i_1_n_0 ;
  wire \ct_out[38]_i_1_n_0 ;
  wire \ct_out[39]_i_1_n_0 ;
  wire \ct_out[3]_i_1_n_0 ;
  wire \ct_out[40]_i_1_n_0 ;
  wire \ct_out[41]_i_1_n_0 ;
  wire \ct_out[42]_i_1_n_0 ;
  wire \ct_out[43]_i_1_n_0 ;
  wire \ct_out[44]_i_1_n_0 ;
  wire \ct_out[45]_i_1_n_0 ;
  wire \ct_out[46]_i_1_n_0 ;
  wire \ct_out[47]_i_1_n_0 ;
  wire \ct_out[48]_i_1_n_0 ;
  wire \ct_out[49]_i_1_n_0 ;
  wire \ct_out[4]_i_1_n_0 ;
  wire \ct_out[50]_i_1_n_0 ;
  wire \ct_out[51]_i_1_n_0 ;
  wire \ct_out[52]_i_1_n_0 ;
  wire \ct_out[53]_i_10_n_0 ;
  wire \ct_out[53]_i_11_n_0 ;
  wire \ct_out[53]_i_12_n_0 ;
  wire \ct_out[53]_i_13_n_0 ;
  wire \ct_out[53]_i_14_n_0 ;
  wire \ct_out[53]_i_15_n_0 ;
  wire \ct_out[53]_i_16_n_0 ;
  wire \ct_out[53]_i_17_n_0 ;
  wire \ct_out[53]_i_18_n_0 ;
  wire \ct_out[53]_i_1_n_0 ;
  wire \ct_out[53]_i_2_n_0 ;
  wire \ct_out[53]_i_3_n_0 ;
  wire \ct_out[53]_i_4_n_0 ;
  wire \ct_out[53]_i_5_n_0 ;
  wire \ct_out[53]_i_6_n_0 ;
  wire \ct_out[53]_i_7_n_0 ;
  wire \ct_out[53]_i_8_n_0 ;
  wire \ct_out[53]_i_9_n_0 ;
  wire \ct_out[5]_i_1_n_0 ;
  wire \ct_out[6]_i_1_n_0 ;
  wire \ct_out[7]_i_1_n_0 ;
  wire \ct_out[8]_i_1_n_0 ;
  wire \ct_out[9]_i_1_n_0 ;
  wire [53:0]dummy_stream_in_IBUF;
  wire rst_n_IBUF;
  wire sticky_malformed_error_i_1_n_0;
  wire sticky_malformed_error_i_2_n_0;
  wire sticky_malformed_error_i_3_n_0;
  wire sticky_malformed_error_i_4_n_0;
  wire sticky_malformed_error_i_5_n_0;
  wire sticky_malformed_error_reg_n_0;
  wire stream_valid_in_IBUF;

  assign rst_n = rst_n_IBUF;
  LUT1 #(
    .INIT(2'h1)) 
    \coeff_counter[0]_i_1 
       (.I0(coeff_counter[0]),
        .O(coeff_counter_0[0]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \coeff_counter[10]_i_1 
       (.I0(coeff_counter[10]),
        .I1(coeff_counter[8]),
        .I2(coeff_counter[6]),
        .I3(\coeff_counter[10]_i_2_n_0 ),
        .I4(coeff_counter[7]),
        .I5(coeff_counter[9]),
        .O(coeff_counter_0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \coeff_counter[10]_i_2 
       (.I0(coeff_counter[4]),
        .I1(coeff_counter[2]),
        .I2(coeff_counter[0]),
        .I3(coeff_counter[1]),
        .I4(coeff_counter[3]),
        .I5(coeff_counter[5]),
        .O(\coeff_counter[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \coeff_counter[11]_i_1 
       (.I0(coeff_counter[11]),
        .I1(coeff_counter[10]),
        .I2(coeff_counter[9]),
        .I3(\coeff_counter[11]_i_2_n_0 ),
        .O(coeff_counter_0[11]));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \coeff_counter[11]_i_2 
       (.I0(coeff_counter[8]),
        .I1(coeff_counter[6]),
        .I2(\coeff_counter[10]_i_2_n_0 ),
        .I3(coeff_counter[7]),
        .O(\coeff_counter[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \coeff_counter[1]_i_1 
       (.I0(coeff_counter[0]),
        .I1(coeff_counter[1]),
        .O(coeff_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \coeff_counter[2]_i_1 
       (.I0(coeff_counter[2]),
        .I1(coeff_counter[0]),
        .I2(coeff_counter[1]),
        .O(coeff_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \coeff_counter[3]_i_1 
       (.I0(coeff_counter[3]),
        .I1(coeff_counter[1]),
        .I2(coeff_counter[0]),
        .I3(coeff_counter[2]),
        .O(coeff_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \coeff_counter[4]_i_1 
       (.I0(coeff_counter[4]),
        .I1(coeff_counter[2]),
        .I2(coeff_counter[0]),
        .I3(coeff_counter[1]),
        .I4(coeff_counter[3]),
        .O(coeff_counter_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \coeff_counter[5]_i_1 
       (.I0(coeff_counter[5]),
        .I1(coeff_counter[3]),
        .I2(coeff_counter[1]),
        .I3(coeff_counter[0]),
        .I4(coeff_counter[2]),
        .I5(coeff_counter[4]),
        .O(coeff_counter_0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \coeff_counter[6]_i_1 
       (.I0(\coeff_counter[10]_i_2_n_0 ),
        .I1(coeff_counter[6]),
        .O(coeff_counter_0[6]));
  LUT3 #(
    .INIT(8'h9A)) 
    \coeff_counter[7]_i_1 
       (.I0(coeff_counter[7]),
        .I1(\coeff_counter[10]_i_2_n_0 ),
        .I2(coeff_counter[6]),
        .O(coeff_counter_0[7]));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \coeff_counter[8]_i_1 
       (.I0(coeff_counter[8]),
        .I1(coeff_counter[6]),
        .I2(\coeff_counter[10]_i_2_n_0 ),
        .I3(coeff_counter[7]),
        .O(coeff_counter_0[8]));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \coeff_counter[9]_i_1__0 
       (.I0(coeff_counter[9]),
        .I1(coeff_counter[7]),
        .I2(\coeff_counter[10]_i_2_n_0 ),
        .I3(coeff_counter[6]),
        .I4(coeff_counter[8]),
        .O(\coeff_counter[9]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[0] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[0]),
        .Q(coeff_counter[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[10] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[10]),
        .Q(coeff_counter[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[11] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[11]),
        .Q(coeff_counter[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[1] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[1]),
        .Q(coeff_counter[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[2] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[2]),
        .Q(coeff_counter[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[3] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[3]),
        .Q(coeff_counter[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[4] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[4]),
        .Q(coeff_counter[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[5] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[5]),
        .Q(coeff_counter[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[6] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[6]),
        .Q(coeff_counter[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[7] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[7]),
        .Q(coeff_counter[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[8] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(coeff_counter_0[8]),
        .Q(coeff_counter[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \coeff_counter_reg[9] 
       (.C(CLK),
        .CE(stream_valid_in_IBUF),
        .CLR(rst_n_IBUF),
        .D(\coeff_counter[9]_i_1__0_n_0 ),
        .Q(coeff_counter[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[0]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[0]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[0]),
        .O(\ct_out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[10]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[10]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[10]),
        .O(\ct_out[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[11]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[11]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[11]),
        .O(\ct_out[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[12]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[12]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[12]),
        .O(\ct_out[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[13]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[13]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[13]),
        .O(\ct_out[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[14]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[14]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[14]),
        .O(\ct_out[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[15]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[15]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[15]),
        .O(\ct_out[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[16]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[16]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[16]),
        .O(\ct_out[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[17]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[17]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[17]),
        .O(\ct_out[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[18]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[18]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[18]),
        .O(\ct_out[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[19]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[19]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[19]),
        .O(\ct_out[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[1]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[1]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[1]),
        .O(\ct_out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[20]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[20]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[20]),
        .O(\ct_out[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[21]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[21]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[21]),
        .O(\ct_out[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[22]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[22]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[22]),
        .O(\ct_out[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[23]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[23]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[23]),
        .O(\ct_out[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[24]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[24]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[24]),
        .O(\ct_out[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[25]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[25]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[25]),
        .O(\ct_out[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[26]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[26]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[26]),
        .O(\ct_out[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[27]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[27]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[27]),
        .O(\ct_out[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[28]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[28]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[28]),
        .O(\ct_out[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[29]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[29]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[29]),
        .O(\ct_out[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[2]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[2]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[2]),
        .O(\ct_out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[30]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[30]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[30]),
        .O(\ct_out[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[31]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[31]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[31]),
        .O(\ct_out[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[32]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[32]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[32]),
        .O(\ct_out[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[33]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[33]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[33]),
        .O(\ct_out[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[34]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[34]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[34]),
        .O(\ct_out[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[35]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[35]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[35]),
        .O(\ct_out[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[36]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[36]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[36]),
        .O(\ct_out[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[37]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[37]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[37]),
        .O(\ct_out[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[38]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[38]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[38]),
        .O(\ct_out[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[39]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[39]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[39]),
        .O(\ct_out[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[3]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[3]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[3]),
        .O(\ct_out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[40]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[40]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[40]),
        .O(\ct_out[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[41]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[41]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[41]),
        .O(\ct_out[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[42]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[42]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[42]),
        .O(\ct_out[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[43]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[43]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[43]),
        .O(\ct_out[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[44]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[44]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[44]),
        .O(\ct_out[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[45]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[45]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[45]),
        .O(\ct_out[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[46]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[46]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[46]),
        .O(\ct_out[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[47]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[47]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[47]),
        .O(\ct_out[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[48]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[48]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[48]),
        .O(\ct_out[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[49]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[49]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[49]),
        .O(\ct_out[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[4]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[4]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[4]),
        .O(\ct_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[50]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[50]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[50]),
        .O(\ct_out[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[51]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[51]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[51]),
        .O(\ct_out[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[52]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[52]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[52]),
        .O(\ct_out[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[53]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[53]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[53]),
        .O(\ct_out[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_10 
       (.I0(ciphertext_stream_in_IBUF[35]),
        .I1(ciphertext_stream_in_IBUF[9]),
        .I2(ciphertext_stream_in_IBUF[25]),
        .I3(ciphertext_stream_in_IBUF[7]),
        .O(\ct_out[53]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_11 
       (.I0(ciphertext_stream_in_IBUF[30]),
        .I1(ciphertext_stream_in_IBUF[29]),
        .I2(ciphertext_stream_in_IBUF[34]),
        .I3(ciphertext_stream_in_IBUF[8]),
        .O(\ct_out[53]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_12 
       (.I0(ciphertext_stream_in_IBUF[39]),
        .I1(ciphertext_stream_in_IBUF[37]),
        .I2(ciphertext_stream_in_IBUF[28]),
        .I3(ciphertext_stream_in_IBUF[47]),
        .O(\ct_out[53]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_13 
       (.I0(ciphertext_stream_in_IBUF[21]),
        .I1(ciphertext_stream_in_IBUF[18]),
        .I2(ciphertext_stream_in_IBUF[46]),
        .I3(ciphertext_stream_in_IBUF[13]),
        .O(\ct_out[53]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_14 
       (.I0(ciphertext_stream_in_IBUF[1]),
        .I1(ciphertext_stream_in_IBUF[32]),
        .I2(ciphertext_stream_in_IBUF[50]),
        .I3(ciphertext_stream_in_IBUF[38]),
        .O(\ct_out[53]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_15 
       (.I0(ciphertext_stream_in_IBUF[26]),
        .I1(ciphertext_stream_in_IBUF[6]),
        .I2(ciphertext_stream_in_IBUF[10]),
        .I3(ciphertext_stream_in_IBUF[41]),
        .O(\ct_out[53]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_16 
       (.I0(ciphertext_stream_in_IBUF[0]),
        .I1(ciphertext_stream_in_IBUF[17]),
        .I2(ciphertext_stream_in_IBUF[51]),
        .I3(ciphertext_stream_in_IBUF[31]),
        .O(\ct_out[53]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_17 
       (.I0(ciphertext_stream_in_IBUF[27]),
        .I1(ciphertext_stream_in_IBUF[14]),
        .I2(ciphertext_stream_in_IBUF[3]),
        .I3(ciphertext_stream_in_IBUF[36]),
        .O(\ct_out[53]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_18 
       (.I0(ciphertext_stream_in_IBUF[23]),
        .I1(ciphertext_stream_in_IBUF[19]),
        .I2(ciphertext_stream_in_IBUF[40]),
        .I3(ciphertext_stream_in_IBUF[33]),
        .O(\ct_out[53]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \ct_out[53]_i_2 
       (.I0(stream_valid_in_IBUF),
        .I1(\ct_out[53]_i_3_n_0 ),
        .I2(\ct_out[53]_i_4_n_0 ),
        .I3(\ct_out[53]_i_5_n_0 ),
        .I4(\ct_out[53]_i_6_n_0 ),
        .I5(\ct_out[53]_i_7_n_0 ),
        .O(\ct_out[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ct_out[53]_i_3 
       (.I0(\ct_out[53]_i_8_n_0 ),
        .I1(\ct_out[53]_i_9_n_0 ),
        .I2(\ct_out[53]_i_10_n_0 ),
        .I3(\ct_out[53]_i_11_n_0 ),
        .I4(\ct_out[53]_i_12_n_0 ),
        .O(\ct_out[53]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ct_out[53]_i_4 
       (.I0(\ct_out[53]_i_13_n_0 ),
        .I1(\ct_out[53]_i_14_n_0 ),
        .I2(\ct_out[53]_i_15_n_0 ),
        .I3(\ct_out[53]_i_16_n_0 ),
        .O(\ct_out[53]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ct_out[53]_i_5 
       (.I0(ciphertext_stream_in_IBUF[49]),
        .I1(ciphertext_stream_in_IBUF[44]),
        .I2(ciphertext_stream_in_IBUF[4]),
        .I3(ciphertext_stream_in_IBUF[2]),
        .I4(\ct_out[53]_i_17_n_0 ),
        .O(\ct_out[53]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ct_out[53]_i_6 
       (.I0(ciphertext_stream_in_IBUF[43]),
        .I1(ciphertext_stream_in_IBUF[15]),
        .I2(ciphertext_stream_in_IBUF[48]),
        .I3(ciphertext_stream_in_IBUF[11]),
        .I4(\ct_out[53]_i_18_n_0 ),
        .O(\ct_out[53]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ct_out[53]_i_7 
       (.I0(sticky_malformed_error_reg_n_0),
        .I1(auth_flag_in_IBUF),
        .O(\ct_out[53]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ct_out[53]_i_8 
       (.I0(ciphertext_stream_in_IBUF[52]),
        .I1(ciphertext_stream_in_IBUF[53]),
        .I2(ciphertext_stream_in_IBUF[20]),
        .I3(ciphertext_stream_in_IBUF[12]),
        .I4(ciphertext_stream_in_IBUF[24]),
        .I5(ciphertext_stream_in_IBUF[16]),
        .O(\ct_out[53]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ct_out[53]_i_9 
       (.I0(ciphertext_stream_in_IBUF[22]),
        .I1(ciphertext_stream_in_IBUF[42]),
        .I2(ciphertext_stream_in_IBUF[45]),
        .I3(ciphertext_stream_in_IBUF[5]),
        .O(\ct_out[53]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[5]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[5]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[5]),
        .O(\ct_out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[6]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[6]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[6]),
        .O(\ct_out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[7]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[7]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[7]),
        .O(\ct_out[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[8]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[8]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[8]),
        .O(\ct_out[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ct_out[9]_i_1 
       (.I0(stream_valid_in_IBUF),
        .I1(dummy_stream_in_IBUF[9]),
        .I2(\ct_out[53]_i_2_n_0 ),
        .I3(ciphertext_stream_in_IBUF[9]),
        .O(\ct_out[9]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[0]_i_1_n_0 ),
        .Q(Q[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[10]_i_1_n_0 ),
        .Q(Q[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[11]_i_1_n_0 ),
        .Q(Q[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[12]_i_1_n_0 ),
        .Q(Q[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[13]_i_1_n_0 ),
        .Q(Q[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[14]_i_1_n_0 ),
        .Q(Q[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[15]_i_1_n_0 ),
        .Q(Q[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[16]_i_1_n_0 ),
        .Q(Q[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[17]_i_1_n_0 ),
        .Q(Q[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[18]_i_1_n_0 ),
        .Q(Q[18]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[19]_i_1_n_0 ),
        .Q(Q[19]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[20]_i_1_n_0 ),
        .Q(Q[20]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[21]_i_1_n_0 ),
        .Q(Q[21]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[22]_i_1_n_0 ),
        .Q(Q[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[23]_i_1_n_0 ),
        .Q(Q[23]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[24]_i_1_n_0 ),
        .Q(Q[24]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[25]_i_1_n_0 ),
        .Q(Q[25]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[26]_i_1_n_0 ),
        .Q(Q[26]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[27]_i_1_n_0 ),
        .Q(Q[27]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[28]_i_1_n_0 ),
        .Q(Q[28]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[29]_i_1_n_0 ),
        .Q(Q[29]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[2]_i_1_n_0 ),
        .Q(Q[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[30]_i_1_n_0 ),
        .Q(Q[30]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[31]_i_1_n_0 ),
        .Q(Q[31]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[32]_i_1_n_0 ),
        .Q(Q[32]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[33]_i_1_n_0 ),
        .Q(Q[33]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[34]_i_1_n_0 ),
        .Q(Q[34]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[35]_i_1_n_0 ),
        .Q(Q[35]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[36]_i_1_n_0 ),
        .Q(Q[36]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[37]_i_1_n_0 ),
        .Q(Q[37]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[38]_i_1_n_0 ),
        .Q(Q[38]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[39]_i_1_n_0 ),
        .Q(Q[39]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[3]_i_1_n_0 ),
        .Q(Q[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[40]_i_1_n_0 ),
        .Q(Q[40]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[41]_i_1_n_0 ),
        .Q(Q[41]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[42]_i_1_n_0 ),
        .Q(Q[42]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[43]_i_1_n_0 ),
        .Q(Q[43]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[44] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[44]_i_1_n_0 ),
        .Q(Q[44]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[45] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[45]_i_1_n_0 ),
        .Q(Q[45]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[46] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[46]_i_1_n_0 ),
        .Q(Q[46]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[47] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[47]_i_1_n_0 ),
        .Q(Q[47]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[48] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[48]_i_1_n_0 ),
        .Q(Q[48]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[49] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[49]_i_1_n_0 ),
        .Q(Q[49]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[4]_i_1_n_0 ),
        .Q(Q[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[50] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[50]_i_1_n_0 ),
        .Q(Q[50]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[51] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[51]_i_1_n_0 ),
        .Q(Q[51]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[52] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[52]_i_1_n_0 ),
        .Q(Q[52]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[53] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[53]_i_1_n_0 ),
        .Q(Q[53]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[5]_i_1_n_0 ),
        .Q(Q[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[6]_i_1_n_0 ),
        .Q(Q[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[7]_i_1_n_0 ),
        .Q(Q[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[8]_i_1_n_0 ),
        .Q(Q[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \ct_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(\ct_out[9]_i_1_n_0 ),
        .Q(Q[9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    out_valid_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(stream_valid_in_IBUF),
        .Q(aggregated_valid_out_OBUF));
  LUT4 #(
    .INIT(16'hBB08)) 
    sticky_malformed_error_i_1
       (.I0(sticky_malformed_error_i_2_n_0),
        .I1(stream_valid_in_IBUF),
        .I2(sticky_malformed_error_i_3_n_0),
        .I3(sticky_malformed_error_reg_n_0),
        .O(sticky_malformed_error_i_1_n_0));
  LUT4 #(
    .INIT(16'hBFFF)) 
    sticky_malformed_error_i_2
       (.I0(\coeff_counter[11]_i_2_n_0 ),
        .I1(coeff_counter[11]),
        .I2(coeff_counter[10]),
        .I3(coeff_counter[9]),
        .O(sticky_malformed_error_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sticky_malformed_error_i_3
       (.I0(\ct_out[53]_i_3_n_0 ),
        .I1(sticky_malformed_error_i_4_n_0),
        .I2(sticky_malformed_error_i_5_n_0),
        .I3(\ct_out[53]_i_5_n_0 ),
        .I4(\ct_out[53]_i_6_n_0 ),
        .O(sticky_malformed_error_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sticky_malformed_error_i_4
       (.I0(ciphertext_stream_in_IBUF[38]),
        .I1(ciphertext_stream_in_IBUF[50]),
        .I2(ciphertext_stream_in_IBUF[32]),
        .I3(ciphertext_stream_in_IBUF[1]),
        .I4(\ct_out[53]_i_13_n_0 ),
        .O(sticky_malformed_error_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sticky_malformed_error_i_5
       (.I0(ciphertext_stream_in_IBUF[31]),
        .I1(ciphertext_stream_in_IBUF[51]),
        .I2(ciphertext_stream_in_IBUF[17]),
        .I3(ciphertext_stream_in_IBUF[0]),
        .I4(\ct_out[53]_i_15_n_0 ),
        .O(sticky_malformed_error_i_5_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    sticky_malformed_error_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(sticky_malformed_error_i_1_n_0),
        .Q(sticky_malformed_error_reg_n_0));
endmodule

module spa_csa_segment
   (Q,
    D,
    CLK,
    \sum_out_reg[0]_0 );
  output [53:0]Q;
  input [53:0]D;
  input CLK;
  input \sum_out_reg[0]_0 ;

  wire CLK;
  wire [53:0]D;
  wire [53:0]Q;
  wire \sum_out_reg[0]_0 ;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[24]),
        .Q(Q[24]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[25]),
        .Q(Q[25]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[26]),
        .Q(Q[26]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[27]),
        .Q(Q[27]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[28]),
        .Q(Q[28]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[29]),
        .Q(Q[29]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[30]),
        .Q(Q[30]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[31]),
        .Q(Q[31]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[32]),
        .Q(Q[32]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[33]),
        .Q(Q[33]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[34]),
        .Q(Q[34]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[35]),
        .Q(Q[35]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[36]),
        .Q(Q[36]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[37]),
        .Q(Q[37]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[38]),
        .Q(Q[38]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[39]),
        .Q(Q[39]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[40]),
        .Q(Q[40]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[41]),
        .Q(Q[41]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[42]),
        .Q(Q[42]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[43]),
        .Q(Q[43]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[44] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[44]),
        .Q(Q[44]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[45] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[45]),
        .Q(Q[45]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[46] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[46]),
        .Q(Q[46]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[47] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[47]),
        .Q(Q[47]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[48] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[48]),
        .Q(Q[48]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[49] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[49]),
        .Q(Q[49]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[50] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[50]),
        .Q(Q[50]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[51] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[51]),
        .Q(Q[51]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[52] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[52]),
        .Q(Q[52]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[53] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[53]),
        .Q(Q[53]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sum_out_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

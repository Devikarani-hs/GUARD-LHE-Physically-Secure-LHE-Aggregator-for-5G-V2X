// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Sep 29 11:44:56 2026
// Host        : ihs08 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /media/ihs08/ddda4ade-cc4b-4ec0-850c-a754a93b6a2c/CHES-2026/baseline_proj/Baseline_Proj.sim/sim_1/impl/func/xsim/tb_baseline_func_impl.v
// Design      : aggregator_baseline
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_WIDTH = "54" *) (* ECO_CHECKSUM = "e25d6618" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module aggregator_baseline
   (clk,
    rst_n,
    ciphertext_stream_in,
    stream_valid_in,
    auth_flag_in,
    aggregated_coeff_out,
    aggregated_valid_out);
  input clk;
  input rst_n;
  input [53:0]ciphertext_stream_in;
  input stream_valid_in;
  input auth_flag_in;
  output [53:0]aggregated_coeff_out;
  output aggregated_valid_out;

  wire [53:0]aggregated_coeff_out;
  wire [53:0]aggregated_coeff_out_OBUF;
  wire aggregated_valid_out;
  wire aggregated_valid_out_OBUF;
  wire auth_flag_in;
  wire auth_flag_in_IBUF;
  wire [53:0]ciphertext_stream_in;
  wire [53:0]ciphertext_stream_in_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst_n;
  wire rst_n_IBUF;
  wire stream_valid_in;
  wire stream_valid_in_IBUF;

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
  LUT2 #(
    .INIT(4'h8)) 
    aggregated_valid_out_OBUF_inst_i_1
       (.I0(stream_valid_in_IBUF),
        .I1(auth_flag_in_IBUF),
        .O(aggregated_valid_out_OBUF));
  IBUF auth_flag_in_IBUF_inst
       (.I(auth_flag_in),
        .O(auth_flag_in_IBUF));
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
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF stream_valid_in_IBUF_inst
       (.I(stream_valid_in),
        .O(stream_valid_in_IBUF));
  spa_csa_segment u_spa
       (.D(ciphertext_stream_in_IBUF),
        .Q(aggregated_coeff_out_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF));
endmodule

module spa_csa_segment
   (Q,
    D,
    clk_IBUF_BUFG,
    rst_n_IBUF);
  output [53:0]Q;
  input [53:0]D;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;

  wire [53:0]D;
  wire [53:0]Q;
  wire clk_IBUF_BUFG;
  wire rst_n_IBUF;

  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[10]),
        .Q(Q[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[11]),
        .Q(Q[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[12]),
        .Q(Q[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[13]),
        .Q(Q[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[14]),
        .Q(Q[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[15]),
        .Q(Q[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[16]),
        .Q(Q[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[17]),
        .Q(Q[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[18]),
        .Q(Q[18]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[19]),
        .Q(Q[19]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[20]),
        .Q(Q[20]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[21]),
        .Q(Q[21]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[22]),
        .Q(Q[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[23]),
        .Q(Q[23]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[24]),
        .Q(Q[24]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[25]),
        .Q(Q[25]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[26]),
        .Q(Q[26]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[27]),
        .Q(Q[27]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[28]),
        .Q(Q[28]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[29]),
        .Q(Q[29]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[30]),
        .Q(Q[30]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[31]),
        .Q(Q[31]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[32]),
        .Q(Q[32]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[33]),
        .Q(Q[33]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[34]),
        .Q(Q[34]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[35]),
        .Q(Q[35]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[36]),
        .Q(Q[36]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[37]),
        .Q(Q[37]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[38]),
        .Q(Q[38]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[39]),
        .Q(Q[39]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[40]),
        .Q(Q[40]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[41]),
        .Q(Q[41]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[42]),
        .Q(Q[42]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[43]),
        .Q(Q[43]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[44]),
        .Q(Q[44]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[45]),
        .Q(Q[45]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[46]),
        .Q(Q[46]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[47]),
        .Q(Q[47]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[48]),
        .Q(Q[48]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[49]),
        .Q(Q[49]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[4]),
        .Q(Q[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[50]),
        .Q(Q[50]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[51]),
        .Q(Q[51]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[52]),
        .Q(Q[52]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[53]),
        .Q(Q[53]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[5]),
        .Q(Q[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[6]),
        .Q(Q[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[7]),
        .Q(Q[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
        .D(D[8]),
        .Q(Q[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \sum_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n_IBUF),
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

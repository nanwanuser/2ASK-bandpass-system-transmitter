// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 17:26:13 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_sim_netlist.v
// Design      : ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [18:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [18:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [0:0]NLW_U0_doutb_UNCONNECTED;
  wire [18:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [18:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "19" *) 
  (* C_ADDRB_WIDTH = "19" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "16" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.149749 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ROM.mem" *) 
  (* C_INIT_FILE_NAME = "ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "524288" *) 
  (* C_READ_DEPTH_B = "524288" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "524288" *) 
  (* C_WRITE_DEPTH_B = "524288" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(1'b0),
        .dinb(1'b0),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[18:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[18:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [18:0]addra;

  wire [18:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;
  wire ram_douta;
  wire ram_ena__0;
  wire \ram_ena_inferred__0/i__n_0 ;
  wire \ram_ena_inferred__1/i__n_0 ;
  wire \ram_ena_inferred__2/i__n_0 ;
  wire \ram_ena_inferred__3/i__n_0 ;
  wire \ram_ena_inferred__4/i__n_0 ;
  wire \ram_ena_inferred__5/i__n_0 ;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOUTA(\ramloop[3].ram.r_n_0 ),
        .addra(addra[18:16]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (\ramloop[2].ram.r_n_0 ),
        .\douta[0]_0 (\ramloop[1].ram.r_n_0 ),
        .\douta[0]_1 (ram_douta),
        .\douta[0]_2 (\ramloop[7].ram.r_n_0 ),
        .\douta[0]_3 (\ramloop[6].ram.r_n_0 ),
        .\douta[0]_4 (\ramloop[5].ram.r_n_0 ),
        .\douta[0]_5 (\ramloop[4].ram.r_n_0 ),
        .ena(ena));
  LUT4 #(
    .INIT(16'h0100)) 
    ram_ena
       (.I0(addra[16]),
        .I1(addra[18]),
        .I2(addra[17]),
        .I3(ena),
        .O(ram_ena_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    \ram_ena_inferred__0/i_ 
       (.I0(addra[17]),
        .I1(addra[18]),
        .I2(ena),
        .I3(addra[16]),
        .O(\ram_ena_inferred__0/i__n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \ram_ena_inferred__1/i_ 
       (.I0(addra[16]),
        .I1(addra[18]),
        .I2(ena),
        .I3(addra[17]),
        .O(\ram_ena_inferred__1/i__n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \ram_ena_inferred__2/i_ 
       (.I0(ena),
        .I1(addra[18]),
        .I2(addra[17]),
        .I3(addra[16]),
        .O(\ram_ena_inferred__2/i__n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \ram_ena_inferred__3/i_ 
       (.I0(addra[16]),
        .I1(addra[17]),
        .I2(addra[18]),
        .I3(ena),
        .O(\ram_ena_inferred__3/i__n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \ram_ena_inferred__4/i_ 
       (.I0(addra[18]),
        .I1(addra[17]),
        .I2(ena),
        .I3(addra[16]),
        .O(\ram_ena_inferred__4/i__n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \ram_ena_inferred__5/i_ 
       (.I0(addra[18]),
        .I1(addra[16]),
        .I2(addra[17]),
        .I3(ena),
        .O(\ram_ena_inferred__5/i__n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ram_ena_inferred__6/i_ 
       (.I0(ena),
        .I1(addra[18]),
        .I2(addra[17]),
        .I3(addra[16]),
        .O(ram_ena__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.DOUTA(ram_douta),
        .ENA(ram_ena_n_0),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOUTA(\ramloop[1].ram.r_n_0 ),
        .ENA(\ram_ena_inferred__0/i__n_0 ),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOUTA(\ramloop[2].ram.r_n_0 ),
        .ENA(\ram_ena_inferred__1/i__n_0 ),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOUTA(\ramloop[3].ram.r_n_0 ),
        .ENA(\ram_ena_inferred__2/i__n_0 ),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DOUTA(\ramloop[4].ram.r_n_0 ),
        .ENA(\ram_ena_inferred__3/i__n_0 ),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.DOUTA(\ramloop[5].ram.r_n_0 ),
        .ENA(\ram_ena_inferred__4/i__n_0 ),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOUTA(\ramloop[6].ram.r_n_0 ),
        .ENA(\ram_ena_inferred__5/i__n_0 ),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.DOUTA(\ramloop[7].ram.r_n_0 ),
        .ENA(ram_ena__0),
        .addra(addra[15:0]),
        .clka(clka),
        .ena(ena));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    ena,
    addra,
    clka,
    DOUTA,
    \douta[0] ,
    \douta[0]_0 ,
    \douta[0]_1 ,
    \douta[0]_2 ,
    \douta[0]_3 ,
    \douta[0]_4 ,
    \douta[0]_5 );
  output [0:0]douta;
  input ena;
  input [2:0]addra;
  input clka;
  input [0:0]DOUTA;
  input [0:0]\douta[0] ;
  input [0:0]\douta[0]_0 ;
  input [0:0]\douta[0]_1 ;
  input [0:0]\douta[0]_2 ;
  input [0:0]\douta[0]_3 ;
  input [0:0]\douta[0]_4 ;
  input [0:0]\douta[0]_5 ;

  wire [0:0]DOUTA;
  wire [2:0]addra;
  wire clka;
  wire [0:0]douta;
  wire [0:0]\douta[0] ;
  wire [0:0]\douta[0]_0 ;
  wire [0:0]\douta[0]_1 ;
  wire [0:0]\douta[0]_2 ;
  wire [0:0]\douta[0]_3 ;
  wire [0:0]\douta[0]_4 ;
  wire [0:0]\douta[0]_5 ;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire ena;
  wire [4:2]sel_pipe;
  wire [4:2]sel_pipe_d1;

  MUXF7 \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(\douta[0]_INST_0_i_2_n_0 ),
        .O(douta),
        .S(sel_pipe_d1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_1 
       (.I0(DOUTA),
        .I1(\douta[0] ),
        .I2(sel_pipe_d1[3]),
        .I3(\douta[0]_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(\douta[0]_1 ),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_2 
       (.I0(\douta[0]_2 ),
        .I1(\douta[0]_3 ),
        .I2(sel_pipe_d1[3]),
        .I3(\douta[0]_4 ),
        .I4(sel_pipe_d1[2]),
        .I5(\douta[0]_5 ),
        .O(\douta[0]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[4]),
        .Q(sel_pipe_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[4]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.DOUTA(DOUTA),
        .ENA(ENA),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hCED0D6962763E5D41173286CFBF22D8E3096FAE73FE5940163C8ECDB6EFDD2B0),
    .INIT_01(256'h923D2E0C2AEA5BA319C8DD9F0870E7D2812EF03616879F0548A183C8EC1BB29D),
    .INIT_02(256'h8C9B2EE1B28C6AEA5BDF3968BD1F7470C7AEC1F2ACEA769BA3F9C8BD5FB4CC1B),
    .INIT_03(256'hBF34CC27EEE1D2CC166AFBA3F968A16334B05B123DD20CEAAADB9FB9C8419F88),
    .INIT_04(256'hB782E45043B4BD12A1FF213D00D8F5343D1F748C1B2EE12ECC8AD69B0399083D),
    .INIT_05(256'hB75D5CC9EBF804835A65E678EE5DA4B0F2EB9E9CEB734C01B25983ED113C84F6),
    .INIT_06(256'h5DFF500284DE841F7B4C1575C9FF4E22370F2DFC99BBEFEB638A2579C891D27F),
    .INIT_07(256'h17315DA060F2C4E9CC7BC4431A450137016D30EF9DE35E741FC34345FAA9FFEE),
    .INIT_08(256'h1D8E7016CAE77FE5A49103486C3BF29DAE30F68A379FE594810328ACBB929D2E),
    .INIT_09(256'hE7EEC1920C5696DB6339C8FD1FF430E76E01D270962AE71FC5744163884C9BB2),
    .INIT_0A(256'hF48C672E61124CEA561B63D928BD9FB4F067AEC1324C0AD6FB6345885D1F3430),
    .INIT_0B(256'h5D1FF4901B4E81520CEA561B5F39C87D1F088C1B921DAE8CAAEAA71F3948FD63),
    .INIT_0C(256'h8A949D2C9B23342532013FC1FDE02FB9885D1F7430C72E81920C2A163BE399E8),
    .INIT_0D(256'h9F67ADDC496B40942BCA25662881F96898AAA32EE0176B783DCA85CBED319C8C),
    .INIT_0E(256'h890D00C8CDA34E8447EB9C5A45D6A8F12D6F782DDC891B0F14834ABAF6489EF2),
    .INIT_0F(256'hA9F78E3D10F8921349CCF0EBF71ADAC6B8B652072752232EC43B9CFCF5FA0628),
    .INIT_10(256'hB2FD12F096CA87CF65D4A143E86C5B523D6E3096CAE79FC574C143288C9BD2BD),
    .INIT_11(256'h3067EEE1D2CC16D65B839968411FF40CE7CEC1EEF016AA5B9F2524C1A34830DB),
    .INIT_12(256'hDF08B0E76E8112CC8AD61B8399E85D3FD49047AEA1B22C2AD61B2379E8DD1FB4),
    .INIT_13(256'h883DDFD4CCA7EE8152CCEA565BDF05083D630830E7123DAECC2A161B5F39B4C1),
    .INIT_14(256'h50796802D01783D45DD261E7F152C763F9E85DDFB4B0C72E81F24C2A367B63B9),
    .INIT_15(256'hF29F075D5C71EBF03C030A15C680417D6010359C461BE8DBF3CA8E2B8B531154),
    .INIT_16(256'h1F71D270679D4346BB306BB36A65F698BE9A80B76DFCA9FB8F94834AE529686E),
    .INIT_17(256'h8596579165B088DA04966017D43C3DAA5E80461A5F78D21B39D0CF7B5CB51AC9),
    .INIT_18(256'hDB527D6E30F62A877F659441A3682C5BD2C1EE50F6AA277FC574C16388EC9BB2),
    .INIT_19(256'hB4F067EE61F270EA165B631988FD1FB4F0E7AEBD12F02A1667BF25F4012328EC),
    .INIT_1A(256'h819F74F0C72EA1922C4AB63B63F908DD5F64D0A74EE1F20C6A567B03F98801E3),
    .INIT_1B(256'h39B4FD5FB41027CE0152ACEA36DBE33908FDDF28CC5B1241524C566AA79FF908),
    .INIT_1C(256'hF8F8BD5B7ECC47BB94DDCA39678E8AFB63F9C83D3FB470A7CEE112706A561B63),
    .INIT_1D(256'h6EF20FC7EDBC097BB874735A65AEB8D9054817FD5346EB476B7C99C6D58BAD19),
    .INIT_1E(256'hA138D152BF6F82BBC69B7F94E3CA55C6801EFDEFAF7D0C6964F0A423EA7A2937),
    .INIT_1F(256'h2E8111E795F960102207F6D40F0BFC15CDA640AE223F089293D6B30FE413E5BA),
    .INIT_20(256'h4C1B123DD2B0764A87BF45F481A3C84C5B92FD6E909616671F25748123888C9B),
    .INIT_21(256'hC334B047AEE152CCAA161B6339487D9FF4301B6E7D6E8CD66A27FFE5B47D63C8),
    .INIT_22(256'h08FD3F549027AE81C22C0AD64B0319E8DDBF94A0874ED172CCD6363B8319885D),
    .INIT_23(256'hA3F968FDDFF4B067CE8192AC6A568723F9347DE38830E7EEBD12F056965B23B9),
    .INIT_24(256'h2580D0726BAE4CFFC3D4FD8A7908B656DB8379C8BD1FB4B0A74E01F2ACCAB63B),
    .INIT_25(256'h284EF2EF2F4DC4F1D32F24B36AE5B6372E458FB7BD3C210450A48829382B0B25),
    .INIT_26(256'h6556A8E10240E7BDD39684B864631A955EC071028FF72D1CF1EBE0E443156529),
    .INIT_27(256'h840D5E3DFF8E061058BAFB3E847FAB3C020DCE68015298C0A237594480540C8D),
    .INIT_28(256'h28EC3B527D0EB0364A6723E514A1A3086C1B12C1EE50AA16A7FF459481A3080C),
    .INIT_29(256'h8163F470A7AEC112CC6A36DBA345487D5FB4CC5BD2FD5270162AA77F05487DC3),
    .INIT_2A(256'hB94881BF34F0676EA1922C4A961B83D9281D3F345047CEE1B22C56369B83F908),
    .INIT_2B(256'h7B83D9E87D1FB430672EE1F28C56961BA3C548FD1F4830A792812E8CEA561BE3),
    .INIT_2C(256'hE9A5041C669B76D47F036C05AAE9009616BBE339083DBFD4901BAEFD4E2C6A36),
    .INIT_2D(256'h56488E42578F956431C45004E3F55A66FCF6626FB765946ED41F071E17B8551B),
    .INIT_2E(256'hADEA1957918D9FFC529CF613101483AA155EA8A69AAF076D44B1FBF0343C0A45),
    .INIT_2F(256'h30E7526526E89925A8E0DA1B6E7BE77427557516379E29E848124456FB80E40C),
    .INIT_30(256'h23C8F0DBD2FD0E5096CAA75F85D4A123680C9B6E7D2E70EAAA073F853481E308),
    .INIT_31(256'h34011F7490A7EEA192ACEA56DB237968DDFFF470DB12C152B0568AA71FC5747D),
    .INIT_32(256'h5F3908BDDF34B0A70EE1728C8A367B4319E8BD7F14D047CEE1120C8AB6BB2399),
    .INIT_33(256'h567B8379689D3F3470A72E6152CCAA56DB63F9C87DDF08F0672E41920CEA561B),
    .INIT_34(256'h4F69F9348C668BCE94C77B4C459AE6D0EA36DB23F9C8DDDFB470272E81F24CAA),
    .INIT_35(256'hC5D6084E826F8FF5A469CBE0B49C75EDEAECA6C23FAF653B96F483B75E17B885),
    .INIT_36(256'hD4F54589E7DE3238A8ADB3898B4F4BC3BACDB6E026A22017ADDCB9BB70B4A36A),
    .INIT_37(256'hC400E30A3ED6C8E1FD80081A33999B8B3C178AFA0928912D40E8DDAC892B8094),
    .INIT_38(256'h7D63088CA7D2FD6E90769627FF65747DE3880C5B529DD2502ACA27FFC53401E3),
    .INIT_39(256'hB9C85D1FB4F0679261722C6AD65B23F9285D9F08309BEEE1AE8CD616279FC514),
    .INIT_3A(256'h1BDFF9E81D5F5410470E01F26C0A360BC399E8BD7F6490C78E6112AC4A76DBE3),
    .INIT_3B(256'h0AD61BC37928BDDFD490C72E41524CEA561BA339B481DF08CCC7AE4192CC2A16),
    .INIT_3C(256'hF91FC509F420CABB36B49F2BCC35558E2C0AD67BA399087D5F3470672E81124C),
    .INIT_3D(256'h4A653618BE22D757A59CA97B708B73F21932A8E1A5280786ABEE08F3C9E069EE),
    .INIT_3E(256'h4BCCB585A9686E69B8AF3D9C06AB20D493F2D57E808E9A17B7ED9C598B0FF463),
    .INIT_3F(256'h3B503B0CD5AA311F71E210B746A391D4C0D07B5AA519AF6E524400CA73118B58),
    .INIT_40(256'hC8C1E3F48C3B12BDAE30D66ADBBF0534816348CC5B92BD2ECC162A875F0534C1),
    .INIT_41(256'h233948DDBFD470478E0192AC0A165B6319287D1FB430A72E7D6EB056EA276385),
    .INIT_42(256'h961B5F59883DDF3470878E01B29C4A764BF35968EDFFA410474EE172ACCA565B),
    .INIT_43(256'hCC0A569B639968BDBF34F0C76E812ECCAAD6FBE339887D1FF410E72EC112AC6A),
    .INIT_44(256'h3AE6C08E9548102A9B56F41F1B3C3ADD924CCA761BE379C85DBF347047AE81F2),
    .INIT_45(256'h833AD586F8E6BAEF2FDD9CE91B1F3C4BC611E60851ED37288233B2984D499E41),
    .INIT_46(256'hD09BAC954AC91881E9DFF825DC913350D4738A359ED87EF2FF67427369E4F0B4),
    .INIT_47(256'h11F34F7CB4C58A86A8599AAFC75D43B6542004BCEA3DD99355752098BDC449AB),
    .INIT_48(256'hC5B40163F4B0BBD27DEE70D6AA879FC5943D63086C9BEE416EB0D6AA5B5FB934),
    .INIT_49(256'hFB639928DDBFD450474ED1724C2A969B4399883D9FB4F0C7EE3D52F0AA567B23),
    .INIT_4A(256'h2A569B8399E8DD5F9490C70E21426C9A764B3399A81D7F5490F72E0152AC0AD6),
    .INIT_4B(256'hF24C2A76FB3359083D1FD490A7EE41924C6A561BE37908FD5F94F0272E8172CC),
    .INIT_4C(256'hB261948A010588302A3BF6545F74933201F22C0A369B03F9083D5F74F0274EE1),
    .INIT_4D(256'h8B034A05C620B6622F07B5AC79844FA4D7D2F5B667711A5850325F84E64D37B8),
    .INIT_4E(256'h7BF0BBA38A1516DFF592FF670D7C19FBB054A3CA0DC6180E420FE752DC59242F),
    .INIT_4F(256'h685D1FFF43F3753A59A8866DF0E8D204860488B4EB42924167D96DEF9705EC99),
    .INIT_50(256'hA345083DE348CC5B127DD2F0164A871FB9C8019F48B0E7527D0E9076CA27FFC5),
    .INIT_51(256'hB63B035958DDFFE460078E01722CEAB63BA3F908FD5F34101BAE7D92CC2A56E7),
    .INIT_52(256'h0CAA96FB8399083D3FD4D0774EA1F25CCAF64BE3A9289D3F547067EE81724C6A),
    .INIT_53(256'h01F2CC0A969BE339685D5FD470E7AE0192CCEA96DB2379885D3F7410672E0152),
    .INIT_54(256'hC37A49E498D9DD38004AE3D6C4205CBB32BDD2CCCA163BA3F9E8BD5F9470474E),
    .INIT_55(256'hB0A4430AD5DEC07EF250B7ADCC26BB586BFCC2FD26582A2DCF4796CF04E6F31F),
    .INIT_56(256'h2974DF9463FAFA612F3E62DF176D33B9E49014D382A566683E825F58ED2C8624),
    .INIT_57(256'h75847644E04B4CB54AD977FEF6E0E0CD64D96318BC5C0D12D633AEC5B0D855BC),
    .INIT_58(256'hDB9FF9B4BD1F748C1B5241920C96AAE7DFB974FD6388306792FD4ED096EA67DF),
    .INIT_59(256'hCAB69B9319889D8F3460470EE1B20CCAB6CBA34508BD5F94303BEE3D920C6A96),
    .INIT_5A(256'h928C6AB67B0319B46D8F64A0F78E21025CFA76BB73D9D8DD3F14B047AEE1322C),
    .INIT_5B(256'h4E81524C8AD6CB6319686DFFB410274EA172ACAA569B03B9883D3F54F0E70EE1),
    .INIT_5C(256'h2B437A7DB93FA13598F0CA2396CB682CDB2E81922CCA761BE37968BD1FD4F087),
    .INIT_5D(256'h1B70F4B33AB57E98CEAD2FB77D33C9830773E35A7A897855C5D0743E3104983B),
    .INIT_5E(256'h3C294420A4836A72E5986E6D8F57DD9CA98B6044ABFA559E183E727FC742CCB9),
    .INIT_5F(256'h08921B8A5C802BCBB18DEE603AA2508F85232E0B1013983D7A41501E2DE85882),
    .INIT_60(256'h1627A3F9083D9F48ECE792C1D250AAAADB234548A1E3883067B23D8E70AAEA5B),
    .INIT_61(256'h6C6A86BB73E9D82DBF1490F74EE152EC6AD63BE3C5F45D6374F09B923DB22C2A),
    .INIT_62(256'h8192AC6A76FB8399A81D0F14D087CE21C21C3A060B33E9681D7FB470874E0192),
    .INIT_63(256'h67AE01924C6AB6FBE339E8BDDFB4B0A72EA1C2CC2AB67B03D9A8DD5F34F0274E),
    .INIT_64(256'h2FA0F7AA32A107B9656828A2C30643F4B0C72E4192CC0A36DB0399C85DDF54B0),
    .INIT_65(256'h792470F4F30ACD0698D1628F27427C59ECA764532A9A269FC1ED7464BE4F8468),
    .INIT_66(256'hED2CF91B70DBC3A59E96382142B777CDFCB9BBE0D4230ACD96183E72CFA7FD2C),
    .INIT_67(256'hE098CD3BEE8427DBF4221D992F69923F37228C06DB685B1CC5FE7E48D152E068),
    .INIT_68(256'h2A567B9F4588C11F08301B923D4E305696DBA3B9747D1F280C5B52BDAE8CD616),
    .INIT_69(256'hB29CBA06BBC3A968DD0F54A0870E01B24C0A96DBA339E87D1FB4CCE7EE017270),
    .INIT_6A(256'h0E61122C0AB67BE399A89D7F1490C78E51C29C6A864BB319681D5F5410F77EA1),
    .INIT_6B(256'h10C74EC112CC8A96DBC39968FDDF54B0A7AE61524CAA567B431908BD5F34F027),
    .INIT_6C(256'hACA4E68B554A597FA125D048A2BC3D5FB4D067CE01124C2A763B63B948BD5F34),
    .INIT_6D(256'h93E6FBE0843322CD4648DEC25F2715DCAE9CEF4BCC65F571FFC1D91CA4BE4F6A),
    .INIT_6E(256'hC76A231634DFBC942D7A46D75ECA07575D1CD9DB4024733255A638CE029FD8C2),
    .INIT_6F(256'h024FA8355B369BC70B1CD53AB6FF99F2F0A77DB3965BF06B4C2D655688D6DD60),
    .INIT_70(256'h0C8AD69B23F9F4FD634870E72E3DEE8C5656A75F45B401E3344C5B2EC1D28CAA),
    .INIT_71(256'h51721CFA46CB7329D8ADCFA46087AED1722CEAEAFBA31988FD2348B0E72EA192),
    .INIT_72(256'h272EE1126C0AB6FB43D9284D0F64D0777E21829CFA860B4399E85D0F1450470E),
    .INIT_73(256'h5470E74E61727056B63B3319E8FD5F149007CEE1524C6A36FBE3F908FDFF3410),
    .INIT_74(256'h4ED3D2B0A335BA6997414D20A7A5885D5F54F087AE0132EC8AD67BA399887DDF),
    .INIT_75(256'h7DF3F97B403C2B22F556E8FE6D1FCFC22B5EBB20AB7CA2EA7937055122A4BE1F),
    .INIT_76(256'h0F0832D3965300B4D42A2D76207E1A6F77DD8C29DBD0A4BB9A0D86E85EA2DF27),
    .INIT_77(256'h863AEF375A83C9CCF02BF3555A09DF61B29FD83DB32EDC6B5B0C857AD628219D),
    .INIT_78(256'h52CCCAB61BA3B974819F74B0679201AE8C8A169B23B948FDE3F4B05BD2BD6EF0),
    .INIT_79(256'hBE6182EC4A064B33D9D8DD7F3410477ED1AE4CCAD65B03F9E8BDDFD4B0C72E41),
    .INIT_7A(256'h50C74E0112ACCA764BC3D9E86DCFA4E0777E21023CFA46BB4359E8DD7F245007),
    .INIT_7B(256'h1FF430C7EE812ECC2A76BB433908DDBFB47027EE81122CEA76BBE3F968BD5F54),
    .INIT_7C(256'hBB496FA834BCD5BAC9978E72FF8F79885D3F54B027EE8192CCEA96DB2379E85D),
    .INIT_7D(256'h07BD8C9993805C4B3ABA461891ADF7987A2B394B6054BBB59A162353D1A2248E),
    .INIT_7E(256'hC21F184D4489EBB0D3F42AA57E009E2200877DFC99FBF81CABC27516D89E2D80),
    .INIT_7F(256'h88AEE2C098ADE80E7C78CB84C53A198FD1BD10B81293FE3C373B2CB5CD3EC861),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8152CCEA569B63C5B4BDDFF4B0A7AEC1F2702AD6E7A3F9088123F48C47AE6112),
    .INIT_01(256'h770EA1C2DC3AB60BF329D82DFF5490772EE1B2AC8AEA7B033908BD5F34F09BEE),
    .INIT_02(256'hD47027AE21F2AC6A064BB3E928DD7FE460773E91E26C7A864BB3D9586DCF9420),
    .INIT_03(256'h3DDF087067AE4112702AD67B43F908BD3F94F0279201922C8A869BA3D9685DBF),
    .INIT_04(256'hEA3CFBAFB08B63CA5A19587E1A076379681D3FD470C74EC1924C8A967BE3F928),
    .INIT_05(256'h5F273D6C49CB58FC336A9586D771025040EA7CF1CB208C3C35854DABADEF1C74),
    .INIT_06(256'h86656057752C29DBA7D3E37A75E658BE2DEF87FD7C296B985C2BAAD5A6D8418D),
    .INIT_07(256'h316F01456060F923CE8BBF9C7CEAE561B7911A6F7F0283CE1C37EBF4FA1D0697),
    .INIT_08(256'h2EE1B24C6A06275FF9885D5FB470676EE1528CAA16A7DFF9C87DE388CC679241),
    .INIT_09(256'h20078E51E25CCA763BF329585DBFD410F70EA192CCEAD6FBE3D9485DDF545027),
    .INIT_0A(256'hBF74F0C74E61C29C3AC6CBB329A86D4FC480377E71322CBAF64B83E9A82D0FE4),
    .INIT_0B(256'hE8FDDF547047EEE1920CBAD69B0379E81D3F5490C7AE01F22C4AD61BE39908BD),
    .INIT_0C(256'hB02D008184AF042BFA453E20C6AA5B035928BD1F34F0A76E8112AC6A769B0339),
    .INIT_0D(256'h9220D8ADFCC933D894FC7AF54917E115F8C03D5CC6A4D803B4555E5575AD6F4C),
    .INIT_0E(256'hA8D5DDF05875BC713CE7641C4A2506A0EE121F17F55C0903A85CF35A6DB6D711),
    .INIT_0F(256'hE5F6A8A1BD007F3263A6AC4F4BA3B5AAB917317D97970A3BE65C2FFB73EAB501),
    .INIT_10(256'h672EBD720C56565BA3B988BD3F8870E74E61528C96AA9BA3C5C8FD237470672E),
    .INIT_11(256'hE4A0B78E9F021CFA06FBB3E9A86D3F94A0477E7D520C8A365BE3F9E85DDF14B0),
    .INIT_12(256'h3D5F9450470E61721C7AB6CB33D958AD2F448077BE51C21CBAF69B8329989D8F),
    .INIT_13(256'h79B4BD3FD490C72EE1D2ECEAB67BE3B9E81DDFB490C74EE132EC8A563BC3D9E8),
    .INIT_14(256'h8818ED5C0664C06C0BA2BDAE70D696DB6319083DBF3490C7EE01128C6AB67BC3),
    .INIT_15(256'h516DA0E76DFC11539074F35A2A21DF85491878FD53264BCBF36CC1065575AD81),
    .INIT_16(256'h961F69EDB0487534AEAC200BA35545B648AE426F6782DC91A34044939A252967),
    .INIT_17(256'hEA45996F99855FE0FD9B26CB200CA3D1B516C7CE4D10781273DEAB50EC037A72),
    .INIT_18(256'hF067CE81724C162A670399C8BD1FB4B0C7CE3D9270AA969BE3F9B481E3F44CE7),
    .INIT_19(256'h7FD40077F65182DCBAF64B7359A81DBF14A047AEE1922CCA569BE33968FDBFB4),
    .INIT_1A(256'h68BDFFE4D0070EA1821CBA460BF329280D4FC400EFBEF142DCBA064BC389782D),
    .INIT_1B(256'h03B9C83D5FE410672E01F21C0A76DB63F9685D1F3470874E61426C6A367B8379),
    .INIT_1C(256'h25804FE93C5933D450C7AE41124C8A363B4379885D5F3470274E8112CC0AD69B),
    .INIT_1D(256'hB7110D5FD7CDC4C93BF064EBB54AB95F71B2D7175D6C91AC3F7498C986550B4D),
    .INIT_1E(256'h9A79F78ED2FF580DC3861B7064433A759E88FEA25FB882FC896B80C4937A25C9),
    .INIT_1F(256'h149D5A4E2019E99F98223B5183AF0388EA25E14831ED9728FD0BF983EF5C7325),
    .INIT_20(256'h54F047EE41B2CCD6161B6399483DBFD450274E816ECC966A9B6345C83DBFB410),
    .INIT_21(256'h9D8F24E0978E2142DCFA46CB8319589D8F6420872E0172ECEAB67B637968EDDF),
    .INIT_22(256'hF9685DFF649087CE21421C3AC68BC3E9786DAFA400F7BED1822C8A064B1329D8),
    .INIT_23(256'h7B0379E83DBFB4B0A7AE01324C6A161BA3A928BD5FB4D0070EA1F2CC8A367B83),
    .INIT_24(256'h210D2FB34D2C915FD430C74E4112CC2AD6FBE33928BDBF3450A72E61528C8AB6),
    .INIT_25(256'hD6C851D24F5775BCD94490C45C85C57660EA0A3F1822C4DE0CDF1F4097C6D5DB),
    .INIT_26(256'h9AD566578E6D9737F2C3694B0F74030A8529F7FEA29FA70D84A94B68A4F30A9A),
    .INIT_27(256'hC314B5F27947797A0FCF3203F14B0F0F1CAAA5D6402E02B0C8EA8489B4E81433),
    .INIT_28(256'hBFD420474E0192702A561BA3F9483DBF94D067123D2E7096D6A7DFB9087DDFF4),
    .INIT_29(256'hE8DDCF84C0378E51329CFA76CBE319286D8F94D0874E01F20CBA6A1B0339883D),
    .INIT_2A(256'h4379686D8FE410F7FE91021C3AF63BC38978CD8F24D0773E51424C4A762B73E9),
    .INIT_2B(256'h56FBE399E8DD3FF4CC27CE6112ECEA569B8399885D5F9490878E61F26C0A369B),
    .INIT_2C(256'h87D186B3EFA5B45DBF7410C7CE61124C6A769B43D9683DDF5450674E01924CEA),
    .INIT_2D(256'hDAD6886EF28F8F4D5C79FBC04B5CB20DBEF0B65ACF07C56C19AB7717E06986E5),
    .INIT_2E(256'h5455A516F7FEC27FE79DAC59BB4004EB623AE9686EED1F2FE51C49333074DCC5),
    .INIT_2F(256'h18DCC43DF286B84E922008920C79BB7F2C8CF555662836024F70AA531653DFBB),
    .INIT_30(256'hDDBFD490874E01D28C8AD6A7E3B9087D1FD4F0A76E41AE2C1696DBA339E8FD3F),
    .INIT_31(256'hA9D8CD8FC420470E5132FCFA067B83E9984D8F1410C7CE8192AC16767BC36988),
    .INIT_32(256'hFB03A9E85DFFD450877ED1B29C3A460BC3E9386DAF24E0D73EA1126C0A06CBF3),
    .INIT_33(256'h6AD67BE319E86D3FD410070E416E4C8A363BE39908BDBF5450F7AE6172EC8AD6),
    .INIT_34(256'h59008A062733F9481D1F941027EE01F2AC8AB69BE31968FD8F347027CE41F2AC),
    .INIT_35(256'hD5C556D8BE0297EFAD5CA96B500BD32A4D9290EEA5F8F7AA2B3680F3C91ED7D6),
    .INIT_36(256'h741C553A5690DE6D7027CD5C2973C8A4732AFAA9373EEDCF0FB51C49BBB074FC),
    .INIT_37(256'h2B406CAC793E264776F564785DD329448FAB9CFA351957FE7284002A4C29646F),
    .INIT_38(256'hE8BDDF5470672E41528CAA56FB2339C81D5FD470E76E3DD2CCD656E7E37988BD),
    .INIT_39(256'hB329D82DCF44D0F73E51C2DCBA36FB03E9A81D5F5410872EE132CC0A767BF319),
    .INIT_3A(256'h369B03D9281D7F1420F7FED1B21C4A06CB2B2998CD4F64D0777E2142ECBA468B),
    .INIT_3B(256'h4CCA361BE3D9E8BD5FB4D0A74EA192CC0AF63B6379085DBFB450274E81B2DC6A),
    .INIT_3C(256'hFA5E988EB673F359E8DD3F345047CEE1126C6A767B03D908BDBF34F0E7AE0112),
    .INIT_3D(256'h23656236A0A67A37777D5C317BD0246C5A813E58015D478882EC3E180D379EB9),
    .INIT_3E(256'h1004ACCAED2628BE8D5F58EDC4492BB864F3553A8957914257AFED1C469B0F34),
    .INIT_3F(256'h896B98A4949D55DE87D965FF379DECDEFC476493824D013F31E9BF480DB4A9DB),
    .INIT_40(256'h99085DDFD470A792C1F24C6AF6A783B9C85D1F344C1B92E12E50EAAAA7A345C8),
    .INIT_41(256'hCB4329786D0F24D077FE21722C8A36CBB35958ED3F14A0078E61522C0AB64B03),
    .INIT_42(256'h8AD67B8399683D3FA420778E51C26CFA06CB73E958ED8F64D0F70E51F29CCA06),
    .INIT_43(256'h12CC2A36FB83F9C83D5F9410A72E0172AC0A769BE3F9085D7F5490C74E61F2AC),
    .INIT_44(256'h75BAE9FF36AE0DFB99085D5FD450474E61F2CC8A363B83F908BDDFF41027AE61),
    .INIT_45(256'h276A9B2CCB5F5E6A57870D64E9BB38E40BCE4D492F896268D0A217FA66F33730),
    .INIT_46(256'h7BD0AB63224D2648A1ED3FC7AD73F12BA054434A5AC9570E52CFB7EDACF9648F),
    .INIT_47(256'h54618BCF43647DAAA94701B2AF58B283F69B386483E2AA011FF5E2C0C83533B9),
    .INIT_48(256'h4379E8BD1F34CC1B6E81520C2AAAFB2319885D1FF430676EA12E8C96569B6379),
    .INIT_49(256'h86FB13A9189D8F64E077FEF1829C0A866B33D9A8BDFF64A0C78E6172ECCA86BB),
    .INIT_4A(256'hACCA36FBE3A9281D8FA400B77E91421C3AC60BF3E9589DCFA420C77E01326CFA),
    .INIT_4B(256'hE1F2CC6A36DB0319685DBF1490470E2112AC6A36FB63F9883D8FB41047CE01F2),
    .INIT_4C(256'h3B7A4AFD58AC78E36319281D8F94F0874ED1F2EC8AB64B83D9083DDFB41027CE),
    .INIT_4D(256'h81E5D25BF427217B2170AF05BC694B308C87421AA1C7569220073A6F841873DF),
    .INIT_4E(256'hF6A4D0C41CCAB5B6F771AD60E77D44390BEF0B1C2A45F698DEF2EF977D5CF986),
    .INIT_4F(256'h31C0999B47F374E2FD2117F17D5FB742ACD9D300944C91A5A113EE6D57E71A3B),
    .INIT_50(256'hFB0399E89D3F74305BCE61F270AA365B03D9B4BDE374B0C7AEC172708A967BA3),
    .INIT_51(256'h9A763B73B1180D0F549037BE71C21CCAA68B3319981DCFC4D007CE81B21CFA86),
    .INIT_52(256'h12ECCAF6CB3319D86D3FA4E087FED1E25C9A46CB73D9181D8F14A0F7FE91325C),
    .INIT_53(256'hAE01924C0A76FBE3F908DD8FB470074E61122C8AD61B43A9A82D3F9490070E21),
    .INIT_54(256'h6013F196B9D444102743D9E8DDFF9490270ED1B2CC0A36FBC399683DFF34F0C7),
    .INIT_55(256'hCA21E5D25BF467591F1B5A10A57CE90BF4D0BB6AB22190EE0DF08C9ECF7A98F7),
    .INIT_56(256'hD4B6041094438A1546E82E3DEF873DEC31AB0FE4C35AF576B8FEB23FB7CDF108),
    .INIT_57(256'h53C953FEBCF73B4CDD0A96E80EB6DF50ED3BE6C3F0FB1C954AED078E4A2738CD),
    .INIT_58(256'hB61B63D9681D5F344CA77E81F2302AEA3BB399E83DDFB4B01B2EC1D24C8AD67B),
    .INIT_59(256'h5C4A462BF389984D8FC4A0B7BEA1725C7A46CB3359584D4F14A0078E6102DCCA),
    .INIT_5A(256'hA1726CBA064B4359A89D4F2490373E11625C9AC66BF36998ADCF64A0F7FEF1C2),
    .INIT_5B(256'h474EA152CC0AF69B6319285DBF54F087CEE152ECCAD61BC379289D3FD450270E),
    .INIT_5C(256'h4F83F039F2F2B40236CB835928ED7FE490777E61B22C0A764B6399E85DBF3490),
    .INIT_5D(256'hA8CA21E5D25B1407591FA32ECEBECB5E24341C130A1A3200CE32E4643E0F3AA8),
    .INIT_5E(256'h9D434E44E47C83DAD5498011E2E0B73D84299B3014E3D56526582E823F34CC9D),
    .INIT_5F(256'h90E835230954F73434A5555658F18D10282DECB93B07C3A3AD9EA9E0D12A2098),
    .INIT_60(256'h4A56FB4399E8BDDF74F0C72E01AEAC2AD63B43A988FD3F1420672E41F22C8AB6),
    .INIT_61(256'h029CDAA60BD35998AD4F2400770E21325CFA868B73A9D86DCF64F0F70E91821C),
    .INIT_62(256'h8E21321C4A064B43D9A86D4FE420F75EF1623C9A668BF38918AD7F64A0F77ED1),
    .INIT_63(256'h10C7AE01F2AC0AD69B83D988DD8FD490870E01B2EC0A064B33A928DDFF5460F7),
    .INIT_64(256'h8C3BF7880A2DD25C8A06CB8329E81DFF5420C70E51F26CEAF63B83F908DDBF14),
    .INIT_65(256'h1DC84AC10532BB1407391F236E964C056C5410445C9DBD963F61499C643ECFAA),
    .INIT_66(256'h270233C633787C7B0A151E18165AD7E74DBC7164D0243C15B516C88E6156160C),
    .INIT_67(256'h420F8342CC796400432455B2B9DFB112B8F8BDB3961FB024E4715A768886A2BF),
    .INIT_68(256'h2C6A967BB399085D9F7450872E01124CAA46FB437968BD7F144C1B4E61922CEA),
    .INIT_69(256'h51425C1A26EBB369184D2F844007FE11A21C3A26BBC36978EDFF5490078E5112),
    .INIT_6A(256'h770E21721C4AF60B9329182D0FE42097BE11A2FC5A26CB1369F8ADAFC44037BE),
    .INIT_6B(256'h9490674E8172ECCA76FBB35988BD3F349077CEA132ECFA460B435928DD7FE4A0),
    .INIT_6C(256'hCA58934FCC85D9AAACBA067BC359A81D5F5470272E21128CCA36FB63A9E89D7F),
    .INIT_6D(256'h8C9D482A4185D25BF467391FA36E960C3DF0224D537C5E55B977E9B19CA49E5F),
    .INIT_6E(256'hA0481273F91BF83C7CE225A678FEDA1777CD7C39FB30AB431AD536BFE723EEF6),
    .INIT_6F(256'h2E92DFFF791C86443B4374B585891F9575B0D8FD44562CF053E4D5BA799871F2),
    .INIT_70(256'hB22CEA767B43C5683D3FD4F0F7AED1B2EC4A36FBC3F9E89D3F34109BFE41420C),
    .INIT_71(256'h3EF1E2BC3AA68BF3D9B84DAF8450877EF1E2DC0AF6BB7309A8ED5F5450773E51),
    .INIT_72(256'h60070ED1025C9AF60B738978CD4FE4E0D7DE71A27C9A468B7389186D4F840057),
    .INIT_73(256'h7F9410A7CE61C28C8A764B4359181D8F9420070ED1C29C3A86CB73A9E86D8F64),
    .INIT_74(256'hEF5AC857ABE3A8A7B22CCA76FB0399281D3FD41087CEE1F2EC0A767B8379685D),
    .INIT_75(256'hF68C7D48AA410592DBB467391FA32E96CC3D08EAF9DDC0DD8AC6FFDD317CE41E),
    .INIT_76(256'hC2CF286D3351AB2014533A0D8E604662CF079D84490B0F1C5335DA8F399F236E),
    .INIT_77(256'h4C6A6DD07362BCD6BCFFCB6C4D5556274ED2806F9D9B167467FF83620D52C086),
    .INIT_78(256'hA1F2AC4AF6FB83F988DD3F94D047CE21B26C4A069BC359583DFF34B0C7CEE172),
    .INIT_79(256'hD77E71A2DC9A266B1309986D4F9450F75EB1E2DC8AF6CB7389D81D8FE4D0B78E),
    .INIT_7A(256'hC450F7FE9102DCBA76CB938978ED8F24E0571E91A2BC9AA6EB936918ADAF8400),
    .INIT_7B(256'h5D3F74B0C7CED1F2AC0A760BC319E81D8F24A007BE51E2BC7A460B8369189DCF),
    .INIT_7C(256'h1E2F2ADC8FA4C148A1B2DCCA06BB0319A86D7F541087CE01B26C8AF69B637988),
    .INIT_7D(256'h8E568CFD082AC145126334A7F91F63EED6CC3D0892F93DAA5338BD3BFD319CC4),
    .INIT_7E(256'h5EA2502F15947D33F02443DAED1EF851A22F4F25BC19DB78FC9CC7B4E7B99F23),
    .INIT_7F(256'h194786ED0BEFCD1C6EF4879B0465DDF648564DE027B55C694BB743B3021D7618),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8E21925CCA863B031928ED8FA470078E21B26C3AF6BBC35958DD3F34F047AE61),
    .INIT_01(256'h00575EB1A2FC7AC68B5349F8AD7F64D037DE9102DCBAC66BC3A9E85D3F64E0B7),
    .INIT_02(256'h4FC4A077BE11826C7A062B9369786D2F4438171E71A23CDAC66B33C9F82D6F44),
    .INIT_03(256'h681DBF5410877EA1B29C4A86FB3359D89DEF7CF0C34525B2A4A2660BF329A8ED),
    .INIT_04(256'h44AE7FDE1B0066B1FED1421C3AF6FB4359181DFFD41007CEE1920CEA56FB83D9),
    .INIT_05(256'h238E160CBD88EA4145EA633427F91FA3AED6B4BD886AF93DEAE30C0FBD5341BC),
    .INIT_06(256'hD8C6D25BDF6DA4299BA8CB639A5DDE98DE22EFD7151C866B98A3EA5BF4E7399F),
    .INIT_07(256'h9A8917697AF0572D04662C8FFC33E2BA8698260D58570D6C597C302BC3DA4DE6),
    .INIT_08(256'hB7FE21729CFA763B63A9581D0FD420373E2172EC2A06CB73A9C85DE35410474E),
    .INIT_09(256'h2420975E71021C5A26AB1389F8AD4F648037BE71C29C9A468BB3A978EDAFC420),
    .INIT_0A(256'h2D2F248037DE91025C9AE6EB9329F835EF44E0171EB1E2DC1A268B136958CD2F),
    .INIT_0B(256'h19283D7F5450874E61B21CFAF6CB73E9B87D785985529BDC6B90025EABF36958),
    .INIT_0C(256'h4C74CE37F99FFA8697FE51B26C4A764BC329E81D7FD4D0878EA1B24CCAF6BB43),
    .INIT_0D(256'h9FC38E164CBD08EA413D121B34A739FFA32E2E4CBD7012793D2AE3CCDF01F79F),
    .INIT_0E(256'h2E90815AA06F5584865B3844CB2E41BE376E222FCF2DCCF10B5585D2DB74E7B9),
    .INIT_0F(256'hC36CBFD1EBF7D26A1E177E3C973C13AE3A4EE0BEA94FCF5DE40E9B57C44B056D),
    .INIT_10(256'hE0870ED1329CBA567B4399A8AD8F14A0D7BE9162EC3A36BBC399A85D1F94B087),
    .INIT_11(256'h8F144097DEB1E2BC5AA6539369F8CD4FC460F77E11421C1A466BF329A84DEFA4),
    .INIT_12(256'h984D6F24C0B7BEF1E2BC1AA62B93E9F80D2F443857DE31A23C7AC62B9389789D),
    .INIT_13(256'h03D968DD8F9490470E21321CFA464B73EA25A84AA105D21B347F03BADED35369),
    .INIT_14(256'h5B1AE41A785B29CC1037BE9142DC4A76FBB31958DDFF9490474E6112AC8A063B),
    .INIT_15(256'hB97FC36E96CC3DC84AC1E5B23B9487197FC38E16CCBD8892F9BD6A63CC27795F),
    .INIT_16(256'hAE11F331A57F5802C3F9F3D824BB6E75C9183E1AAFEF4DA4BE6AC105D2DBF467),
    .INIT_17(256'hFA73DCCF21873B96AEF40530D239FDCAC32C4FD137ABDAE25849EC964DB77059),
    .INIT_18(256'h64D087FE51E22C2A364BB3A9D89D8FE460178ED1726C3AC68BC359E8BD3F3490),
    .INIT_19(256'h4DAF44006F9EC982DC5AE60BF32918ADEF8480F78EF1825C7A866BF3A998CDCF),
    .INIT_1A(256'h49F80D2FC4E0B7BE11E23C5AE62BF331788D4F8440179EF1E284BA66EBD36998),
    .INIT_1B(256'h7B0399A89D0F14F0F70E21E2DC7A866C56ECDDE8CA2105521B4C9F5DBE8E132B),
    .INIT_1C(256'h9FA3AEFEBAE02B571400973E91429C4AF60B4359A81D3FD4F0470E61B22C8AF6),
    .INIT_1D(256'h07597F23EE960C7DA84AA16532FB5447D9FF830EB6EC1DA84A21E532BBF4E759),
    .INIT_1E(256'hE38C9FC1673B76CEE4359C0E3D37C8614E59A85EFA572F75E9C8AAC10532DBCC),
    .INIT_1F(256'h91462F40D331172B46BEA4A590F299DD4AC30CFFC1675BD66ECC05301279BD6A),
    .INIT_20(256'h0F14A077FE51924CAAF64B4329686D7F6460777ED1326CDA46FBC319E85D3FD4),
    .INIT_21(256'h78EDAFC440AFDE11623CDAC62B13E9F8CD6FA4A0B75E9102BC7AC64BF36918DD),
    .INIT_22(256'hD331380D2F84E0171E715A7CDA666B13C9408D2F4440371E315A9C9AE6AB5309),
    .INIT_23(256'h867B8359289D0F949087BE91E26C33236E762CDD284AC18552E334DF11F9BE33),
    .INIT_24(256'hD93F830E1654B11937DC38175EB1426C3A26CB7319289D8FE450078EE1426CCA),
    .INIT_25(256'h1407B99F23EE168C7DC8AAC18532BB1407597F43CE166C1D280A61A572FB9447),
    .INIT_26(256'h8AC36CFF21073BF60E14855032D99D4AC3CC9F21176B4AD24C7DC8AAC1BDD25B),
    .INIT_27(256'hB57166AFA0B3ED0B577AE244B53CDE754DDA13FCEF51370B460EA4559082999D),
    .INIT_28(256'h9D3F64A077BED142EC4A46FB7359686D2FC42077CE51C21C3A067B63A9286DFF),
    .INIT_29(256'h09780D6F8438EF1EB1227CDAE6EBB389388DEF0420373E91E21CDA860B33A978),
    .INIT_2A(256'h332B09384DEF84605766B1DA84DAA66BD33138355744C0173E4932BC1A26EB93),
    .INIT_2B(256'h4A769B4359D8ADAF145077E6210B59FF430EB62C1D48AAC185EA9B34DFA105BE),
    .INIT_2C(256'hC7193F83CE766CFDBC74ACA8AFE651625C9A068BB3A9A89DCF1420474E51C2AC),
    .INIT_2D(256'h5B14E7B99F238E168CFD48AA4105D2BBF4E7B97FC32ED60C9D280A616572FB54),
    .INIT_2E(256'h8D7A735CCF91077B36CED4651032D93D12DB74E7B99F23EE960C7D48AA4105D2),
    .INIT_2F(256'h563D39EEE730E32DBB079AA2C4896C627531E66F3C2FCD6B37E6827849C0A2C9),
    .INIT_30(256'h784D7F64A0073ED1126C7AF6CB432958EDAFA4D047FEA1826CBA865BC359A89D),
    .INIT_31(256'h5329F8F5D7FC00571E31E204E2A62B73B1402D4F2460371E11029C3A266BD329),
    .INIT_32(256'h9E7353B140CD6F4480EF26C922FC9A268B2BB1C0752F8440D79EF1A2FCDAA62B),
    .INIT_33(256'h2C4A464BB3D9282D8F2400A7871487D9FF43CEB6EC9D482A813D129BCCDF219D),
    .INIT_34(256'h5447193F83CEB6EC1DC8A2D700BFA6C9A2FC7A46BBB32958ED3F5420F70EA142),
    .INIT_35(256'hD2BBF467B91FC38E160CFD48AA21E5325BF4E7D99F236E968CFD484AA165B2FB),
    .INIT_36(256'hA9ADFAC3EC7F21470B366EF485882A4105D2DBF4E7599F636E166C7D48AA4105),
    .INIT_37(256'hF416FDB916BFD0532DCB175A2238751072E9AD5A9340934DCB97FA6284756082),
    .INIT_38(256'hE9186D4FA400078EA1B2BC4A867BC3A9184D8F64F0870E1182DCCA16FB8319E8),
    .INIT_39(256'h2BF389F8F5EF4440371E89A23C7AC66B93C9384DCF4440D7BEF162DC7A266B13),
    .INIT_3A(256'h3D1EF36B31408DAFFC38EF1E0962BC9A9EEBAB31408DEFFC38175EF1A2FCDA1E),
    .INIT_3B(256'hC2EC0AF64B73E9F8EDEFF441323B5487D93F030E760CBDC82A81C5EA63B42741),
    .INIT_3C(256'h3B5447D93F83CEB62C1DA8AA29EF478609DA3C9AC68B13A9A89DFF1450F7FE71),
    .INIT_3D(256'hE5325BF4E7B97F238E968C7D484A216532BB1487397F236E160C7DA8AAC1E5B2),
    .INIT_3E(256'hA2695D4AC36C9FA1079BAED64C7D48AA414592630C27B91F236EF68C7DA82AC1),
    .INIT_3F(256'hF9CCEE251146EF3C6F11C7FB360E1455FC7EA501961F10E37DBBF71A7EA425E0),
    .INIT_40(256'h7329586D0F2490070EE1B26C3A366B43E9D86D7FD4A0F79E9172ECCA36FB0319),
    .INIT_41(256'hC6EB6B09C04D4F4480971EC9DA04FA5ED39309404D4F24A0D766B1E2BC9A3E8B),
    .INIT_42(256'h419DBE430BF13835970438EF6671E284E2E65393C93875AF4438371E315A3CDA),
    .INIT_43(256'h21B26C4A068BB369B8A1CE2165B2FB9487193F436E2E343D486AF93D6A1BB4A7),
    .INIT_44(256'h32BB1407D97FC38EF66C1D28CAC1DD687E591A04DA266B730918EDFFE4A0B78E),
    .INIT_45(256'hC105D25BF467B99FC3EE168C9DA84A210552BBF467591FA36E168C7D48AAC1E5),
    .INIT_46(256'h5012793D6AE34C1F01DF63EE56CCBD308209D1165F74A7F99F236E168C7DC84A),
    .INIT_47(256'h98697CA2695D4AC30CDF01E7BB465ED879F4D6DD79161F10C3F1978B76EE9465),
    .INIT_48(256'h2B73E9189D8F9450773ED1426C0A064BF3A9185D1F1490B7BEA1E21C6A369B03),
    .INIT_49(256'hA2662B53B160ADEFC440EF5EC9A2DC7A1EEB136998ADD78440573E7162DC1AC6),
    .INIT_4A(256'hDF41FD1E436B49B8756F0440579EB1A2BC225E2B2BC9000DAF040017BE31E284),
    .INIT_4B(256'hFE11829CBA868B93C599A8CA61A5723B944719FF6356AE0C9DC8EAF97DEA9B34),
    .INIT_4C(256'h0532BBF407397FC38EF66C1D280AA105CAF1B14A04A2E64B9329586DFFA4A037),
    .INIT_4D(256'hAA2105D2DBF4E7597FA36E168C7DA84A4185D21B14E7391F236E168C7D48AAC1),
    .INIT_4E(256'hC5706A813DEAE34C27F95F9B769E18C194C62D79EABBB4E7399F238E168C7D48),
    .INIT_4F(256'h3EA485B012B9BDEA638C7FB10BE7124A20D164067D41866F2C5F41279B56AEB4),
    .INIT_50(256'h26BB9389789D7FD420478EA1826CFAF64B33A9A8DD8F94E0D77E61B21CFA860B),
    .INIT_51(256'hFC9A66ABEB91380D2FC480171E51223CDAE6ABF389380D97C4C057DEF122841A),
    .INIT_52(256'hCCA7C13D3E430BF1B8F5973CB8EF1E49020422E6AB13F1B80DEFC4809766B1DA),
    .INIT_53(256'h77FED1025CFAE64BBAEC1D280A61A572FB5447D9DF1B5616EC9DC8EAF9BD121B),
    .INIT_54(256'h21E5325BF467B99FC36E76EC9DA84AA1E5D23362222422E6AB1309982D4FE4E0),
    .INIT_55(256'h484AC185D2DB14E7B9DFA36E166CFD482A2105525BF467F91FA36E168C7DC84A),
    .INIT_56(256'hF4855052591DCAC36CCF0D9B7F02DA407124BE2125D21BF4E7B97F236EF68C9D),
    .INIT_57(256'h562E4C45F052595D9A2F905BE5B32F5C7AD0014C5E29DDAA6374DF81271BD6AE),
    .INIT_58(256'h7AC64BD389585D0F94D077FED132ECCAE66BB32968ED8FE400770EE142EC3A76),
    .INIT_59(256'h625C5A9EABAB4940CDEF44C0EFDE8962FC5AE68BF3C9B88DAF44A0375E715A5C),
    .INIT_5A(256'h6334DFC12D66330B31C075973CB8575EB15AC45A1E2B53B140352F24B8AF2671),
    .INIT_5B(256'h0077DE91027CDA018EB6ECDD680A612572FB9487F95F636EB6EC7D486AF9C592),
    .INIT_5C(256'hAAC105D25B7467399F230EB66C7D48AAC105D2DBC001A4B2BEABD3B1F88DAFC4),
    .INIT_5D(256'h9DA8AAC105D25B14E7391F23EE168C3DC84A41E5D2DBF467391FA36E160CFD48),
    .INIT_5E(256'hBEE415A0A2494DA67FC88B75AD4F62CA6805280AA185D2DBF4E7599FC38EF68C),
    .INIT_5F(256'h9BD66E1455C03E2539CEF728CB55138F32521875D01201C5EADBCC1FA1077BB6),
    .INIT_60(256'hDCFA86EB1329285D7FD420F7DE51829CFAC6CB4319289D8FC420774E51321C4A),
    .INIT_61(256'h49E27CDA3E2B534978F5177CC0979E115A5C5AE66B53E900CD6F0480EF1E89E2),
    .INIT_62(256'h6A6334DF790D3EB30BF160751704B8AF1E09FA0462C6ABD3C9380D6F04C01766),
    .INIT_63(256'h7CC0571EC91AD31F83CE762C5DE88AE12572FBF467F9DF63CE76EC7D086A79C5),
    .INIT_64(256'hC8AAC10552DBF467399F83CE160C7D48EA4145925BB42FBB7196F3CBA1A0F517),
    .INIT_65(256'h8C9DA8AAC105D25BF467391FA3EE560CFDA8AA214552DBB4A7395FA3EE960C7D),
    .INIT_66(256'hDA0218299C0EA539FED7784B95C347D6762CDDE84A8185525BF407B97FA36E16),
    .INIT_67(256'hF74B869E587954C6AD89BE37584B053B5706AE4CBD889279FD6A835C0F511717),
    .INIT_68(256'h62FC7AC62B9329285D8FE420B70EA1321C7A860BE3D9D86DCF6460073E21826C),
    .INIT_69(256'hDE31A27CE2E653936938CD173CC0D71E49A27C5AA6532B3138CD4F4480179EF1),
    .INIT_6A(256'h3DEA9BCC2701DD3E338B11E035D7FCF86FE6695A041AE6EBABF1780DEF44806F),
    .INIT_6B(256'hF7ACD8AF86451F193F430EB6AC5D680A6165B25B7427795F430E766CFD08D279),
    .INIT_6C(256'hFDC8AAC105525BF4E759FF43EE568C7DC82A4145D25B9407591F5BA6FA3A9C2D),
    .INIT_6D(256'h168C7DC8AAC105D25B74A7F91FA3EE968C7DA8AA8185521BB4A7F91F632E560C),
    .INIT_6E(256'hDFB2EAF041D4068DA90E47A87BE17F430EB62CDDC82A4105D2BB1407B99F236E),
    .INIT_6F(256'hCDEBD70A8A609184A61DF9FE67905311E7632E2E74E5604249ED66CFD0838523),
    .INIT_70(256'h7102DC7AE66B33A9189DCF248047BE91C2DCBA064B3329980D0F64D0B73E9182),
    .INIT_71(256'h17BEB19AC4E2A6EB530938CD17FCC0971EB1D27C9A662B93B1380DEF0438579E),
    .INIT_72(256'h793D12633427C1758E83CBD16055D7BC988F2689FA04E29E53D3C9C00D17FC80),
    .INIT_73(256'hA0D6EBB46B4F544719FF43CE362CDDE8CA214552DBCCDF79FF430E160C45B012),
    .INIT_74(256'h8C7D48AAC105D25B140719FFA36E168C7DC8EA41E5D2FB5447193F830E766CC5),
    .INIT_75(256'h6E168C7D482A4105521BB4A7F91FA36EF60C9D082A8185921BB4A7F9DFE32E96),
    .INIT_76(256'h034FB24A203184F63DA97EFF7487D93F43CEB6ECBD48EAC105325B14E7B99FC3),
    .INIT_77(256'h431D7BDF825AE011349645E126F34C2779A73B462238292C4EE559CE07E81BE5),
    .INIT_78(256'h3E11C2FCDAA6EB3329D80D2FA4A0D77E71023C1A06CBF369782D0FD4A0F7FED1),
    .INIT_79(256'h7877DE895AC4E2666B534978756F7C006F9E31DA3C5AE653AB49B84D17FCE0D7),
    .INIT_7A(256'h120145EA9B3427C1F92EC33BD18055575C184F46699A845A1ED393B1C0351704),
    .INIT_7B(256'hDD284A414572FB5447D9FF834E762C1DA8EA7945D2634C27D9FFC3AEF68C0530),
    .INIT_7C(256'h166C7DC82A410532BB1447D9DF236E160CFD082AA18572FB544719BF83CEB6EC),
    .INIT_7D(256'h236E960C3D082A418552DBB467F9DFC36E166CBD08EA81C5921B7427F91FE3EE),
    .INIT_7E(256'h55330FE21A20412406DD215263148719FF83CEF64CFDC8AA210532BB7467B91F),
    .INIT_7F(256'h60739DA37F42AA68D9DC9E299DAA638C3FB13BA7AAEAE01164162D693EB778EB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h37DEC9423C9AB6BBF329F84D8FE40037FE11023C0AC64B5389182D8FA4A0B7FE),
    .INIT_01(256'hC440AF9E315A8422DE53ABB180751784781766B162045ADE53ABE94075AF0400),
    .INIT_02(256'hF06A81BD129BB427E15110034B516055D79CF82F26B19A84A25E5353F1B8B517),
    .INIT_03(256'h2CDD284A61A572FB1487593F83CEB6ECFDF01241E59263CCE7D91FE3CEF6F405),
    .INIT_04(256'h8E166CFD48AA2105323B5407399F236E96CC3D484A2165727BD4C7993F83CEB6),
    .INIT_05(256'h1FA3EE56CC3DC82A8145921B3467F97F638E16CCBD70EAF945921B34A7F9DF23),
    .INIT_06(256'h8B1593EF321280A1CC1E41E56ABB9447D93F43EE56CCFDC8AAC1E5525B7467F9),
    .INIT_07(256'hDF70A33D1B7726FE64D59032599DFA4F30CBD5B3CFA2DAFECFB4268D495E3718),
    .INIT_08(256'h80D7FE11623CFA860BB349380DCF44E0D75EC9E2DCFAC60B2BD9185DCF946087),
    .INIT_09(256'h17C4C0B7E6495A8422DE2B2B31B80D6FFC38EFE6C922BC225E2B2B8938759744),
    .INIT_0A(256'h85706A79FD129B345F71B610033B916055F79CB84FA689FAC4821EABAB710075),
    .INIT_0B(256'hB62C1D280A61A5B2BB1407D93F83CEF64CC5884A2145EA63B40739A7838EAE74),
    .INIT_0C(256'hA38E168C7D48AAC1E5B2FBB467B99FA32E2ECC9D484AA1A572FB944719FF83CE),
    .INIT_0D(256'h399F232E964C3DC86A01C5121BB4A7B9DFC3EED6B4BD889201C5929BCCA7F99F),
    .INIT_0E(256'hD8EB3563DF02F238F5704A2105323B9487D97FE32E560CFDC82A4145521BB467),
    .INIT_0F(256'hCE47C8230503BFB20AF0E1744EFD997EB7F8AB35D3EF5CDA406144980D495E37),
    .INIT_10(256'h24E0871EB162BCFA760B9389F8CDAF6400B7DED1E29CBAA62B1369282D0FA4A0),
    .INIT_11(256'h3597FC1817E6895AFCA29EAB2B49788DB7FC78171E715A845AE62B13C9C08D6F),
    .INIT_12(256'h7445701279C5121B34DF7D4A6EB3EB9100D5575C18EF2649DAC4A2DE53D3F140),
    .INIT_13(256'hCEB62C1DE80A616532BB1487193F436E2E34C5A8CA413DEA1B14E7793FC316AE),
    .INIT_14(256'h9FC38E166C7D48AA2165B21BB467F9DF1B5616EC7D484A61A5F2FB5447193F43),
    .INIT_15(256'h67399F632ED60CFD086A014592DBF4E7F97FA3AED6CC3D88EA8145921B74A739),
    .INIT_16(256'h37468B65735FDA9E549D284A21E5B23B9487B95F63EE56CC7D482A418592DBF4),
    .INIT_17(256'h79AE1FB0A385A3DFAA6AD081CC0E15A136DF70E3FD5B1F324AC81164865D997E),
    .INIT_18(256'hEFA48097DE31026C7A46EB2B09F84D4F7CE0373E21C2DC1AA66B73E9389DEF14),
    .INIT_19(256'h008D177C386F2631DA0422A693EBB100CD6F7C78975E715AC45A1E532B11F80D),
    .INIT_1A(256'hEEF445F06A81C5129BCC5F45E22E33EB9180D5B7BCD8AF26C95A3C1AA6132B31),
    .INIT_1B(256'h83CE76ECDD280AA1E532BB144719FFA3D6AEB49D28AA013D12DBF467D99F5BD6),
    .INIT_1C(256'h597FC36EF68C7D484AA1E512DBF4A7815F636EF68C7DA80A61A5F2FB544719FF),
    .INIT_1D(256'hF467F91FA356564C3D086A8145925B7407B9DF63AE56CC3D08EA818552DB74E7),
    .INIT_1E(256'h9E3748EB458B37C6F66C1D284AA165B23B1427F95FA32E96CC7DC82A418592DB),
    .INIT_1F(256'h85414ED7289DFF7BF7520A48E9009E35D1868F5063FD1B1FAAB248F9AC8EFD29),
    .INIT_20(256'hF5976440571E5132DC9AE62B93C9C02DCF848057CE51E2DC5A264B43E9182DCF),
    .INIT_21(256'h9140B557FCF86FA6E1DA04623E2BD34960F56F7CB8EFE6491A3C1A66ABD3B1B8),
    .INIT_22(256'h16AEB4C588EA413DEA9B341FEBC28E834B11E0B5B7FCB82FE6495A3C5A5E136B),
    .INIT_23(256'h3F830E762C1D284A210532BB5487D91F9BD62E8C1D48EA793DEA5B1487B9275B),
    .INIT_24(256'h07597F238E960CFD28CA21C552DBCCDFF91F236EF68C9DE80A61A572FB5447D9),
    .INIT_25(256'h5BF467391F632E96CCBD88EA414532DB94E739DF632E564C3D88EA814552DBF4),
    .INIT_26(256'h29363758F3CDCB638E16EC9DA8CA2165B2BB4C27791FE32E960C3DC8EA814552),
    .INIT_27(256'h701B2BB3757D86376967CA727875401E55D1F6BF50E3DDDB679A7258592C6E2D),
    .INIT_28(256'hF8CD2FBC38D77E51E2BC1A1E2B13E9F8CD97C440773EF1E25CFAA64B332958ED),
    .INIT_29(256'hCB496075173C3817E6899A445A5ED3AB3100B5D784B8AFC6315AFCA21E13D389),
    .INIT_2A(256'h5B16D6343D08EA793DEA1B343F7F728E033BA12055B7FCF82F26891A8402DE93),
    .INIT_2B(256'h199F438EB6EC1DA8AAC1E532FB9487F9271BAE162C9D886A811D523B946701A7),
    .INIT_2C(256'hF407599FA32E568CDD282A014512E3CCA7397FA36E166CDDE80A61A572FB5487),
    .INIT_2D(256'h525BF467391F632E964C3D08EA4105D2BBF467F9DF632E564CBD08EA8185D2BB),
    .INIT_2E(256'h0529DE5FFC13D17FC38E766C9DA80A61A53263B427395F632E56CCFDC82A8145),
    .INIT_2F(256'hEE0CFF838442D1C6A0FE32B4EA3875BC5ED5D1460FD0736D4BEB8A4268C1A4A6),
    .INIT_30(256'hB140756F84C0575ED102BCA21EEB5369780D2FC450577E11A2DCFAF68BB369D8),
    .INIT_31(256'hD32B71005557BCF8AF66499AC4A23E13EB71B835EFFC782FDE895A8422DE93AB),
    .INIT_32(256'h675B562EB43D7092F9C5921B6C530CD20E33CB11E0B5173C184FE649DAC4629E),
    .INIT_33(256'h47593F43CEB6EC9DA8AA21E572FB146701E7E3EE766C45484AB94572BBB4DF81),
    .INIT_34(256'h5B14E7391F6356F62C1D889281BDEA9BB467591FC3EEF62CDDE80A61A572FB94),
    .INIT_35(256'h05525BF467F91FA3EED6CC3DC8AA4105D2DB74A7F9DF63AE56CCFD082A418532),
    .INIT_36(256'hB64DA98633C0A759FF430EF66C1DE88A6145EA9B3427395FA32E168C7D482A41),
    .INIT_37(256'h2B1E14BF33A365BAA9485182F0A8DAB10C6275B1E64FE0134DEBC76A522031E4),
    .INIT_38(256'h5369384D570440D7FEF1628462C66B1369780DAF248077BEB102DC3AC68BF369),
    .INIT_39(256'h5ED32B316075D71C186F26C93AC4E29ED36BB1408DD704B86FA6C9627CA25ED3),
    .INIT_3A(256'hA1271B562EB4C58892C1E552234C8B54D27E43AB51A0D537BCD86FE6312224C2),
    .INIT_3B(256'h948719FF83CEB66C9D484A2165B2BB74DF01A7E38EF6CC7D28D20165D21BB4DF),
    .INIT_3C(256'h525BF467F95FE30EB68C458892793D921BF4E7B91F638EB62CDDE80A61A5723B),
    .INIT_3D(256'h4185D2DB74A7391F632ED60C7D48AAA185921B74A7F9DF1B2E56CC3DC82A4185),
    .INIT_3E(256'h24C6BD31BA231407D9FF430E762CDD68CAF94512E3B46779DF63EE968C7DC82A),
    .INIT_3F(256'h2DDC1628172BD4059AD617B1EAB027B5B3568CB3519AEFC053710B2792FA6051),
    .INIT_40(256'hAB53E9F8356F448037DEB12204DA26CBABE9984D0F14A0EF6611422C3A86CBB3),
    .INIT_41(256'h62E6D3AB91A0B5D77CF81726697A44E2DE13AB71F88D6F3C786F9E71A284A2E6),
    .INIT_42(256'h9F01A71BAED64C3DC8AA2145EAE34C2D7412CEB38B516035D75CC01766895A04),
    .INIT_43(256'hBB9447D93F430E766C7DA84AA165B2DBCC5F81A7A38E56CC9DF06A2105929B4C),
    .INIT_44(256'h05D2DBB4A7799F83CE964CBDF092018592BBF407391F43CEB62C5D680A61A5B2),
    .INIT_45(256'hAAC105D2DB34E7B91F632E960C1DC8CA41C552DBB4E7F95FE3AE560CFDC82A41),
    .INIT_46(256'hB1A4AE095D32BB1487D9FF83CEB62C5D4892F93D121BB427F95FA3EE168CFDC8),
    .INIT_47(256'h40DAB3BE2CEF7CE7D6E5F9E8564D1FF71DFB36E40F705CF53EF5457BC7C21A80),
    .INIT_48(256'h266BF36938ADAFA4E0D79E3122DC5AC6AB5309F89DCFA4C0175EA1629C7A068B),
    .INIT_49(256'hC4E2DEAB4B710055175CB82F4609FA7CA2BE73EBC9388DD7BC1897DE8962C482),
    .INIT_4A(256'h4C5F79279B56568C7D284A813D6A1BEC598AF28E43CBD1603537FCB82FE6C91A),
    .INIT_4B(256'h32FB5447193F83CE766C7DA8CAA1E5D29B0C5F791F436E962C7D484A41451263),
    .INIT_4C(256'hC105D2DBB4A7D93F4356D64C4588EA8145D2DBF4E7B93F83CE36AC5DE80A61E5),
    .INIT_4D(256'hC82A4105529B74E7B9DF63EEF66C7DA8EA01C592DB7467795F632ED6CC3D08AA),
    .INIT_4E(256'hBE113C2281E5B2BB5447993F83CE36ACFD70EAF9C5929BB427F91FA3EE96CCFD),
    .INIT_4F(256'h205832F7BEC09F143BA225264826227F88622396DB88E4AB8AD566477D3782DA),
    .INIT_50(256'hA21E0B1389B86DAF6460971E49A21CFAE60B13C9182D0F4480379EA1821CFA86),
    .INIT_51(256'h9A7CE23E730B518075D7BC78AF2689DAC402E61313B138355704385766C95AC4),
    .INIT_52(256'h23CC5FC1A7636EF66C1DA8EAF9BD1263DC698AF2AE334BD16055373C784F6669),
    .INIT_53(256'h05727B944719FF830EF66C9D284A218512234C27391FA32EB6EC1D482A813DEA),
    .INIT_54(256'h4AC105521B7447197F9B562E4CFD88EA81E552DBF407993F834E36AC5DE80AC1),
    .INIT_55(256'h3D082A414592DBF467391F230E968CFD886AF9C552DB7427795F63AE56CC3DC8),
    .INIT_56(256'hFAE0C9D04A2165B2FBD4C7193F83CE7634BD70EAF945121BCCA7F91FA32E56CC),
    .INIT_57(256'h024FEFDACC9EABF83463B5ED96D78E9A284FE9E42193C8C47311DA7940EE4142),
    .INIT_58(256'h3C1A1EEBD329382DAF8438371E31023C5AC66BF36938EDAF7C80070E51021C7A),
    .INIT_59(256'hE91A44E23E338B3180F5379C58AFA6493A24821E6BABB1A08D57FCC0EF66091A),
    .INIT_5A(256'hAA638C1F811F230EF66C7D086A793D129BDC160A924E438B9120B537FCF84F26),
    .INIT_5B(256'hC1A5F2FB5487193F838EF68C7D482A41C5EAE334A7F95F43CE76EC7DC8EAF9C5),
    .INIT_5C(256'h482A4185525B5447F9E71B562E4CBD08AA410552DB94C7193F034E362CDD28AA),
    .INIT_5D(256'hCC3D882A4145525B7467399FC3EE760CBD88EA818592DB34A7F95FE3AE56CCFD),
    .INIT_5E(256'hE20AB87D28CA61A5F27BD447193F838E6ECCBD089201BD129BB4A7F9DF63AED6),
    .INIT_5F(256'hF14DA728F953CE3C0F649C92450900EE2D88BB957CE90B986CFCEEE506780EE9),
    .INIT_60(256'hE2BC9AA6EB5309182D4F8478AF9EC98284DA66EBF3E9188DAF24E0F73E9182DC),
    .INIT_61(256'hA6099AC442FED3EBB1609BB76C78EF26C9DAC4E25E532B4980B5974480176649),
    .INIT_62(256'hBD6A230CDFF97F438EF60CFD8812F9C512E3DCA98A120EB30B9180D5177C782F),
    .INIT_63(256'h4A612572FB5447D93F436E968CFD48AA413DAA63B4A739BF830EF68CFD08EA81),
    .INIT_64(256'h9DA8AA4105327B942781A71B56D6CC3D48EA418532FBD4C7994F034E362C9DC8),
    .INIT_65(256'h56CC3D086A8185525B746759FF236E964C3D082A4105529BB4A7F95FE32E968C),
    .INIT_66(256'h8FA6EEECDDE80A6125F27BD447193FE3962E4CBD7092F93DEA9BB467795F63AE),
    .INIT_67(256'hB89E8D2FF03A1326931054DBC2F526E8091DC06016E75AC6EDD1A03F10B3FDF3),
    .INIT_68(256'h71E23C9A666B7369D84D970438B75E9102FCDA664B538978754FE4D077FE5142),
    .INIT_69(256'hCFE6899A24C27EF32B91A0F5377CC0972669DAFCDA1EABD33180F5EFFC402F5E),
    .INIT_6A(256'hF9BD6AE334E7D97F436E96CCBD70EA81856A639C460A728EB33B1160D5B75C98),
    .INIT_6B(256'hA80AE1A5723B944719FFC36E168CFDC82A813DEA63CCE799BF438E168CFDC82A),
    .INIT_6C(256'h8C7DA8AAC165F25BCCDFF9DF632E560C7DC82A41A5727BD4C7994F034EB66CFD),
    .INIT_6D(256'h2E96CC3D88EA4185521BB407B99F23AE564C3D082AC18592DB7467F9DF63EE16),
    .INIT_6E(256'h7F430EB62CDDE80A6125F2FB54C71967DBD6D6B4BDF092B9C5921BB4A7F95FE3),
    .INIT_6F(256'hADF34959788CD6872AC61D01C673EC9F01A71B562E34457092817152FB9487D9),
    .INIT_70(256'h6671027C9A266B93E9F80D17FC40971E119A7CDA862B5309C02DAFA48057DE71),
    .INIT_71(256'h982F46497AE482BED30B918015973C38AF26897A845A1EAB2B7180CDEF04B8D7),
    .INIT_72(256'h12F93D6A1B9447599FA3AE564C4508EA41C512E33C768AD24E33EB1160D5D79C),
    .INIT_73(256'h9DE88A61A5B23B9447D99FA32E56CCBD08EAF9C5B2BB5447197F23EE160C3D48),
    .INIT_74(256'h168CFDC8AA61A5129BCCDF79DF232E960C7DC8AAE1A5F27BD43769BF030E160C),
    .INIT_75(256'h632ED64CBD88EA8185921B14A7F95F1B56D64C3D082A814552DB74A7F9DFA3EE),
    .INIT_76(256'hD9FF83CEB62CDDE80A612572FB54E7C1A71BAE2E4C45F012F9C5EA9B34DF795F),
    .INIT_77(256'h4C5F81DF632E56CC7D482A79CDD67F60138D57ABE69E241560B2E95D52FB5447),
    .INIT_78(256'hD71E31A2BC5A66CB936918F56F04B8EF0671DA3C2226AB4BF1F84DCFE480F7DE),
    .INIT_79(256'hDCB86F0609FAC4623E13AB71D035EF04F8AFE6495AA4A25ED3EBB1B8356FBCB8),
    .INIT_7A(256'hF01201C5323B14E7815FE3562EB43D706AF93D6A63DCC11452FE038B516025B7),
    .INIT_7B(256'h6CDD680AA1E5323B5487B9DFE3AE960CFDC8EAC125727BD447591F63EE166CFD),
    .INIT_7C(256'h6E160C7D288A213D929BB427F99FA36E960CFDA88A6125F27BD4C7993F43EE96),
    .INIT_7D(256'hA7E32E56CCBD086A8145125B345FF91FA3AED64CFDC82A814552DB74A7391F23),
    .INIT_7E(256'h87193F83CEB62CDD680AE1A5723B341F01E75B56AEB405F092F93D921B34DF79),
    .INIT_7F(256'h5BF467B99F23EE56CCF5F4A61377D6A708DB7D9B47CA8278496022896D72FB54),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h80D73EF162847A26EBF331C0B52FFC80BF5E0922BC9AA6AB6BB1782DAFC400D7),
    .INIT_01(256'h3724788FC6A9FA4402BE938B71007597FC98AFDEB11A0442DE730BF1388D57FC),
    .INIT_02(256'hC5886A41E532DBCCDFF9DF63AE2EB445F092F93DEAE3AC5B706C8EB38B516015),
    .INIT_03(256'hF62C5DE8CAA1E572FB94E7815FE32E960C3D882AE1A5727B94E7391F238EF6CC),
    .INIT_04(256'h23EE166C5D286AF945126334A739DF23EE560CDD680AE125F27BD4C7D97F63AE),
    .INIT_05(256'hF9DFE32ED6B43D886A01C5521BB4A7F9DFE3AE560CFDC8EA8185521B7467B99F),
    .INIT_06(256'h9487193F83CEB62CDDE80AA1A5B2E3345F81E71BD62E34C57092813DEA63CC27),
    .INIT_07(256'hD25BF4E7B99F1B264AFE6F9AB80D51F6E708237DA3A70AF2D835FCE2A98572FB),
    .INIT_08(256'h8440771E71E2FC9AA6EB5349600D170478176671025C1AE6136BC9F80D4F84E0),
    .INIT_09(256'hD5573C18CFF6A93AC4E2BEF3CB914075D7DCF88F46C99A0482BE732B3180356F),
    .INIT_0A(256'hB43D08EAC185EA6334E7B9DF1BD6AEF4457092F93DEA4334CF8F026E837B5120),
    .INIT_0B(256'h8EB6ACDDA84AA12572FB7427815F9BAE56CCC588CA61A5F2FB7427399FC36E56),
    .INIT_0C(256'h7F23EE76AC7DF06A41C5121BB4A7399FA3EE162C1D288A6125F27B5407B91FE3),
    .INIT_0D(256'hA7815F63AE2E4C3D88EA0145921BB467F9DF632E56CCFDC82A418592DB74E7B9),
    .INIT_0E(256'h3B5447993F83CEB62CDDE80AA1E5AA634CDF81A7E3562E34BD706A01C5EA6334),
    .INIT_0F(256'h05D25B749FD1A351BCC49EEFBA669521CE07881B7DDBC716166C7DA84A61A572),
    .INIT_10(256'h17FC80EF1E71E2FC9A6613ABB1C08D2FBCB86FE69102FCA2DEAB1309B8CD6F44),
    .INIT_11(256'h2055577C18FF2669FAC462BEF3EBF14095573CF8EF9E313A24425E132BF1B875),
    .INIT_12(256'h2ECC45706AF94592DB1407F9279B562E4CC57092793D6A6374DF2D76EEC34B21),
    .INIT_13(256'h230EB6EC1D480A61A552A3CC9FF95F1BAE2E347D28CA212572BB34A7F99F236E),
    .INIT_14(256'hB99F230EB6CCBD08AA414552DBB4E7391FA38EB6ACDDE80AE125723BF467F9DF),
    .INIT_15(256'hCC5F79A7E3AED64C3D086A81459263B427F9DFA3EE96CCFD082AC18552DB7467),
    .INIT_16(256'hB23B544719FF830EB62C9D28CAF9FDEAE3CCA781DF1B562E4C4508EA01C5EA9B),
    .INIT_17(256'hF93D2A53809B0B4D813CE440D1146EA501161F7063BD3BA30E76EC1DE8CAA165),
    .INIT_18(256'hB5D7C4A0979EF1623CBAA6936B49B8CDAF04006F1EF10284E2E66BD349408D97),
    .INIT_19(256'h7140D5F79C288F86B17A24B27EB3EB312015F75CC06F9EA9FA2422DE73EB71C0),
    .INIT_1A(256'h56564C45706A818532BB142781A71B56D6B445F0D2013DEADBB4A751C65003BB),
    .INIT_1B(256'h9F43CE766C9DE80A21BDEA9BCC1F01DFA32ED66C9D484A2165B21B3467391FA3),
    .INIT_1C(256'h67399F83CE564CFDC8EA814552DBF467399FC30EB62C1DE80A61A5B25B74A7F9),
    .INIT_1D(256'h63CCDFF9A71B562E4CBD706A01C592DBCC2779DF632E160CFDC82A4105D21B74),
    .INIT_1E(256'h65B23B5487D93F43CEB62C1D2852F9BD126334DF79DFE3AE564C4508EAF9BD6A),
    .INIT_1F(256'hA2C9F1F627982BF56D717CDAC051EC32A94D7AB37C2FF137C30EF66C1D28CAA1),
    .INIT_20(256'h400DEFFC40571EC9DA3CE2DE932BC9788D6F84C0375EB15AC4A2E66B2BC9400D),
    .INIT_21(256'h3B31A05537DC580FA6897A64C23E936B9180F5F7BC182FC6899A04225ED30BF1),
    .INIT_22(256'h1BAED64C3D484A21E5325BCCDF795F63AE2EB445306A0185D21BB467BD82AEC3),
    .INIT_23(256'hB97F838EF6ECDD28EA41C9CA9B4CDF01A71B2E166C7D484AC1E5D2DB7467391F),
    .INIT_24(256'h14E7D93FC3AE560C7D086A8145D2BB1407B9FF43CEB6ECDDE80A6165D2DBB4A7),
    .INIT_25(256'hEA633427F9A71B2ED64CC5886A0145929BB4A7F9DFA3EE560CFD48AAC18592DB),
    .INIT_26(256'hA165B2FB548719FF83CEB62CFDF06A813D929BB4DFF95F63AED64C3D886AF9BD),
    .INIT_27(256'h5CBEA5E12E37B8D50BADF15C9A3049D0C2292D9A2F40FFA1F7238EF66C1D28CA),
    .INIT_28(256'h7100CDEFC4402F5ED1DA84E2DE53D309B80D9784E0579E495A7C2226532BB140),
    .INIT_29(256'h438BF1A09577EC98CFC669CA9402BE130BD1C0B597BCB80F06A97A04E29EB3AB),
    .INIT_2A(256'hDF236E168C1D28CA2105929B4C5F79DF63D6AEB4BD70AAC185129BF4DFA8522E),
    .INIT_2B(256'h67593F438EB62CBDC8EAB53D92E34C9FC187636E168CFDA82AC105D2BB9407B9),
    .INIT_2C(256'h5B7407D95FE3EE168C3D88EA816552BB1407D9FF83CEB62CDD680AA105521BB4),
    .INIT_2D(256'h3D929BB42779A7E3562E34BD709201C5EA9B34A7F91F632E960CFD482A418552),
    .INIT_2E(256'hCA2165B23B9447D93F83CE76B445702A818552DBB4A7F9A7632ED6CC3D086AF9),
    .INIT_2F(256'hB98C360DF71E69060B55BD5182125485D0724931E6C30C0FDDBB0B8E76EC1D28),
    .INIT_30(256'hAB9198F5177CB8371E499A04223E535349F8AD4F84C0579E09A28462DE73EB91),
    .INIT_31(256'h0E13CB71E09537DC40CF06A94A94B23EB30B91E035D7DC98FFC649027C025E93),
    .INIT_32(256'hB97FC36EF66C9DA82AC18592633427F91F1BAE56CCFD08AA8145125BCC7D74F2),
    .INIT_33(256'h74E719FF43CE16F43D086A810592A34C5F799F232E160C7D48AA418532FB5407),
    .INIT_34(256'hD25BF4E7B9DFE32E964CBD08AA218532BBF407593F83CEB62C5D284A41C592DB),
    .INIT_35(256'h8145521B342781DFE3AE2EB4457092F93DEA63B427F95FE3AE560CFDC8EA8185),
    .INIT_36(256'hA84AA165B23B9487193F838EAE4CBD886A8145521BF467391F23EE960C3D08EA),
    .INIT_37(256'hC0316AF893598E89183B6B538F9A4E7485D0E2A99DCAB390BBFD1B1B0E76EC1D),
    .INIT_38(256'hAB5329F8F5977C4057A6491A2462E613AB49380DD7C4C0EF46891A3C22DED3EB),
    .INIT_39(256'hF23EF38B5150D5F73CD84F36D9FA24E27E73AB21C03597EC188FE6C99AA4E2BE),
    .INIT_3A(256'hE7597F238EF68CFDC82AC185EA9BB4A7395F632E960CFDC8EA813D52E3EED4B4),
    .INIT_3B(256'h1B7487D93F432E6E4CBD889201456A234C67B99F63EE968CFDC8AAC1E5B23B94),
    .INIT_3C(256'h4552DBF407B99FA32E2E34BD48AA41E5D2DBF4E719FF83CEB62C1DC82A018592),
    .INIT_3D(256'hEA81C5129B3427F95F63AE564C4588EA013DEA63CC2779A7E32E56CC3D886A81),
    .INIT_3E(256'h9D28CAA165B23B9447193F23AED6CCBD88EA814592DB7467391FA32E960C3D08),
    .INIT_3F(256'h148EAFBA38DD114029289575832B160ED45560F2198D762748AF5187C30E76EC),
    .INIT_40(256'h1ED3138938759744006F66891A445A5E53ABC938756FBCF84F26491AC4E25E13),
    .INIT_41(256'h54027EF33BA1E0D5875C58FF0609FA04B23E93EB316035F73C38179EC9DA4422),
    .INIT_42(256'h1407B91F236E168C7D482A81C512DB7467799FA32ED64C3D086A813DAAC9878A),
    .INIT_43(256'h521B1487199FE3AE96CC45709279FDAA63F407599F236E160C3D08AAC1E5323B),
    .INIT_44(256'h818592DBF4A7B97F232E56B47D084AC18512DB340719BF83CEB66C3D08EA4145),
    .INIT_45(256'h082A0145129BB4A7F9DF632E56CCFD886A01C51263B4A7F95F632E2EB445706A),
    .INIT_46(256'hEC1D28CA6165723B5447D9DF632E964CFD08AA8145D2DB7467B99FA3EE96CC3D),
    .INIT_47(256'h3C443E8F3A9669E900F7666B3DB75B168E54A5E0DE2501F6EFEC9F795FC38E76),
    .INIT_48(256'hE226AB5349B88D6F2440172609FA845A66D32B49F84DEFBCD8CFE6495AC4225E),
    .INIT_49(256'h4AE482FE43BBD12035F71C28FF06099AE4C23E73ABF1E055779C382F26C91A04),
    .INIT_4A(256'h5BF407B99FC38E168C7DC8EA818552DB74A739DFE3562ECCBD8892B99D26B6F9),
    .INIT_4B(256'h4552BB1447591F1BAE164CC57012B97D52BB1407B99F236E16CCFD482AC105D2),
    .INIT_4C(256'hEA8145929BB427391F63EEF60CFD482A81459263B40799BF830E160CFDC8EA81),
    .INIT_4D(256'h3D08EA8145921BB467F95F63AED60CFD086A013DEA1BB4A779DF1BAE2EB44508),
    .INIT_4E(256'h766C1D280AA165B27BD487D93F83CE76ECDD284AC1E5325BF4E7391F23EE96CC),
    .INIT_4F(256'h91DCDA1EEF74523D27BE49787321E79B76CE24C92CCE354D0A63CC5F9137C30E),
    .INIT_50(256'hC4A2A6D393B1780DEF9CF8AFC6319A04229ED35349C08D57A4F8AF46497A0402),
    .INIT_51(256'h191A64820EB30B110055B75C584FC6E9FA64625E936B31A0D577DC782F2609DA),
    .INIT_52(256'h52DBF4E7B97FC36E968CFD08EA4185521B34A781A71B5656B405D032390D7FB6),
    .INIT_53(256'h41E532BB948739A7E3AE964CC5F09239E532BB1407599F236E560C7D48AA81E5),
    .INIT_54(256'h08EA01C5921B342779A763EE56CC3D086A0145121BB407193F43EE96CCFDC86A),
    .INIT_55(256'h8CFDC82A813D52DB74A7F9DF632E560CBD88EA81C592DBB4A7F9DFE3AED64CBD),
    .INIT_56(256'h8EF6ECDDE8CA61A5727BD4C719BF834E362CDDE88AE12572FB944719FFC36E16),
    .INIT_57(256'h53EF5C84FE8170FE23497037BC9FC167BB465ED8E90002597D52A3FC0F118743),
    .INIT_58(256'h9A04A266ABABB1F80D175CF8CF46312204DA9E5353494035F7BCB82FC6697A24),
    .INIT_59(256'h06297A24B27E338BF1E0D537EC582FE6E9BA446266ABD331E035D7FC78CFE689),
    .INIT_5A(256'hC592DB7407599FC36E168CFDC82A4185929B34DF01A75B960E9485305269789F),
    .INIT_5B(256'hAAC1E5D2BB94E7795FE3AE2ECCC5509221E532BB14E7B97F236E960C7D48AAA1),
    .INIT_5C(256'hFDC8EA81C512DBF467A1DF632ED64CBD886A81C5921B7487993F232E560CFD08),
    .INIT_5D(256'hB62CDDE84A21E5B2BBF4A739DFA3EE56CC3DC8EA810552DB746739DF63AED60C),
    .INIT_5E(256'hC38E762C1D280A61A5F27BD447993F034EB62CDD688AE1A572FBD447193F83CE),
    .INIT_5F(256'hAB8D11FC44C8FDC03833974E834C9FC1072B5A5EE425D052D91DE693FC6FB167),
    .INIT_60(256'hF11ABC5AE653934998CDD73C18CF26895A04A21E2B53B18055F73C78CFC6E97A),
    .INIT_61(256'h0FC669FA2402FE736B11A0D5373CF81766C92224625ED30B9100B597FCB86F26),
    .INIT_62(256'h814552DBF4E7B97F236EF68C7D482A79456A9B34DF01679BD6AEF4853002BCC8),
    .INIT_63(256'h482A2105523BF427815F63AED6B4BD484A21E5B2BB1407599F23EE168CFD484A),
    .INIT_64(256'h0CFDC8EA0145323B6CE3A1DF63AED6CCBD706A01C5921B7487193F232ED6CCFD),
    .INIT_65(256'hCEB6ACDDE8CA6125F2FB944719FF830EF68C7DC82AC105D2DBF467B91F632E96),
    .INIT_66(256'h7FC30E762C1DE80AE125F27B544719BF034EB62C5D688AE1A5F27BD4C7993F83),
    .INIT_67(256'h154BADB14CE28C15EAC853E1AAE38C9F61174B464ED425909E355186CFD0A37D),
    .INIT_68(256'h260902045A1E135349B8B517BC78EF9E89FA4422E6ABABC938D5B7FC186F4649),
    .INIT_69(256'hE82F4609CAA4C2DE736B9150D5F7DC384FA6C91A44625EF3EBD1800D577CC06F),
    .INIT_6A(256'h6A4105521BF4E7B91FA3EE968C7DC8EA81C5929B4C5FC127DB960E7465A0B7CC),
    .INIT_6B(256'h7D48AA4185D2DBCC5F81A79BAEAECC9DA84AA1E5B2BBF407B91FA36E160C9D48),
    .INIT_6C(256'h960CFDC82AC165721B2C9FF95FE3AE564CBD886A8145921BF4C7993F23EE560C),
    .INIT_6D(256'h430E762C1D28CA61A572BB544719BF03CEB62C1D28CAA1E532BBF4E7B91F63EE),
    .INIT_6E(256'h017F430EB6ECDD288AE1A532DB7467F9A7A3EE960CFD482A4105D2BB9487D97F),
    .INIT_6F(256'h26352B6D315A16047FAA2629C56A23EC4F91478B869E042974FE25C1AE87783B),
    .INIT_70(256'h9766B15A7C225E532BC900B5D75C98CF9EC9DA84221E2B13A180B557BC18AF46),
    .INIT_71(256'hACB84F46291A64021ED30B112035D73C282FA6E95A54D2FE338B11C0B5D7FC38),
    .INIT_72(256'h702A4185525BF4E7391FA32E960CFD086A013DEA63CC9FC1675B96EE74F565C7),
    .INIT_73(256'h0C7DC82A814592634C5F01271BAE166C9DA84A21E5325B14E7391F236E16EC7D),
    .INIT_74(256'h8E160CFDC84AC1A5D2DB7467F9DFE3AE564CBD882A818592DB54C7993FC32E56),
    .INIT_75(256'hA71BAE2EB445F0928185125BB4E7597FC30EF62C1D688A61A5F2FB5447D97FC3),
    .INIT_76(256'h8F59FF43CE762CDDE8CA017DAA634C5F81A79BD66E34C5F092F9BDEA634C1F81),
    .INIT_77(256'h6FC0D39197638E5E0E2FDC12F9BDAA43ACBF61D7D7CAD220E14CF6AD89DED718),
    .INIT_78(256'h382FA6891AC4E21E53534960B5F7BCB817E6491AC4221E130B91008DD7BC78AF),
    .INIT_79(256'hF73C58CF4629BAA422DE434BD1005597DC382FA6C95A44C2DE33CBB1805557BC),
    .INIT_7A(256'hBD48AA4185D2BBF467391FA3EE960C3D0892F93DEA238C1F01E7DBD68E287025),
    .INIT_7B(256'h968CFDC82A01C51263CC9F01E7A36EF66C9DA84A2105D2BBF467391FC36E768C),
    .INIT_7C(256'h03CEB6ECDD28CA014592DB74A7391FA32E56CCFD482A4185D2FBD4C7193FC32E),
    .INIT_7D(256'h81A71B562EB4457012013DEA63CCDF81A71B2ED64C7DC8AA2165B23B9487D93F),
    .INIT_7E(256'h500759FF430EB62CDD281279BDEA9B3427F9A71B562E4C457092F9C51263CCDF),
    .INIT_7F(256'hEA6334A7399FC3F67AD8057012391DCA03DC6F1DDBFFC27AC0B944462D09BE87),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h84B897E6C97A7CA29E132BF160B5D73CB8CFA689DA7CA2DE938B9100D5575CF8),
    .INIT_01(256'h25B7DCF8CFF6591A4462BEF33BF160F537BC988F66097AA402BEB36B91E055D7),
    .INIT_02(256'hCC7DA82AC105D25BF46739DF636E96CCFD08EA413D6A634C9F81E79B966AC190),
    .INIT_03(256'hEE560C3D0892B93DAA430C9FF99F236E168C7D48AAC105D25BF467B99FC38E16),
    .INIT_04(256'h1F032E960C1D08124145D2BB9407B97F23EE160CFD482A6125F27BD447D97F23),
    .INIT_05(256'h2779A7E3AE2EB4BD08EA014512DBB4A7795F632ED6CC457012F93DEA634C5FC1),
    .INIT_06(256'h5F8CE7D9FF43CEB62C1D8892B9BDEA9B34A779A71B562EB445706AF93DEA9BCC),
    .INIT_07(256'h3DEA6334A7397F232E2EF485B0B2D91DFA6F907BD5132FC29AB09124464DE9BE),
    .INIT_08(256'h57DCC06FE6C97A7C2266130BD1603517FCB8AF2649DAC4623E33EB09E05537DC),
    .INIT_09(256'h109577DCD80F866922C4C2BEF38B71C035B79C582FE6693A94B29ED38B11A0D5),
    .INIT_0A(256'h560C9D482AC105D2DBF467391FA3EE56CC3D086A79BD6A238C5F01E7DB8A1B61),
    .INIT_0B(256'h632ED64CBD7012F97D6AA3CC07B99FA36E160CFDC82A4105D2DB74E7B9FF236E),
    .INIT_0C(256'h39BF6396F6CCC57012B9BDEAE33427F91F636E166C9D288AE125F2FB5407591F),
    .INIT_0D(256'hCC27815F1BD62E4CBD889281C5929BB427F9DF632E56CCBD706A813D929B34DF),
    .INIT_0E(256'hD6CF1487D97F430EB6EC057012F93DEA63B427815F63AE2EB4C5709201C5129B),
    .INIT_0F(256'h9B5F40D34CA7B97F236E16B4F5404235993EB778AB8B73CFE2EA40B164C64DE9),
    .INIT_10(256'hB537C418EF660922FC623E13AB310015D7BC98EF6631DA44829E53EB1160D5B7),
    .INIT_11(256'hD1A05537DCD82F46897AE4027E73EB3160D5F7DCB82F46293AA4329E13ABD160),
    .INIT_12(256'h2E968CFD48AA21E5525BF467F9DFA3EE964CBD7092F93DEAE34C9F01674BF39B),
    .INIT_13(256'hE7DB562EB445F06A79BD2ABB9407391F23EE968C7D482AC18552DBF4E7599F23),
    .INIT_14(256'h0799FF7B2E6E34457012F9C5EA9B4CDF81A71B562EB44528986125723B14DFC1),
    .INIT_15(256'h1B34DF795F9BAED6CC3D88EA0145121BB4A7391FE32E96CC3D08920145929B34),
    .INIT_16(256'h012653148759FF43CE767445F092013DEA9B4CDFF95F632ED64CBD88EAF93D12),
    .INIT_17(256'h147F9BA41D4531DB835F623ADE43A623E09C5CC5323D3523FF12A4BE71D4761D),
    .INIT_18(256'h60754F5CF86F66C9227C22DE730B9160B517FCF8EFE6891A2462FE730B916055),
    .INIT_19(256'h3B112055375C982F46097A64B2DE532B71E055F75C182F06697AE462FEB38B91),
    .INIT_1A(256'h636EF60CFDA84AC105521BB467391FE32ED6B445F012F93DEA638C9FC1B73E63),
    .INIT_1B(256'h1117EB9AFE7405F0D239BDB23B14E7399F238E168C7DC8AA4185925B1467399F),
    .INIT_1C(256'h94C7B9075B56D6CCBDF09201C5EAE3CCDF81A75B562E4CDD088AE1A5D25B4C3F),
    .INIT_1D(256'h129B34A779A7E3AE56CCBDC86A4185521B3427795F63EED64C3D88EA813DEA9B),
    .INIT_1E(256'h5D219A439407D9FF830EEE3445886AF93D129B3427795F63AED6B43D086AF9C5),
    .INIT_1F(256'h8A68A744946E3AF95F9EBA0068B213962CC04B9CBD9A39BF5D1FC2FAA019F486),
    .INIT_20(256'hF1800D373C588F46C91A04E2BE13EBF1E035D75C40172649BAE4C2DEB36B5100),
    .INIT_21(256'hC34BD1E015F76C988F06D9BAE4823E93FB71E095D75C98CF86E99A04A25E330B),
    .INIT_22(256'h5FA36E968CFDC8AA81C5921BB467795F1B562E4C453092793D92434C9FE162AE),
    .INIT_23(256'hAFF1D7D70A3278B5C0BEE505B2BB1487D93F4346968CFD482A818552BBB46739),
    .INIT_24(256'h1B94A701071B562E4C45886AF9BD6A634C9F01E79B56962CDD68AAA1E56AE32C),
    .INIT_25(256'h3D1263B427795FE3AE56B43D08EA8185921BB4A7815F632ED6CC3D086A013DEA),
    .INIT_26(256'h5625B19AC3F407D93FC3962EB4457092013D12E34CDF01A71B562E4CBD886A01),
    .INIT_27(256'h1B2E04072B14DD2A910CFE02D8477D7C828B8F4BA3B2D556E041D5541A585934),
    .INIT_28(256'h0B9140B5579C98AFA6899A4462BEB30B116055D74438CF06D93AE4E2BE438BA1),
    .INIT_29(256'h8EC34BD15015071C688FA6A9CAA4827E83CBD1D03537DCD8FF8629FA7CE2FEB3),
    .INIT_2A(256'h79DFA32ED6CC3D086A01C5EA9B34DF81A71BD62E34C5F092013D6AE30CCF24AC),
    .INIT_2B(256'h2CAFEDBB2792EAC8D90C6EF9E5B2FB9447193F5BF6168C7DC8EA4105129BB4A7),
    .INIT_2C(256'h92DB9407F9DF63AE56B4BD8892013DEA634C9FC15F1BEEB62CDDC82A41BD3A43),
    .INIT_2D(256'h81C5126334DFF95F632ED6CCBDC82A81C5921B3427F91F63AE56CC3D8892F93D),
    .INIT_2E(256'h3A2E354D9A13CCE7D97F9BD62EB445706A01C512633427795FE3562E4CBD706A),
    .INIT_2F(256'h8273A280406354DA7281EF018D2FCFF21CF97CB4643372159E885E32CFD71DAB),
    .INIT_30(256'hF36B116055D7DCB84FC6A93AE482FEF38BF16055D7FC78AFF6697A7C02BEF38B),
    .INIT_31(256'h824E338B11F0E5773C587F7659BA2462BE438BE1E095B76C284F7669FAE4427E),
    .INIT_32(256'h27791F63AE960C3D886AF9C5129B34DF795FE3AEAEB445F092F97D6AA32C1A54),
    .INIT_33(256'h432C6F9D5BE72AF268390CC221A5F2FB548719FF0BEE166CFDC82A4145929BB4),
    .INIT_34(256'h4512BB1467795F63AE2EB4BD706A01C5EAE34C5F79A7C3CEB6EC7D30EAF9ED1A),
    .INIT_35(256'hEA0145921B34DFF9DF63AED64CFD082A81C5929B3427795FE3AED64C3D88EA01),
    .INIT_36(256'hCC2EB4F747B86D16D58D271B562E4C4588EA013D121BB4A779DF1BAE564CBD88),
    .INIT_37(256'hD04A9B6E0C7FDB837A8AF687A1B23F382DA3DEE447306B3AADE9105E2277C85D),
    .INIT_38(256'h3E53EB91C015F7BCF8EFA6A9BAE4827E738B1140F5D7DC584F76A91AE4C27E33),
    .INIT_39(256'hB4427E73BBE1D0E5376C58BF76A97AA4423E73BBD15015371CD8BFA6E9222402),
    .INIT_3A(256'h34A7F9DF63EE960C3D886A8145121BCC27795F63562EB4C5889279BDEAA3D1D4),
    .INIT_3B(256'h9AF31C531D4BA7CAB26859F0AA21A5F23B1407599FC36EF68C7D482A814592DB),
    .INIT_3C(256'hC165D2E37427F91FE3D62E4CBD889201C56AE3CCDF793F83CEF6ECC55032E98D),
    .INIT_3D(256'h086A01C5929BB46739DFE32ED60CBDC8EA81C5129BB4A7795FE3AED64C3D08EA),
    .INIT_3E(256'h6223C6ECB71B934A053D415FE356D6CCBD88EA0145929BB4A7F95FE3EE564C3D),
    .INIT_3F(256'h80F8853CBE64FF3B0CBD0A392771853F286233B95C0064633A9A6E28E6DAA017),
    .INIT_40(256'h425E930B9138D5B7DC982F46E9BA24023E338B9100F5371C68FFC609FA6482FE),
    .INIT_41(256'h3AD4427E437BE110D577AC688FF669FAA402FE434B516065379CA8AF4649BA44),
    .INIT_42(256'hE334A7F95FE3EED6CC3D886A013D926334DFF9A71B562E4C3D8892F9C5AA0207),
    .INIT_43(256'h6DE65300E3FDFB47AAF2F845804A61A5D21B9407D9FFC38E168CFD08EA818512),
    .INIT_44(256'hEA6105AADB7467F91FE3562EB4BD7092F97DEA633467993F23EED60C2500E2F5),
    .INIT_45(256'hBD70928145129BB4A739DF63AE56CC3D086A8145929BB427795FE3EE964CBD88),
    .INIT_46(256'hD89DFCF9C0D0D4AC6A3E993FFD87D6D6CCBD88EA8185929BCCDFF9DF63AE2E4C),
    .INIT_47(256'h3D70B84913F9C4875BAC2D4D5ED781F2C0886A6C9643285B6C2DFA16D7911A7F),
    .INIT_48(256'hE482E6B3CBA1E0D5F7FC184F7659FA0482BEB3CB91805537EC584F76D9BA94C2),
    .INIT_49(256'h798A14724E63CB51A095C74CD88FA6693A94420E538B917065879C58CF06E97A),
    .INIT_4A(256'h121B742779DF236E56F43D08EAF9C56A63CCDF795F1BAED64C45F06A01BD7428),
    .INIT_4B(256'h75F106FFE8BB7DDBE7BA028C49ECCAC1C532FB9487D97FC38E96CC3D082AC145),
    .INIT_4C(256'hC80A81FD92DB7467B9DF632ED6CC457092793DEA1BF4C7199FE356CEB4153C7E),
    .INIT_4D(256'hCCBD88EA01C5921BB4A7795FE3AE56CCBD08EA8145921BB427F9DF632E56CC3D),
    .INIT_4E(256'h1FC812BB528BEF2BCC51456628965AA04C780508EA8185929BB4A7F9DF63AE56),
    .INIT_4F(256'hA11D100762BB49C4B03B7C5DD296DF111D4070920C0173A02C14F23569400E1D),
    .INIT_50(256'h5AE4E25E73CBD18015871C284F0609BA24B2DED30BF100D537AC588F0629BA64),
    .INIT_51(256'h16F9CA14F28EC33B11D0E5776CD8CF06D94A94B2BEC30B1110E5873C784FA6E9),
    .INIT_52(256'h4592DBB4A7597F633A62B4BD8892F93DEA9B34E779A7E32E564CBD886A798381),
    .INIT_53(256'h7EE5E1B62798FBA5A35B56B6346B3CB2C1E532FB9487597F238ED6CC7DE80A21),
    .INIT_54(256'hFD286AB98592DBB467F95FE32E56CC3D886A8145D27BD447B17B7B96DE14F5BC),
    .INIT_55(256'h56CC3D08EA0185521B74A7F9DFE3EE564CBD88EA8145921BB4A7F9DFA3AE56CC),
    .INIT_56(256'hD2389092E79604706B54F5FA695096CA2F976DDCF24ED945521BB4A7395F1BAE),
    .INIT_57(256'hF8DE9A50F83D5B06FB0F7BBC751A59173E52EFD76AE3B183604B1BD24AE67F41),
    .INIT_58(256'hE97A8462DE33CB9150D5B7DC68CFC6E9CA24423E33AB91806507AC184FC6697A),
    .INIT_59(256'hA1F699EAD4F20EC3CB21D0E5871C58AF36D9BAD482BEF3BBA12065875C788FC6),
    .INIT_5A(256'h598552DB748719DF2FDC6E4CBD886AF9C5129B742781DFE32E96CCBD8812FDC8),
    .INIT_5B(256'hBC8E45A18E29784B51A763CE963E23F04AA165B23B1407597FA32E966CDDE80A),
    .INIT_5C(256'hCC7D089281C592DB74A7F95FA3EE96CC3D886A01E5F2FBB40F7DDF63B6726435),
    .INIT_5D(256'h2E560C3D08EA418552DBB467F9DFE3EE96CC3D086A8145129BB4A7391F63AED6),
    .INIT_5E(256'h59252830AAE3C9E4D72323EAAA4EB0B6FA67EF4DA49144B727A663B4A7F95FE3),
    .INIT_5F(256'hC698EE414848A243F1D4D0330C5A1546280EC2B878DD34D65B0FE40BCA3A39A7),
    .INIT_60(256'h4649DA44823E73EB9120D5875CD8CFA6E9BAE4B29E932B11E09587ECF88FA6A9),
    .INIT_61(256'hD69F5679EA34B28EF3CB2110A5B7DCB8FF06293A64423EF3CB61D095771CA8FF),
    .INIT_62(256'h82C105D2DB548741AB8B562EB4BDC8CAC145526F7CDFF9DF632ED64C05702A57),
    .INIT_63(256'h151C6EC509BE29D8E781A7A3AEEE02FF28CAA16532BB14E7D9DFA3EEF62C5DE8),
    .INIT_64(256'h966C3D88EAF945921BB4A7F9DFE3EE960CBD08EA612532B3801FD91F975A32F8),
    .INIT_65(256'h632E560CFDC8EA8145921B74A7F9DF23EE56CCBD88EA01C5121BB4A779A7E32E),
    .INIT_66(256'hD7A1ADA4549DBC7104977453851DB6A8E65AFFB7D52446FB681CEB65A83FF95F),
    .INIT_67(256'hE2F15789DDE0F0EA7C716B3F436302F52157217590476D9C19DCF8FCBCB505B9),
    .INIT_68(256'h2F46499AC4327E93EB11A015C7AC780F4609FA64C23ED30BD1D0D577DCD8CF86),
    .INIT_69(256'h0FD6616879EA34927E03FB819095771C680FF6D9FA44022E033B518035F75CD8),
    .INIT_6A(256'hD0128105525BB43311E7E3AE2E4C9DE80AA105D25BF467B99F636EF66C1D286A),
    .INIT_6B(256'h38D580E26569401314E78127630EEE963D284A21E5D25B1487B91F230EB62CDD),
    .INIT_6C(256'h56F6CC05706A81C512E3CCA7815F635656B43D488A619D9A539487014B4B3602),
    .INIT_6D(256'h13CB16560CFDC8EA0145929BB4A7399FA3EE56CC3D88EA01C5129BB46781A7E3),
    .INIT_6E(256'h79F841A9322835B3767C9FD4949AC5F6C08E22174F554CA913182C138AC5E96F),
    .INIT_6F(256'h15BAB6E796FA9B4F02FB79807B1F1BBABA690871E58847B58CBE04D06BACEA5A),
    .INIT_70(256'hB8AF26A99AC4427E034BA1A0D5775CF84F46097A64E23E933BA1D0B5F79C588F),
    .INIT_71(256'hB2ADD357C847F4F4124E439B21A025F7EC287FF6E97AE4728EC3CB51E0D5075C),
    .INIT_72(256'h4570EAB91D2AE37427395FE3AE2E0CDDE80A6165723B944719BF83CEB6ECDD28),
    .INIT_73(256'h820465209E0519CAFB94678127638E7E54DDE84A210512DBF4E7B97F83CEB66C),
    .INIT_74(256'h230E564C3D08EA8145EA9B34A7F95F9BAE56B47D682A89F1AA5BB44F65876386),
    .INIT_75(256'h77711208FE343D08EA81C5921B7467B91F63EE564CBD08EA014592DBB427F9DF),
    .INIT_76(256'hAA7927E9519F7792AB5EBBD00B83EA3A36186E622F3F62FC91D35884034AA5E6),
    .INIT_77(256'h33BA5AE69F816207470A13021CE73B4B1AA5DE3F613D80B735A3118B3F8B43DD),
    .INIT_78(256'hDCF8AF46891A94827EB3CB2150D5571C584F0629BA8462BEB33BD18015079CA8),
    .INIT_79(256'hA84AC12D7851B679F452105DBB615015476C08FF76293A14728EB34B11E0E5F7),
    .INIT_7A(256'h4CBD306A7985D25B74277927E3AE962C5D688AE1A5B2FBD4C799BF83CEF62CDD),
    .INIT_7B(256'hBA3E2C658CBE25DD72FB14E779A71B6E16ECDDA82A2185D21BF4E759FF83CED6),
    .INIT_7C(256'hFFC3AE2E0C3DC82A81C5EA9BCC2779271BAED64C1DF062B9A532E39CF3B9274B),
    .INIT_7D(256'h69272EDAFF4796BD886A8185925BF46739DF632ED6CCFDC8EA414552DBB4A7F9),
    .INIT_7E(256'h85726937FDDD9F4712330654DFC4F3EA05A6D8FE9AD750E204094B1094DC1525),
    .INIT_7F(256'hC3141535D9EF4EBDF8E8225BDEDB8FE403257A39B86E0D0F871A44E9CB40CC8C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h375CF80F46E94AC4623EC33B51D055571C584F26A91A04E2FE338BF1A06577EC),
    .INIT_01(256'h1D48EA011DAADB14334AEC805D5B81907B070C883F36990AB4F24E734BD11015),
    .INIT_02(256'h168C1D484A6125F2FB9407B91FC34E36AC5D688A6165727BD4C7993F838E762C),
    .INIT_03(256'hAFAEB68C954C7E99E5B23B14E781977B2E162C9DC8AA41E532DB7407D9FF436E),
    .INIT_04(256'h99BF432ED6CC3D88EA813D921B342781A71B562EB4C5504A61656A13EC87014B),
    .INIT_05(256'hFAB948A69A57EF3A65C8EA4145521B3467399FA32E960CFD08EA418552DB74E7),
    .INIT_06(256'hA335FABE1B7D8D70C0AA933934E85C23EA1526E05E9A5098753CA1CBD06BC37A),
    .INIT_07(256'h9D59A061FE81972E3580373AD339740830635A45E657A11A17781D73992410DB),
    .INIT_08(256'h35D7BC584F46297AE4C2FE83CBE16095B79C180F06891AA4B28EB30B11E0D537),
    .INIT_09(256'h344588AAA165723BF42DFF89A2F365BF0EC5994C68FFB6B90A1442FE43BBE1E0),
    .INIT_0A(256'h6EF6ACDDE88A612572FB5487597F03CE36AC5D688A61A5B26374E7B91F63EED6),
    .INIT_0B(256'h1763EE760C8560322105D23BF4E781FAB29676EC9D482A21E532DB7487D97F23),
    .INIT_0C(256'h4799FF23EE564CFD086AF9C59263B427F95FE3AE560CFD280A41EDA65B141F31),
    .INIT_0D(256'h55DA76B8BE822FEF25FBDACE899D92DB746739DFA36EF66CFD48EAC18592DB74),
    .INIT_0E(256'hABA40A4D0DCB714DF860A2DC2E33D05483E24D12C0A6D26FBF4D64B16BD01403),
    .INIT_0F(256'h5E35ED1A3FE8D55B4529B8FCAA6B595F20247725D54688A682C0987293F92CCF),
    .INIT_10(256'h20D5D7EC582F06593A2432FEC3BBD12055875C58CFC6E9BA64B24EF3EB1180D5),
    .INIT_11(256'hB62C1DE8CAA165723B1407599F9BFA3C8D0EBB998C688FB619CAE4B2FE337BD1),
    .INIT_12(256'hC30E362CDD688AE125723B8CDF19BF834E36AC5DE8AAF9DDBA5F566B815F638E),
    .INIT_13(256'h01DF632E963485484A210572A3F4A77502DAB6B6EC7D484A2165B25BF407597F),
    .INIT_14(256'h1447D97F232E560C3D886AF9C512633427815FE32E16ECBD8872655D725B8C8F),
    .INIT_15(256'hA35585B6684E822F9F25E4D993588B30DFE83F391FA32E564CFD482AC10552DB),
    .INIT_16(256'h078B532AF21D976E450827DD83817368C4B3DA752660D1B287CFB5EC299B80E4),
    .INIT_17(256'h6486DD39F66FBC0FAD7B7F7CEC26BB06334B7CF4AAED96A8813DDF38C203A9A4),
    .INIT_18(256'hD12035871C680F06E93A94C2FE333BD10015071CD82F46693AB4F27EF3CB11A0),
    .INIT_19(256'hCEB62CDDE80A61A572BB9487D93F436EEED0E07B47C4189FB6397A5432FE433B),
    .INIT_1A(256'hFF834EB6EC5D688A61056AB31C0FC11F43CEB64CCF861354085165D07F193F83),
    .INIT_1B(256'h67F9A7A36EF66C9DA84A41654ADB9427E54AC606766C7DA84AC1E5B25BB4E759),
    .INIT_1C(256'hBB9407B9DF63EED6CC45706A013D121B34DF79DF236E165459004281E56AF3DC),
    .INIT_1D(256'h541C152516884E82C70F0DB32953B8E324501FDAFBC7632EF6EC1D28CA2185D2),
    .INIT_1E(256'hCC708B14D94201E8A19DE077FDF4E9AB90C4D302AD4ED7CE2A97FF7D9C865BA0),
    .INIT_1F(256'h0B3E486DD97EF7300371B70B860248314A40FF03C35AB56658B9CDA017129339),
    .INIT_20(256'hCBD1009537ACE87F86A93A14B25E937B515095875C982F0619CA64329E43ABA1),
    .INIT_21(256'h83CEB6EC1DE8CA61A5B23B548719FFC35656186486BC0FC8A16899BA1412CEC3),
    .INIT_22(256'h193F03CE762C1D0812D91DCA230C7F61B757C0F3FFFECB31CC677E7770E7193F),
    .INIT_23(256'hB4A7F9DFA38EF66C9D482A219D52FB14671DF64E1AF68C1DA82AC1A5725B3407),
    .INIT_24(256'hB23BF4E7B9DF632E564CBD086A013DEA9BCCA7391F232E0E08E180EA81C5EA9B),
    .INIT_25(256'hB08BBC7AD516683ECA772FFD2C3193674F65A4B3AA30B1EF76F62CDDE8CAA165),
    .INIT_26(256'h425C3F74D83DAA162FB5FD3FD709685D53F8144B9A0D56F7B62AFB075D8C397B),
    .INIT_27(256'h39C81DBF18AB78E9583B15B3DF3AFE14A5A03E5DD74811F2F6E81115FF671D5C),
    .INIT_28(256'h43CB11201537CC180F06594A94427E330B515095F73CD8CFB6D93AE4B2FE43CB),
    .INIT_29(256'h3F83CEB62CDD280AA165B23B5447197FC38E96B405509E88966916D90A14320E),
    .INIT_2A(256'hDFD97F6356D60C3D886A79BD6AC348B68CA516AD1DC7E61150D337E0892C4719),
    .INIT_2B(256'h1B74E7B99FC38EF68C7D484A5985B23B14E70D4E8E2A16EC1D48AA2125B2DBCC),
    .INIT_2C(256'h3DAAA3B427F91FA32E564CBD089201C5929BB427F91FBBD69E480508EAF94512),
    .INIT_2D(256'h1B8F0B033AA5869836CAAF675D6451CC2B72ADDC191638DAD6E24E1465F09279),
    .INIT_2E(256'h3356A4E08F6C55854173BE1A2F2FF5E406BBA0AC13BAAA16C0366A1FE7C24C19),
    .INIT_2F(256'h8D176E456F2460876E7519D3CDAF02CAF079DC9E696DE65F987B15A327D2846A),
    .INIT_30(256'hFEB38B51A0E5A73C584FF6993AD4C27E33CB21A01557ECD8BF36298AE4B27E43),
    .INIT_31(256'h19FF43CE76ECDDE8CAA165B23B5447D97F430ED6CCFD703E44F65FB6590A6402),
    .INIT_32(256'hEC9F0123ABDACE0C25E02225F7B89A19C9BFF538D945826BE26893D7B0471447),
    .INIT_33(256'h921BF467399FC36E168C7D48B2C1E5B2BB7407F1F18002762C7D482AA1253263),
    .INIT_34(256'h797DAA9B34DF399FA3AE2ECC3D08EA8145121B34A739A75BC64ECCBD706A01C5),
    .INIT_35(256'hB964D0A453BA551650F65ADF87D5A40EB0AA3AD55685866CB611867E74C58892),
    .INIT_36(256'hE4795AD4B7FC232A920177C652971F55EC6193C82C431DDA1EF0C6724F67FDAC),
    .INIT_37(256'hC1B9A3A2771D5AD65F26F1422C9622101C5E7194367D81B60FEC434563DFC2BE),
    .INIT_38(256'h424EF33BA1A025F74CA82FC659EAA4427E33FBD1D015371C883FB629CA64B2FE),
    .INIT_39(256'h47D9FF830EB62CDD28CAA16572FB5487D9FF438ED64CFD882892F65FD6196A64),
    .INIT_3A(256'h43AC1F71A9BE9DF4861E75A3A044CBA22886A02636C0688A5B7E209B07C66394),
    .INIT_3B(256'hC592DB7467B99FC38E160C9D304AA1E5D25B740761F920BC766C9DA84A61A532),
    .INIT_3C(256'h12393D12DBCC67391FA3EE56CC3D08EA01C5929B34A739DFE32E564C45886AF9),
    .INIT_3D(256'hCCD6DB10A4230A954E305E92DF4FB5438AC1FE023F7ACDF2102D8B46621D7BB0),
    .INIT_3E(256'hB6EC9DC812A98110A5F2B6A0011E87871D84C9CB90A42C05754EC0BE628FF82D),
    .INIT_3F(256'h8CC1796392E7C56EDA6DCCEF1444DA86FB83C5C47648D0DC5407E6F5CB5349CE),
    .INIT_40(256'hE402BE037B21E0E587DCE87FF679BA64428EC3FB5120B5F72C08BF76F98AB4F2),
    .INIT_41(256'h7487D9FF43CEB62CDD280AA16572FB9487D9FF432E6EB43DE08F0CA8BF36594A),
    .INIT_42(256'h1283EC3F610B7A43B27AAE220C700B7CBA698A30513D283822534E50E55DCA9B),
    .INIT_43(256'h01C5521B74E7597FC3CEF68C85884AC105525B5487C17500FC168C9DE84A61A5),
    .INIT_44(256'hB667E230784F0CE739DF63EE960CFD08EA014512DB74A7F9DFE32ED634457092),
    .INIT_45(256'h9D23668BC064D3FA2D0EE0CEC2772F22E713D586A853E221CE0BF78B3ADFF744),
    .INIT_46(256'hCEB6AC5D68CA210552E3007DB76A8A270F8DC4098BD0BB0C226DFE485EC2BF8F),
    .INIT_47(256'h16AA4D61B32267C52E6A7DF42BF8FE4888ED3BA96846C11E9ADF8042B3556683),
    .INIT_48(256'hBA14827E431B61D02577ACA87F36D9BAD432CE43CB5150E5E7CCE8BFF6994AD4),
    .INIT_49(256'h438CE7B9FF83CEB62C1DE80A61A572FB5447D9FF23EE5694851E478C883F7619),
    .INIT_4A(256'h05CA036C7F41876716EE7EC91C687F930B0659E657F9853067BD877C42299D4A),
    .INIT_4B(256'h9201C5921BB407597F830E760C65484AC10572FBB4A701257E14F66CC570AA61),
    .INIT_4C(256'h13B3F1BABED1A662AF395F23EE960C7D086A4185525B746739DF632ED64CBD70),
    .INIT_4D(256'h0702DCC9D340C4F3D23DDE08BEBAF76F4AA6B76D32842BDE3D5D6D6B8707AD8D),
    .INIT_4E(256'h43CEB62C5DE80A61A572FB1467012B4F4428221C31239FC35B72ADB6C09E026F),
    .INIT_4F(256'h8FA965A8D01D08BB21865AFD549B8836F04CF1D1DB70EF75BEB6AD3E74A721FF),
    .INIT_50(256'hA94AC4324E834B51D055872C081F86597A94F2FEC3CBA1A045E7CC687FB6590A),
    .INIT_51(256'h2A737C63158783CEB62C1DE80A61A572FBD48719FF5B6E0E74C13DA74CE8BF76),
    .INIT_52(256'h21C5BA03ACFFC1A7E36EAE089504203B9B0B3265812329A5300438752082591D),
    .INIT_53(256'h8892013D92DBF40759FF43CEF64CBDA8CA21A5B2E3CCE7796D06FC2E0C1DE8CA),
    .INIT_54(256'h72C6536942E6E168692185DFA3EED68C7DC82A410552DB7467391FA3AED6B445),
    .INIT_55(256'hFF58DDFCC90BC0447B72CD3668665A579057424FB920BC87D29E636D3BFA2D77),
    .INIT_56(256'h7FC38EF6EC1D28CAA1A572FB9447597F2316028801F654270C9BC2F5FE588EDA),
    .INIT_57(256'hC19F5E9DD0773D7BDE54900CE150B338D6304CC179D372E785D242F35B940759),
    .INIT_58(256'h56991AD4B21003BBE1E0E5474C28DF06898A6472FE433BE19045078C28FF76D9),
    .INIT_59(256'h1BC33A4D3E901D430EB62CDDE80A61A572FB544759DFA3AE7ED474FB27CC480F),
    .INIT_5A(256'hCAC1FD8A03AC7FA1E7E38E6E7A7914904FE433856E1503C5293A7EE425B01215),
    .INIT_5B(256'hC5706A01C592DB140759FF830E16CCFDA8CA6165EA9BB4E7F993BE08AE0C05C8),
    .INIT_5C(256'hE8375673A9E268E1D671A230E5BBAE168C7D482AC105525B74A7391F63AED6B4),
    .INIT_5D(256'h9280A7CD44492BC04C9B42150640C61AC86DB37A7B0B809C3C777CAF2DA6A0BF),
    .INIT_5E(256'h799F430E76EC9D484AA165B23B9487199F2BD66EEC7D7082AD638B52C18EF866),
    .INIT_5F(256'hFAE98861121F6F3DDBC26C8B93B4657A1E5444E4B9FDE39247896E8EB3D9DC1F),
    .INIT_60(256'hFFF6094A14322E837BA1F0C547AC28FF0699CA74F23EC3CB619015475CD84F86),
    .INIT_61(256'h7F844B4EE912C3B383CEB62CDDE88A61A5F2FB5407797F23D6D692AEFBE72C88),
    .INIT_62(256'h28CA815D4A036CFF81E7E3EE32CAB9EA8410DBE479582B2B9D51860E7485E22F),
    .INIT_63(256'hB4BD889279C592BB14E7397F23EE960C7DA80A6185EA1BB4E7F9D35E307ECCDD),
    .INIT_64(256'h50D5D7C62B896CB63F3261C2DCFAF2224E0C9DA84A4105D2DBF467B91F632ED6),
    .INIT_65(256'h7E324F8F9564F12BC8703B9A952620D11915A9F31E294B60E3406F5C53581CF2),
    .INIT_66(256'hDCECE93F06D60C7DA84A21E5D25B14E76173C7A6B62CDDE84AC1C5FAE7DEA9C0),
    .INIT_67(256'h15BAC6185E2A97E74A23AE9B8B2FB36A45617F8999E3F9A352DBB58F2CA180BF),
    .INIT_68(256'h68BF06994AD472CEC3BB61D045A76C580F7629CA9402BEB37B6110E5876C287F),
    .INIT_69(256'h2FD3FFF022BA8BAF2783CEB62CDD680A61A572FB9487F97FC38E5EDFCEE5C7AC),
    .INIT_6A(256'h1D284A39DDCAA3B4DFC1A72356DC969F2634E71F3E1FF01BC57B2786EE46D8D5),
    .INIT_6B(256'h56CCBD709201C552BB14E7399F236E960C7DA8CA413D6A1BB467798D5E2F0E2C),
    .INIT_6C(256'hA5AD8D4F9E2BA7CC58F36E8192ECFAA6DB28D0C5A84AC10552BBF4E7B91FA3AE),
    .INIT_6D(256'h1D2DE93F7FA59461DF748C933A4D4E18E918D1294F8431BB9FD3EE83BC769ACE),
    .INIT_6E(256'h5EE6046414CDFF0ACFA06AC1E532BB142FA8B14F0EF62CDD280AA16572BBB47F),
    .INIT_6F(256'h98116A6917A15A4748322B8E1CDF3BB39E0179E0D1987139E3AE5F32B99DBAE7),
    .INIT_70(256'h6CE80F36596A54F24EC3FB2110A5879C283FF6198AE482BE039BA1A015079CA8),
    .INIT_71(256'h3C5EF37F5E039CCD813F83CEB62CDD28CA616572BBF40759FF43AE9B3FF0C507),
    .INIT_72(256'hEC1DE8EA991DEA9B0C27017FA3061AB04B323635DD4A43EC9F01C7B74A38A92C),
    .INIT_73(256'hEE56CC45706A014532BBB4DFF99FC36E168C9DA82AC1C5129B3467813DA6B74E),
    .INIT_74(256'hF918352D6FDEA547ECD437664192CCBAC68B53A56B00AA2105D2DB14E7391F63),
    .INIT_75(256'h47599F9BE60A06B3BDCFE49C33A2DD5E5FA49CD1950293D9D4CBA18AD3D504E8),
    .INIT_76(256'h9B0C3FB11B7110C3872AF30F5F599AC348D444A9C38EF66C1D28CA61A5F2FB94),
    .INIT_77(256'h8B5C3AFAE9A7C69AC0E70DE32224EFA4FB9ABE0EC46E6DFFE325240C82F9E552),
    .INIT_78(256'h272CD8BF56190AD4122E037BC17015F7ECF83F36297A64C2FE63BBE1D0E5076C),
    .INIT_79(256'hD351E750492A875C87D93F430EB6EC9D280A2165B2BBF487D9FF6343E541B025),
    .INIT_7A(256'h0E6CFD7052993D2A434C1FD93F638E56D4251052B9BDEA6334FFDD2DB9C850D2),
    .INIT_7B(256'hA3EE564CC5706A818532DB34DF399F236E966C7D08AA41451263CC67392D0627),
    .INIT_7C(256'h2FDCF895F50F7065F710B87FBEE1126CCAF6CB73693891A879E532BBF4E7391F),
    .INIT_7D(256'h944719BF838EF68CC55CE8AF3CA7EE8D412260E4BD086AE49698A95D9AFA3746),
    .INIT_7E(256'hAEC3B4E7395F9B76BE4491F637E67AC558EBA000DFC38EF6EC1DA84AA1A5B23B),
    .INIT_7F(256'hFF3BC415ED9D374E7A37F7AAC7D6541F745C0D6D89E0CEC52FF0865B39FB10EF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h65A71C587FB6794A1442FEB33BC1A095D7AC688FF6A9BA6492CE03CBA12065F7),
    .INIT_01(256'h1DA475FF55E5323B9487197FA3CE768C7DA8EA21E56A5B148759E710DD5B6170),
    .INIT_02(256'h9B7E4C3D88B2991DAA731447993F430E963405F092F9C51203F0352349851087),
    .INIT_03(256'h9F23EE56B445886A41E5D21B34A7399F23EEF68C3DC82AC145EA6334E7B943D6),
    .INIT_04(256'hF1FAB4E06DF50170E58B3CC82F8EA1722CCAF63BB3E918AD0FF0D9CA5BF4E7B9),
    .INIT_05(256'h3B1447193F43CEB62C1DA8AAF98D60D12EC4865858F7D739B33A02198D0360D5),
    .INIT_06(256'hD4FC7A9225FDAB7BEE964CC5B002555799042B40DAA6492ABE0C9DA8CAA16532),
    .INIT_07(256'h147F033CE5D2A98851A57028B22302FC3864DB62F54620CE4AD0A7829C71933F),
    .INIT_08(256'h50C5C76CE83FB619CA14F20EA3DB11A055B76C580FA6094A34D28EB34B512095),
    .INIT_09(256'h2CCAB30AD2A165B23B1447B97F43CE160C4570EA21E5B23B9467518C10E35BE1),
    .INIT_0A(256'h5A8BDE8C9DC8B279DD92FB54C799BF830ED634BD886A01FD36493EE157613DF8),
    .INIT_0B(256'h597FC3EE564CBD886AC105529BCCDF399FA36E160CFD482A4145529B3487595B),
    .INIT_0C(256'h6204E284E06D5B8110290732F8670E5172EC4AF64BB359282D2FFC4C6C9FF4E7),
    .INIT_0D(256'hB23B9487D9FF43CEB62CDDE80A61A5321BC0A528AA8ADBF31D6FE00289A4A962),
    .INIT_0E(256'h2B7B1C4A5AD987796944D4E8A5C86A29B665909645970AE00525ED77ACD2C165),
    .INIT_0F(256'h997B8B8B54C5CA2698E16DC848AA3B4EA4F0AB9C6512D60719B51FD8DDC4C134),
    .INIT_10(256'h219045C72C885FF619CA24422E833BA1E015876C688F76290A54F2FE337BD110),
    .INIT_11(256'hD6AED43D480AA1A5723B94E7597F838E164C9D48AAC1E5323B14556A2CAE839B),
    .INIT_12(256'h4B825322EC9DE02279A5727BD4C799BF03EE2E0C3D88D2D5F7581D4546984E91),
    .INIT_13(256'h07597FA36E160C3D886A4185929B342739DF232ED68CFDC82A41C5921B948759),
    .INIT_14(256'h7DB7CC22A4A0DD9B01DC95397CCC077E21326CBAF64B731958ED4F4440C0BB94),
    .INIT_15(256'h7FE663F487D9FF83CE766CDD280A61A5723B54E739676B223C1E35A09E10FE8B),
    .INIT_16(256'h6C2F74430A162D5F856D571FED6334F887F47463345F41B777229069D6030918),
    .INIT_17(256'h8BBE4CD00BBC3A3536E859D9887C8A7C5624A00BF7954579B7018A4068326CA2),
    .INIT_18(256'h7BC1E025C7CC68BFB6D90A14F26EF3CBA15015876C988F76F96A3492BE338BD1),
    .INIT_19(256'hBBEED6CC9DE80A6165323B74E7597F43D696EC1DA86AA1E5B2BB32F4347210E3),
    .INIT_1A(256'hF98BD213DE2C7D480A6125727BD4C799BFA3AE960CC5FCA6EBA3DCDA4DDE7803),
    .INIT_1B(256'h5487D99F236E168CBD882A8145EA1BB4A7399FA32E960C7DC82A414512BB9447),
    .INIT_1C(256'h2C407FBC025C90A3DB0DE01BF71490073E81B2EC4A067B03D9584DEFD3E572FB),
    .INIT_1D(256'h442E0580ED1DADE7230EF6EC1D280AA1A5B23B1447D93F438E164CD55C94E270),
    .INIT_1E(256'hCE943F8B33D1021D4B05AD17E7526B3B2C7846CF11005FB91FE356EED4B5A4B4),
    .INIT_1F(256'hAA5B16E420C383119A16E7910288F74AF3B6BC3FBC737535B61FF69277876A17),
    .INIT_20(256'hE31BA1902547CC687F0619CAB412FEB34B51A06577ACD8FF56190A14B20E433B),
    .INIT_21(256'h7B3BEED66C9DA8CAA1E5B2BB1467B97FA30E768C3D48CAC165D23AA72AD4D2CE),
    .INIT_22(256'hDF79EB2DA32A2C5D680A61A5F27BD4C7991F636ED6D84F528CAFD453726D5EFB),
    .INIT_23(256'hFBD4C719FF436E160CFDC82A4185129B3467591FA3EE968C7DC8AA2165723B14),
    .INIT_24(256'hF99C2637BC22BCF07D6FD1DEC50F14E0F70ED132ECBA86FBC329F84AAAE1A572),
    .INIT_25(256'h5219319E254104220C02341214FDA8CAA165B23B540719FF430EB62C1D48D275),
    .INIT_26(256'h230674DF64BC99861513263A6FC7E23CC9BB303051C0A14175CBDB2E16CCBD70),
    .INIT_27(256'hFC66BBE614D834FC12DD1EE8E12DEF47C20C264B1F04FB6ACDF908E9DDE0F02A),
    .INIT_28(256'hAE634BE190C5276C684F76594AF432FE338B61D025779CD83F96998A14728E83),
    .INIT_29(256'hC7E989ACE2ECDD28CAA165B25B1407B99F430ED60C9D284A21053B28B98A5492),
    .INIT_2A(256'h3467D9176D2BCEAC5DE80A6125F27B544739DF63E604F637560B385C8BB2ADA6),
    .INIT_2B(256'h72FBD44719BF034E766C7DC8AAC185929BB487F9DF636EB68CFDE80A61E5529B),
    .INIT_2C(256'hA1E51233083DC83A80DB25CF6E8D0FE4A0F7FED1B2ECFA46CBD3CABDE88AE1A5),
    .INIT_2D(256'h08EA41C5AAA32C13F5A972B3551FB4AEAED9E5323B1487D97F430EB62C1D28CA),
    .INIT_2E(256'hDA73269B00E448D906A1C0E602972F7D4CB9EB8F6B1356EF4AD825DFBA22D43D),
    .INIT_2F(256'hD4ACBD64B99BBF7CF38D95ADE3E1A24BD8621329940FDBCCCA2586774122E440),
    .INIT_30(256'hF22E03FBE1B04507CCD80F36F9AA14320E637BE1E01507AC088F36D9CA14B28E),
    .INIT_31(256'h0E5C221EA7F2EC1D28CA21A5D2BB9467791F238EF6EC1D48CA01D8E196B9EAD4),
    .INIT_32(256'h9BB467815B8698762CDDE80AE1A5F2FB5467F9078F749CB2731913C8DC0B32CD),
    .INIT_33(256'h25F27BD447993F034E366C7D48AAC105521B1427F9DF438E56ECDDE8AA41C552),
    .INIT_34(256'h0AA165323B1407F9B7F7940FE11015978480973EF1E2DCFA66D74EAC5D688AE1),
    .INIT_35(256'h655C2097597A1B74A779273B0632EEEC3B1D2A6084CF4CE7597FC3CEB6ECDDE8),
    .INIT_36(256'h783DAC19BB005BC481FE0EE8FE523FD8422C09EB10DC8325C93C025625A2C2B8),
    .INIT_37(256'hADE0EF4204E63B1BF4142A16511FE6A27FF7ADE30EEB38B3ECE5AAA6E7AE4560),
    .INIT_38(256'h14920E037B6190E5471CA80F36F9CA14328E831B1150E577CC085F3659EA1492),
    .INIT_39(256'h497AD4F2FEFB826C1D28CA616532BB9467011FC30EF6EC9D28DE72B63F86F9EA),
    .INIT_3A(256'h1263B42741B93E36B62CDDE80A6125723BF4FF65A58978B83D44A1BF6470678E),
    .INIT_3B(256'hE125F27B54C719BF034EB6EC9DA8AAC105D25B34E7593F830EB62CDD48EA81C5),
    .INIT_3C(256'hE80AA165723B9447D9FF238ED654E11ED324B8AFE671E204FAC7CE36AC5D688A),
    .INIT_3D(256'h68F510AE07DC4BEA022B4D07632ED6346560BEE3CB0F80AF124F632BAEF6EC1D),
    .INIT_3E(256'h04C01A53B97B0713B8ED4D5608EE123F3795BCF9A4A0D4F4B505D25A64BEDF74),
    .INIT_3F(256'h46FAA8470DD35EB4DF44932ACA96BF6E8210784AEC66DB4B3BBC62054127B905),
    .INIT_40(256'h8AB4B22E639B0190E5F76C683FD6993A1432CE03FB21D025470C883FF6594A14),
    .INIT_41(256'h56591AFCE24EF00E6C1DE80AA1A592BBF407819F230EF66C1D9A890C48FF3659),
    .INIT_42(256'h3DEA9B349F556C0F6E560CDDE80AE1A5B29B684DDF35E99FB7D5800D6FA42057),
    .INIT_43(256'h8AE125F2FBD44799BF03CEB62C1DE8CA61A5323B5447193F83CEB6ECBD086A01),
    .INIT_44(256'h09F0AAC165B2FB544719FF830E76EC1DC8B255678C32497A5B7F034EB6AC5DE8),
    .INIT_45(256'h1F2A91C07225E34B2E6192E041850C126465086AF91DFA4F56F9F052902768FE),
    .INIT_46(256'h457F000A038ECC67BFCCA2D549C84E820F9775F306BB2FA3838255A97852787D),
    .INIT_47(256'h4365B59F0712FB465BF4139C314A3917E17D40E7ED2CE9AC902BFB3A1AF91FE1),
    .INIT_48(256'h99EA1492EE635BE11015771CE8DF7619BAD4722EE37BA1307B678C08FFF6D94A),
    .INIT_49(256'hE1D631BEFC32768A2EECDDE80AE1A5D21B14E7391F238E16EC339B192C583F36),
    .INIT_4A(256'h4185325B740F5C35C30E2E0C7D485EE7733A315A09AFE5F29703C9386DBFE478),
    .INIT_4B(256'h688AE1A5727B5447D9BF83CEB62CDD688A61A5F2FBD447193F830E96943D48AA),
    .INIT_4C(256'h098E753BA3F1EA5B9487593F43CE362CDD28CAA10512B3F09F593F034E36ACDD),
    .INIT_4D(256'hD5EDF1C3A4DE59A1942EE18E18C6CA87232FEE3DB89945929BCC1F61AB3F1467),
    .INIT_4E(256'h45D2EF17D23346AC9B6F638A45C6282662EF6F7DCC791427D4FB1AF576C7AE46),
    .INIT_4F(256'h59072E5627487DA329ACCB339C65EA39501EC2C870FD2C028C272CC7D52A0937),
    .INIT_50(256'h56794AB412EE23BB515065A76CC8DF56994A9472CE63FB21307B472CE8BFB699),
    .INIT_51(256'h56DFBAA20E14B2A586F62CDDE88AA1652ADBF46739FF438ECE516E45C72CE8BF),
    .INIT_52(256'hCA21A5B2BBEC6E277FC3B68A6D903BE7FF8194FAE5A9DF55E217236998F5DF84),
    .INIT_53(256'hDD688AE1A572FB5447193F83CEB6AC5D680A6125727B544719FF830EB6EC1DE8),
    .INIT_54(256'h6ED4C9648CFCAEF992B66F799FC30EB62C1DE88AE1A5B23B9447193F83CEB62C),
    .INIT_55(256'h2DB755674ED9A8D5BDC6655D4640B60AFFE3D128F6AB08FC6487AC6739DFE3D6),
    .INIT_56(256'hA07EED30B04A6CCE709F74C342B5FEB85EDA47B72DD4167C5004EB5A15A117EE),
    .INIT_57(256'h32217FC64D37B80DDC46F4176F63620576705AEA77FF22EB09B4504BFB422589),
    .INIT_58(256'hFFB6B96AF412CE43BB51D09599AC68BF46598AD4D24EE37B017005A71C280F76),
    .INIT_59(256'h724CF419AA6A54369F0E762CDDE8CA4185325BF46719FF6377C57FF09537ECE8),
    .INIT_5A(256'h28CA613DD2C34156597756239BE17065EB5D1B33ED5A26CF9D8257A3711075AF),
    .INIT_5B(256'h2CDD680A61A5F27BD447193F83CEB6ACDDE80A61A5F2FB5447193F83CEB6EC1D),
    .INIT_5C(256'h5656CCBD8812998DCEB1A53AE4B6A952BE4C9D280A61A572FBD4C7193F03CEB6),
    .INIT_5D(256'hAEEDE0B75126CB039799FA8FBE9ED09EF984A06657660BF8C4AB755833CB25D7),
    .INIT_5E(256'h0998C905481802337EA09F8BDC4AF54EC06EE2E007C5FBA23B403CEBFADAF6A8),
    .INIT_5F(256'h359A79407E0DC0075D0C064C877B3CB2CDB617CE62A0A752AC86C3E874D38505),
    .INIT_60(256'h285F76190A74122E433B5110C5E72C688FF6190A34428E83DB01300547ECE8FF),
    .INIT_61(256'hBF0BC1FE316954CCD31B8EB62CDDE84A2105525B9487D915F09DA5011095A7AC),
    .INIT_62(256'h1D280AC7173A8E05FBF032FEB3CBD1A065DBCFABF6717D8535BE023F4351C01D),
    .INIT_63(256'hB62C5DE80A6125F2FB544719BF83CE362CDDE88A61A572FB5447D9FF83CE762C),
    .INIT_64(256'h55BBFF4A5F9C5281451223EC0FBD85CD5B830DEBD47281E532FB54C7193F83CE),
    .INIT_65(256'h176EF2CF87DD48AB91FC14F05360F1689D3122DA567331B3687CD44710A1FABA),
    .INIT_66(256'h053E6859E5C8E8AA5BDEDB907B1342EDA6F83E920F8F92CB06ABB8444335C556),
    .INIT_67(256'h8C05C2F967715227A7327366444F507BF5BAB613E96597C82AE399A49F446B8A),
    .INIT_68(256'h6C887FB619AA5492CE433B6170A5C76C587FB6594AE4724E0325815045F7CC58),
    .INIT_69(256'h21B869F15012E97213F7230EB62CDD286AF965723B949FC46C10A3FBA1506507),
    .INIT_6A(256'hEC1D28EC930D37BE893AE462BEF38B1100B5072C03BE6AD08128D6F25FC34900),
    .INIT_6B(256'h0EB6ACDD280A612572FB5447193F834E762CDDE80A61A572FB9487193F830EB6),
    .INIT_6C(256'h15CE6D7597BEFB7FB0B7A663B4A7F9A75BC6B27E3BE1CF744F3623F407D9FF43),
    .INIT_6D(256'h56E86ED27F07DDF389273A164B11E05365AD3FD21A5AD322D02D213AB342841C),
    .INIT_6E(256'hE58A89BF191298F07AD7F63BAF842B7A4566483122B75026ACA94B0054FC15C5),
    .INIT_6F(256'hE3348D12016701128808C22BEE543F24BC226A9917AE328028323CE6646FA49C),
    .INIT_70(256'h476CA85F56792A54F29EB3BB21F025875C28FF86194AD4322E637B21D02507AC),
    .INIT_71(256'hDE4DBE39012C3E31B655A743CEB6ACDDC8CA61A5B2C355CA74AC5023BB11D025),
    .INIT_72(256'h0715EC294F1D146382E91A04629EF3EBF160E5875CC3486FA5E6CC6E5D0F13C1),
    .INIT_73(256'hA38EB6EC1DE80A61A572FB54E7117F230EB62CDDE88A61A572FB544719FF23DA),
    .INIT_74(256'h533A2E4D2D0F9E5B89443897B26AAB71E7E32ED64CC5D022BD73337E7AF56D67),
    .INIT_75(256'h85B6E82E327FE79DBCE9DBA4C6110E4AC311DB5F421416CFC4CE55A13631D96E),
    .INIT_76(256'h947A32F17391CA5030AE9B862470D403FA4D56A86E4AF0BC7D04F153404BA30A),
    .INIT_77(256'hB7737C357EE91731B27018EA6C36338044CC3DB27677A16D9F209DC4D1546F13),
    .INIT_78(256'h25C79C88BFD679EA54C20EB3BB6150D5F7ACD8BFB659EAD4726EE37B2110E5C7),
    .INIT_79(256'h372E22EAC9D437BE0D75C1FF834E36EC9DE8CAA19DD4AE796AF4128EB38B5150),
    .INIT_7A(256'hA33BCDA37E3E3D991066099AC4025E73EBF12095379CD870B50A362556A6B375),
    .INIT_7B(256'hAAED945264BD70AA2165B23B4C3B41E73B8624503D680A6165B2FBF453A38A6E),
    .INIT_7C(256'hF1A4DC986DF55FF0EBEF64A0775EF1A29C06BD0CF254BD086A01BD4A13A86DB7),
    .INIT_7D(256'h6AD546480E129F877524E12B6FDCE1D8D1F925EBA73CBC7EF11C1EF5B1D8F8E9),
    .INIT_7E(256'h3CEB35625977761D686C321C8654205CF3C2A53ED8DE8228E7CD7CA9DBDF0B73),
    .INIT_7F(256'hFC975BFB8A7549D781AAB8774D0CB1A470DCA3056D1E771E0238E772FC8E0C0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h5095B74CA89F56594A64F20EC33B51D0D577ACE8DF86D98AF4922E830B2160E5),
    .INIT_01(256'h15E17CAC28A850942FCC8719FF430EF66CDD284A97A04FE879EA3432FEB3FBD1),
    .INIT_02(256'h7EF3F7516825315A96EF9EB1BAA482DE738B5120E5879C40C71538C324D2AE55),
    .INIT_03(256'h61EB4F0488FDD0A1CC3DC5B26300D34DFBBA5D5B8D95E80A618DE812194A14C2),
    .INIT_04(256'hFEEE345C608D3541AE8DFFE420B7FE51C21C1A66AB339559C82A0185929BCC5F),
    .INIT_05(256'h3C0AD596684E927F2FF554B1BBC0B4B3E677EAB89D87423AC069BCFE551F8FEE),
    .INIT_06(256'h50849CE14A999861450488ED4C06C4C0F4CB62D5F6288E251F57CD3C69C44FF4),
    .INIT_07(256'hB95BE0541C5A45E610E66D8FC76D04F18B500C2352AD29C0FE89F078523BF6F4),
    .INIT_08(256'h9110D507ECA8DF7659CA64428E43CB11D0E507AC58CFF699AA5472CE038BE1E0),
    .INIT_09(256'h151B0D2B2944735DD23B544719FFC30E76EC9D8EBF1828DF56990AD4423E43BB),
    .INIT_0A(256'h02DE686A6840EF95A6381746794A14F20E031B81F02547CCC8C13D60BA0A7C98),
    .INIT_0B(256'hA7F95F47B45A2E1B81A36DE5DA552A795347AFBBD3F9C928CA2DACF106E99AC4),
    .INIT_0C(256'h7DD93C2224E08D5B7F78DD3F34D0270E81C2AC4A063B93BA1D282A01317A1B74),
    .INIT_0D(256'hA483BA256618EE7217FF85BC5993204BD02D01FC020AF52280CE895C7EEB764F),
    .INIT_0E(256'h1B103B98BD629647F1B52F672273795B904CEB95A51ED881722F4F15FC263B40),
    .INIT_0F(256'h2B1E04F0544C056236908E4250C8B904096C07FCFB7AAA2640F9523007B29C0E),
    .INIT_10(256'hCB51209577ACE8DF36A91AE4324E338B9120A5472C58FFF6198A1472BE038BE1),
    .INIT_11(256'hFA526248F942B005E532FB5447D97F830E76D0FC219F1CE87F56D93AA4C27EF3),
    .INIT_12(256'hA482DE3C4E686FD2A344B80FA6959D5513515CA4E021346E0581E629D75CC2A4),
    .INIT_13(256'h8C9F011F236ED64CC5502AC1917B322DB661FF236EF62CDDE82EDF2E61E689FA),
    .INIT_14(256'h7AB39CEFD1F78BB6CE54551032599DCA43ECFFA187DB96AECC3D08EA01451263),
    .INIT_15(256'h67A334658A319FC925D0E8D6E95CBED58DBA93A841AC1CBEDF977E2590C2094D),
    .INIT_16(256'h992B4FEF188DBA9697E9EDFF27C21356E458040CEACDFE28EE5DB0784A0B766C),
    .INIT_17(256'h02F3A60B78BBAC253209A88E5A004F42EB99DB5F04D3C53A8697662DCF4055C8),
    .INIT_18(256'hB37BD1A025A7CCA8BFC6594AB4B28EB34BD19025A75C287F16590A14427EB34B),
    .INIT_19(256'h7B39BF6F7045FA0801A572FB9467D93F43D61AF26B49871C08BFF6D94A24020E),
    .INIT_1A(256'h1A040211D67A11EC3B875CAB1ADBEC63DBC5C9F4FC267702A0DB7748F6310247),
    .INIT_1B(256'hF966D535CB9B6EF66C7D48AA8588213631D3193F434EB6ACDD5494FAAE739249),
    .INIT_1C(256'hFFC8C1EEFDE30579343C2627D2303BFFA89936E53BBD01CCC4EE5F2A08E32780),
    .INIT_1D(256'h42298D3A531C0F51774BC67E7E0FBA58D379EEE7481B135ECA33104E073250BB),
    .INIT_1E(256'h6C266CE79734353AD1EF012D2838E2D3396BA04B633A553673B77B46BEE4D520),
    .INIT_1F(256'h47DD93C6E4E8DB6C7A219E002E52CF57320B365BEFBC9C15FA812871A270080D),
    .INIT_20(256'h8E43CBE110E5E7CCA84F06298A5482FE333BE19095F71CA83FF6594AD4C24E33),
    .INIT_21(256'hC74B97383CB43D9C6AA165B2BB54E7B927AB0A0A0A4015C7EC887F06697AE432),
    .INIT_22(256'hB15AE4D363227B957EE5F0013DA87D960B1503DF126A30C10CCEE5D16E7F2013),
    .INIT_23(256'hD8B906EBED7F43CE762C9DC822AD013E3EA807D9FF830E762CCFD649E81CCBA2),
    .INIT_24(256'hB0F4236A3A2948912DE0B812A3B6B49FFB141D4AD9BF39256890B26BC2C01B2F),
    .INIT_25(256'h7E9CD753A451BEAD73A9C95C58FDCC79E4F7FFF0A990EF65B1ED9F679D8CB93B),
    .INIT_26(256'h0AC33E5483A33CAAF205E781CD2027421CC9BBD04B0BEA45419BCD71F49C0677),
    .INIT_27(256'hC7BFED7BB9EC3F1BB42A552158D12DEF98AAAB36045F03A35A7A41174AE25F68),
    .INIT_28(256'h328E331BA13085A72C180F36598AE4C20E431BE1A0E587AC08FF7619CA14B28E),
    .INIT_29(256'h3E75AB35C43E94BD30CA616532BB743F8DC3254BFB61502587ACA8CF26893A64),
    .INIT_2A(256'h62917A93E76F3BD245C3709270D986CF50B36DCB476AF2D8E92C6E3551062F40),
    .INIT_2B(256'h26F10839E27BDF83CEB60C45106A21BD545734E759FF83B27290C366FFA68245),
    .INIT_2C(256'hE772F6E168C774EA3C709DE51FEE1BC9929681C8D7346A4C00EDF56F1E1B89D2),
    .INIT_2D(256'hF4BD5F14F0672E01F2AC2A3DD38B110055ABD0F483611003E716CE5D1B01CE05),
    .INIT_2E(256'h58ED7B96109B4B93B58E61FF719ACF3795BC099360C4F3FA9A46F806EA077F05),
    .INIT_2F(256'h0944B8526CA6B4F884BC9A42592709F5DFE72D14E6DC70DC4B75B50E78BA3240),
    .INIT_30(256'h94F28E83BB6130A5079C588F36193A64020EC3BB0150E5C7CC083F56693A2442),
    .INIT_31(256'hDD3B25C169064E28E56CAA6165B2B3284517CAFEC3BBA1D0E5C71C584F46691A),
    .INIT_32(256'h95B2D03FF9732A4CBF10E5DC809521761F1003EDCB470A2A96196C1E3591064F),
    .INIT_33(256'hC682D58CEF8A6D3F03CED6349530CA69094EB30C6759DFADAC4A1E9C2FE79242),
    .INIT_34(256'h5FBD5672C50CA3302EC83419E1DB6ADF8DE62285CCA340EE3824C9B1EB1AAF0D),
    .INIT_35(256'hCBFA776D7EC2ED644B58FE1C94A5DD2726E5CB8F739EC7A60D143494255D470A),
    .INIT_36(256'h804FFD273EDC0BDC4311227177EEB2D0C7CD9C26EB50D4535263C05ED8C42991),
    .INIT_37(256'h3E829068A26366AB87C3C34A52062851922038C2441983275B8C2A651EE07E0D),
    .INIT_38(256'h4AD4F28E035B01F0A5F71C983FB6891A44328E837B5110E5E7CC683FF6E94AA4),
    .INIT_39(256'h8A5CCD6489CBC61EEE7BB606297D409A093A5412CE434B11A065875C184F0669),
    .INIT_3A(256'h3A95C812A3FF9E01B74A242952FE6581D6BF00532D0B779813157954485D2106),
    .INIT_3B(256'h316A06413889D319BF03C68266DE51D0E4792AE3B4E7591F43D8A441E6CEE9FE),
    .INIT_3C(256'h4A0361CA0E59EC7F6C3254A8252107367F61F632596C3F50722894D9A1479693),
    .INIT_3D(256'h4D176693817A66D1604F64BC54E8A5DD0726D5633819FEC10DE974E86819613B),
    .INIT_3E(256'h92BF18FA578E93984B14752529283E4D80D7A52CA9ABE004FBE0CF24E2C40845),
    .INIT_3F(256'h486E3AA087FDC32624D7EB23DA0526A8A1B2E030BD44D1D4908B832A751967DE),
    .INIT_40(256'hD94A14328E635BE110E5C7EC288F86D9BA9432CE233B212045A7AC68FFC6D97A),
    .INIT_41(256'h83EF5669CFEB1726B70658FD03C8007F7629CAD472FEF37BD1D095D7BC984F46),
    .INIT_42(256'h7E3AD58C956C68CDCADCFE78072C0EE5D1764FE0432D3B274CDA95276AC047D1),
    .INIT_43(256'h3E2CCFD4D3818C4719BF8B06041BEA8A3B4505B2BB140759FF0932A062688FD5),
    .INIT_44(256'h150431D3787C53222DDEF81E6217AF3524896BF884D39AB526003EDD68B01A0B),
    .INIT_45(256'hF78F95246153B8FCAB4275ADCCBAB65BDFB948F1846D0724BADD72ACEAEA071F),
    .INIT_46(256'h192D3010367716BB6F23F4B5EAE648AE121FFF75D4093BE08BA3FA0D1E40A63A),
    .INIT_47(256'h8DD351320850B563CE8C4FEFA3153A29978E2ACF08126C3643C7547C5EEDE937),
    .INIT_48(256'h8659CAF4926E237B615095772CE80F06E90A94F26E437B2110C547ACD88F86A9),
    .INIT_49(256'hB4E62F6231FDCBD7C46CA1B895876C288FF6594A14B23E33BB21A0D5F7BC78FF),
    .INIT_4A(256'hB5FE42952CF39685D62F96A24E299C0E1521F6BF10C31DBB07DB8430F99CF0E3),
    .INIT_4B(256'h4F1AD86DD112FBD4C7997FC3A2CD818B75CE21E5323B1407D9B32519E1CF8A37),
    .INIT_4C(256'hB00A8336D4FFC3540DA2712FB975F8009A4BFE1CD7B3244DE23123DDA10CAA20),
    .INIT_4D(256'h9518B06AFBAE8C673B4CF522311FF91D50D04A9B1E20DBFF7089FE619FC97DF0),
    .INIT_4E(256'h0741CDDF1C0A9C299B87233CB55A16C84E825B1F8D64E98B3083340D02910F69),
    .INIT_4F(256'h8A9940A6D2A45732CCD93480E454B52AF1D06EFAC030926B411444DB1BAA2A09),
    .INIT_50(256'hFF56D98A94126E831B51806507AC587F86D9EA14F20E43BB21D0A5071C980FC6),
    .INIT_51(256'h90CD5AADD2239D7B8174BB2120E507DC68FF8669CAE402FEB37BE160B5373C58),
    .INIT_52(256'hFF2B92E2551CA535505B0B928478495CFE5511767F50331D7382F2AAE647CA20),
    .INIT_53(256'h8C9D28CA2145723B54C7398747044711102C72019D92BB94879B08C4D9CDA7BA),
    .INIT_54(256'h60F3FF60AD4F94F09B021DD28C0AD69BE39988DD7FD410878E21825CFA06BC16),
    .INIT_55(256'hEE727F270D5C294BC0FCEB62A506E8391F0AF2489FC6C30F348B6ADE0D7F427E),
    .INIT_56(256'hA1A7EE1DE8B05D53B60430430C024DC6A88E56A7D76D33D98B60C4D3AA1AA948),
    .INIT_57(256'h4DE2399899ADEF1022ABF63CFF6BE3A58AE9E8B6BDE0B88A0C4E6B7804EB4565),
    .INIT_58(256'h68DF76990A54728E833B21E0E5C75C588FB659CA94E2FEC3FB51A0A5876C287F),
    .INIT_59(256'h3F094DC47D1063259969634B619015F79C28BF76999A24027E43BBD1E0D5C7EC),
    .INIT_5A(256'h0ADBBDC6C2152AD6AE25D3512C3C160100220991C68F2003D51EB99485C74675),
    .INIT_5B(256'h76ECDDE8AA7965B25BFC853F317A47FF5515B0921945B23B1416FED8B485210B),
    .INIT_5C(256'hA51B1BA1C8DD9F389CD39A81920CD6961BA3F9085DDFB4B0A7CE61726C7A36D2),
    .INIT_5D(256'hC83E525F37AD5C494BD83CABCA157607A3878AF2002C13A7DA6EA7A7285144FA),
    .INIT_5E(256'h8AD9B70E228017ED133634077BEBBAC5167746821FD79D7CC9AB4004C315FA36),
    .INIT_5F(256'hF8714ABD1391DDB88002BBF9A4984B8C15F5E90081653007B57B893BCFD49CF5),
    .INIT_60(256'h2CE8FF5679AAB4920EC37B51D0E5B7DC987F76196AE4C20E83CB5190E5F76C58),
    .INIT_61(256'h859EF5B3041FB05BDC910E430B51E0E5F71C883F76293A14C2FE03CBA1209587),
    .INIT_62(256'hF3DAEF950642B3511DA3813B09ECF44EE9CCD893395AB300F3DDA32F5CBA899E),
    .INIT_63(256'h06762C1D88E2E99DBAF2760F7D6E320FE84C1D284AA16532DB8D406E38F469E9),
    .INIT_64(256'h31465DBB19F8DDBB50941C1A3D92F05696E7A379087D1FB490878EE1326C7A96),
    .INIT_65(256'h56A86E123F77CD1CE95340BC43BA251945CB076A34823C850DB694E0C9AA4A1C),
    .INIT_66(256'hE52A1EB0A67DAF0F5D135EE4D0B41C05157E3086026F8715EC19ABB8D4DC35F5),
    .INIT_67(256'hAB7C1D8A91901665903C12E3420C1F94A4CD05DE97B13297E7B2A386CB3F7B3C),
    .INIT_68(256'h07CC68FFF6798AB432FE33BB21A0B577DC28FFF659CAE4C2CE43FB21A02577AC),
    .INIT_69(256'hF07C220BA316A7283ACC420E63CB512015F7EC880F86A97A6442CEF3CB71E065),
    .INIT_6A(256'h09F33A8F4D268B3AAE26074D3D97DA8A70C144866541BA3FF8EF51BB97BA035F),
    .INIT_6B(256'h7A76B6ECFD402AA105782374AF0BADEFDAF6EC1DA80AC105322ABF40DE38E4D1),
    .INIT_6C(256'h37626EE30B710831CB0024EB124192AC0A567B0379E85D5F78A0078EE1C25C9A),
    .INIT_6D(256'hBAB9F771D280589D7CB1CBD854530A2AFB9DFB1F2C6465CA5B438F9F382AE96E),
    .INIT_6E(256'hA32AF5EEC89522E0A7DD0751F38FB41CBA4D92507EE22FAF8D2C49EBB06BDCAA),
    .INIT_6F(256'h00C42B2A9EBE18499580500A577EE487830C1D7579173EA26FF0A29CD9C4E7EB),
    .INIT_70(256'h2547AC683FD6F94A14028E33BB118015579CD83F36E94AA4D28EC3BBA12065F7),
    .INIT_71(256'hC149C01C27B76EEABAFA14428E03CBA16015072CA84F86697A14427EF34B5110),
    .INIT_72(256'h91A9B3FAAF4DEF4B01EA4C33FB6B45488CD8F9CC56854DA881FA1C3C01956785),
    .INIT_73(256'hDAC206B6EC1D88EAC1F38A5B7487D97F430E762C9D08AAC1C5DAD63FB2A020DC),
    .INIT_74(256'h61D48C301DDB1120ADDFD4E027EEE1124CEA569B0339C85DDF54F087CE21B29C),
    .INIT_75(256'hD5AAF6F76EADA0070DBC49F3A08443F5463BE5233F7BE112AF36B0BDB92C0665),
    .INIT_76(256'hB45C6AAD0997CE2DCF38B6F35974D0749C82618E687E223FC7BD5C991BCFCBA3),
    .INIT_77(256'hCCA7144C01E5710721B2CF1FAA53A6137FAB230EF599C881C2F0F8959361E42B),
    .INIT_78(256'h90C507EC689F96F98A94B27EC3BB11200D872C08BFA6A97A14324E03CB11A0D5),
    .INIT_79(256'h2544353E8CDD075C66E9BAE4C2FE430BA1A045876C68FFC669BA14628E938BE1),
    .INIT_7A(256'h3C11D1B37ACFF4B0B6BEBBE0DD853597D05208192CCE95D7633EAFF454884E35),
    .INIT_7B(256'h04B2DD6E766C65080AE94592DB9447D9FF43CE16CC1DA82A415D8E7811CFE0D8),
    .INIT_7C(256'h0AD42A8CD0DD9305B4FDDF74B09BD28152CCEA363B83F9083D5F54F0277ED162),
    .INIT_7D(256'h3C25C5D67731CD1FB74D3C110B2014DC19E2F5955A544F441ECBE2A06BA4FF25),
    .INIT_7E(256'h1FBB1C8215A11851C2BF5C2DFC067BA09C0BAEED5ED87EA23FB75D8C69044FD4),
    .INIT_7F(256'hB95B0FFB20F50A0D67B1EDC738D2CBF944B7E4139A050908CEF520174D54E9EC),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h6190E5076C68E136D9CA44E2FEB3CB516015B79CE8AFC6A90AE4C23E73CB91A0),
    .INIT_01(256'h139E046B6EB85FD04F06A91AD4827E43EB115095879CF84F06A93A6402BEC33B),
    .INIT_02(256'h4464A951CB3A0E84526132CF0E23BCEC222A92E8D91C7EE5D1C65126A66BACFE),
    .INIT_03(256'h72C387430E5628E5A832D97DD23B548719FFA32E766CFD70B2D9BDD0AC91934F),
    .INIT_04(256'hAA27B42A8CAE3F90D2B3C6441F930C6EE12EECEAB69B6399C83DFF545077BE31),
    .INIT_05(256'h34BC4AA5D6D731528FD70DA4998B30B444FD181A2EEE55DCE4DA1B56A408D878),
    .INIT_06(256'h0BCF3B8CAA5D7668462D608FB5B3B9BB98BCBBBA2566D8265A8F479D2CE6D4C0),
    .INIT_07(256'h231624F0AFE41D2201C8BECAE09855334EB4F02C2BA5E2E17F599A4FD7B933F6),
    .INIT_08(256'h7BE110A547CC888F8669FA44C27E930BB12065876C58CFC6D94A64328E33BBD1),
    .INIT_09(256'h36861EDA647E6FEC186FA629BAE4C2DE93BBA15065773C584F06297A64F27EC3),
    .INIT_0A(256'h41974939418B9461D14027F62128F12B31C7C2BC3AB91C0E1551C60F0083C43A),
    .INIT_0B(256'hCC8799BF43E6B4A45FECAA216572FBD407799F43CE16B4653092B94584AC39BB),
    .INIT_0C(256'hBB3857344A8205EC6C4E078AF8738F4BF29D722CCA367B8319681DCF24406B29),
    .INIT_0D(256'hCFEBE30AE589B78E02AF5775DCA9DB100F60A6FFF14761D1622CB60B26CF24BF),
    .INIT_0E(256'h79A40F3BA382ED9E70D18D5FE7DAA386E48010FB754506C0FE72DF87DDF3960B),
    .INIT_0F(256'h8A7B2694BF5FF88D7201771E1A6018FD7B692430D4CCDD3A617F715A6F50A223),
    .INIT_10(256'hC3BB21D0E5074CA8FF46A9FAE4B2DE730BD150E5777C984FB6994A1442BEB38B),
    .INIT_11(256'h7C37E640D150A5771C982F46297AA4025EB38B21A095B71CF8FFC6091AA4B27E),
    .INIT_12(256'hD460A2D4907DD994CB74E791501F6295477309EA84F2A92C7E95F146C1FA2CCA),
    .INIT_13(256'hBB5447999F8702E2941D28CAA1A5F25BB40719BF036E560CFD70FE8105A048D3),
    .INIT_14(256'hE001C8A7B4042149D81C66178A5803D3E47DDD12AC6A36BB83E9F8ED84BDC5B2),
    .INIT_15(256'h349F4B838A5A96A83E1AEF0F2D1C065C4DA8D95D884638A53FC26476633563DB),
    .INIT_16(256'h4CC65B2B0B34EAF50E288EB2BFF8B2EC664B88708CCADD66E8BE520F98A293F9),
    .INIT_17(256'h801ACB1EF4BF8F0C0582C6B7B192007792ACE6EC1FA4CC2A5AE977EA42C018FD),
    .INIT_18(256'h0EC3CBE1A0A5A71CD8AF26E9CAE402BE737BD1D065375CF8BF36A9CA94020EF3),
    .INIT_19(256'h4E03CB08A551E095D79C98CFE6E97A2482FE13BBD1E055773C987F86E91AA4B2),
    .INIT_1A(256'hDDA4B2348615A77A07BCE8F5C7A609021B0333D9D45FC8999CC49827EC18FFAE),
    .INIT_1B(256'hB23BCCB3B12B7B2E2E0CDDE80A618592FB5447193F436EF60CA5E0D2A1E58A59),
    .INIT_1C(256'h8C56C14887DA7779A550A88A77EA90DB6750553D72CCCA866B431A89C8CA61A5),
    .INIT_1D(256'hD674B07463757AF6982662AF376DCB7AE78AAC6407557E6393310C6CD2001DE4),
    .INIT_1E(256'hA2EC913C3F04B35A050E775E3A4F38AD0CD10368D4434A65D608E6621F78124C),
    .INIT_1F(256'h20586DABB9D4AF835C6AAD29BF59A95FB8CA4B8644386B9C2A9259D86E629F18),
    .INIT_20(256'h320EC33BA11045F71C78CF46198A44E29EC33BD160B5B79C28BF06D91A2462BE),
    .INIT_21(256'h70CF954DE36B218095173C982F2689FA24C2BEB34B910015976C982F2609BA64),
    .INIT_22(256'h5BAC03455F63524C541D089E3BF1860F90EBCF4DDDCB0752140A31138494EE57),
    .INIT_23(256'h1D8EB73CA7F967F15BA734DDE84A81A572BB948719BF43AE5654C550CAA16572),
    .INIT_24(256'h67F278D75649E6F7916D1F583257621CDB3FC49A51828456C116762CDD680AA1),
    .INIT_25(256'hA39664B0947C8565D6B826BA2FB0C06E63E43FB72ED53DF123211D7027C94E35),
    .INIT_26(256'hD75253D65BD04B33E24DC6D70E252838621CE1BBE0841C4A55F680BE32308802),
    .INIT_27(256'h6D20306DF4EED42F23E74505D628A6F5DF27E29C464B483B23B115D6E89E12CF),
    .INIT_28(256'h64420E030BE190958704F86F36691AA4A2BE33CB218055372CA80F46691A2462),
    .INIT_29(256'h6D51273EAE33CB11E035B77CD8FF86A97AC4C28E73CB318015B79C280F06A9BA),
    .INIT_2A(256'h3253486BB9DF77425EEC1D3C9055A1B6FFE00BDF6A4A75A74D04C98E3511C677),
    .INIT_2B(256'h8D6D6AD3B8B19CA21E1357D4DD88CAC165B2FB5447D9DFBF426EB485C8CAA1A5),
    .INIT_2C(256'h3D77C87CCFFE256948FEE2BFD8FA6B26AC3723BCEED50B01FF43CE362CFD8038),
    .INIT_2D(256'h22E346BB30EBDCCA55DE18A6951C65578306003D776C3A1E259F396520A33168),
    .INIT_2E(256'hFFD84D0C86C4405013AAB58E58912DD0F83DE4117B8014733A55DE78BEBD60A7),
    .INIT_2F(256'h39857FD8E5C4664CDFBB1C1A25F9D81E6D3F4F3D5B36F4CF1CB8AD1AE9D759AD),
    .INIT_30(256'h3A5492FEB3BB51206537BCB8BF7669FA04C2FEE38BB1803507ECD80FC6697A24),
    .INIT_31(256'hEABC6F0772FE138B71C0B5D75C28CFC6E97AE4C2BE73EB310095575C98CF06A9),
    .INIT_32(256'hE52667386701CBBFA656EC490A0EA52126AF4035FBDB7F7C04F8E93C9E89B126),
    .INIT_33(256'hD225C377E6B162BCFA262B6F84C5C80A61A5B25B4CEBB802A6AC2E7465A8CA61),
    .INIT_34(256'h7CD5A338F8775AE516D85E621F106A7C5934AFC7F61B5447193F432ED2609990),
    .INIT_35(256'h9852CC79C44FCB033A3586CF7D6095873A7BBA980B835409C685D3B9F2C72722),
    .INIT_36(256'hED30CFB544C9F3201423FA35D278B13DDF476524D9AB208443AA45B6183112E0),
    .INIT_37(256'h082E4D903755CBF6A44FBC9402EA864831921098ED4366B4907F042A05C9D7E6),
    .INIT_38(256'h598AA402BEB3BB5120158704287F06891A4442FEB3D3112055776C1817E6315A),
    .INIT_39(256'hE313FCF934C2BE334BF180F5379C18EFC6E97AA4C23ED36B1160F557BC78FF76),
    .INIT_3A(256'hC1E10029CC1F6D7B236E76B4175C5E75CD66AF28A6AB63521B2F92B5809E7571),
    .INIT_3B(256'hF16F844057FE11E2DC3A46EB4764BDE8CAA1C55E82099AFC5ADE80DE341D28CA),
    .INIT_3C(256'hDD20E1137C1073EA6516E87E329008A5DCFA0221A5F27B54870163EFDAEEF421),
    .INIT_3D(256'h1F78BD4C26044FD403A2FE85A2049260CC0EA1C4407F739E9726EDDF7EBA5040),
    .INIT_3E(256'h51ED20485D3C51CB301463A23D46B721CD4F1FF5DCE9FB0044FC0A05E617D152),
    .INIT_3F(256'h19474E453B57322BB6EBB4A4AB0DF5462F4EAD8068120346EBFB0B9C424586E8),
    .INIT_40(256'h86993A14424E33BBD12055B71C580FA6E93A14F28E130B11A095F79C98CFC6E9),
    .INIT_41(256'h73BAB31AEA4402FE73ABF1C0B5D7DC78CF46A9FA24825EB30B71E015577C188F),
    .INIT_42(256'hEAC5A7A0634C93EDFF838E5628CB8E148CEB333EE9DA9CEA16F7AFF53CE9FB6F),
    .INIT_43(256'h00CDCFC4E0F7FE21B26C7AF60BBF50152C4054786F9EF1E26C1A9EBBAA0C9DC8),
    .INIT_44(256'h8F09C4B9A36F0323BAE58640A612C87AB41DE80A61253233062B11A7FB6C2371),
    .INIT_45(256'hEDDF984273A644F0B458196F641851AD448CEE8F7214EBC9A0C95E3958869A9F),
    .INIT_46(256'h404E9DAF3FF5ECF92B2F741BCE3A96D81EC217077DECD95BA00B03EA9539E78E),
    .INIT_47(256'h3A29300AA92B0CC21309C3B0F4DC02CAF6E8D96DD08702838E0C78CB533A65A9),
    .INIT_48(256'h0F86D93A94427EB38B316055776CF8CF66293A1442DE736B91A06587BC98AFC6),
    .INIT_49(256'h5DAD66FE297A24623ED32B7160D5B7DC784FC6A9BA4462DE938B9100D537DCD8),
    .INIT_4A(256'hB09E1DF1D273204319FF5BFAF2CCFD7C7BC3699B866D5E807E72BF98E213564C),
    .INIT_4B(256'h69789DCFE4D087BE51B2ECCAF60B2BC9B8CDEF848057DE51C2FCFAE653D4CC65),
    .INIT_4C(256'hC7A3CDD33980AFEC0BC2BD4E6F0BA30E362CDDE8EA25670E838CF36F4A5E2B13),
    .INIT_4D(256'hD1FD5FF822630E84037FD93815B6F7D13904BC861B9E68D3A7C8FDBA7E1C9AD6),
    .INIT_4E(256'h89B041A2CF18659429C4E7BC1BD5E526805E4A6F786D6C19EBF804C37ABA7977),
    .INIT_4F(256'h5AF5CEE085322F87F57441DB70AB5C6A5566178E2D7F8F6283BEC43F04432D6A),
    .INIT_50(256'hD8CFA6E93A14923EF3ABF100D5B73C184F46D90A94629E738BD1A015B7BC18AF),
    .INIT_51(256'hAB9C769F1E69FA4482E6D3AB1180B517DCB82FF6691AE4829E930B1160B577EC),
    .INIT_52(256'h11C4A67945AE071047D99F87D2968C15C2CC378C9F0246DD5B3521BC0CA5AE8D),
    .INIT_53(256'h73A9D8ED0F9420C7CEA1C2ECBA06CBB359A8ED4FC460B73E51E26C3A262BF8D0),
    .INIT_54(256'hF24B8FFDA4C6434490EB41FCE7D93F834E763441048E59FD8E2A91621C3A26CB),
    .INIT_55(256'hE8C14DE048A2032A60F6F653BA55E9B765D570B8A2275AD8B33F64BD4DB2F80E),
    .INIT_56(256'hEAA6571E161707D54C3994F07C63AA3AD6C8B6F220B74DBC716B78A473058A36),
    .INIT_57(256'hAC2595414706AD2808820CF9D4A03443A515E60005F28FE78A2B3964908BC395),
    .INIT_58(256'hDC983FA669CA14423E930BF12095879C780F76290AE4C25E033B5120F5D77C78),
    .INIT_59(256'hEE977C782FC6E91A04DA5ED30BF1E075575C18BF76E91A24C2DEF3AB11801537),
    .INIT_5A(256'h4980752363270E9B5487817B45FB2BF1D00A82055EE1C54F5A343D9F26922FC8),
    .INIT_5B(256'h8B73D9A89D3FA4D0F7FE21329C3A464BC359586DCFE49007FED1C21C9AC6532B),
    .INIT_5C(256'h517EC7F75110DD1B5D7D32FB5407D99FFBDC3A84C550904800375E51C21C3A06),
    .INIT_5D(256'hD647410D30C8FE4B5F99D0E4933A6536FFA97D2FB7E6AF3A46332F8402A1012F),
    .INIT_5E(256'h723D66C8913D5FE7C26CF6FB8004838A0546A04EFD5FA75D1C697B8F54FC65A5),
    .INIT_5F(256'h6FB8CA253EA7CE7D4077F2A4093B80D034952ED1C70E2200C712BBF64B803053),
    .INIT_60(256'hF7ECD8BF4669BA44C29E538B315075D77C58FF36D9FAA4B20E93CB916055B7DC),
    .INIT_61(256'h38352FFCB84FA6E95A445A5E138B710035B75CD84FC6891AA4C29E330B9150D5),
    .INIT_62(256'h93C9780D6F3CC0EBC3B483E7623E73D349A1FC4652FEB37FF86EDD5582A3317B),
    .INIT_63(256'h06BB3319589D7F9460474E61C29C3AC63B43A9A89D8F14A007FE11C2BC3A860B),
    .INIT_64(256'h77DA125FF3D289484AA165723BB46F35FBFB96621AE0FB6FE460777E61821CCA),
    .INIT_65(256'hAA8977315D62401B10494BF8C4B31ACDB627B18A1FECAE0F4458DB73D3B2F2D1),
    .INIT_66(256'hCB5A55B648069A0FE7A2634913B8541C35A5FE48C1B2DF27CD6C29DB8F5BD435),
    .INIT_67(256'h50944C45AD91F3494557EF8DEC214B605383C5CD76B7E1F22FF80A432963A88B),
    .INIT_68(256'hF5773C584F8669FA44623E530B118055D7DC28FF7629FA44420E33CB1180D557),
    .INIT_69(256'h22000D97FC786FC609A28422BED32B7100D5D71C98EF9EE91A24C23E936B1180),
    .INIT_6A(256'h8BF329D8ADCF24400732B1DAFCDA5E53936019EAD1366C6A77F5C3931DA10505),
    .INIT_6B(256'h3A463B831928DD7FD410078EA1322C4A76FBC319186DFF9490873E91E26CFA46),
    .INIT_6C(256'hC680A90FB616EC1D28CAC11D1657007FA1234DC365FFB0AD431490F7FE21822C),
    .INIT_6D(256'h855AA927735D398B5D7C494BA0D443AAAA311F994994BC66379EECAF94D34A1A),
    .INIT_6E(256'hBBFCC2756E906682938F626CB9EBEF74638A2589877E72C0372DBCD95B1FA3DC),
    .INIT_6F(256'h640FE4DC1A4AF1CF615ACFA73DECE61BDF8463CAD2B17F0116B0D8E2ACA943B8),
    .INIT_70(256'h6015375C784F0669FA0422DEB38B91001537BCA80FA6699AA4C2FE338B91E055),
    .INIT_71(256'h68F1B80D6FDC186F4649DAFC623E930B91E015575C18AFA6699AA462DE93CB71),
    .INIT_72(256'h468B3329A89D4F8400D7BE5162049AA6CB4A92B01F2DF698DCF2C09D2B8D78BD),
    .INIT_73(256'hBC4AF67BE399E81D3FD490078ED132EC4AB6BB03A9981D8F54A0F7FE11729C0A),
    .INIT_74(256'h3243797F830E76EC7DA0E64D4DAAC326EE9C02EE235B4100FD7F9490F70EE1B2),
    .INIT_75(256'hBCEA5A0BF748F640C7F58471CBE0F4A3E5A2497B638900E7D514413F24E037AE),
    .INIT_76(256'h2F54BBDA15B6B8A67AFF4822CC0984F0A4ABDAEAE9E0FE4DCFC7AD7C9954D71B),
    .INIT_77(256'hD93BDF6CBC9D3E41070E0AE72732BC22D3A05C0C05DAA1575EC928370D6C81B3),
    .INIT_78(256'hA1D035F7FC988FA6895A24229EF30BD1405577ECA8CF46A97A24C2DE13ABF1C0),
    .INIT_79(256'hA5EBB1B835975CB8CF1E49DAC4C29E13D3F18095EFBCF82F4609FAC4629E738B),
    .INIT_7A(256'hBAC63BF329586D0FA460377E91A27C1AE68CF2EEBE13DB4C10E1CE4AC22278E4),
    .INIT_7B(256'hB22C0A767B835958DDDFB4F0078E01C26C0AD63B8359E8DDFFE4D027CE91426C),
    .INIT_7C(256'h5B1447D93F43EE421639109229DF13A639B2A4526EDDA5E1E86D7FB42087CED1),
    .INIT_7D(256'hEB7C673A003099CDCFD775E449F330748471CA75AD735974A0FA2BAEB4C7494A),
    .INIT_7E(256'hDB0F2C73154D26983EB20008427C561B0F04D3256536B88E022087CD3C266C5F),
    .INIT_7F(256'h03367BEF1434B5BAB1370105C0C742E3C9036094B32DD2A108B9C59F770D1429),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hEBD180D5B7BCB82F9E6922C4A29E930B716055371CF84F1EA9FA2482BE938B71),
    .INIT_01(256'hE96BD33160B5D7BC782FE6C91AA4E29E13EB91A0B56FDC386F46091A04C2FEF3),
    .INIT_02(256'h3C4A06CB032958ADCFE460B75E11A23C1AF10AF4178AA68F58F69BC146F5F21C),
    .INIT_03(256'hA1B22CCA767B8399E85DBF941087CE01322CCA76BB8319881D0F7C1087CE5142),
    .INIT_04(256'hB23B540721DBC1FA0E14019977E49C6F36611AF4126E1D9B69085DBF94A087CE),
    .INIT_05(256'h8729D38CBD491FAE32AF97CDBCE91BF05388054A3DF3099DA037B52C328221E5),
    .INIT_06(256'h269B9864D39ABA26C05E7ABFE7F53326F4D8AC8CB50546F8BE7257B7ADA34EE4),
    .INIT_07(256'h1DEC61735853BC1DAE893889950F3F020396AB37FB849D159E3F3152F7EF8523),
    .INIT_08(256'h738BB160F5B75C182F26B15A44E25ED3AB1180D5873CF84F06091AC45A3EAB0B),
    .INIT_09(256'h0E1ED32B09C08D177CB8EF9E899AA4A29E13EB9100F5D77C182FE6695AC4825E),
    .INIT_0A(256'hB2EC4AB67B73E978EDFFE4A0971EF1022CE331473D1BAECD8FCCE003EDC27CBA),
    .INIT_0B(256'hCED1322C0A364B831988DD5F34A087CEA1B2AC6A764BE319281D8F54D0F70ED1),
    .INIT_0C(256'hA532D3380B31E78BAC1FFF8E45EFE8F85FFE6954B47250DD937988BDBF541087),
    .INIT_0D(256'hC648627BB50A4137BE228F178D3C59BB872F3C0A9A1698AA764F04749D280A61),
    .INIT_0E(256'h7B06FB909033F58589E83E723F073D9C0993209BFC85E506803EDA0FE70A5B2E),
    .INIT_0F(256'h47DD63664317E3C3C5B5BEC899BD8747AD4C69C4C7A3A3DD9581EF81D29B479A),
    .INIT_10(256'h3E43AB7100B517BC18AF66B17AA4E25E135391E05517BCB84F26497A84E21E13),
    .INIT_11(256'h446266D3537100F5D70480EF46895AC422E6134BD100F55704F82FE6C95AA422),
    .INIT_12(256'h1172ECCAB63BC3E9786D4F2400575EB1626563F5F5E16DA8F52784B84FE64922),
    .INIT_13(256'h47AEA1B24C0AF6DB03B968BD5F9410274E0172ECCA569BE319E85DBF94D0770E),
    .INIT_14(256'h895906834C9387A29083259F70CD435C76EF76E72A746C506B63D9683D3F3410),
    .INIT_15(256'h3DBDA06B1C054A29481E820F970DACD9F4AB638C65BA39432B638E76ECDD28AA),
    .INIT_16(256'h5DC4B10B6854E3A285161876E23F27C28C095390D47395D526589EE2DFA81621),
    .INIT_17(256'h97EFAACB2EB0D0EC476AADE658EE4D17E0121C7974D0B3C39A3EC1A74E1A8F97),
    .INIT_18(256'hA2FED3EBF1B855D73CB8EF66092204E2E6132B115035D7FCB8EFC6E99A84E21E),
    .INIT_19(256'hA24422A6D30BB140B5EF7CB8CFE6C922C4A29ED3EBB1B87597BC78AFDE099AA4),
    .INIT_1A(256'h0E61C2EC4A863BB369581DDFA4E0971E911B7D855859D8D9545B4FFC8097BE49),
    .INIT_1B(256'h5047AEE1924C0A161B43D988BD5FD41047CE2112AC4AB69BE3D9E83D5FF4F087),
    .INIT_1C(256'hA2397D062A87D444D25617BB3F38E157B2588F4807145A6CC67B0319E8BD3FB4),
    .INIT_1D(256'h8AE9D41F140CA53A9668FE226F176DECF6940F8B64274C07593F43CE76B4894C),
    .INIT_1E(256'hFFD5A4096BCF83C3AA0A9937CEC2307882AC39AC706453AA0DDE0086D2842AE9),
    .INIT_1F(256'hD29FDCA663AEF440FCA45A7A2D48114240B8CD93895BA78B0B5D7579772EDAD7),
    .INIT_20(256'hA4029ED3AB4900F5D7BC8017A6C9DAC49ADE734B11B8B5173C78CF26E99AA4E2),
    .INIT_21(256'h899A7CA2E673D3B140CD978438EF46E922A4221ED3D349F8759704189766499A),
    .INIT_22(256'h770E61C22CBA86CBB35958DD8F4460D74E60D3D54AE68C830DE82DEF0438179E),
    .INIT_23(256'h347027CE81522C0A961B8379E81DBF3490A74EE1F2EC6A367B4399E8DD5FD4A0),
    .INIT_24(256'h1008189C17F6A9C244F655471B911455D97CA8010827648A4A561B8399885DDF),
    .INIT_25(256'hCDE376D4CF1B14AA05F6C0E6A28F978D23D9142545323B5487197F7BEA2AE4C5),
    .INIT_26(256'h0F0FB94421AB803C739A05E6C04E2D8FF75D6CEEE44004631A9576A0494F139D),
    .INIT_27(256'h358998F81613F9B360134CCA3AC9AFCE129097E28C06BB9474A3DA9A16202E3D),
    .INIT_28(256'hFA04621E536B31008DEF8440AF26C9223C22DE338BB1C00D577CB8CF1EB1A2FC),
    .INIT_29(256'h66495A7CE21E53D3B1400D6FFC38EF5E895AC4E25EEBD30940B597BC80572649),
    .INIT_2A(256'h60F78EA172EC4A76CB435928AD0FA44047931407656D1B3B2B49F88D2F043857),
    .INIT_2B(256'h5FD470872E81724CEA969B6339685D9F947067AE61724CEA367B8379E83DBF54),
    .INIT_2C(256'h2CE5AFC0E00F86317A2CE142D3EB4520DB579C26F178176A4CEA569B637968FD),
    .INIT_2D(256'hA732C35644BFC323EAD5CE2066629717362988CAA1A572FB74EF053B7B561E7E),
    .INIT_2E(256'h4D3F9FF54CE91B005C6305855E774162D76FBDC3996B601453DA5581B5F208CF),
    .INIT_2F(256'hA88E5DD090150CA953A014FCDDE5169C7E1D77883D4C09F7B0FB43CAB58EE711),
    .INIT_30(256'hE97AA4DA9ED3ABC900AD2F04F88F66C9A2FCA23E73EB31C055977C386FE6495A),
    .INIT_31(256'hAFE6315A04A266EB2B0978F517DCF84F9E89DA0462C653D3691835370438AFE6),
    .INIT_32(256'hE410470E61321C8A860B33D9D84D2F84F05ABB948B6BA706D3D3B140754F8438),
    .INIT_33(256'hDDDF34F0C72E6112AC8A96DB637908FDDFD410870E21124C2A061B0399E81D3F),
    .INIT_34(256'hD990F58BE4984FC6C75A4826362BA3A12ED547E2267138696EAC6A367BE37988),
    .INIT_35(256'h1F2792E3E6B4DF349C0A1D6E50FE190616ECDDE80AA185B617409F015B02D363),
    .INIT_36(256'hF13DEF170DDBC99B000B6CDA6D56077EE2AFC7F273598B4F54337D18F4C2996D),
    .INIT_37(256'hD28C7E3548F0927C7D7C408B84E2251E8781B2602F3A333993BF94FCC2D52957),
    .INIT_38(256'hE6091A84E2DE53AB71400D973CF8AF1EC9DAC4023E536BF16075577CC0AF9E89),
    .INIT_39(256'h38575EC9DA8422262B1309387597BC401726B19A847AE6ABAB4940756FFCF817),
    .INIT_3A(256'h0F645087CE21321C3A06BB3359D8CDEFB44D323B96AD818A1E2B1349388D6F44),
    .INIT_3B(256'h68BDDF547067CE81528CEA567B6399E8BD5FB490472E0112CCEAD69B433928DD),
    .INIT_3C(256'hDCB180F10FDCF8AF0691A6F07A461BBB7F804589C266C1DE41F22C0AB65B0379),
    .INIT_3D(256'h8D3048121366340F3473D2A5D5019F43CEB62C1D887E85ED6AA348F1AF9521E2),
    .INIT_3E(256'hA869DAD717FD23C6A4472BC31A15F6F7FE5A07C73D9CD9E4904FDE588FB90FF1),
    .INIT_3F(256'h55466891724F78F29326E460C414E2ED49802AD2E85CEAF3CEA0079B4BAA9586),
    .INIT_40(256'hAF26899A845A1E936B31380D2F844097DEB1DA24225E13C3F1C08D17FC80EFDE),
    .INIT_41(256'h4438579E1122FC229EEB538940F51704B8EFE609DA7C9AC66B93B1800D97BC38),
    .INIT_42(256'h6D8F54D0474E51429C3A76FBC32958ADBF057DAAADFADBECDAA60B93B1388D6F),
    .INIT_43(256'h1968DD5F54F0674E81724C6A561B83F9681D3FB410874E61F22CEA367B8359E8),
    .INIT_44(256'h3CF331BCEDB75C78CF5E9DB2FC9A46B3257170EB492268879201522C6AB69BE3),
    .INIT_45(256'h411DE8A86213961BD0236E631407D93F838EBE1889609239CD1AD37CD331D72B),
    .INIT_46(256'h81673696E75805BCA65B1FA4C37D0596483EDAA0672DDC06003366110A4AF167),
    .INIT_47(256'hF55A09E7CE92A057956CCE1B90B4A3327A36A72E3D37F81D7C5ED310CB7C4A25),
    .INIT_48(256'hB82FA6C99A84229ED3EBC9F8CD1704C0D71EB19A44225E2B2BF160D56F7CC06F),
    .INIT_49(256'h1704B86FDE31DAFCDA266B9309403597FC38EF46499A7CDA26AB2B31B88D6FFC),
    .INIT_4A(256'hA89DBFE420C70ED1B22CBA764B7389184DAFA400FFF6C9DA3CA2262B53E9B80D),
    .INIT_4B(256'h0399883D5F9430474E41520CEAD63B637948BDBF34F0272E01F22CCAB67B43D9),
    .INIT_4C(256'h29ABD38D28D587EC28EF2EF15AA482AEFD3B419ECBD924B0272EC112AC6AB69B),
    .INIT_4D(256'hD721BD3058C203AA6241E5B2FB5487F9171F1AEEB495343E5511464FE0134DBB),
    .INIT_4E(256'h4A06F83E72C733823BCE34F04B0C157A3908A6EDDF972D87AA691214431DA289),
    .INIT_4F(256'hC34A1ACDD71ED2C7634A8B06BC90DB87627AFD08996DA8978903D99B00941CCA),
    .INIT_50(256'h7CB86FA6B1DA84621E8B1309C0951784406FE669BAC4229E936B91B88D1704B8),
    .INIT_51(256'h4DEF8438D71EF1DAFC9AE66B53B100356F7CF8EF2649A26C7A5E13EBB1400DD7),
    .INIT_52(256'h89285DFF3420F77ED1B26CCA268B1369B8CDEFC4E0EFDE91629C7AA68B7389F8),
    .INIT_53(256'h7BA319E881BF34F0A7EE3D12AC6A561B637968DD3F9490C7EEE1122C0A36FB43),
    .INIT_54(256'h36FE8BB7194095073C1857A6693A14F200035B7F8E15DFF4B0676EE1F26C0AD6),
    .INIT_55(256'hE917713D508A347DE80AE1A5321B605BD1275B2AE0629326A48F0B43BAD536A8),
    .INIT_56(256'hF5B51E081682EF2F2AFB96DB80EB33AADAF6C89152602C9E767BABE024142545),
    .INIT_57(256'h13C47215C1175E6D5757628CF99BC81C7C85FE6108DECAF84F1204B1CFC0847B),
    .INIT_58(256'h6FBCB8EFDE495A7CA25EEB1349F80D2FC480EF4631DABC1A1E53ABB13875EFFC),
    .INIT_59(256'hB8F56F0438EF9EB1A2FC9A26ABD3B1388D17BC78EF5EF11AC4DA66ABAB313875),
    .INIT_5A(256'hB359E81D5FE4D0B78E51C2ECFAC68BF3A918CDEFC44037DE91E21C1A9E2B1369),
    .INIT_5B(256'hF6FB839968BDBF34B0A7CE8192ECCA367BE3A928DDDF347027CEE1F24C8AB64B),
    .INIT_5C(256'h0002E6CFA331800D576C784F36994ADC6C4EA34551087D9FF410E74EE1F22C0A),
    .INIT_5D(256'hA589136BE3EEF62CDDE8AAA9A156838C4F5BB9557B033908ED17E420370E7DB6),
    .INIT_5E(256'hFC5D5DC6F8669ABFC0A253590340540BEA4556C8314134DDE10CF10BD063ECCA),
    .INIT_5F(256'h5F9BF43AD559A73E0DDFC09AD3A67BCFEBEB918AA6C0618D6F40D29C39B37804),
    .INIT_60(256'h35F77CF8571EB1A27C9AC66B9349388D6F84382FE671A23C62E66B2B49788DAF),
    .INIT_61(256'hC9388D6FA438EF9EC9E27C1A1E13AB49780D170438D7DEC9E27C5A1ED3D3B1F8),
    .INIT_62(256'hCB43D928DD3F6420F77EA132DC9A266BC311B8CDAF8400D75EB19ADC7A1EEB93),
    .INIT_63(256'h8AD6FBC379E81D5FD410E7AE0172ECEA567B8399285D5FB470C7CE61722CCA76),
    .INIT_64(256'h5D6C82825B0BD10055F75C68E1D6795A0A32AEA3F3B9C83D1F747027AE81F22C),
    .INIT_65(256'h79FC67593F830EB60CC954FE597D76112A09DF93998C745E7FB26813097EE720),
    .INIT_66(256'h5473725D86FFAE82DFA7A273798BA78403EA85299BF5A893C7ADACA94B3F6BAC),
    .INIT_67(256'hA4CF8768C2AAD6C8862A48D7AD7C69742F6BB8BD7559872E625817F58C9924A8),
    .INIT_68(256'h403517844037A63122FC9A662B6B4938CD4F0478EF66B1E204A29EABD389B84D),
    .INIT_69(256'h5349780D4FC400171EF16284DA1EAB2B09000DD73C80375EF12284A2662BAB49),
    .INIT_6A(256'h463B4329289DCF94D0870E61B25CBA76CBF3E9F84DEF2420F7BEB1625C5A468B),
    .INIT_6B(256'h0C6A361B8399083D1FD470A72E81124CAA961B6399085D5FB4F0A7AED1729C3A),
    .INIT_6C(256'h7872C43E56B33BF19855274C48DFE8B9F4D442F627A339487DDFB41067AE6112),
    .INIT_6D(256'h92BB944719FF1B9A726405B036DFDCEB05B2F1D57B7752EA60B17AF695CD9A53),
    .INIT_6E(256'hEB2CB35AADD6270E2D40686A2C899BF06B63F5064D8E9AEDEFB7CD3C3960851D),
    .INIT_6F(256'hB65410E31CCA35E2100AB55F2855C4A9FB4FDF04E5D26688B1896797620489FB),
    .INIT_70(256'h49808D970460573E71E27C1A96AB5369D87597BCF897DE49DAFC62E61313F178),
    .INIT_71(256'h0BAB09F8CD2F24C0179E71E2FCDA1E53D3B1F8F56F4480EF2E3122849A66130B),
    .INIT_72(256'h9AB6BB8359581D8FE450077E9102BC7A86CB930978CDCFC460375EF1E2DCDA26),
    .INIT_73(256'h12AC0A56DB6399683DDF08B0A7EEC192F0AA569BE39948BD1F94F0470EE172EC),
    .INIT_74(256'hED51DAC8564EE30BE9B86599D236A12827CAAC5EAADBDFB9483DBFD4F0A72E81),
    .INIT_75(256'h65B23BF41F6D7B0B568EDE44FD4BD8E42C25722DF55BCF9C74CE476A269D416E),
    .INIT_76(256'hB4400B3CEADDB6B786122018A29316440F0BBEF1E3D2480E72EF173A4970EAA1),
    .INIT_77(256'hBC89F48FC4938A4A211866A2E0472A734DA49B13937505A9F879BD1050E2BC21),
    .INIT_78(256'hAB11000D2FA4389766B1623C3A1EEBF369F83517BCC0D79E71E2045AA65393B1),
    .INIT_79(256'h66535309180DEF04C0975E71227C5A262B0B09C075AF4400379E7122FC5A5EAB),
    .INIT_7A(256'h1C4AF64B83A9A8DD8F14D0C78ED1826CFA06CB9309184D4F6480578EF1E2FC1A),
    .INIT_7B(256'hE112AC8AB69B2379683D5F347067AEC1D28CEAD6DB837988BDFF3490F72E61F2),
    .INIT_7C(256'h3BC6B17630F22EB3134920FB59D296418681324C8A56DB2339887DBFF490C7AE),
    .INIT_7D(256'h21455ABF407F418B7917FF4DA429EBE0BB54BD9AE90F35A99810322366E410E4),
    .INIT_7E(256'h661B4044439A8D86281132A07082FCF92C13A365EE2AB638EEA166D68C1D280A),
    .INIT_7F(256'h9263265BB40BD315D2CED841CA1F689ACC666CD7FC940D2AE91F3182BFF8753C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h536B71C0CDAF04C017FE11E2FCDAE6EB938940F56F8480573E71227CDA662B53),
    .INIT_01(256'h7A9E6B7389408DAF848017DE31DA7C2266ABF331F8CDAF0440D7DEF1627C5A5E),
    .INIT_02(256'h621C3A769B33D9589D7F14F0F77E11829CBAA62B9309782D0F4480B7DE91023C),
    .INIT_03(256'h2EE1F2AC6A567B43F9687DE3F430674E81D2CC6AD67B63D9083DDF54D0278E21),
    .INIT_04(256'h5B37DE050E64B2E6EB13D10EDBF922B63B1A319A4C0AEA1BA3B9C85DBFB4F01B),
    .INIT_05(256'h9E950DCAC368D148CEA23777357C498BA753CC9A6A2D43B569282872235614D7),
    .INIT_06(256'h6CF6F3B02BAB52CD39470E7DA8A74DECE1794A4C5C6AEA6B11DFC30EB62C1DF0),
    .INIT_07(256'h37ADD3CE0BDF34AB8595061F811278E7BD4CEE74F0BB33EAED71D806B2FFA802),
    .INIT_08(256'hE6D3EB8958AD174480775E9162849AC6EB1331B83597C480976631223C22A6D3),
    .INIT_09(256'hFC5A660B93B1F8ED2FE400779EC922C49AE6EB53C9388DAFFC0037DEF1E2DC22),
    .INIT_0A(256'h91426CFA767BC329D81D7F94A0D73E91821C3AE62B93B178ED4FC43897BEF1E2),
    .INIT_0B(256'h472E01928CEA563BE37908FD6334B0274EE1722CEA369BE339C85DFF14F087AE),
    .INIT_0C(256'hAD8C2F3A9D5A94FA462B4BFF2E6B499C3C93666912CCEA96278379683D9F34B0),
    .INIT_0D(256'h901299896CDA9A29E81E1A3FD7ADDC69ACCB3BCB31C695DB7D01DC7A70597CE2),
    .INIT_0E(256'hE2B3396B64E41322D5E1184E028FF7E526233950CF4673CC07D97F436E0ED889),
    .INIT_0F(256'h84FC9533A61B60743CDA6D266F460D6F9F52B32EE47083DB6EB54E8879A27FF8),
    .INIT_10(256'h625EAB2B0918CDAFFCE0D7FED1A25C7A866B5349384D2FA460D71E11823CFAA6),
    .INIT_11(256'h62FC9A266BD389B88D4F44A057BEB1223CA22653ABC9B84D2F04C0171EF1DAFC),
    .INIT_12(256'h0E21726C0A764BC3D9A8EDFFA420B7BED142DC9AC60BB369D82D4F84E0771EF1),
    .INIT_13(256'h70E7CE4152CC2AD6DBE339B43DDFF4CC672E01F2AC0AD61BA399A8DDBF945087),
    .INIT_14(256'hF6A81873B209BAEC4A1EC3E55F5E6B2FA044174601D28C56D69B6339C85D9F08),
    .INIT_15(256'h099244071B43759AB6681E825737ADEC8E40B74468F7B8554B930FEA6204F540),
    .INIT_16(256'hB7B5BCB1BF806C0BE54A0967F92DCF87673655FE5905323B9447B947B7260E74),
    .INIT_17(256'h165B102D7BAE34C0ECEBAAD55188A13220085A9BBE4C402CCB457A59B74E9D97),
    .INIT_18(256'hFC5A665373E9B84D4F442037BE11623CFAE62BD331B80D0F240097DE11625C1A),
    .INIT_19(256'h91DABC9A866BF3E918EDAF4400175E7162041AA6AB53A9F8ADAFE400775EB102),
    .INIT_1A(256'h07FE21B2EC4A86CB332928BD8F2420877E1182BC1A464BB3E918CD2F8480575E),
    .INIT_1B(256'hB4F0674E8152CC6AD6DBE305C87D63B470E72E8192AC0A36DB8319E8DD3F94D0),
    .INIT_1C(256'h2E0FC414BB66096EAC624E7D45AFEEEDAB00806FAEC1D2CC2A96DBE3D948BD9F),
    .INIT_1D(256'h3DF396F4EF34CC353A36F8BE9A0FB79D5B12E008E3BE698685BB3D811CE4FEAF),
    .INIT_1E(256'hAFC795FC619350E4A3551AA19F016DE87086DF9CCA616532E37C9311E77B9280),
    .INIT_1F(256'h1EA21070CAA3493B98DC047A251E280685405CDA3B615B68FC84DAF58927F182),
    .INIT_20(256'h5A847A266B73E9F8CD0FE460371EF1021CE2E653D309382DAFC400173E51821C),
    .INIT_21(256'h9E71B2DCBAA68B1389584DCFC438971E31E23C5AA60BD359384DCF64A037DE91),
    .INIT_22(256'hA0877E51729C3AF64BC329E89DCF2420F7BEF1E2FCFAA60BB309182DCFA4A0D7),
    .INIT_23(256'h3F3430E7928192CCAA965B9F4588FD9FB4F0A74E61F24C8AB6FB4359281DFF94),
    .INIT_24(256'h14752F901C972611DA1452300DE521E8A96B04B82792C1D28CEA565B23F9C87D),
    .INIT_25(256'h67B2BB8E54F0FBDC2AD5DEE85E424F673A07623F18A3649D3AE6D0BA760BF345),
    .INIT_26(256'hC2A8785D4471D32024FB35CAE973E31B768C6A83284A39711AC3343FDBD11200),
    .INIT_27(256'hE7C13248B8825CF97BE8946C3D9A21C871E508A7AA8449E360C3EB5AF57928AE),
    .INIT_28(256'h31A27CDA764BF329A84D8F248037E6499ABCFA266B73C928AD2F4460775E51E2),
    .INIT_29(256'h571E2142EC9A460B93D9D82D6F848057FE71325C9A26EB73E9180DEF8480D766),
    .INIT_2A(256'hE4D087CE61C2EC4A063B437928EDEFA46037BE91823C4A46CBB389F84D4F4400),
    .INIT_2B(256'h3D5FF47027EEC152CC56165B9FB9485D1FB4F0C7EEC152CCAA367B8399285D3F),
    .INIT_2C(256'hDAB4CD7B68B88FDEB14A54ECF07353F99C09CF2430E7927D2E8C6A165BA3F908),
    .INIT_2D(256'hE0C892BB8E24FF5B1CAAADA6B8FE721FE03A6B010FCFE314F5654EECFA8E8B28),
    .INIT_2E(256'h668208E7E5DCB173A85C83991CE7D9FFE3EF9BCF8FBCA2D9BD5AF1CD867711DD),
    .INIT_2F(256'h6638E6B257873DA3B12B70C3639D1EA977F9A548D40508B9538F146B05352948),
    .INIT_30(256'h1E3102BCFA468BB3E928ED7FA460D7DE2142DC7AC6EB3359D84DAF24E077BE51),
    .INIT_31(256'hE0377E51325C9AA64BB369788D4F44E0773E91825C3A068B532938AD2F446057),
    .INIT_32(256'h8FD450C7FED1B29CBA069B8329A89DFFE4A0373E51829CBA06BBB369181D4F44),
    .INIT_33(256'h083D1F740CA712C1AE0C2AEAA763F948819F74B067EE01928C0A36A7E319885D),
    .INIT_34(256'h8A4D185943FCC01B2EE9EA2A12BA3B23DD7C2D2F744C9B6E81D24C6A1627A345),
    .INIT_35(256'hBD40081A0339341F741C5AD5E628BED2C81C9AFC863017EF90610E5D63B13552),
    .INIT_36(256'h60E6052068D26CC1B3BBDD323B9487D91F32D1290905D0966F1CFBDA25B967E1),
    .INIT_37(256'hF2E19709D58070428C364C705404957AA9085992107782D459932FB4631DE2F6),
    .INIT_38(256'hD7DE11C2ECCAC60BC3E928ED7FA460B7FED182BC7A660B3369786DCF24E037BE),
    .INIT_39(256'h4440F7FE91421C3A460B336918ED4FA4A0B7FEB1025C3A468B3309384D9784E0),
    .INIT_3A(256'h1D3F5450C70EA1721C4AF63B3359A86D0F54D0073E71026C3A866BF329A86D8F),
    .INIT_3B(256'hF968FD1F74B01B2E3D2ECCD6EADB634548FD1F34B0A7AE0152ACEA369B031968),
    .INIT_3C(256'hE2AFE96CD1AF04203736193A4C3E365B37CDD8CD9F0830E72E41D20C56161BA3),
    .INIT_3D(256'hE1DD9000726C16740F34430A75B6D80E05743CD22B8AFC4B475059E6AB4B3367),
    .INIT_3E(256'h6677319AC72F52F1304AA165B23BF45F31653485136E5319CB6054D30A7A89B7),
    .INIT_3F(256'h913E19F881F21FFF0623AEF4C0638C7D1A79C7610240501DBC6E6CCF3474E58A),
    .INIT_40(256'hE0175E11029C1A468B332928EDAF646087FE51E2DCFA76AB93E9D8ED4F14E007),
    .INIT_41(256'hCF8460F7CED142DC3A868BF3E9184D8FC4A037DE7142DC7AF66B9309F875CFA4),
    .INIT_42(256'h281D3F5490870EA1B2EC3AD64B33A9589D0FE4A0B7FE21C26C3A866B43C9586D),
    .INIT_43(256'h2345C8FD5FF4CCA76E416E702A16A7DFF9087D1FF430E792C1D24C6AB61B8399),
    .INIT_44(256'h9A8BC33D042DEFFCB89FC62D66D84A6A7F77A978FD9F744CE7EEC12E8CAA6AE7),
    .INIT_45(256'h27E1FD1868821306E4B094F31AA586E87909945420C134762D0718E5C5A638DE),
    .INIT_46(256'h0DA6F8261DEA2E2C1D280AA1E52A4FC0FF61F1621F175DFCC9DB10E4A3D53A69),
    .INIT_47(256'h931A6E49679EDA3FB01227697B70B4144A05E10F118230288A5B3984202BBC85),
    .INIT_48(256'hC48037BE11C25CFAA64B43E9184DCF1490F70E91829C3A864B43A9A8AD7F24D0),
    .INIT_49(256'hED2FC40087DE91425C4A46CB7369980D7F04E0D79E5142DC7AC68BF369F8AD2F),
    .INIT_4A(256'hA928DDBFE420878ED1F22C0A767BC3A9A89D0FE480B73ED1429CBA26CBC32958),
    .INIT_4B(256'h5B63B94881DF34F01B6E41D28C56361BDFF9C8BD9F7470276E81920C6A969B03),
    .INIT_4C(256'h429EA7484D18CD573C783BEA1546ECAA726FB3C96881C388CCA712BDD2CC6A96),
    .INIT_4D(256'h899761B588885233C6BB00BC4BBA25D63FE9095C4A0071AC5E7D6733867994F4),
    .INIT_4E(256'h1A4D91919F43CEB6EC1D0882950D2AE3A0E1F8A6827F776D5CC6FBC0041C157A),
    .INIT_4F(256'hAB7CC5959968D92DC0F0E23C8EAB2F7BF831F2F1C74112A0778A3C7933DF74C7),
    .INIT_50(256'hCF2440378E21029C4AC63BC3E9981D8FE450F7667132ECBAB69BC3A9981D4F94),
    .INIT_51(256'h182DCFE4D0477E11426CFA46AB930918EDCF64C0D7BED1C23C3AA66B9309184D),
    .INIT_52(256'h3319685D7F9410877EE1C24C4A060BC3A9A81D4F24A077FED182ECFAC6BBC3A9),
    .INIT_53(256'h56A75FB9343DDFF430E792BD2ECCAA565BE379883D5F34F0274EE1924C6A569B),
    .INIT_54(256'h2C6A2AA817D938650FA83CD36275B20CFEE28BD339C8416348B01BEE412ECCEA),
    .INIT_55(256'hFA795F39258048A233D9AB78DC33BAA5D9338511D2246EB9005E55677B16B9CA),
    .INIT_56(256'h30A31487593F830EEE8429E0D2E9C9FC024D6648711A57F7ED2C29FB703BA3C5),
    .INIT_57(256'h7FBBB3423A691F4992F81C72E44E7C509BD8AAAAC6974EB24FC05D4C916B17B4),
    .INIT_58(256'hAD0F4460778EA1C21C7A06BB4319189D5F142037FE51B2DCFA868BC3E9A82D7F),
    .INIT_59(256'h29782D8F5420F77EF1325C3A468B73E9D8ED0FC400F73ED1421C1A66EB9309F8),
    .INIT_5A(256'h3B031988BD3FD410078EE1922C4A063BC3A9589DCFC4A0B7FE5102DC4A86BB33),
    .INIT_5B(256'h2A9627DFB9B43DDF084C676EBD520CEAEA5B239908BD9F343067AE4192CC6A96),
    .INIT_5C(256'h329CBAAD17B331D081F368ECDBF261AED0F6B67BA38534012374CCA72E8152F0),
    .INIT_5D(256'hD56AA11FD9EDF0F85DDC29D3E8E4730A721DC32DF76AEA98F5FC1E49A7679629),
    .INIT_5E(256'h65723B94475927EBAACEF4F50A6438444B42A5166826325777BD8CA984EFF4BC),
    .INIT_5F(256'hF49F43D4BA5AD95F5EAD5FBFB2A3F9AB3FC33C714AD917C17288F7622C16F679),
    .INIT_60(256'h782DAFC490878ED1426C8A767B33A9589DFF64A037DEE1826C0A86BBF3A9986D),
    .INIT_61(256'h3329D86D8FA490B78ED1421CDA46CB135978ADEF64D0773E9102DCFA266BF3C9),
    .INIT_62(256'h76FB039968DDFF54D027CE81B29C0A064BB39918ED8F44D077FE51C25C4A86BB),
    .INIT_63(256'h70EA6ADB5F05347D23F4301B12BDD24C56565BDF7908811FD470A7AEE1F2CC4A),
    .INIT_64(256'h51725C8EBA5393C9340143488C1B927D92F056EAA75FC5342123F4B0A7924152),
    .INIT_65(256'h4C85AAB16F41C530A7AD1CB1F3E0A4231DAE8D2BDB27FAFE8449BC0249938FF6),
    .INIT_66(256'hE1A5B2BB5C2F5187DB9A0C42F3A65B6054736A7A06180E3AEF77420C5664B06B),
    .INIT_67(256'hA644275B5CC58A86481112288FC54CDDA4CFD48415DD66D84E7D581A203DE80A),
    .INIT_68(256'hE978AD8FE4A0B73ED172AC4A26CB73A968ED8FA460F70ED102DCFA86CB332958),
    .INIT_69(256'hEB73A9A8DD0FE460B77E51C2BCFA46EB3329180DEF6450777ED1C23C0A464B93),
    .INIT_6A(256'hBA569B8319E8DDFF64F0072E81B21CCA86FB8399D82D4F14A0F73E11426CCA46),
    .INIT_6B(256'h920C2A161BDFB96801A3B4CC9B6EC19270AA16DB6379887DE3F4F047AE81F20C),
    .INIT_6C(256'h120102E8463E6B43851421A348ECDBD21D2E30D66A5B5F85340123B44C9B923D),
    .INIT_6D(256'h2BDC6A024157D9E5C0077DDCE1ABA0F44CD1822B2D4B3766FEE415E0025D2CCF),
    .INIT_6E(256'h4A81ADC6338CFFC5516D90D8CABB59DBD07453CA9536905EB2AF2FFD53C6646F),
    .INIT_6F(256'hC7F26C00E4B35D92DDC8E12574B022734924D043C45A4A368FCBFF186F74DDE8),
    .INIT_70(256'h9329586D8F14D0777E91F2ECBAA64B13D9689DCFE4D0F77ED1426C3A864BB3A9),
    .INIT_71(256'hA60BC329E89D7F64A0873E6142DC7A26BBB369784DCF2410F70E11625C9A868B),
    .INIT_72(256'h9C0AD67B8399E82D0F94F0A78E51C26CBA86FBF329189DCF94D0B7FE9142DC4A),
    .INIT_73(256'hE1AEF036CAC7FFC554E143E8ECDB2E812E8C16561BDFF98881DF34F0470E61F2),
    .INIT_74(256'h6342C926E00226A77F0514A1A3488C9B6E3DAEF016EAA71F65F4016348ACBB52),
    .INIT_75(256'hBF7BBC0D526967B14DFF472D94890B906BEC9D966F718B2B86BEA455D09E4BD4),
    .INIT_76(256'h8CDE997DBA8995E6F759657F1052FCC9DBA0BC5CBA1586E87E12DFF73D0C799B),
    .INIT_77(256'h7A8B796C6F1384D562496FB98DE890C20CAED46B4B63CA160BCFEADE43806CBD),
    .INIT_78(256'h0BB3A9D81DFF546087FE6142DCFA86BB4319A8ED4FE4D0F7FE21C20CBA064B33),
    .INIT_79(256'h3A264BB329589D0F2420777E71E2DCDA466BB389F86DCFE420070E11C2DCFA26),
    .INIT_7A(256'h32AC6A367B43D9589DBF14B0F78ED1726CBA364B7359885D0FE4B877FED1C26C),
    .INIT_7B(256'h8AA536684EB28FB7AD1C298B006C1B2E412E8C561627233934811F74F0E72E81),
    .INIT_7C(256'h53E3BED59E245AA23F071D8CD93BE0A443CA6536683E02BF675DEC297B90A4C3),
    .INIT_7D(256'h543F5B18AD2AF9A7F1724F97253CA95BDF6FA817BCD36DAB2B663EA425E0387F),
    .INIT_7E(256'h85F0DE1BEBFB029A19982E8200A782A44993C07413CAF50698C1CD4FE742DCB9),
    .INIT_7F(256'hF8622C19C017CB6CBA1A996FE18DF0F8E23B225437E76EFF1ECEC4DA506D6284),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h06CB73A9E83D7F5450070ED132BCBA06CB73A978AD0FE420577EF1829C3A06CB),
    .INIT_01(256'hECBA86CBC3E9A81D8F14D0871E11E22CBAA66B13E9982D4FE420278E1102FCFA),
    .INIT_02(256'h6142ACCAB67BB3A9281DFF7490877E6102EC6A76BB3319A85D8F2CE0B7CE2132),
    .INIT_03(256'h175E91A2DCDAA6ABD34940F597945CCB72812E0C562A7B63C5C881DFD470C70E),
    .INIT_04(256'h77A3B305D55A6C467AB7FF6574E1838830272EE112CC7A767B43D958ADFF14A0),
    .INIT_05(256'h8E946F8FF41D4AB9C8FEF22FFF75FC5904CBBF1E2F80A32DD7AB06BEA415BAA4),
    .INIT_06(256'h6843966B60D473550A21E7F1BD70870D6C467BA0543C2A4D2967EE025F787DB3),
    .INIT_07(256'hA4DC3D731EACF844EB0EDA49C86E92EF670AE7FA0E7D095EC90D44F298C4406E),
    .INIT_08(256'h9AA68BC319581D7F54E0F77E21B2ECBA860B73E9D82D0FA420773E21C2ECBA76),
    .INIT_09(256'hC25C3AB63B43A9A8ADBF1450EF5E11425C7A466BF329D8AD8F6420D77E91821C),
    .INIT_0A(256'h8EE192ECCAB6BB8359E89D9F5450877E21F22C3A860BB3D9E8ED8FA420078ED1),
    .INIT_0B(256'hA80FF6D91A94324E63FBC1E0658F5FD33CF241D2F06A165BDFC5C8BDE3B41047),
    .INIT_0C(256'h248BE3649551022442FE03CB91C075777C588FC6D93A54B23E433BD1D0D5879C),
    .INIT_0D(256'h63962477E3ECBDEAF6184E62C7AF6D6CE6A0774F8E0F90F3CD57ABE6DE446F59),
    .INIT_0E(256'hB81D23F6436844430ABA2188BE6D30B72DCCE9BB80941C721546376E52B0D83D),
    .INIT_0F(256'h591427C2BB69AB17DB8772CA99000692E40A288144F86B742B46D3D09228E038),
    .INIT_10(256'h9CFA46CBB3A9D8ED4F6450778ED1025CCAF6CB132998AD8FA420F7FE21426C3A),
    .INIT_11(256'hD1029CFAB68B33E9189DFF5420375E51421CBA464B73E9A8ED8F246057FEE182),
    .INIT_12(256'h07CE01F2CCCAF64BC3D968DD7F6420B77E61F26CCA36CB4359A89D7F14D0878E),
    .INIT_13(256'h6C887F56D90AD4F24E63FBA1505DFC2BC3CB2EC192CCEAEAA723F9685DBF34D0),
    .INIT_14(256'hC90C6B9F0C0EF17A9462CEB38B319835D7BC78EF0609BA64C23EF33B5160E577),
    .INIT_15(256'h4ABB561C57C394E5C58658A6FA1797FDD38E04F06F067F0013715717A622AEAC),
    .INIT_16(256'h80A74A6B197BB0340C45A5D6D8917D40D89DEC060BD094ABBA65A9189E125F67),
    .INIT_17(256'h39859F6832BCC6AC27C4CCF152E99FE3C7F224AEEB11317EB25320FF9CBCB112),
    .INIT_18(256'h425CFA764BB359982DAF142037BE71C29C0A066BC389A82D4F14A0F77E61C22C),
    .INIT_19(256'hFE51B21C0AF6CBB329E8DD3FE4E0D7BE91E29CFAF64B735918ED8F44A077FED1),
    .INIT_1A(256'h60477EE1126C8A36BB4359689D7F24A0078EA1721CBA867BC3A998ED8FE42007),
    .INIT_1B(256'hC76C085F36196A3472CE03FBA1A8D6E08FCC27AE01928C6A169BE379E8DDDF94),
    .INIT_1C(256'h84867CCB9B675E89FA44327E13ABC90055D73CB88F46A93A44C25EC37B7150D5),
    .INIT_1D(256'hA82AFBC2A0873BD4B565A68006DA2FE7D24309D4135106AFE093CD2B97FA0C8D),
    .INIT_1E(256'h1A2FB8A23CBD73B0DB83B57A060F812DA8588DBCB9BB301C4B2A3A8678712D20),
    .INIT_1F(256'h604602505CF2AC9EBCAF2B18F9B0A3D52DD950D3FBBA1F49F49F9B0EB55647E6),
    .INIT_20(256'h21221C7AA6BBB319A89DFFE450375E11C29C4AC63BC329A8ED7FA4A0F70ED1B2),
    .INIT_21(256'h778E21B26CBA863B8359281DCFA400B70E11625CBA86CBC359D86D0F24A0778E),
    .INIT_22(256'hE45047CE61324CBA763B0319685DFFE410872EA1C2AC4A369B835968BD3F9460),
    .INIT_23(256'h65876C485FF6796AD4B24E037B4904262B74CC1B8EE1928C2A165BE31968DDFF),
    .INIT_24(256'h95FC792CB0209766899A94C21E5393710035B7BCD84F0669FA44E2DE430BE1D0),
    .INIT_25(256'h88F0722B024C679BC3CA35A650C6627F38F21C927E6551468F60134DEBF798CF),
    .INIT_26(256'h6EFD905875B341B35F846BD57A7967B165A8A84DAC192B684423858536B7EE12),
    .INIT_27(256'hEDB3293D3027AD1B2614CD81AEB7E69DD76C1C51213F84567F57B0FB221AA127),
    .INIT_28(256'hFE51421CBAB64B832998DD0F64A0B7BE61B29C3A064B83A9585D8F1420877EA1),
    .INIT_29(256'h20878E81B24CCAF69B4399282DCF64E0078ED1425CFA064BB35998ADFF5420F7),
    .INIT_2A(256'h7F5410C7AEE1122C4AF63B0319289D5F5420074EA1C2EC6AB63B4319281DFF94),
    .INIT_2B(256'h209587CC283F36290A5432FE0313024B66E410C48BF2DDEEB0EA36FB03F9885D),
    .INIT_2C(256'hBFF5FC560B64006F26495A04223E73EB31C0D5571CF8CF06C9FAA4E27E93BBA1),
    .INIT_2D(256'hB58828EAEB8E8CEFF47362353EE0E6B280B00AE76CFE9551060FE0F30D5B0D1B),
    .INIT_2E(256'hA07145FF379D8C79D4A7B4639585D93F814D7FE76DDC19AB10945C3AD5F908BE),
    .INIT_2F(256'h1A097831D2FFA7BAD174760D27E49ACF60DEC41E8F980A6CD6E820F4F3BA1A86),
    .INIT_30(256'hD7FE51C21CCA06BBC3A9581D0FA420077E01429C4A86BBE31928AD4F1450070E),
    .INIT_31(256'h1420470EA1B2EC4A763BC3D958ED0FE4D0074ED1329CCA76BBB3A9986D3F9450),
    .INIT_32(256'hDD7FD450C78E0172ECCAB69B03D9A8DDBFD410C78E61124C0A56FB8319283D7F),
    .INIT_33(256'hA1D055871CA8BF7699EAB4420E3BC0266BB963080CDBB2BD6E4C6A569B239968),
    .INIT_34(256'h5BEFCDD3A9AFA4806FDEF1025C825E93AB91E035379C782F1E499A44C2DEB33B),
    .INIT_35(256'h4935E8E0FAC32E84F0F49322ED1E003EED64BCDE699C4EC5A106CF8053F5BE56),
    .INIT_36(256'h4907794DEF47D293E6D46FAB535D3259976ED23FE7BD33E9243074638A4A6988),
    .INIT_37(256'h5AF5C6D0EE59326AE08F32AC540ED5FCCF1288E1E508283DE33EAB100433959A),
    .INIT_38(256'hA0F77E9142ECDA864BC329181DCF249087FE61825C0A769B7399589D8FD420C7),
    .INIT_39(256'hDF5450C7AE01F2ACFA767B43A9182D7F5420C7BE91329C8A063BC369586DFF14),
    .INIT_3A(256'hE8BD5FD470C70EE1F22C8A56FBC319685DBF5410278E8112CC6AB67B0379085D),
    .INIT_3B(256'hBB2110A547ACE80F76F9EAD432F6B84CA2985B599C701B928192AC0A56270379),
    .INIT_3C(256'h76C76F02BC0D6F3C18AF66715A24827EF30B51E0A5779C586F6609BA64420EB3),
    .INIT_3D(256'h7F991D241C8A9BA664D0A42B824D26E871C9F40428A91A6825A106CF604D503A),
    .INIT_3E(256'hBA59CFBEBA1FB8126C46F470B478A5B586003E720098622C794470B45CA59A29),
    .INIT_3F(256'h53DA7E0545C3AF3CEC224E2FAD76488B85059E335905F4238DE399E467C4C495),
    .INIT_40(256'hA4D0B7AED1721CBA76FB43A9186D0FD4D087CE11C2BC6AD67B835998ADFF2450),
    .INIT_41(256'h1D3F54D0477E61421C0AB63B33D958CD5F149057FE11C24CBA06BB1329D89D8F),
    .INIT_42(256'h79889DDF741087CE21124C8AF63B435968BDDFD490C7EEC1D24C8A36FB031988),
    .INIT_43(256'h033BA190A5474CA88F0619CA94DA82A897BF06B35924309B12E152ACAA561B63),
    .INIT_44(256'hEA4A3707B5984DB7EC987FC6E9BA64320E03CB511025876C38FF86594AD4320E),
    .INIT_45(256'h311F7969E4B0AA23E63B401CCB62CD761755495492A801D44E2551C65F7A5A1C),
    .INIT_46(256'h3A4A0988EE8DE0D802F3567BB0938C8545E6F80E520F880DACF99B6F8BBC55C5),
    .INIT_47(256'h09DE27A8D53BF5320DD18BB6158B8FCBF8C5C5F1FFD9D560EF3A83867B3FD3EC),
    .INIT_48(256'hFF6420F70E01B29CFAC69B0379D8ED0FD490C78E11B2AC0A06FBC32918EDCF64),
    .INIT_49(256'h681D3FD47087CE01724C8A364BC329A86D7F545077FEE1422C0AF64B3359286D),
    .INIT_4A(256'h639988BDDFB4F0477E01724C6A369B83D968BD7F5410672EE1F2CC0AF6FB63D9),
    .INIT_4B(256'hFEB33B211025A76C287FB6A97A7C569AE77557E605BFF4B0A7EE61924C0AD61B),
    .INIT_4C(256'h2C763AEFBFC9C055C71C280F76D93A14B20EC3CB21D0E5C71C988F76193A64B2),
    .INIT_4D(256'hB299071529E8F09233D94B381C6BDAA549EFE9C10AC228194CAE1511E002315A),
    .INIT_4E(256'h734DFA6E573E02CF8852D3E96CBBD363DA95A6C8D13200E7EDAC0684D04BA315),
    .INIT_4F(256'h6DA96019C20EC2588415733D5BF693AF7BD3525A7917691D0F00E21CA92357DB),
    .INIT_50(256'hED3FE420877ED1029C6AF63B8359A89DFFD42077CE21B2ACCAB6FB731928DDFF),
    .INIT_51(256'h9958BDBFD410278EA1929C8A860BB3E9681D3FE4D0074EA1C2CCCA064B43E928),
    .INIT_52(256'h3B6319287D5F349007EE6112CC8A363BE31988BD3F9470C7EE81D24C0AB6DB63),
    .INIT_53(256'h72CE831B214EC5C7AC283FC6E9620C7656E3157F783DDF8830E72EE1F2CC2AD6),
    .INIT_54(256'hC270B69A37B3B1E0C5478C485FD6F90AB4724E039B813025471CE87F5659EA54),
    .INIT_55(256'h456AF9739565688842EC71B358BC937A7A3133F3770A72E8992CFE15A36F2631),
    .INIT_56(256'hA42C1D95E9E0F67230270AFBE98CA7E4EB62D5766771BDDF7742A3A65B4FDB63),
    .INIT_57(256'h2843D377EC3330DA166DB0008A5B36ABA0C34C2DB6AD37EE7AF868E553D6ECF0),
    .INIT_58(256'hA8CDDF14D0C77EA1B21CEAF67B33D9283D7F94D0470E81F24C3AF6CB13A9786D),
    .INIT_59(256'h8379E85DDF5410077E2132ACBA36CBB31928BD0FE4D077CEA132ECFA76BB3399),
    .INIT_5A(256'hD67BA3B908DDBFD470E7AEC192AC0A369B439958DD7F54F027AE81B2CCEA561B),
    .INIT_5B(256'hA422DE73AB5100F56FBC18375ED1920C2AB60B033948811F08CC67AEE112706A),
    .INIT_5C(256'h21525086E2FB6BF190C599CCE87F76190A64427EF38B516075D79C988F46A99A),
    .INIT_5D(256'h0C8DD2ADEF0132D0587DAC31F3D8C4F32ABE85450BF7BA42D8E9FC1638360F9E),
    .INIT_5E(256'h6FCB5CEA8566F8A1FD9F180213FE54202B1C95DA297711A2AF27624CD9546FF4),
    .INIT_5F(256'hC527E6C2C5688DA1881E9240444ABCEE0C677FEC3DE226B70EA59F8F25C3B684),
    .INIT_60(256'h59D82D3FD450870EA132EC0AB63B03D928BD23E450F72E61B2ECCA760B43E928),
    .INIT_61(256'h7BC3D9E8BD5F3450870E01726C4A064B431908EDFF94D0C7AEA1C2DCCAB6DB33),
    .INIT_62(256'hCAB67B6399883DBFB4F0A76E81B20C6AF67BE359583D5FD4F0272E61328CAA36),
    .INIT_63(256'h2E4CAAFA5BA3453481E3B4B01B123DAE701616A723C5348163B4B0674E61B22C),
    .INIT_64(256'h8E416E208606AB23D9E86D3FD4F0C7CEC1524C2AEA2723B9B43D63B430E7EE81),
    .INIT_65(256'hFBB47D82ED7F197DDFF78D84B153F8D4C33138238DEB971A82383512EFCCA84F),
    .INIT_66(256'h9B8FE3EBDAE599EFB91D0898EA17AE0B6FCBA3F5EA79C8BE424FF882B32E14F0),
    .INIT_67(256'h9AAF415C8444F1321198AE155FC7F25C163467035CC5E55947756250289AB3D9),
    .INIT_68(256'hC35918DDBFD4D047FE51122C0AB64BC359881D0F145007FE21C26CCA76FB4319),
    .INIT_69(256'h363B037908FD5F14D0C7CE01C29CBA361B8319E81D7F1490470EA1122C4A76FB),
    .INIT_6A(256'h2C6A165B0379689D5FB4B0679281322CEAB61B831968DD1FB4CC274E61724C8A),
    .INIT_6B(256'hBD520CAAEAA75FB94881E3484C676E7DAE0CD6AADB9FC5C8C19F8870A7AE01F2),
    .INIT_6C(256'hEF0EC14EA08A4687FF05744143C88C9B927DAED0F6CA675F85947D1F74B01B92),
    .INIT_6D(256'hDF0344B11E317F0132EFAF7524316B301484D9F8932D8B57FAA2282CA5C72C28),
    .INIT_6E(256'h2904275343E23A218F999D80109AE35614AF24A375FA56A86E2D40E7FDC316C4),
    .INIT_6F(256'h29D8665C274B9CAA82E608516548C00A73BEE4679454B58A192F61423F381253),
    .INIT_70(256'h7BC319A8BDFF9450C70EE1726CBAB63BC399681DAF5470778E21321C3A06CB33),
    .INIT_71(256'hCA367B0339C83DFFD49027AED1329C4A569BA359285D8FD420877E61F2AC0A36),
    .INIT_72(256'h52AC6A561BA3D9E89D3F348CA74E2172AC0A569BE359883D5FB4B0474EC1922C),
    .INIT_73(256'h92BD528C56AAE7633948C1E38830DB92C1D28CD66ADB234574FDE3F470E7EEC1),
    .INIT_74(256'h98D7EE5DBE102A4A07230534C1A3484CE7D23D6E5016EAE7FF45C83D9F34B01B),
    .INIT_75(256'h6CA7A33871E299672EC2D70F1504F1FB9023F8D780F30D17AB2694D99065772C),
    .INIT_76(256'h3C267CE7CB1C65EAC937916D5F68EDCCB6844F034CF5E5C6A82E4D9F5872E376),
    .INIT_77(256'h871DFC19E4EF5BB822D50967416D90A8725C297CD0049C229AF147AE32F0A8CA),
    .INIT_78(256'h76CBC31988DD7FB450B7AE61721C8A76BBE3D9181D5F34D0470E21B21C4A86BB),
    .INIT_79(256'hCC6A167BA39948DD1FD470C7CEA1F2ACEA069BC319E8DD1F1490770E21F2EC6A),
    .INIT_7A(256'hA1AE0C6A969B0319E89D9FF4701B2EE1D20C0AB63B6399883D1F341027AE01AE),
    .INIT_7B(256'hE752E12E70566A9B9FC5087D9F08301B127DEECC0A16DB230508FD9F744C272E),
    .INIT_7C(256'h9C388772AD3EAC76AA279F8534A16308CC1B121DAE8C56EADB5F053401BF48EC),
    .INIT_7D(256'hF6945FD3B88D0AB988FE5AD7EF754469FBD71F8EAF80D3F177C7E04B81901537),
    .INIT_7E(256'h2D831EDCD0C334DDF28987AE3DC8A8B20396BB073B5CFA5556C771ED7F58C293),
    .INIT_7F(256'h8BF3DA17E2DCF84303856A7957E1A5FF50BD739634FF3FA3C582F648B98DA807),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hCAF67B4319A8DDFF9490A7FEE1329CCAC69B03D9586D8F14D0F78E21C29CBA06),
    .INIT_01(256'h92ECEAEA9BE339E81D3F74B0278ED1C24CCA963BB399A83D3F3450874E6132EC),
    .INIT_02(256'h2E8112AC2A567B0379C8BD9F747027AE01120C8AB69BE3F9B47D1FF470C76E81),
    .INIT_03(256'h4C9B6EC1AEB0D696DBDF3948016374B05B52BDD27016EA279FB934019FB47067),
    .INIT_04(256'h879C803B326D52F076AA679FC574012388CC9B52FDEE30D6AA07DFF9C8FDE3B4),
    .INIT_05(256'h03CE2C178F24DDCA09289E62D72F6D2C99CC6BA7B60F802F71C50683FB011015),
    .INIT_06(256'h802A43F69B2F63D431AA4948592900B8D263D6744F4B7C0ABAB9D75102E03822),
    .INIT_07(256'h723FF09AD7465BC79B4C6A2AB62799B2D8700A63399CEB736CE19A267F11CD2F),
    .INIT_08(256'h6C0A367BA3D9285D3F34F0070EA1C2AC4A36FBB329281D5F14D0F78ED1729C0A),
    .INIT_09(256'h01120C2A6A5BA33988FDDFF470272E61F2EC6AF61BE3F9B4BDFF54A087AE41F2),
    .INIT_0A(256'h67EE81F2CCEA96FB237908815FD47047AEA1724C2A56A7237948BDDFD470A76E),
    .INIT_0B(256'h08701B6E412EB0AA16A79FC534C1E3084C1B123D6E70D616E75F45483DDFB4B0),
    .INIT_0C(256'h55770490DB02C18ED0966A871F05B441E3488C5B6E1DAE3056AA5BDF45C88163),
    .INIT_0D(256'hF22BDEFC37833465C576B87E725717ADACCE60DB01C62FC03B78F210E35B5180),
    .INIT_0E(256'h28F886CC69DB274334E58AB69F79DA8037028CA6142FAB83CA857988DECD7068),
    .INIT_0F(256'hEE5280641A7359C3AFF4932A1A867F5105A818C213B654376B0825E57680A60D),
    .INIT_10(256'hF22CCAB67BA33968DD7F3490878E51324C0AB63B03A9289DBF54A047CEA172EC),
    .INIT_11(256'h920112CCD616A763C5085DBFD490272EA1120C8A367B0345E8DD3F64902712A1),
    .INIT_12(256'h70C7EEE1924C8A367BA399487D3FD410676E01D2ACEA56DBDF4508BD5FB410C7),
    .INIT_13(256'hDF88CCE76E41AE0C56EAE71FC5348163088C5B12C192ACAAEA27A34548811F74),
    .INIT_14(256'hC0D5EFE48CFBB21D8ED0968AE7FF05F44123C8CC5BD27D0E50166AA71F45B441),
    .INIT_15(256'h30EA9B5E1C67036C95E59E801E9A57877D5B0228D5B1DAAF32A21492AE233BB1),
    .INIT_16(256'h89F0A8521CF9FC47DB5C254A19C7AEFDE067AD7CC6E430F4E3956AD6E8413DA8),
    .INIT_17(256'h280E2954AF7D234694EFC4548545193F01753FDCDAD3699B2F07DCAA72C9E7B1),
    .INIT_18(256'h61B2EC6A165B5FF968BDBF14F0078EA1324CCA860BC319E8013F9410470E61B2),
    .INIT_19(256'hC7EE81F2CC16EA7BE33908FDDF34F0C70E41524C3AD61BE3F9A81DBF3490A74E),
    .INIT_1A(256'h34506792C1D20CAAB69BE33908FD3FD470476E4112CCAA56E763F9483DBFB430),
    .INIT_1B(256'hC19FF44C672E412E8C5696275F396801E3080CE76E811270766ADB5FF9483DDF),
    .INIT_1C(256'h21E035CF74DC8B329DEED0966A275F6534A143880C9B12BD2E30F6165BA33948),
    .INIT_1D(256'h48100ACBC26057E3DCCA95BE20DE620F678A8B029689ED704EF9AAF4AC10F30B),
    .INIT_1E(256'h2905A4B85D8C8E44EF94BC3D62E9378E0DE067C2D396A4B08B439585F6E7595D),
    .INIT_1F(256'h5D03155598B0220476B38803C88D4AD6B82579A0D092B3914BAB2C7C05DAC667),
    .INIT_20(256'hAEE172AC2A56DBA319285D7F9450F7CE61922C6A867BC37968FDFFD4A0C7FEE1),
    .INIT_21(256'hF01B923DD230D6B63B23F9083D3F5490C7CE81922C6A367B03F9281D5F94F007),
    .INIT_22(256'h1FD41067EE412EEC6A365BA3B9083D5F74701BEE01D2CCAA162763F948019F88),
    .INIT_23(256'h483DDF74101B923D520C2AAAA79FB9940123C8CC1BD2C12E3016965B2339483D),
    .INIT_24(256'hFBD1C0ED1F981CBBF27DAEB0D6CA67FFC534A1E30830DB127D6EF02A965B23C5),
    .INIT_25(256'hE550307A0BBE0CFF8BC33A3566389EF27FF0B2C3544205A4FFD6C7F48AD2FE83),
    .INIT_26(256'hD7B61DA8A7426C7614CF0374DDFA29C831ED9098B2A3068B3094A39585B9A711),
    .INIT_27(256'h2635A7F9DD6F183DBC5193006474915EB9139E8DF0308613D1E0983BB4E51221),
    .INIT_28(256'hA72E81D2CC2A367BE3D9881D3F1450070E81F25C8A767B6379885DBF54F047AE),
    .INIT_29(256'h887027127D2E4C0A361B031968DD5F743027AEE1724C2A967B639968BD5FD470),
    .INIT_2A(256'h7D1FB430A72EC1D2CCAA56A7A345C8BD63F44CE74EE1D28CEA16DB63B9B47D63),
    .INIT_2B(256'h3948FDDFB44C9B6E3D924CD6565BDF4548C163F48C67923D6EF05616A7DFB934),
    .INIT_2C(256'h03CBF1983D73002CBBD21D6EF0F6EAA7DFB9F4012348CC5B52FDAE0CAA6A275F),
    .INIT_2D(256'hD98588401A0B4E14F0D41362B5DE583EB2E8289A995C8C7C18DFC8E7EAF4724E),
    .INIT_2E(256'h89C881659048CDCC563B3FBB14A5DA89B741B2FFA842CCE99B500B63CA9A6988),
    .INIT_2F(256'h3996A50FB1BA40278ACCA6E4207338F1D2313F81E96420F53CAA4487DB54DD32),
    .INIT_30(256'h10470E61F28C6A3627631988BDFFD470474E4182EC6A56A75FF9885DDFD470C7),
    .INIT_31(256'h5F34B0E7920152CC0AEA9B834548FDBF34B0E72E6112CC8A6AFB039988FD6334),
    .INIT_32(256'h48C11F344C5B6E3D12CC564A67A345880163F430E712412E0CAAEA5B6305F47D),
    .INIT_33(256'hA3B9C8015F880CE712BD528C562A275FC5F4C19F88301B127D6E0C2A6A279F05),
    .INIT_34(256'hBE332BA948517BB88C5B921DEE50EAEA5B9FC57401E3084C5B527DAEF0D616A7),
    .INIT_35(256'hBFF92508A09A3B5664B044539A8DA6D84EDD384C285F7DD704E821C8390A94C2),
    .INIT_36(256'h85F1EF01FD9067C23BC6BBCFAB2C953A895FD14DB06702B3463B70DB23A5C569),
    .INIT_37(256'hDC55BE3DBFBE3570C70D5C9E542773E4FD32910F9DC5BF577D47896C47233CBD),
    .INIT_38(256'h3430A76E4152ACCA361BE339885DBF341027CE61C22C8AD61BDF3988BD6334CC),
    .INIT_39(256'h815F080C9B2EFD92ACAAD6DB63F9687DDFB4F0E74E81928C2A561B0339C8811F),
    .INIT_3A(256'hB908FD5F74EC1B6E812EF076162763B994FD9F3470A7D2C1528C2AEAA75F65B4),
    .INIT_3B(256'hA79FC534C16348B01B9201AE3016EA5B5F85F47D23084C9B52BD52302ACA27DF),
    .INIT_3C(256'hC20EABB319D4C953C8B03BD2FD6EB05616A75FC5B481C3C8CC9BB2BD2E70562A),
    .INIT_3D(256'hC1CF9975245CAABBA69B40C4D3E2B50668D9F5540A3DF8CD2FCC36A15699CA64),
    .INIT_3E(256'hBD8286D77E8D10A7F50CB99B109B03A56219F7C1925FB8525306E4DF14ACD585),
    .INIT_3F(256'h1FC86DA2CEFF0E72BF38C29CE980F78373A5AA09E321F5C0F0FA431923F03CAC),
    .INIT_40(256'h63F4B06792C1928C6AB6DB23D9E8BD5FB4B0C7CEA1124C8A6A1B2399285DFFD4),
    .INIT_41(256'h483D6308B0E7EE41D28C566A1BE3B948FDDF48B0A72E81EE0C6A367BE3F948FD),
    .INIT_42(256'h5F39B481E308309B12BD6E105616DB5FC548A16308CCE7527DAE70566AE75F45),
    .INIT_43(256'h16A7DFB9C8C123B4301BD23DAEF0162A679F85F4A163C84C1BB2BDAE3056EA27),
    .INIT_44(256'h94B2BE8B8305BCF143486C9B12FDAE50D62A679F0534C163884C3B127D0E50AA),
    .INIT_45(256'h621187C969D800AA13F9EB80E4AB1A55F6876E1DD89F7100352732B60F76F98A),
    .INIT_46(256'h1425D5A187D17DA8E8BDF346D4CFB42CFDB2E997310D00776D2C19D4D034E395),
    .INIT_47(256'hBF7B0CD5C179281E921FD01DF36E1C50AC13950AD127619594CC82C359BC3F4B),
    .INIT_48(256'h3D63B4B0A7924192CC0A2A7BE359683D7FF4F0876E01AE8CD6EADB63B9687DBF),
    .INIT_49(256'hB9F43D9F0830676E3DAE0C56565B637948BD1F3430E72EC12E0CAA1627E3B988),
    .INIT_4A(256'hA7DF85F4C1A3C84C1B92FD8E50D656A79F05347D23080C9BD27D6E30AA6A879F),
    .INIT_4B(256'h2A2A5B5FC5F48163C8309BEE3D6EF0AA4A677F053481E328ECDB12BD12F0966A),
    .INIT_4C(256'hCA9482667B3F2D3C2163288C5BD23D2E8C162AE7DFC5944143C88C5B12FD6EF0),
    .INIT_4D(256'h5DD2D93F5515F8B002EC3153A044938AA501DF75B93F93F1207BD952480F56D9),
    .INIT_4E(256'h5BECFA6549C8995D4F073DC3B6B44F6334BDEAA17F418DDF471DE3EE1B709403),
    .INIT_4F(256'hA4CF4FE4CA2AFEC8D18D64809A4309EB6F3B2BE54251E7E15264AFE29CB974E0),
    .INIT_50(256'h48BD3F488C5B6E41F20CD6165B8379681D1FD49067EE3D6E0C2A161B23C54801),
    .INIT_51(256'h7F4534A1A3188C674E61D270AAD6A7DF65E88163B4709B1241D24CAA361B5F45),
    .INIT_52(256'h6AE75FB9944123C8CC5B329D6E50AACA5B9F0548C123488C5B125D0ED016CA67),
    .INIT_53(256'hF0962AE7DF05F4C1E388CC9BEEBD2E50D62A871FC534810328EC5B52BD0EF016),
    .INIT_54(256'h99BA047AF647773588FDDFF4CC9B2E4152CCEAD6FB4305486DBF288C9BD2FDAE),
    .INIT_55(256'h44FDB2E1B335B5C8F81D9C712BF83C43CA52FD23FD05B76BE1F05B790CD89F36),
    .INIT_56(256'hD0D43305FA5613097DE038EA2346C4072B141572194841D2DFC8A203A91B8FB4),
    .INIT_57(256'h56B49F4BCCAA416E4816C91878FDA30ECBBF63FCBDAE966759299BD742FBE6BB),
    .INIT_58(256'hC50881E3F44C472EC112CC6AD63BE31968011FD4CC9B12C12ECC6A361B63F908),
    .INIT_59(256'h275F85F4C14328709B92BD6E5056961BFFC5343D9F4870E72E3D520CAA16E75F),
    .INIT_5A(256'h96AA277F8574C1E3F4CC5BF27DAE8C166A27DFC5F4C123C86C5BD23DD28C762A),
    .INIT_5B(256'hAE30D6EA5B9F05087D6308309B521DEEF0F6CA67FFE594212368EC1B921D8EB0),
    .INIT_5C(256'h5609A2DC4A4A57BF25744103A82CDBB21DCED0964AB7AF2930655F484C5BB2FD),
    .INIT_5D(256'h23049D1211B32985C0270DBCC92B80A4233D0A798FE505DB4BE10EFB27AC68BF),
    .INIT_5E(256'hEB6F3C2C357A89BFB9ED9020528386CB072BF37512D627D1928038D28C96BB0F),
    .INIT_5F(256'hD7E240BBAF6C2D3551C8F1D507D062C39EBCF79B5865A261EF855DE0F812CCB6),
    .INIT_60(256'h23F948BD9F48F027928152CCAAD69B631934FD5F08CC27D23D92F00A6A1B5FF9),
    .INIT_61(256'hAAA79FC57401230830E712C1928C5656672345C83D63484C1BD2BD524C6AAA1B),
    .INIT_62(256'h30566A879F057421E3C86CFB827D0E30962A87FF65B401C328AC3BD27DAEF056),
    .INIT_63(256'hFD8E3016EA671FB9F4A123C8CC3B921DCE50162AC7DFC5744143C88C5BB27D6E),
    .INIT_64(256'h3F8689625CAABA1757CDC4A9EB58ACFB422D4E9006BAAF337FF01D2348ECDBB2),
    .INIT_65(256'h279394BDE2ED73095D20570D7C716BE014948A45AD9B538D0B25FFCE05276C68),
    .INIT_66(256'h166C50341C0AC59917EE8534D88DB3B6D44FCB5C1DDAF9C8512D1F48C2E379E4),
    .INIT_67(256'hCD3C4293AFA09CBE02B6B8FEBAFFA732C3414CA3AFF8452EB10F1182B0889533),
    .INIT_68(256'h87233948FD630870672EFD528C8A369B233948BD5FC8309B92812E4C2A56DB63),
    .INIT_69(256'h96CA279F05748163883067D2BD2E30AA6A5B9FB9C8819F284C5B6EA1920C7696),
    .INIT_6A(256'h0EF0164A87FFC5F4414328DC3BF27D2EF096CAE7FF85B4A123488CDB6EBD0E50),
    .INIT_6B(256'h121DEEF0D6EA875FC5F481C3480C3B929DEEB016CA879F2514414348EC5BD21D),
    .INIT_6C(256'hA87F46B1E2CC66FAAFAF1504518398AC0BF22DCE90660AD3E5FF5055A3686CDB),
    .INIT_6D(256'hAC970394AD2EAD9F01AD6F570D44C97B7063144D7675F5A5A2B35B4130FB379C),
    .INIT_6E(256'hBB4E84A734E3B52A7967A1C9E81862C3AEEC2F34ACE58AD6D7EE42C067028CB9),
    .INIT_6F(256'h27BD3BB61438EBCBE5EA4D7741BDEF1072B3E6C02B132C11FECD385E52309762),
    .INIT_70(256'h16675F7934815FB48C476EC1D2ACEA16DBA30548FD9FF42C27923DD2EC2A76DB),
    .INIT_71(256'hB0962A87CF25F4019FF4CC5B2EBD2E8C762AC7636548FD43F46C6792E12ED096),
    .INIT_72(256'h410EF0166AC75FE57481C3280CBB52BD2E5096AA67DF85F4C1E328CCDBD27DEE),
    .INIT_73(256'hBBD2FDEE50166A1BDFB934C1A3688C5BB25DCEF0B62A271F6534A12328EC3BD2),
    .INIT_74(256'h5CD8CF5E61EE40665A174F35C45153989C8B825D8E101666B3DB3F70FD43A80C),
    .INIT_75(256'h9E2C6763A471C28127B142AFD74D3CE9E4C7A3B85996D565956A337B017025C7),
    .INIT_76(256'hCA232694D0A47C1D05E93749A500B0B23B362CF09B7475E549C87EFD30583D4C),
    .INIT_77(256'h5F27BAA75913871C036AA561AF4E723FF85213FECC107B149D0E89187112CF38),
    .INIT_78(256'h16EA5B0379F4FD9F8870E74E4152CC2A965B23F9C87D63344C1B2E019270EAEA),
    .INIT_79(256'hAE70164AC73FC54821E3888C9B12FDD20CD6AA27DF454801632870A7923DEEF0),
    .INIT_7A(256'hB2FDAE3076AAC7238574C143A80C5B6E9DEED0F6CAE71F8594E163C80C7BB25D),
    .INIT_7B(256'h4CDBEEFD6E50F62A67FF6514A143C88C5BB2FD0ED0768A67DF5594C1A3C8ACFB),
    .INIT_7C(256'h37DCB86FCE7D4E20663A37AF75A4D133981C2B02AD4EE0B6B2CBDBA18841C368),
    .INIT_7D(256'hBBCEFCA79358AD22F9D7FE1A0FB76D1C46E00BAF8841965595C1A6037B41F0A5),
    .INIT_7E(256'h277A4C968B98EB585A1519B3D98280B8EA2BDEEC8753BC2AC5A977B1BD9F5842),
    .INIT_7F(256'h125FB0CA7B76AB7024EC95E2F9D895D5BFA8ADBB6604275BB3355209D7318210),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (DOUTA,
    clka,
    ENA,
    ena,
    addra);
  output [0:0]DOUTA;
  input clka;
  input ENA;
  input ena;
  input [15:0]addra;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTA;
  wire ENA;
  wire [15:0]addra;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h30AA562723C54881DF7430A76EE1120CEA169B63454801A3280CA7EEC1528C2A),
    .INIT_01(256'hDD2E50764A471F85B48143F4B0BB52BD6EF096AA275FE534C1E348B067923D2E),
    .INIT_02(256'h3B52FDEE10F64A871F657491C3280C3BB21DCED0F6CA277F655441A3280C7B32),
    .INIT_03(256'h48EC5B12FD6E5096AAC7BFE594E123C86CDBF25D8EB0964A477FE59441E3C80C),
    .INIT_04(256'h65071C807792C13EA0C68A570FD5A491C3985C7B02BD8E70961E23BB79944183),
    .INIT_05(256'h12DB5E2CD78F78BD9A96B82602AF97ED53D2805B2F4819A663BB66FEC39B0190),
    .INIT_06(256'h9F90724CB65B2F0FD8DAB2AD173E8D28084A9B56D4478BC38A853997B1FD3058),
    .INIT_07(256'hB10DA0D432D34EC4476B948DD5B94F81CA70B8668BCE6C8FE41425454967116D),
    .INIT_08(256'hAE4C2AEAA75FC53481BF0870670E41924C5696672339B4A1C3884C67EE41520C),
    .INIT_09(256'h02BD0ED0F6FAE7DF6548A143A84C9B12C16EF0D66A27DF6534C16334B0E7F2FD),
    .INIT_0A(256'h6C3B52FDCE90364A67CF8524210388ECDBB2DD8EB016CA07BF6514A1C3A8ACFB),
    .INIT_0B(256'h43A88CDBF21DEEF0364A67FF5514C14388AC3BB25D4ED0F64A37BF8594A18368),
    .INIT_0C(256'h5045C7C4A09B92CD46A0A6DA2F2FF5FC3183584413C2ED32CA6CAEB323259441),
    .INIT_0D(256'h88EAAB2E1CF7AFB475C54638BE620FC7A2A7A680E3B76017489B5F222E03FB21),
    .INIT_0E(256'hC5E0F802ECB9147FF4832DFE899741ED905CB24C960CCF54232A7A69D7418DA0),
    .INIT_0F(256'h1F391D7C0F261C99BCB7932461BAFD1FA14260C7AA93CEE407F40B526AD17FC1),
    .INIT_10(256'h7D6E0CAAEAE7DFF9C83D9F744C876EC1AEB02A36DB6339343D63888CE792C12E),
    .INIT_11(256'hFB92DDCED076CA275F25B4A143280C9BB27DEEB0AAEA677F2574015F08301B52),
    .INIT_12(256'h680C3B82DD0E10764A47CFD5D441E3886CBB72BD0ED0D60AE79F6574A183685C),
    .INIT_13(256'h7DE3882C7BF25D6E10964A07FFE5F441C3E86C5BF29DEE50764AE77FE5146183),
    .INIT_14(256'hE1B025CFE48C47DA251EC006DA17CF7524E15338BC0B62A17474DA16C7FFC514),
    .INIT_15(256'hB0B0AA0BEEFC1BE36CAAF51EA8DE62BF78263792182D596E9F681540F24E431B),
    .INIT_16(256'hA1054087BD1CFE4C78A44CCD8A019F612D7048726C9E545014032A3A69B759ED),
    .INIT_17(256'hF1AF312968982D4C5E40E7C76425A561B7D15DB8988A3346D4CB6343F57AC687),
    .INIT_18(256'h92412ECC1616E723F9C8C19F74F0676E01D20CAA96272345947D2374301B6E3D),
    .INIT_19(256'hAC7B922D6E90F66AE71F65D4E123288C5B12FDAEB016CA679FA5C8FD63088C67),
    .INIT_1A(256'hF368ACBBF21DCE50B68AB7CF251421C3A8EC7BB27D4E3076CA077F8534617368),
    .INIT_1B(256'h1421A3288CDBB21D8EB0F6CA473FE5D4E1C3982C7B329D0E50760A87BF0554E1),
    .INIT_1C(256'h7B81A02DBF74A0FBE2AD9EF8A63AF78F55C409AB403CEBCEE7AA4C46CA87FF65),
    .INIT_1D(256'hE51830FA2BBE60A7C3A30A7556189ED200DC1A77FAB6E5D1169758919C820E03),
    .INIT_1E(256'h678925C8873D7736DB90EB5CBD5A5997C11D6098224BCE9BAF945C45DA29E7EE),
    .INIT_1F(256'hAAB94841650F48B253563C178364A24521A7715590602A9396E0503414CD3529),
    .INIT_20(256'hE79281AEF0AA2AA7A379B4C11FD4301BEE3D2E0C2AD6E79F053481DF88309B6E),
    .INIT_21(256'hE8ECDB325D4ED0564AE7FFE5940143C80C9BD2FDEE70562AE77F45C8C19FC84C),
    .INIT_22(256'hC103A8DC7BF25D6ED0764A37BF2574A143180C3B727D0ED016CA873F85E49103),
    .INIT_23(256'h459441E328EC3BF29D8E50364A471F65146143E82C8BB2DDBE90B68A073F2514),
    .INIT_24(256'h437B51983D9F544CBBB2AD3EE0B6BAB77F2564B1F3A85C4756595210C6AA671F),
    .INIT_25(256'h21C58830EA0B3EAC9FF4F3DAE5E6F82EADD8905A0F742EFD99A097F65EA4B28E),
    .INIT_26(256'h4697D9F5BFE72AF366748F53ECDD1AC6E8C11DA068867B4624900B0C65AA49F7),
    .INIT_27(256'h5DF256AFF9D23027A5DB4614DBF31805F279D321A5D4E03DA35EB4BF2B5482B5),
    .INIT_28(256'h4CA7AE3D0ED056EA67E345B4FD5FB4F0E752FDD2F0D64A1BCF05B4016328CC3B),
    .INIT_29(256'hF328EC7BD2FD0E70562AC77FE514412348CCDBEE812E70768A87DFB9C801A388),
    .INIT_2A(256'h149183686C0B729D0E1046FA477F65946103E8AC7BF2DD8EB0760AC74F052491),
    .INIT_2B(256'h7FA5D44103282C0BA25D8E90564A879F65D42103286CBB82DD8EB0468A671F85),
    .INIT_2C(256'h7E43BB31483DFF487C6B9A3526A0DE62AF174D9C61D340702116A14E50D62AC7),
    .INIT_2D(256'hFF3965F8F07A4B4E84606433AA150688F1D5E8D0E6A702BC0BB398111AA214B2),
    .INIT_2E(256'h9A168701C24FF8424CA6A417C3AC3ADA09B7719D9010BD1C09DBCF1BBC252AA9),
    .INIT_2F(256'h048DE53113B6C268573D2BC2D4B0E3088D625D2FD94D24A86DDBB9EC7F7473C2),
    .INIT_30(256'hC84C67F2C1AEB0D696A723B9B481DF74CC1B12C12E30F62A675FC5B4014388EC),
    .INIT_31(256'h217318ECBB32DDD270D62A871F0514A1E3280C9B523DEE1036AA2723E5744123),
    .INIT_32(256'hE5546103A8AC0BF2DDCE9006FA87BF65144183E8DC3B529D4E1046CAC7CF95A4),
    .INIT_33(256'h071F25D49173980CBB329D8E90B68A87BF2554E1F368AC7B529D8E90F67AC7BF),
    .INIT_34(256'hC2CE0393051401B3B8EC9BEE7D2E30AA165BE399889DDF64084F6E9DEED0364A),
    .INIT_35(256'h816F990548E0DA7B666BC08443BA951657A99518E07ADB6E7CA763C4CDDD3A64),
    .INIT_36(256'hA50AC947EA32E0383D2C969C0743A39D9A0947413D9888828C298B8FFBEC35BA),
    .INIT_37(256'hA374CAFA96F761F5D7682623BEFBC7BBAC2DCE3187E9051FC04EF30E242F340C),
    .INIT_38(256'hA388B09B521DD28CD65667234508FD1F884C9B12BD6ED056AA675F05942143A8),
    .INIT_39(256'hA4A103E85C7BB21D4ED0968A477F85F4E1C3688C5B52FD6E5016AADB23B994A1),
    .INIT_3A(256'h3F55A491F3D81C7BF22DBE60B60A073FE5A46103E84C7BF29D4E6036FAB7BF55),
    .INIT_3B(256'h0A474FA5146173A8AC3BF2DD4E90460A87CFD5545103682C8B72DD3E10863AB7),
    .INIT_3C(256'h64324E4B0FD5F449CB986C9B329DAE705616A7A3C54801E3888C7B325DAEB036),
    .INIT_3D(256'hE2C13F99856400AA63E9BB2094933AC5B9F3891DC800AA1BDE7C57D3C4CA919A),
    .INIT_3E(256'hC32562C1282665E8475D53DE4C6F0B3C35F2598861A5E8383DEC8674879B5C85),
    .INIT_3F(256'hEB2FEC312E6D87A98D37100AFBBE1CC094385D324933B965282C9D0CD1EC87AB),
    .INIT_40(256'h7D23F48CDB52FD2E3056CA871F45080163C88C3BD2FD8E30766A5B9FB9947D43),
    .INIT_41(256'h95142173185C3B821DCED0F68A473F05A4E103A84C9BD21D4ED0AAEAE77FC548),
    .INIT_42(256'h073F15E4D10358DCFB822D7E20060AC73FE5E49173A80C0B022DCE10C60AF70F),
    .INIT_43(256'h468A07BFE5D4D183E85CBB72EDCE90B64AB74FD5E491F318DC0B02AD4EA0460A),
    .INIT_44(256'h2204C2B69F7F29D4B1F318DC8B729DCEB0F6FAC7BF2594E143E82C4B729DEE50),
    .INIT_45(256'hBDB2B13F59956850A27C690BE01C33EADA9127EEF564A0A2439EFCE7536C1231),
    .INIT_46(256'h23F47DDAD998D1AD17270ACBB61B0F5BBC6DD249FF214530F71D63F6343F5BAC),
    .INIT_47(256'h046F5B340136E19339DDF0C8CA6B56FBFFB3F4ADA27133795D1840C2B3C67487),
    .INIT_48(256'hF4BDC3480CBB2E7DAE70D64AB7A3B9348183C8ECBB121D0EB0966A671F2574E1),
    .INIT_49(256'h8F55546103582CDBF29D3EA0664AB77FE5749103180CDB821DEEB0D66AE79F55),
    .INIT_4A(256'h7A470F25D45173182CFB722DBEA086FAF74FD5249183682CDB729D3EE0C6DA37),
    .INIT_4B(256'h10464AB73F25546133182CCB725D8E20B6FA373FD5545153A89C3BC25D3E20E6),
    .INIT_4C(256'hB1DA04EAFDFF83B964618318DC8BF2DDEE50C60AC77FD5D41183E8DC3BB21D4E),
    .INIT_4D(256'hECE5D281FF195D9048ED1C29FBB8E42335D2017F551558882A6B1E8CD7339366),
    .INIT_4E(256'h9F43D46522E9587E52BFE7CA0C4984E7DB24251AD96F69CD4FA7E2C34E4CDFDB),
    .INIT_4F(256'h46A430130C6AA53137C915289C7A47FE3B4B2B40517E01E8F9194087EDD829CC),
    .INIT_50(256'hE5948143A8EC5B52BD2EB0D64A871FC574A123680CBB52BDBE50962A5B1FB974),
    .INIT_51(256'hF73FD564E143486C3BB2AD7E60F68A37BFE55461A348AC3B829D8ECCF64AB73F),
    .INIT_52(256'hC60AB74FD524B1C3182C0BC22DBEE0B60A773F55642183389CFB022D3EE0A6FA),
    .INIT_53(256'h4E60362AB74F558491B398DC8BC2DDBE60467A37EF15E4E13358DCCB226D9E20),
    .INIT_54(256'h7E11DAD0918A8BDFD554917318AC0B822D4E6046BAB74F55D4918318ACBBF25D),
    .INIT_55(256'hA3B45D92E1BF219D10872D9C396B40F4DC113E110F09D5F8A05A6B1E8CE71487),
    .INIT_56(256'h14DF4B1C51C5065791DD084052CCD994305BECA5F241EF11A24F2762C34EBB70),
    .INIT_57(256'hC3F6ACF883BCFDDA89AFF1E9C830927B7220A74F6C1DC219BF29B260A872FCA6),
    .INIT_58(256'h3F85544123688CBB92418E50362AE75FC57401A3C84C5BD29D6EF07616872365),
    .INIT_59(256'h7AF73F2524D1F3E86C7B826D3EE0460A473F555411A3A8DC3B329DAE90364A27),
    .INIT_5A(256'h60C6DA774F15645183585C4BC2AD4EE036FAB73FA5A46133685CCBF26D7E4066),
    .INIT_5B(256'h5DCEE036BA374FD5246103D89CCB822DBE60067A178FA5649173585C2B828DBE),
    .INIT_5C(256'h07E6F1B6775646A73F95249183189C0BF25DCE60B6FA47CF55541103E81C0B82),
    .INIT_5D(256'hE7E354BD92E15FD9FD7F37AD2C714BB0EBA871C2114FE91598009A2B1EDCBFEC),
    .INIT_5E(256'hD64C7F14B36AF57947F99D38470AEC264447FB2C459A01F7EE325F784A039964),
    .INIT_5F(256'hC23346DBA0BC0C8AA58697E55248B066770E1C1B7B14717AE903591A20F0D2DC),
    .INIT_60(256'h071F85348103480C1B92FD8E5016168BDF45344143680C3BB29D4E50766A875F),
    .INIT_61(256'hC68A373F1584D183A82C0B42AD3E60B67A07CF15E46173E82C3B32FD8EF0B68A),
    .INIT_62(256'hBE20C67A770F15D46103989C2B829DCEE086BAF78FD584D10358DC4B026DFE40),
    .INIT_63(256'h821D8E1006BA37CF15641133389C8B82AD3E4046BA970F952411B3D8FC4B62AD),
    .INIT_64(256'hA0172E7589C07ACA37FFD5D49183985CFBB25D7E60C6FA374FA5A4D173282C8B),
    .INIT_65(256'hCC473BEC85AAF94781B24F57DDC4A9DBAF9700413EB1CFE9D578607A4B02FC58),
    .INIT_66(256'h3B02E427146B3A45B17FA1B57760C21C86147FE34CB512C977EEDD10D0924CC6),
    .INIT_67(256'hA73D2B39BC705B9CDD1289C3D18DA068264B0EEC67D354D56A8D9F7E8268B09D),
    .INIT_68(256'h4A875F65A46163C82CA752FD8EF096EAA77FE574814318EC0BF25D2EB0962A67),
    .INIT_69(256'hA0067A473F152491F3482C8B829D7E20B6FAF73F255421A368ACBB822D8E60C6),
    .INIT_6A(256'hADBE6006E2B74F252411F3781C8BF26D4ED0C6BAB73F85243173E83C4B724DDE),
    .INIT_6B(256'h7B826DFEE0667AF78FA524D1F3189C8B82ED7EA066DAB74F15646133181CCBC2),
    .INIT_6C(256'h9420FBA2DAFE9C765A374F25E411A318DC8B82ED3E90C60A470F15E421F318AC),
    .INIT_6D(256'hD6541FBB4C450A89E72E322F77CD7CF904CD21CEC9DE514F8975D8607A6B6EAB),
    .INIT_6E(256'h12BB768CC0C4A385C2D94F75B2D0B82253166C7F037C3D6296B8B1A550D0C24C),
    .INIT_6F(256'hBFC7E24B32B4B3A30CB5BA3DF39995602F529B96CC0323A3351EB117917D0880),
    .INIT_70(256'h46AA271F65942143C830FBF29DD27076EA875F25D42103985CDB829D0E5076CA),
    .INIT_71(256'hFE9046DA178FA5E4A173D81C7B022D4E5086BA477F255491A3E8AC3B325DCE10),
    .INIT_72(256'h42AD7EA0667AB73F75541133581C7B422DBE40C63AF74F95E491F3D89C3B42ED),
    .INIT_73(256'hDC0B426D3E20863AF74FD5641133E89CFB728DFEA0C6FAF74F7584B1B318FC4B),
    .INIT_74(256'h5F38D40BF5ED628CC6FA478FF55461F3186C8B826DCE1006FAF73FD5A4910368),
    .INIT_75(256'hD32EECBF1B4CA5EA9928CE620FD78D6C0636F93DFACFA83553C935B8E03A3739),
    .INIT_76(256'hE79A031ED4903C5C5D8AD1B3E16D5F7882C3EED43F4B7C35C5D66F390DB01882),
    .INIT_77(256'h1A57309A8386400F7B189555E128096D206896A76E948BBBA30DF2E6376975F0),
    .INIT_78(256'h6036CA873FE57421C3088CBBF21D6E30964A879F65542183682C0BF29D0ED076),
    .INIT_79(256'hEDBE20867A774F55A461F3581CFB025D3EE0C67AC7BF65D491F3A8EC7BF22D4E),
    .INIT_7A(256'hCB82EDBE40467A47CFD5E45133985C4BC26DFE90C67AB74FD584D1B3185CEB62),
    .INIT_7B(256'h58FCFB422D7E4046DA373F5524517318DC0BA26D5E40667A970F758491F3989C),
    .INIT_7C(256'h41A40FACBCE2312EE046FAF74FD524910398DCCBA2DD7EA006FA37EF15D49133),
    .INIT_7D(256'h628396147FEBCCE5CA76988662EF77FD4CE4EA813D8AD3602B23C5B934EC566C),
    .INIT_7E(256'hA85CA23BC64BAFC3E4050AD1DF19723F8832930EACAF0B0CBA6541AF81AD1F98),
    .INIT_7F(256'h1EA22C1C9293B25BE07B24FD96D96FC92D38305ADB46B4B0D488ED9A9693895D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8EB0766AA7BFE554FD63182CDBD2FD0E8C864A67DF6514E133282CDBF2FD4EB0),
    .INIT_01(256'h42ED7E40665AD73F65D421B358DCBB725DBE90060A473F555411A328AC0B029D),
    .INIT_02(256'h9C4B82ADBEA086BAB74F954451EB582C8BC28D7EA0C6BA17EF758461F3D81C2B),
    .INIT_03(256'h3318FC0BA2ED9EA0C67AF78FF52491F3585C4BA20D1EA08E1A37EF55E4117358),
    .INIT_04(256'hC4EE64C88B2BBE01BE90B68AF78FA5246183685C4B42AD3E60C6BAB7CFA55411),
    .INIT_05(256'h28AA7B4E14CF4354A56546803E42CF8782F108EA39AD1AAF880B95F30F12DA42),
    .INIT_06(256'hF9E418E24CC934BF6B6C35BE49FFA67A1F38623B6EB45F6BD38A0241074192B0),
    .INIT_07(256'h10364D4FD02DF75E74BFAF286DA5A18FD9F9102C4693763B6FDBC395FA39E7E1),
    .INIT_08(256'hDD0E5076CA675F65F47DA3486C3B725DCE10B6FA377F8594A1F3682C9B32BD8E),
    .INIT_09(256'h2BF26DFE60067AB74F958451D3B82CCB72DDCE90C68AB73F55A4214368ACCBF2),
    .INIT_0A(256'hE8AC8B426D9E4046FAB76FF56451F3189C8B626DFE40661AD78FB524D1B3B89C),
    .INIT_0B(256'h9133587CCBA2ED7E40665A770FF584513318FC8BA26DFE40E65A374F75C4B133),
    .INIT_0C(256'h7D6BE6736F7C576EADBEA0C6FA474F95241133389C2B722D1E90B60AC74F55E4),
    .INIT_0D(256'h28B02AFB66E47FBB2CBA950658DEE27F78C0C58812198DF6C728CB1583A7DC98),
    .INIT_0E(256'hB9F5A0B88D8479545F5BCC99E2D940B632A8708ADB16645F24030D2299B7EEFD),
    .INIT_0F(256'h3668111DFFA8F26BFEFB87E3FC727E8D6F599934900D7306BB4BEB63BDB2797F),
    .INIT_10(256'hF29D6E30F6AA471F45A4A1A348CC3BB21D3ED0F64A077FA5849103A8EC0BB22D),
    .INIT_11(256'h3CCBA2AD7E2086FAC74F152461B318DC8B82ADFE90B68A477F2554A10328AC7B),
    .INIT_12(256'h53D89C8BC22D7EA006BA376F7584E13338FC6BC20DFE40E65A978F1564111338),
    .INIT_13(256'h2411B3581CCBC20DBE2066BA976F95A4D133B85C2BA2EDFEA0A63A174FF58451),
    .INIT_14(256'hE8FAC3710480409BA2DD3E60C63A778FD5E451F338DC0BC2AD7EE0867AB7EFD5),
    .INIT_15(256'h9D08508A3B965487C3833AB586B8FED2E0247485504209A18E77984BC55BC1D0),
    .INIT_16(256'hC70975902742EC4E1CAF7490CD85DE18115D90487A834604904BE4EDEAE91731),
    .INIT_17(256'h4D5E50B5C590B8CD53AE20732B3BC58AA93FA92934D04A3BD680077BFC0D8239),
    .INIT_18(256'h0B329D4E50768A675F0574A143282CBB329D8ED0F64A078FA524E183C80CDB52),
    .INIT_19(256'hF82CCB42ED7EE0460A473FF5245103689C7B82DDBED036FA37BF25F491A3986C),
    .INIT_1A(256'h71F3B87CAB224DBE2086FA978FD524B1F3787CCBA2ADBEA066DA178F552431D3),
    .INIT_1B(256'hD5E45133D89C2B420D9E2086DA77EFE5E4D153D87C4BA20D5EC0E6DAF76F3584),
    .INIT_1C(256'h68400A4C168384F00B026DBEA0E63AF73F15E4B133981CCB42ED7E2006FAF78F),
    .INIT_1D(256'h01B58810B273768C27B433DAE5B6188EAD62D64C05A0DE85293E37285B25F525),
    .INIT_1E(256'h461F593A1FC872A39E2CCB2FF4C595F648195D88407233F9CB4F33883D2A4957),
    .INIT_1F(256'h65CAD64FF10DCFFFB1E3D65C0044BCAA9A616755A584FCB2CCCA9B7FC4FC4DB2),
    .INIT_20(256'h2C7B027DCEF0AACA271FE594216348EC5B722D6E10F67A078F85D4E1E3284C3B),
    .INIT_21(256'h13985C4B028D3E60467A474F95E4D103682C8BB2DD3ED0368A07BF0534E18328),
    .INIT_22(256'h84B113D8DCCB42EDFEA0C6DA178F95E451B338FC6B226D9E8066DA77CFF504B1),
    .INIT_23(256'h4FD524B11338BC4B428DBEC0661AB78F7584513338FCCB428D5EA0A61A17AF75),
    .INIT_24(256'hE158A7DDA31197542C7BC20D9EE0C63A77EFD5E45133D85CCB226D5EE0C6FA37),
    .INIT_25(256'h5FC9C55038029B6EAC8FE4737ACDB6C85131F6AE94B5F4B8F3C9BE0768755325),
    .INIT_26(256'h3A1967B1A5FF481A13E6609B73ECDAF516471935F89052733934972F34458559),
    .INIT_27(256'h149DC5212B59E50C98AA830E747034E305D28D1F617DD0308DE72E0430EF889D),
    .INIT_28(256'h18EC5BF29D4E50D656E71F8534A1A3288C3B521D8E10368A977F55146183E82C),
    .INIT_29(256'h717318DC8BA22DBEE0C67AF70FF5A4E183985C0B326DCE10C6BA377F85D46143),
    .INIT_2A(256'h7564F1D3F81C4B026DFEC086DA973F4D04F113387CCB028D5E60E63AF78FF584),
    .INIT_2B(256'h77CF15E4B1D3F81CABA28D3EA006BAF78FF5E4D1D338FC6B620D9E40665A572F),
    .INIT_2C(256'hB3615F77C2A4CD3F682C4BA20DFEC0863A370F950491B3587CCBC26D7E2046FA),
    .INIT_2D(256'hB9BFF9F5A8688A6BAE5BA0A453226516773D0B764EC499A4466DD90EB78E7DF5),
    .INIT_2E(256'h0A25A9884E4DDFE89DFBA2A03FC423FAD5199F49B58898428CA63C77FB2C55EA),
    .INIT_2F(256'h8F58EA7235D7E11D10F8EA3B3EE0EF8B8C35FA811F819A60885A7B461BE0B4DC),
    .INIT_30(256'h73C8EC5BD21D6E10D66A871F6534C143C86C7B72FD4E20B6BA473F0594A14328),
    .INIT_31(256'h6411F338DCCB02DD4EE0B67AB78F15D46173D8DC8B02DDBE90B64A07FFE59461),
    .INIT_32(256'hEF95C4B113B87C2B02ED9E0086DA778F3504F1B3381CCB628D9E0026FA776F75),
    .INIT_33(256'hFA974F958451D3B8FC4B222DFE4006BA774F7564B1B3B8FCABDA8D9E00661A77),
    .INIT_34(256'h5BDD5D7758F5783D83985CFBC2EDFE0006FAF70F1524D173B81C2BC26D1E2006),
    .INIT_35(256'h8AE11FC9052850EA43398BA0646B8A45A93B572BA6A2580154761DC9D0317E1D),
    .INIT_36(256'hE3F55229C7EE0DC0F0FAF79ECC1034F36A32392FB9DD0038BD039E1C7FEBDC75),
    .INIT_37(256'h2FEB334D252DBFA9FDB0F8D65B2EF34F5C0CFA2D31BF8E2220E0A253DE7C3F83),
    .INIT_38(256'h9103C88C0B32FD3EF0AA6A27FF85B42143A8AC7BF29D4EE0060A474F6594A143),
    .INIT_39(256'hF5643153987CFB32DD3E10C65A37CFA5E41133E89C0B729DBE1006AA879F5514),
    .INIT_3A(256'h970F35043113981CCB420D6640267A77EF3544F1B3D81CEB628D5E4046BA176F),
    .INIT_3B(256'hE6BA378F95E4D1D338FC2B426D5E20863A37AF75BC7153F87CEB22351E38A65A),
    .INIT_3C(256'hF9A79E2A009769881183D8FC8BA2ED7E2086BAD7EFD50451D3582C4B02ADFEE0),
    .INIT_3D(256'hA5F2B15F495D10F032EC290BE044C395BAA50DABF78A8A0071FA48EB0F587DB2),
    .INIT_3E(256'h6B14E5FA89F841E564204E3B0623303C43257A612741ED5FE7227B6E6C8F54BC),
    .INIT_3F(256'h3C57BB1485AE8ED3A1C2506032CC4E2CF4F41CBA5AE147E1DDB8E8BDBBEE9CF7),
    .INIT_40(256'h944143E86C0B827D6ECC762A87DF05F481F3682C9B02ED6EC0F67AC79F65F4A1),
    .INIT_41(256'h6F15D4B153385C0BC2DD7E00A65A47BFA554D153582CCBD2AD3EE016AA073FE5),
    .INIT_42(256'h9A776FB5647153D87C8B22EDDEA0467A170FB504F1B3D89CCBA2EDFE40C63AB7),
    .INIT_43(256'h40661AF7EFB5C4F13358FC2B428D9EC0E65AD7AFB584F19380C4131A4D260026),
    .INIT_44(256'hDD8E4C566DAF13997491C3981C4BC28DFE40663AF73F5524D153981C8B82AD3E),
    .INIT_45(256'h54CD92A19F319D38F05D6C198BF854A3CACE8F6177578ACA8EC792DC3713544A),
    .INIT_46(256'h5F1B6CBA7A6197A12580D452E336446084E36A0596972E4D9F780A9BCE340F9B),
    .INIT_47(256'h6E8C03C3742122264C5905A85002934EEC87939B3A8AA1188E41D84831D37E1C),
    .INIT_48(256'hD5746143E8DC0BD21DD2B0168AC7FFE594E183682C0B022DBE10B64A67BF85D4),
    .INIT_49(256'h174F55C411B3D8DC4B72ED7E00C68AB77F25A41183E82C0BB2DD0EB016CA47BF),
    .INIT_4A(256'h265A17AF4D44B1D318BC2B62CDBE20265AAFEF953CD1D378FC6BA20D1EC0663A),
    .INIT_4B(256'h7EC006DA77EF3584F15378BC6B9AED5EC0869A572F35C47193B8BCEB228DDE80),
    .INIT_4C(256'h6532A6B031826B33B9E4115338BC6BC26D1E20E63A376F758431B378FCABA25D),
    .INIT_4D(256'h7B64FDB231D7B1F5E867DD5CE96B90B463191C3F1177EB3A1A961742005B4F04),
    .INIT_4E(256'h4C97836C3DCA3187F165229CB243791B4FFB3C75EAE1FFF96D40689A6B96A4FF),
    .INIT_4F(256'hAB9E1C876314A2CAE9A7E5BD1FE872CBA6046F73939A95097709AD9F8F22633E),
    .INIT_50(256'hCFE554A143E85C5BF2016ED0B6AA073F65A4D143A8AC4B725D3ED046AA679F85),
    .INIT_51(256'hE297EF3584B11368DCCB220DBE60360A371FD524E1F3D81C8B726D8EB0F60AB7),
    .INIT_52(256'h78C6DA172F354431D3B83C6BE20DDE405E9AAF6FB564B153B87CABA26DFE0026),
    .INIT_53(256'h6D2600269A172FB504711300BC6B62CD1EC0A6222FAFB544C9EB0044EB62355E),
    .INIT_54(256'h30897A0E97BE467BBF956451D3B8BCABC2ED1EA0263A970F75C43153587C6B02),
    .INIT_55(256'hFFB34411C2C9E749DD1F378D1CC90BB08B30F39CAF2D9BBF5CF4CE9F4A90B74F),
    .INIT_56(256'hA60CFF140C85D22107392F6CC0BDF3612B7F0374BD6AB97F2EC250301AC3E654),
    .INIT_57(256'hED1CAE0C5BB37C55DA516F81DD6898B2C31EF42F6BECB5A50EB3C95DC707AA8B),
    .INIT_58(256'h47BF65D49173A88CBB6EFD4E6036CAC73FF5A46123982C2BA2EDA6E0764A877F),
    .INIT_59(256'hDE9A976F758451F3E85CCB22DDBEE046FA37BFF524E103A82C4B721DCEE0C67A),
    .INIT_5A(256'h5E0066E257AF7584F1B3B844AB62EDBEA0265AF70F9584B1EB583C2BC2EDDEF8),
    .INIT_5B(256'h424D9E40669A170F35C4F1D378846B1ACDDE80E6C22FD7CDBCF1EBF884D3DA4D),
    .INIT_5C(256'hF7E0152D39E89A16F7EFD564D1B3D8FCAB628D9E40863AF74FF5E471D3B8BC8B),
    .INIT_5D(256'hAC8B2318D11AD9BF816D1F775D5C695B8F178A83FCEFF10B1F22247EEF720C8B),
    .INIT_5E(256'h335E4CF80BCC7D32E1D7E5D11F0F9D84F99C879BDC95BA3968F1C5780C8A9336),
    .INIT_5F(256'h58C29CB668900BAB7A8AA13FC5F9B860D24C611F881B1CCA05BDFF86CD48A86A),
    .INIT_60(256'h7AC77F85549103A84C5BB2AD4ED0C6FA373FD5546103986C8B7275CE5036CAC7),
    .INIT_61(256'h80667A176FF5A4B15398FCAB826DBE20269A973F15641153987C0BB2DDBE90C6),
    .INIT_62(256'hED1E00265A772F95C431D3F87C6B424DBEF86662174FF564F1B3E8FC6B1A8D1E),
    .INIT_63(256'h2BE24DA60066E217AFCD3CF113003C139ACD26809E629757EDBC096B787C1362),
    .INIT_64(256'h5B3B4B929AB604EAFAF7EFF584B1B3B89CABE2CD2640669A772F35C4519378FC),
    .INIT_65(256'h36E027139855F2C1670ED2FF375D2C3924530DBAB31C6F0DDBAF3CF42E7FBE00),
    .INIT_66(256'h22BB1E24D04B5405A25DF55392A0A795536E749F9B636AEA29770145A4A862C3),
    .INIT_67(256'hF088555BBEB88F4BABFAD21127818D50387AE3B61C178334DDA216E8E6EDF008),
    .INIT_68(256'hB68A777FE554E183280CBB329D6E90F6FA47CFE59411B358FC8BC25D8E60F6FA),
    .INIT_69(256'hDEA0865A376F752451D3B8FCABC26D3E60863AB7BF55249183189CDB829D7E60),
    .INIT_6A(256'h9A8D260026E2AF6F7504896BB8FC6BE28DFE40E69A97EFF5BC3113005CAB9A8D),
    .INIT_6B(256'h7CEB62ED9E80A6DAD72FB544891320841362752678261AEF574D44499380C413),
    .INIT_6C(256'hDCE04C47EAA5624C06DAF7AF35443113B87CAB22ED1E40265A172FCDC43113D8),
    .INIT_6D(256'hE35EB4970F0C9D1259488E420FB7DD8C467849EDE6CF48EBAB0D21F4AC36B792),
    .INIT_6E(256'h98BA2B399B3FA38CE5FEA3F58E02E0C70A9BE674E72B5C45BAF64869C5B09872),
    .INIT_6F(256'hB2FFC79D2BE284F03463D5DA3137EE32F8E8FD9CB61BD0B3D4219DE6A7418270),
    .INIT_70(256'hE076CAB7FFA554A12308AC0B821D3E9036BA775F251491F3382C8B821DCE50B6),
    .INIT_71(256'hCDDEA086DA578F55245193387CCBF25D3EE0867A47CF15046133D8AC8B72AD7E),
    .INIT_72(256'h6B22355EC05EE2D76FB5C4C9D3B8FCEB628D6600265A172FF5445193007C13E2),
    .INIT_73(256'h78BCAB224D5E38A6A217570DBCC94BB83C13DAB506787E628FF74DBC0993C0C4),
    .INIT_74(256'h723CE08CBCCAF12EA066DA97EF3584515378FCCB226DDEA0261AD76FB5C471D3),
    .INIT_75(256'h725B560CAB9BCC5DB26948BEF23F37FD73DA32998D66DFF875ABBD192C94CE6F),
    .INIT_76(256'hB0A0B2A39E84DF2B2C6D88AB872E6D77B0CAD356B44FCB7CD505769FB96D6090),
    .INIT_77(256'hEE52CF98C2672E4BFF74F385222127CECDF8E0D5E4C63CDF93D88A7531236925),
    .INIT_78(256'h1EA0968A07CF65D4C1A398EC0BB2DDCEB0C63AB70F65D4B15358AC0BF2DD4E90),
    .INIT_79(256'h62ED5E005EDA17AF35E45173009C2BC2EDCE20B67A47CFA5E4B173E8DC7BF25D),
    .INIT_7A(256'h7C2BE2CD5E78661A7797B5BC8953D81C6B624D1E4086A217AFB5C49133387C6B),
    .INIT_7B(256'hD3387C6BC28DDE00A61A572F8D443193783C931AF586787E622FD7B544C9EB78),
    .INIT_7C(256'h1FAAD4E82BC33EC19E40063A172F9504B1D3D87CABC20DDEC0865AD7EF750431),
    .INIT_7D(256'hA81A831E9CBFBB94453A16284E02CF873D5F60C2A96DDA5F3835EB7D216C141E),
    .INIT_7E(256'h7D5070621B79A43753D8D75E4988EEA25F68CA9BE63BE03423951A51738E7210),
    .INIT_7F(256'h07215D40709A4B7E8B77DBA46ACA36C799F9B00862BBBEE0AB8F5C15124917E9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:1],DOUTA}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [18:0]addra;

  wire [18:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "19" *) (* C_ADDRB_WIDTH = "19" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "16" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.149749 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "ROM.mem" *) 
(* C_INIT_FILE_NAME = "ROM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "524288" *) (* C_READ_DEPTH_B = "524288" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "1" *) (* C_READ_WIDTH_B = "1" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "524288" *) 
(* C_WRITE_DEPTH_B = "524288" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "1" *) (* C_WRITE_WIDTH_B = "1" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [18:0]addra;
  input [0:0]dina;
  output [0:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [18:0]addrb;
  input [0:0]dinb;
  output [0:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [18:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [0:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [18:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [18:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[18] = \<const0> ;
  assign rdaddrecc[17] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[18] = \<const0> ;
  assign s_axi_rdaddrecc[17] = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [18:0]addra;

  wire [18:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

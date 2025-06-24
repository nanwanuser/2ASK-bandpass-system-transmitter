// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 12:10:24 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_sim_netlist.v
// Design      : dds
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [26:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [26:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [26:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "27" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "101000111101011100001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[26:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[26:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[26:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "27" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "8" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "32" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "101000111101011100001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [7:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [31:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [26:0]debug_axi_pinc_in;
  output [26:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [26:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire [26:0]\^m_axis_phase_tdata ;
  wire m_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [26:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [26:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [26:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [30:26]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_data_tvalid = m_axis_phase_tvalid;
  assign m_axis_phase_tdata[31] = \^m_axis_phase_tdata [26];
  assign m_axis_phase_tdata[30] = \^m_axis_phase_tdata [26];
  assign m_axis_phase_tdata[29] = \^m_axis_phase_tdata [26];
  assign m_axis_phase_tdata[28] = \^m_axis_phase_tdata [26];
  assign m_axis_phase_tdata[27] = \^m_axis_phase_tdata [26];
  assign m_axis_phase_tdata[26:0] = \^m_axis_phase_tdata [26:0];
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "27" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "101000111101011100001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[26:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[26:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[26:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_phase_tvalid),
        .m_axis_phase_tdata({\^m_axis_phase_tdata [26],NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[30:26],\^m_axis_phase_tdata [25:0]}),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gl8oTb3yK39LjDQS0B4PYP+vte8cGiBpEmJ9JLxCkI04rBQJe5sCt4dvUGvg1Ga0GoPkN0BTvh6i
v1YMWuZiJg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LV5tnIhV6fXU4gAQOLXCxdxya9doivJt+Y+5yV24zJ1I56Mu4gOTYyKzdDBlwz49as5fPNOvHvtM
FEjflUU6R2Yh76tXBr2An7Tc7qdcv/WUX57JWpXSPQfxdtsoJzfNEA5lf9cFyHWa+eE27NH4fCIB
fHvZTqNYCqZpO8hMEWo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CtefK+dE5tJYyIkOlXrI1GU3HbXkaFgSREpPJj1NZdNualyVqOHiPJK5xJ71xxO6zkXYtBYfzkxn
9Eqf7SpqFizTSC3YZVNAp0ix3wloJ2xu9/08YGAzwYtrD72s/REOd9GdOS5BW5KfXcLDWxJnWFK3
mjj+cPJfHeoGuNLu6gH6HD/lNP6geaOelYYVD/TVk4P/j6qWfCikFKKuomVo3jbRD7F7QdkJDCeh
d5Xc8VxEXSaKIjFRuMTWZtjAQjFH5UpSMVhxV/fXhvzSM6V5P4QZA+memX692B8GYsTFU76iMlss
d7ocDlaRWbY0BTXFb2HZNfGcl+sqYKs8PYn/UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UTuJ2/FiXz7w8k47LqoJjpB8chaAWEBjYpgn4jj1PBd2l6Nj6avA0We0iYNi5AJkwcUofxaNsFtE
+sVWsmGPk/0vN5Q90wbwbfGu18ni9SqWiSNRSUzzfB9h0bol599BuMG2pbcdYlanUIn9oPi4ZKeJ
2M667aoQ2BTcU/o1U8nn5wuoiboeNIqzcJS0jj+j6J5UYz5aHgwMcFlCGUwSQuAp+2VIulW4T1IV
NW+4iXCF7wife+1/XS6RYcYu+n4km8U2A8z/nLIuNXSO1T2HaR6rR3YxTorPEFUQnfrre1FxRLzT
6pi4dXPFPyG1bXISdn2AleLyNN3VFQjTEgHwsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMUkchj5p9XvgJ9tR5grSuP9aw5xa30l1YgNWO9WvtYYjYtQnsPBns5ryDL+PXPqQYQ3i0NvbEVZ
mN4H44H269BdOgH+vRRI3SR79goz8NqADp1QSv06wD02bUASlMq9aM6Phdxmqoalzn7A7dWDa+nU
2QokmpYQQylaKE1ZbXrz6loBY1IeoaMxbsQcvxJcI2aG1HO9NfyR9d5i3K9UmO1t9jFA+8k+GsKj
kNnLxX6I0J9fN8wKc7D007S9DgoQs6+WuCL6CudeG25OH6Gy/uLkY2Udzdpodegx89FgRLo92dDh
+0eWKh3H5TN2vtQ9mtD1iH6zm1l1IqnYy2G06A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IjA88m1asiYMyCqMLSP/pVhA6mm9v8t5bFtEAMOvlQO8WTy5Vpca8kFPPuhuf6voqy+zwcLXRU9a
5UwLvCxgOEOo68GA3l4AR9WaPmcxPTPUwChO8zkHIDrS0eoDFMY1OTr1Lv8pbJknphtPExopREwk
KuHbtq4Mg3zw+se7q5E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZ0uDa4zhbQfoZoNpOAKrHOsOrOlSYjg5j1zWlifZ7mksZmmo1GUwbu4BrFKsE9nPAJUOa85AaS6
3sPqXGDLUL68TzDI06mN0/idhoIRBSJNinUfJpw4Ro9h/zNx1E//RfaHklSArW0rHrP6JnabQq/E
ywpKofyKtfWBjZrTJqD+xFD3BsXO9W35e9lAY/pTqzN6C7dC2o6xELYMw7a37e+7TEDqEPb1kk1i
VC/DX7v1veomIkT4wlTej+pa1pSQH6uN/huOhLuz4yEz/zZdnoDInKQyuWaZgdQV+2dfYBgbf+po
404pK0Ii/DBBTh6IKooZGzVmsyG/5MKNX6F9vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KulWRFT7BgLmhBd+UrXhUHVpKd4fNPyGnfz6/BzmZ4LdPCbDzBznyyK3t4GJlGSEhTCJEauNfSdg
SQzxtI2NMgrkh2RU8BBZ8kd29rcAigeSDTphByfycDxOptWGKwGNAQrWnEi8ToscAhiabkHgkZV3
EVi04KXAXOxRJIssYMV3ePlfl7jKtXCFZTa+FqYU20KOdU/OWk0VcIfBJb9DVH7MpubHrq65l8DK
s0mEXDUfS9pjwdl3+cOV3ALs5o5zQwoF0rxb8jCv08dy36Ht7K7jw5pWPeo01TDiZIId4I+EqdcR
4riRAuzm091kn/vF4I+dR3F2Gfy3pEp1I1MsNQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xx6qMPmmSuQDKDH5o9Cl3vI5Pm7kbUMQhIO8OiYQOtHE7PNrUL0xPTnOCAf49qIh1LeMu/b9ml07
/kf1o7hfadXur0GWivvaHRSxF5L5Z3LJwEA57yA3YmpvwOXczPU36mhDy1agxMVCP7KrN8QnSDwm
ai2VFryhEuRws6pDO6GMRMti8t/EhXvo2DhddSIzKa5OmP2VaxW3DMd+rUkdkhFiWBE+6c5SgLjJ
iEbFtS5UDOpuXj11wlcx4We2wIv6pqFx+GdAdy/rIJvoXe0VofZvXPotjWgMHO21Nlu6MlrD6znr
VFmd1pK+z0A19WR6hjlnBVq7U3y7xHZ/xj+Hwg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44592)
`pragma protect data_block
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
V4Ae6TJyiPtdZkP/o0w4RNnc
`pragma protect end_protected
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

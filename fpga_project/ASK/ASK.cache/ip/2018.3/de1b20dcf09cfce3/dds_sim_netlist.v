// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jun 26 01:37:53 2025
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
  (* C_PHASE_INCREMENT_VALUE = "101001111100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "101001111100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "101001111100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
cUxrgMSn64Oxr+0TZsl6lQ42gbKztUKzkAFmocZ6MInUDYJovtaRu3X1BiMXptAlOdvNj/LeKBf1
KZy37Q5f9Cx7fLE6cfcKbAzQd43EQnkbDlYE0Ome+SN1MLy0BlZ5T02EDIbGKojbyYQ9pnrmiRiI
ae0U/ki9EhR9LBeUXZ8+5Ar5KzH+alcEXify3RnHU1XlLrPfFKMqFJonHeDJbf4AOWtUN9N1zCmY
ZYZtRcQS0e0f8ui56x3ANzOKwaBGPNj0M8gVsFS5t5BrptwD5McQjcqILCjMrSk1sLYcOXVuu8iG
4+QROYmX51lvSXRlRuZziRsY4ZBQHRcQ898AVw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yd4jL86iICqVYtA3lJGJE0rtEcowh+s8wBS11pjrxAPuPu2NZCbjadCRDp01fr92vDjzgb9ovYNy
NYtXiGP0O/Qfoc/kgDBHZ8t1QSAw5RPCZ3mfZAb+mHtNK6uyW2voeiOMl9fDunwUnHjSaTE1LIHm
oQX47j/Frw3aEBf+auSBEqjM9y7JxBoUcoPZTedruVmR0ZRout3qjxG68TOVhWxWVCnm5sTqtEay
xupTGakfYjRMjz01QXwKAxBi9SFSga8Mm0iYZ1StoIjrOV/5kXa3uV2X6Jvr439JAVWtx+WClNfj
CRxwXilDlPlS+ve09EazJ2UOwFArqtXrHVNw/w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43984)
`pragma protect data_block
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
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

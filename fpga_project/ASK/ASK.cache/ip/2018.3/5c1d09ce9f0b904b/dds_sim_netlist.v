// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 25 19:49:09 2025
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
  (* C_PHASE_INCREMENT_VALUE = "10101111010011110000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "10101111010011110000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "10101111010011110000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
b5d7m75SgO028RzuoqUIep+YAI4ib+YmMSk0ZJaWNEajmCdtahvz2yv0B6apFXvg6oh91NvspLmX
vLmPk8nLcrSZRpBf5lwGBcm5BtbsE+bQXTr9PpKy8p0w1a/TggiBOxHa+s+il3pK8cnR36z73hj8
y8kLMKOypA5zr9GM3GfmMSU6MOrrXLDEVh1I1/HmIDStBffnI9pUbDIzyXR9nuLYFqLLTPXTLam5
bR6YHXlFY7YsOPxLxiMdhO5SI86dDj/TRiAV1IK9T9i1gc6/hFlvhxfZONLUYFHe4Fod55cts1Iq
7Qt6ojMla6wAzAEv13CwNFI1allYUGx9LqlKAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hGnlxqdG/8und7azi46P+yolNqwIvUB3e5PhoDs1FPKDQnXmWbeWzh4lFAHNRjQklHCpwxQoQ/yn
rfkASHNo9SP1ucGX9Z57ZmWem9nYRPG8KfWh5mA1KAga3C0gWkSN/uu6Ez2bw4gWjwG6EkUWJPo8
dNxEyFI/1qQHOWowZKQLbBlbb2YscwuebEQ8St+y01iPKxoMm8e0GpBeX8qL8OyffhW00VQFhiwc
Cn/AdPTs1JcwiQ+kpzGLWw0TcY1KhqwE51LoOUF1saNYZHICZYMUUADxmLsJZebBUImq0Od9LcB0
eMjz8mPWwzWO+1WwRgVr9VscI+sI1Ed1VDTlDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44704)
`pragma protect data_block
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
qNIiv1IIzR+PUg6DeHCkxA==
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

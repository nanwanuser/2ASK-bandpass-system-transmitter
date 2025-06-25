// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 25 19:49:10 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Desktop/2ASK_FPGA/2ASK-bandpass-system-transmitter/fpga_project/ASK/ASK.srcs/sources_1/ip/dds/dds_sim_netlist.v
// Design      : dds
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module dds
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
  dds_dds_compiler_v6_0_17 U0
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
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_17" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_dds_compiler_v6_0_17
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
  dds_dds_compiler_v6_0_17_viv i_synth
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
UfbckvQULMhSgBiX23aZxmMGx7yEfeTgTenualOkKOXwtGev5SLjWvqeXojRao8J3Cf2gE+jihhJ
H8TsZIMBti5egRHb17drQTVmpaHoDiYQnEDsEKyVCVvr/isxi6pNVnnZI1BcrPUDez82rl+mHPwK
QBZYIE03yqFWpawYM2XiYtXWZnA28ElzegkueMoDE6ws+ObxTbYSS7QiDZ4Qyx7vt5V2pxYtAH0E
FEiadvVzJZNsuVBw8ALktxzqzWMbDawWF3tMw0nTMda/8nsgdTJYAremNpnipEEVmfSxdN6bBp4s
u1IR+c1lOO72JSY2Uoqu5LQgL8pJGmsJT/+wJA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4Q9TUQV5J5vzthja7vi6bLKhcGOJ7D7/6DUKc5ZmrfLs9UTy933Da96zDfdG0dzxZCBOzwqNMYYq
sf/8dThdiDRNqDs1A1nMaNGouORPJbB1hDuXmcKPNBjYhyrvrXuv3RbKLLzZdyH/2HyKiWn9YdMQ
ho0QfJrd0wMOobjWsx7V1rczXofPE1bkF/tlspQj4Pj46QiqD1+U0loTFCl4t9+f8O1fxb0RMYtk
qIN4Om2yAEgm9XmDASL0LC+6NmlCboj/ZpTP+i4smEjnDc3WzrRoBw/sOQxo6p1UrZchaI8/yw3L
JxuscfNtie9sobv6HWSWa54piI9nEHuWEbb95w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44192)
`pragma protect data_block
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
c0RnK2Z/YqJDKFyPXv1hi98=
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

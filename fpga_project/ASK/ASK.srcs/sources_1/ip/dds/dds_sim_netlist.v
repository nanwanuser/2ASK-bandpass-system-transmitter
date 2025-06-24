// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 12:10:25 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/2ASK_FPGA/2ASK-bandpass-system-transmitter/fpga_project/ASK/ASK.srcs/sources_1/ip/dds/dds_sim_netlist.v
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "101000111101011100001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
hUH3eaLiep0IkV3TYQL9rerL20VRMYuQLxG7xqb0D2p3x98C7J8lHPl+NMylw8jfNb7e8QPtAnoN
ONcdrcR6ZhTDQZdR9Hq0S/lyssvakAn1zBhsIQGwNoj7w9Z7yvzHiav2XCpeaClZXREeWPMxaZF4
bmZzOVX1ZIGGGckYkKSy9yp3/cwEZMZuakVKohMt9vxDCey0ygdTSDsQWi95aXzVUPGKYbtFYMWz
4UJZtRXA6OtySDTPJxO9slzGTmvXf4TRzogub4bBSC3QsONCglmaW7JsotHKVAI/raplvrTiGHS4
aLT7nxEA2Z+IID9dK1PycxfLZRLbqmHdUqLCPQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lt0CJf8/z+ftaBmg3Y1u/uGJWzEY4nbiykitUfvs4k3y3mkSKg8IcHZfwm+h+h7QV5CXPeRewICj
aD+foqRKL+1uZD3NJCG1GKViPNBTVuBokaFGmFvW77a9qBTmBe3VEIbltEUrFcWek5/6oWln7ZwB
HOm5Veb8yr1L4JlHnb9M8zCz6h0XpqqUWAEs+ofF1rjyimQwJbPMNnIMn5jQfMlgY3jGq8PRwnSY
ZPjqoXIy3rAa02lK86qxusQ/E7VAFQaByOq3RCQdxHgmMbWQh/VVUq6l+ENNNUmcPGL3ZulPFThU
3iD1R5LAuY6AjsUTto2/NDh1z+U9PTT9fTxiqQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44096)
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

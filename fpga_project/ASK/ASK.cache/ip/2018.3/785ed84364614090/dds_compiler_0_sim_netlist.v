// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 11:51:21 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [15:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]m_axis_phase_tdata;
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
  wire [15:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "16" *) 
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
  (* C_M_PHASE_TDATA_WIDTH = "16" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1010001111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[15:0]),
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

(* C_ACCUMULATOR_WIDTH = "16" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "8" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "16" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1010001111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  output [15:0]m_axis_phase_tdata;
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
  output [15:0]debug_axi_pinc_in;
  output [15:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [15:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire [15:0]m_axis_phase_tdata;
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
  wire [15:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
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
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "16" *) 
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
  (* C_M_PHASE_TDATA_WIDTH = "16" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1010001111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[15:0]),
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
        .m_axis_phase_tdata(m_axis_phase_tdata),
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
pzybEieQq0VPU/wWpkGG9AGHZQ9kOWjxyEbUb12Jgp3u83j3bbQC6wWevkq8KIKD74LCvB6QGAZd
E3R9QrifLKLWN3jmBcsx3AatQy+CCoOJwAKk5F9QO9vcup3Noz77JVxlLXFcSDYJmSEocNbHf/Pi
uO6IX8mNnDVUCSe/VcJY7lcEpZwPqrG8ga04G663ARtDqv8hwxpOI1pC7yYlIxp8dKyGQt+M39JA
PKU3Aamb1ohpbOyPPUjEvLC+cD1ay4s3fePM98U4pXDWtYuc3gbU7FPFBA0R22V6E58CKh0PUozG
YV32ezjCvJL2lEOmu9IzHAg4dkD4pdUsIh1VZg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZUetyPjZeQoN2EAtVp4DQiF6dNJs08XC42vnbtAX3n1NI72dlYjWA4bZKuZwS2wgfjIcLw+Rtvo
xjXkTfKtIYZE6hgp0/RD1XPPGCG2ng0VnIyqVwNyGN6mlAG+PTNZUoNG9Zs9RaiM3j/Pu3SqGCir
i0pOOfcFl/QurxudZ0Gbi5T4GdDijugTsFruon+ppu6745MooLHyhSAc/Ep46NZF7Ht65yHnPJge
vCnOCTPJL8iXDmVAOLB2DeXFNBt83PRFHMz9efyD6oDWQoo+q5uUCWKX/7G8UtSz54CZfBQfBxq3
qEa7d/T0s3CQJCATiHFRvdiPEsnUQmQoWTT3Ag==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33888)
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

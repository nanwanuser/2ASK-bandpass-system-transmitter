// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 12:05:14 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Carrier_sim_netlist.v
// Design      : Carrier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Carrier,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_PHASE_INCREMENT_VALUE = "1101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
kJX7XyTvMQEdUn3jH3PowoqsGFvAnFb2LayOTtBoQgJscK35UYDLQmMvWV5Bnjoc7w9l/1ViNfLw
A1rFy062eiZcztuL/6jR+iJBB686h9wLmNndE3RR8AZN+lHfZkM9GuN59XvNSiICZ2f1v3c1GrOy
pOtJdDJUij7fDpAavPtgcWM3/Epw70VR7uJBE86Pqy1rs5YUo4WQJuLmXKqBHuWvif88g9wee0AN
FoDWvNuVFQ7I50+udx7sYHucMt9UsuX6/s31nIyD7Ab+HfySXEzGziK9sjFFqK6NL+N0Rqza5NiF
bImJjp4XMQGZFobbaBPGt64te6xX3BxX4wDctQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2spkIvC2BOFdIPRvby3oLY+3g0QpJueQCod+fjJvNrkujPpVnr5O9REJgs4V9P7i5l3XTCXFVTzC
J95Qso/sEeEsEWgBWLcoAo4kYShfNwMLvzT0ZPmn56lyFWZLgLfjzj2jDlz+my8nPgILZ0Y5DS49
ghkSJIqmTFQAOvClY6u+DCImtOXbPxErDXR74mgjGYE49KjwCp9IMajdISHqVaz4bFI2rVQFkRAT
lGGTMO4YfuVHWWWgq3V07mmyxcLtAOZNlenelke3d5pcsJFEGGZieR+usYieVeIf2jNdfnBLPpWp
9y64ONK+SKROVzhH6kP2gtAGB+fnBh1tYJlskA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33264)
`pragma protect data_block
Tg+XoG/vgeA7iVItTl2Tw2cO8T1HPbo0PxlaI72fIZ1Yb4AmjjdNGj4ELIAhk+gNqSetP+GTs1BN
9y/2siY1r3SPJPdye/r15tbLmFGqpDARVtmO4/38t+pCOik2DGRxqenrZ8TqJeCOXueQL9J+LGVH
wM2wYuKG8q2C6uchQLSOyaYMFJvS3E+Qxb/0MyXpq64xOYeZUdqOoAU4mPxDE59y5bW89fLUClha
Pkp9RlUiZyqhKCylpIbSe0iiBeFEr00RRf4XQ9WREb2+bS4usUsLSGx6ZskXJwXYLNBuWEwLaGew
zfTnoicOTsOPs0XXPR5YTg/X/T1YtuJVnVSPWZa2rI0zKSqBh95sz9Sy02Z4fI3sgFacPC5bWDZr
/5H486jXy6Yf/oDWnB/hcdpVH9CDKV1I6g0iKn4wJmJLVNqyGvS1Q8rycp0U5RP240xCUr5cI70J
QMMZ7rfiSadqnJlVutzSAxWgGYBVw2Ct4hbw86VM9tvzoEduwSu+GfLN78gBI2nIAiJgiQl/KKSM
TBtbKSLb+RHV7XR2uGTM5D6AdKNGJu0WQReZz2LdH1olWpizhg4yUEqwhF8f4gIXnGusxQIwsXV5
PSxVKablyYcddrXKAIJan4kJ8435T1lHTdDljwr2JB4HftIzWGYvRVlr+VgDsp9VyD4kKF713gny
Ny9IlcHG+QH8l5AiA1EqlmkpKFbutoLPgI1hlOPvppKLwSfWqOUTeMkFPDC+njmuhOIWq0nN1cZf
CTHRcPXjNP1IeyUFQ3i+tS4gky+fBmuVKS7aJKEx6WMC3A9nafoitvxaFElW3MQfri/0f9wu8Hxb
gWcMa4QbthBjhBEx3kIapPDaiht0rj8hLlxLzhtAm/noRQquhmD8D59q5k6pIlNtB4IWUyLFV6H+
xNaZOCCgXhAuVReWcGpopl/AnSdJN6VnZY7fXtmeAFkLQL5HO+dqY0E+RCBz0vHZGhFTXcNKyJQx
u45TlZeJDTwmkEXQQvTjgCdwFQdWOm3KGY4ugWbY4OJ4v6Bc10NpE7kXn+3zWMbzPUKprDoGQ9DF
sUETt2I8zLlIi6ZyfcMdi0N0NZBCuTxmKAiokIup6k/CV0WD4P7vx0uB/EYVaEF5WTBLcYysJXnk
ac06aiSIZdLXQ/8jlN7/FlSV/m2K1za8lzc5546FJED84S1K0w9WisvXyKkKRvFaCoxwOY7+Hz2K
RTeupzt2/AOw5VKJjFbj+TvD/ogua1/L8f47++SISNj7z+kM/f0YNrwM+u29nOGoca20wZ0af3fF
4gf0nybmrhm9y8Povj1Ts8sWEm2MItpI5v8HFfOePT/vcWoZuYahhzVraEfpx36id1j9mwhMKhDQ
nkii8nXTEsPSjZbsw456dKkQMhGEWeP6fjJeGfXoYfDHOAyhLxjhUIa5zrjxYvbODvdBNAVowfV2
vsWRKlizLudMqVvGA4zVsU1Sw4c/nK2JlMwW2G4xR9W7MEtODuB1/KwXTGZR+Pj+l7oNIhyFFiIn
BVdmYeE1LbEpX4e4DrHPkPmFO6UcqKUFOeVAROVzEoqs1mnQ1enVKi7WGZwZwrf/LsxtTtZha92w
+4A9xoGyhTUJxrUmXjzlm6IzOisbIsOINfRsPzzKKTwMWa2m38p9NotHvlMdXMf/RwixyWbD7RuB
FNc9zLzuTPdHYkzXIuD5TelfpcP3YIx2FBk5ejHAX53eFyZWpTWHLp3I1zg9jihUIzQ0V4wxm1aa
9IxN0NnFLnPKguG8/Mi6jhE8R9iLqTckTIMMl3TwESOEkqGRCHHEtgEs8dtFrT02cLulg74SrUji
yjeG//TsvJREZkmex+Ru+jdFpyow1LTYuN/NKRQMfxNMX2V2PTrT4ZNZyKkHWvrEb8Kh94df7wGb
y6boLSVIOkUWe+910LUhspDYQzpMjjVZi1iCE+faHgdx9MEo+vkkuAyn+OwVH1utg4Q4t5Gsjq0Y
ascAFACO1iJoTwwRdlURuooYuFdPthzQuOrSW+XNhLl2nvGhb+Xi9F5BB6iqcLlGNcAISiSRpqFS
Oft6TJBQXmaAKmi2qKwPetkimHqfHNBbntJX20wgjMku4pYUiGcry+2cP68p1XXtP9AdDg4HFfLr
JVsN2HBkYRJ5AexY8MUmWRfkKlyhl5xjnsc8VNhHsnzU9yUDzrXN282VfQ/Vlh4+rFsW8lW80adF
ievyC/3rVeciCYkQZZDS8OxDYpCO7FQVQgssA4wTVLv6yyb3/uuSSOgmXE4F4IFOevA/EoGhKeyA
d6eFbM6Y64vn97poGu1Vd2OKY4vwHfvqtT3iMB29AUOFlhPRgtNgOU/mRPrwsjaFCgzMVTs6qWEv
LC7UDdrSc2srtMqYGvO6G7zAkBp0x7yFITtGUghzg5PvAvlCCtxr5/cVuPREpZMS+uE3khgm+hMe
ZrAhcQSAzbCHrcj4SrLASJV5ZOQ+O52tGqz/dpRSr79gQOIBSsZ8XOaRfgUEV/wJ6wLDR5VhULzm
MHCquehIaQsRDhO2s/84M3H0ktJek1jsLthg5GkrueLhQRyKTXC2ggZKUGtJdzy0Xzq/gd9hxK3a
96h92sn8Ads45bJ031lJkUNcfKELg8hHJ2MAYCct0gwxXMwtPKkg++7FlEj7OUzhfEBcr5Hl7WY9
caXSeMi095+61H0HVQqqp1A0gs0oLfn2ggN1ZZ2Td2sGGgyGT3jKa55KJbAHguN/qu7kgB3NHfpL
dhLL+pesiuF09n6+PTt43TYI0F0Tl6wWd+r083uuPAUXl0Ooi1mOwigY0NIO9KYrzU58YzMMbywk
i3byM9xO9yVUlxhAVUxAA3yM3TAYIJH1zxS60n1o5qwK+UUJyUc6Q/nikM6HwIljhNhFYhODSJZA
PmfEOPPmdIApbI00aflthp2Ucvhs4JNjau8zPz3Xoz/5a9uWp2z2t1h672qb47p5ZyxMD6JGCo93
6yZHvJiQM2En/zyNwIV+7kUmGj9h++qWGybN/smEFHOnVL+w7Pon+Fpvs+m9yAa0Zm2oesghO1cp
FYCl92xtEG5iG0stSCJ1QGkel6McU1nZuD3X+EuUExo8LWmZACtj2yGg6etPsG63pVe3IUKIqICA
YI9k1t7+7TG8iI+jqJ45rQh6HYVab5iwrnF7LCQ9gMgRsjdV8lVDl21KTvFW149HCrzLfyiI9q1h
Pc4cnz2uHyF8EdM9wF9pBX3m2zP8rCqOh5duDARgYHZp5evdkuig4r80K0socl3Y26qhF4a/WSvK
kLX0An2x51QNxOZufkn/rjCo8W16OaDi/KTe5MeXsW/+mcxf3d3xFyu2ZPqPRpROvLXk3GjWl4ow
ZQhAwX1kGBIQ2/UIqVmBD69x5onIo3HWiQ/nh2vc7HoVpJKUEEaMOOjVL8S1j831heLOgl7pB4jD
LmTaY59jrQnvEOn+tzzfhLB7iSeT06kxTte+bglLF8ki9j9f0uHKhLMNryt0vj9gnCOyhlX5xcy9
BbhvnpkeRHjtyx+Y0Zukr7qof5v8FCle1sj59e+PFiohT65A7Aw3UWCy8Od6jgxPWxS8rE6ta5V/
7mZk5qaI1dSO0+p9j2JWy+EIecPtxrjpazcaYXdV9pXFW/SofBonv++t0SrELEiTUfwcQijF3j5G
AqyN+WofHZmFCETcA98us3YNhx/0zjdvswckiWYGWsBBLZ3G3oymgzkSNnguc6b/3QrLslKR4HDf
ltirBYK6dS8yXGFBJTJL6lmGcRShiYjI+bbMAGm43z7qltZiVrGAE7YW3TlUsWLEWrLasoQRjFXX
L0ytCA3IAsFAy7nYJ9ZEXAiLav/iYoxwv9P6aiVII1LOobfwm2vGenL8jahdxohoaVno+YaBU2Ot
2mkOb/12pKLf2STJ4kRpDeYkRJXpqtESWElnWQm4Lro0BgH+FpVTERW49ezRs4CPXEo3ssOk9XC7
+UrnwrxVnr8uu2kci+ikMwSO3WlKbluBm8rMyJ16HJymfLPgTf5LviImwLezruxanm4eKqeZkptA
BOUy3HtFs4XHrLjCUJs/PNFhP5x7+Kag3diuyBPuS5j2fXLKtNpCBvfwW2mmQXn1c/trQZOU6naA
K+1w7wCbJh9LzkSx74KwKtdjm7uEgGtz8DzoUmu7KUSZfe7uIhGHO/MVk7PSkGP6U4KqVIWJLg8b
f8JJztILDSpHTNW0rI7wC+On5EC8WAow9BoZ4ZqErVcrKaBGguiUWsN7EISi4K1UOwbRkxAfVE/C
086TcSVNVhNj2S1yFWmouiyJeR1szeBt5unLXpRsr1ZYXQmsSZ+L//8cprJNVkPKU3M4hjlyoWSI
b1yZxQZeZ83fBrMkZQwyZFuEKg/9CzYShd5t43ZfY3D4Cd+gMNJTiwUGFCFK0sIwf73QoCY8LNQi
Wj+O1RHimhePpR0+z5+K2P7arSXfg1uoxM4ZoJtgeS4upwQri78ufMb+snx8OdLgb8kFpk+p5p5/
GylP0sFbIlFIfiBL10oE36Gdepurb4XaUoBnbz/uQOVh9OR8lBHTmNBYA8nKozjCqKB+9SlHL3eZ
LYd0fCJFfY3jktwzhcGogNeACR5WQjBq4D1CwNNFsgoWJzlp2kGiHJiFoOcHO2v8ujHh2bWvHxJD
/wQsr0UAoDUSOip+uCUQ67Ld6yYywjlMyM3IWa3xnm0zPvdsiKCyy7Lx+TR47Q0/1C1JS3ETRZVs
cR/QWcSk3bIHfPYYyHAsngRrfub/lrCQwNc1j/FOnD85YDnOswsxCsrNcPsa0+rPDJ452vDChU6d
4w9z3IUiDBT43R39ZCEDHbiWjylCCfZKVM8RqqSz6cwAHJujHsl4WCGhd0+qWbpA/wv8+ZKPGMK7
ZSsxKJGuyVmLy7SfsrdM63GBihVxvDA850Ta+jOw9kmuspxy4Qed0aReagIFAF1m7mgrNAuWVz4C
eSi8vq3VxVgD+BzEOI9hrVPHdxH786HvI9r/gRW4wYib4jVA7SoscpEC6IVE0p5rqpWP6ZmBnt3k
5wgvPC+u7kzPd1LzLrwGu27zTBIv7cMI6l0ixkCGuEs4IU6YY3l32n39ofzoxPzSB084VmMOZKJr
KqIDVd8sHKHVQp7670OoGeKk97PoqomE7+Ogek/dvJyuWu4H5R8BDw1esh8MI9BqivxGBx8wZE0B
DdbAJEX7ln6ed+q6uERIz5tIBr+1PqDg0vB2M6NCaZ4YmVf0+3Foon5LR+a8+OW5WVjWv8HdjiVK
E6RmiXbtSICSIpjI840T0wheW/euUaFjcnk8KJ+MPExdCUtSDAA4gijp3RULdkBeeOORuUP8iKRQ
zPnkyhP9YAzklS6tnAt27fzxSWQE28iMTaGlfvTfS9WG5xfwL23126CJoJBGaEB5vArRnuzGtf4f
jVe+YL08KAvocq0V6OBe4eAP79THyGy6ELWbtws2Dm4t8Wm5iHebmq9cSy9n80NYH5nLv7gvEmNN
23w3VRIhw+JxtSKshFjLDlqhzpXNEQyvCs7WfVP0v/ci19r9i+1ru1U8VRGnQiWSs0J236xeouZr
e70NLLHhiMDW+hn1Y3x+RKmFOr6kMo45qrPlVvxR0lzwPoEDA93xMf63cgYxf0qOQsR0mt/KHCK1
JqYJ1EbqIEAks2xPK3s26PU8bBUI+P84UbmJ8PwSpZauo7eisiQDbDyiYlaRmfILI3NtFgDruFUn
PVzbyg9zuPVfjXU7xc4ZJJ7S7bP2SiqObZLNceX2ZD/HSASGAHJuX/Wg+VH47Qdms2LDI/ClheZk
XLC7xH11QTq7GKDqreCcmZlqz5PXWfQsWcdJtTTvIVf0rqVVWyWNDdsv2WvDANn+7fRhgEEKPkNO
n3tu+smLxU5hRI/GMRPKJjk9yzUK0VIOhJeyackiCcI9iA4I3i2Y4vI/9cxPPdU2ZReawyAqzZYj
G9/FTGbr/acRYtzFXrlw0lhNP+nAlQJHO3B+Bw6wYuIsm2W0M3v6Mm0X3Q/xQ9u9it3fu+jG7w1N
VcXC4adEngaEdrl9YtnIW6oUl5GAC0iRsFomVUEs7SCPIJzCwfrIOT31SJ/CuP2d+5gKsC1xcxfE
QCASNH8v7do0eXcoZdbZjYcTBvRCKZf2t7zvwdBg0zSGurKkJj8dn9q6wiz1luAHvIl1n8AQX2ur
llOhcKQqYLUea+eH6egWd+kC9UhpiSSxdMv029nwgeJaRiS34WRv4MC1NdzmuQT41v7ULD32vWNU
EqdfzmkcaQ40nlbmO9Jj2GZbcvYVyxMpvlAdAuvawbOhsfPz53ylnGvPWJpnc9CTC9daBy6d4kE5
rTIUXvq2oqCM43xtyDaAMuSv6DS4Y/CW1Fyi2W4OORhJ6HiZe3MfDL7/aP/WxhBlB5X+CGjXMUJm
NqcyTrcNM9hNVlEiBfghFvB0BCVKDIAPFPGs8+aoVBFWjA6949glxfBtCnAfJu+qABNEVAXovrKx
UblpGZejxcsSfHaiweBVoATNDt4KN3uMDSHlmDTWiq146UOs1g267WVRy6l6EuO3h1MA8OSI8ESl
S2QrnrXVvSqfTXjxnfForAImXWLdlqNHG0nGCLi2JD3HpjggLFZ7Sc0worCJiWguAlvijOrM0HLd
bWHDLCr/Rr1KrS95dFTaDIIUa24XFidEKVMEtJKNg5XZRYG7G9SPJmVMXgmqmcrZQEhz2AkXQ59u
tFRc97XvER1siJxF+2Y5NFA9vmUL2B52netCbtnZm1GDOUiSxzrTw9Zt+L6qhBHNHyC6JlvVE6uh
ukJkDIUVcOESBcxG8qM1VV3G9y5F/n5GQJz9KR8aYHgccZltq8KKgBNvvHAV4qdBWM9osaTshozW
KiMEZQvm0vVt6Tffj+afiAmW0tbNgz9rsdZ/X7r7Mc0KTOzRz244A0upPSR7ldi4F4sMPN8084qj
DPkCDgSKtcMp8ujfaidR9tQGmXJZARexW1YIpvTlkVYKcOEdoFypVdm7YvMno3M8t+wb0gfbY0kv
f7Z3cOTJfsqqxGl4Qd+8VGCFxXYVx20PBGAJQ/3JrHeeaL8EeYIBwuP9yXXBV4kkdrHXwadbw/Ig
UGL3AqsC2/0+zEUED+HYdh7Ob6za0/9c4jeTH1Bao0Mw4rMMW04Gh/v12GfTu5/sfjhhp4JmTcAn
QygscxsuSgSHK/nVKFOy6xoWOZzXwiYZWYbpUTSER18t14kSJeNrBaFAflXvUKiakqkjiZCBeqhf
YXdb552wfLfDpViQGad7IegPO9jQAxnth8dm9TLhSTXAxelOx9aDABuleK6DaxsCB4He1mAoVKtG
T0ggpYXZggODyJdJyCw+kOo8YazVXb39p/IwmQ+Ny5nCGR5hDh4qYoLn1EInuWWKW5k0sPzdpQt7
gkVouxlhLGIawg3LIEfuOdT3wI8tWaTYzu6yfhU3XlTovxePGCHh7Dn3VIHdBpaxVbc5E+k68Aiv
iCtIwGOI1HJIJb0Ce28t9gJfvZuFZ9cYbGyoaANeCGrLYLPiI2Xt+jl7ShAALc/rHLguDLAKD1Xp
6sUCXITwVtMdz+p4lh1NZBfeOmVraeFMcmUqAFPH7KHNJ9ehpmklhhFvXCa09kTS3Mf8ZbVNoIqW
K20oh3Gr11rV7GV7dtSTILvp/394zIen1RssrYoJLXPq1i6NlG0OFwcZgmBumNBsWTp9s21QHUOP
p50sj+dpDBN+eD8SI2gZScSTyA8u/vCVtlEecyV1EKbVmeo998UK5Eo0ND+Buv23WqXn/glnhhou
FlmXzEYvpRD6jihpb1kfswD7QwLIeJTzMC3YXVrq/Z/tSwWHX2YnwDEzYZzRQ/1SnUVJ22detwFD
APHkvS3AUu8ciXaZp/7akmsoxOcd0w0f3f2s1U/lsYsez99hUcUDcGgCrVAHV8U9o5xMzrSS38ju
9qmv88BQFF4y5rgibefz1f1tz6I4i+8Ceod4uBZRaUg1cbeVeihmf32aC7urUt4OCMUNMWr84H4i
ew8CbC+mmvSZ5r6H2EIpg/ShI9dylYkW0K4298wxzj0s6MbCYydHl7bpU88ZPJkUo2HjUMrBEGmb
WTxkJn5gLUSXYC41U6YWpviRf4zOeU4g3cE+epwMAPTy8CwxQ1yabQXI6h/IYod/oHdFm8uhn/BP
jC7U7Gf6Ulzqo0IP8/4lfB+XtTnLyrYxGJ+DXP2dlfEy2guqkTapmXBu9yp1+FLzxttuIzs3taGm
mDFxLNcqwsICX+e4Pz0X626t5ANJWOQJAA6upcK+d1fN/BdXxnmvU/ib4BzCfDNU5XST30rYG88H
PuDUGnPxOzehbNdOQkoChGiNlkCpkVcdROpn4k84B+Dvmrgq6rFOZgIaUnQR06/l7Gl1uUAmjN3j
BtUdomwtXQJAGEiQrXi2ylpQA30DKEtAeI5BrtAyJBzd6rnr4YwvDoD1++cIqspzfeYSNsepIQ6x
ycAQTkxESwZ1PL7vflTjzuVjGGCIi0kquGFfTSB7Y1n8QxyRUMCZF8K493+xEMfT0I56yNVR3d1o
sRl7FgQuFWAcinEOqtH871uNfzG6JlPJTVn7BomlmulIXP6LTrIu2r3cglkoDJC2lalsQVAPYHWs
NzYbW6uWUcaAS1d7HBkWZw/AZdb18ptrxCbVa6NW+ClzHSrJGM+rl+J7Q4g5gRIPvPgcq3NSzrfv
BBPLxDuqm2OXiAmVlEGBgGJtN6RMxNARya7Ib+t/YQp9RDOFzIFHTFCHMhTVY6ltyLw2EIpUqTCU
yohgj0gC7vke2EVXo75lpLgrbQxgIyjk+zyNE/nKw1/IC1yyKmiauBoZjcnLWAV1/Vtf2uTAGjYa
69PagnjjvalHdy6sDrD7cyZA875mNBavxfmVD0dpsEoCqR5SMIDiALhk0v1wpEZuF6ctRBuGs3oi
FA3NFGzRUdnb7YRS9wv5dGTXLBQs1oPuGZExBgu9T+zMUmyOAU+Nm2U7IwcTTeMaAffiKX3TYjX4
/Eqn7drnCcqVgSUyzUBRF7W58oRIftGoJtSeRzsgaKA6WOazkLbGz/Xk1lA2Ak/KusrXlHPTVSvZ
EAoVYtaurHISlndafp1VQJ4ZMlB0xE1Q/CyzRHyYnA5fFQbQp++rgmAjjazj6S4AKlfV8fnbkGs5
DGyvQsdg0GoVFE84HrkA5+59BOXXWc2LOEwZQpdG7d88pqFha4EkGWpSC8K9tpmKrud9ADBKORJ1
kr71azkIbNcZdybg7QrZvob0qelI80zNfTXuKta3gEAEoYaBRg9LjaqtBEquNrlAN6fd+18D1XRU
I36G3hwh+m5nQcxWNZO7wWB5jG7wjLYyf6WsiunJoZqZ0fDs/9qegCpHXN+8aQJ106SQ8FVJCfxu
JRQcmFjIb8B7B6oYOMQjZOCUGF6f04LxrDjtnfF1TthJWjPgAEhh0Uz/LTBv4TQTIGdo6VNWNzjy
7yUjA5yjodjtkGEHIUF5od+9lIbT59isKL3a0R5rgBDdV3wXl1yFQgzko2+Uo97sVw5Gref1kuXZ
XHo6gfodg9YWg5H1BIqmljyx7DS23FW2OM0Dy32fyA1BqbgPl0F3yHt7Qkh0prp6Y0o/w0WpU0yL
XLOY9e6zYKQws/J/R2cQ74NNw7+KHxa+CyAeU3bc4BiWUMKDL0wsbDfH0I1FtUsLzSzWz6LNFTpE
i+c4/wdaLlOYGvYnq0HhKOxXs7AT2spW2xGqq5XzGyLlmucK6tKNKQXALE1oBIzIorsIK5fR1S5y
hHxu02hIEHvm0JXF/S+JsFss7fcXYNvCM6sLYFMwAXWp+7K6Mssao+f9MoyeAWl8LamFQA8NA7wE
uDDwQ/iC22lXoIrTBdmnEh8/+hJZc/4GaE9fhHUVC7TVChfeGnMmUtYTKQUCN9pP68dT+d7Xf3Qb
GcgafI3CDQB/vmSmORlzxf2JNfS9/TtUMLP1lnB/5nTtvhMvWbpE77YeKv9j19XG8+FXum2m+pDN
wJBHlNG426IXtzKEwVtzLYZzDiqlvi7BmFs4Di7nJhBanAM+FaB4EVWWwCRnM2isvGCQslp2R16x
/BdX5TnVfamav+onlWdl2M1JG6lsAz5qwg5lKAmDodTsrTb1Dfxc2F4SNkbNzCTbDCYUOWCz+SzI
QikZw1x4qcPI1EH1dhifcaPwlY98z4MhGbZtBAekWI90rsex8E2V88UTIHRchsGYRZHsWVgHawHh
yGP4Z3/9b5WdHChjbYu4N5MdUDPGgq52VMyZKrgdqSOgY9fnTFr+amxhanP9fdCFxj9J5OosJ2t/
7wHwNFn6UPr4mzc3VH6XwWBFZWlyh1pdoZvDC5BTXUFcTZRtDqGCiOkhCi18gnbYviQGL95KeXah
2RxARVXE57R9iQ5pRi78QM9Im0B2qtUdZIvrkZqiJsFc56UwM0H7mmZ+Ql14VTwm2tx8KuYv8q2i
u543Eo3DkbgEhxBkORGHHKRJGrFeCldZF0P21jQq3Xj8I1laheIINSqviBq0EtwoXhMn8NAbQPm2
/72YzSOH+5H9ZLj4/na6v52fN1q3yaNdgW9KoHPgaKPJC4aSwFNO05Lr5QbC0y8cbA6vp4MajOyS
wSXtP73+jBTZU0eGvEWY3ix86+kRhAiIa5aJG3OapIpgEMv7Nja17UkG4r1ar7wPxVXt2Aga/GqX
bLy8LgVMsad39MxxrdSGBP9TCg7W0WQK7Is+XIgtABXdcy4qErE/2hIQvJxarMc7TWLin4vJL49Z
3erpbR4Rv2fl8vfpilThS/NhP/iCzhbt3z65z9GzjLlF3Mnlz6LcUAJBVtZMvNG+sxibzvENW4UF
noxXoUn6Zhy5Ls7rkyZkALAiu3H9t+XqHYM8G9RWchswNSIFwFc1yT6N2kUOYSi2NzMIjQgfPtn6
elEx4cRmQ1ii7rbnAuespmYr4RYB0rd7OhqtMw8GyozWzfjHoD9NWGGBkZQrLAs/btRgTNoHoiOQ
Nw7pnkpH57/MoozZxO1SJ4bveOi74Q0poKIpF1qng8F66R16SBdwUWwS98TraiJXQ6u1zIKjUvuK
rVCWAMpBTnMNu3tZb/xMbJV5rGIeJ84kUaa9WVHA/aj66q9bWvSFZaXHn+jl5Y0rm0jK4XX+tZ1B
1c3YRvwri0KMs+S7jzcE5OeBhDB5I1Rr8nxOEYG7hGa50SYpl8U9p01vGqnPZW5+e89NDiLCsbv0
jX9nOT5YDoGw6o3OGq+MWWb1dWI4M8GtKnZ7GkfDbpoCw3YZw2o2rm2u/ZwwWgffBa0XdgYtEcrT
zLi2RsQOEQzr6029Qky4741yp7OJyZPOvIX20AAdB2lSkp6DbpJarP4HHccDVj8/lnEiFx/Zl0TV
gtyaVdOvZK0jDlcft4bs97EPTxlhANFWE9wk+qbyUsskUYKIOSoEDQah/vmV4c8jnWn7OxSZRSnr
egX7fnV1thuaIsXhxkoKMikJubSOprg1C2qz2DFKpOikw7yxOyiopvEeflc77bxL1Bdj3/s1LOZG
kPZ66xUHT4CWYaAv0p6bp1MT5JZIniRYeb3sEqbvzz8aqLnC7qOXOR9v/kGvbOQND4Syj6L02pcQ
xmCxZMLyyVEIEHc3TCrwh9djwueF8m882fcPzgXBsHIK8+zyb6aIeBK7m7X15S2SM8OWKjBk7EWo
qfv9FNaLhsmITNCzNxB5RjEsckeY66AH+ROZ094XC7LWbu9gx9GmspzEqJStEk3JfBQbJfElFTO+
BWK4M6pVCR6gGBeMW6450vyIJ0awRgPt5VKfPhMWTnkj2iRPetfrui/vLjMUDHxlTXiVGmTpdeW6
mOMW2xAh7e588pyF8qjvqUkY76dwZLl0WtTAHz/vwVIPkjZz7loVbbB6QHAdR2Ec29dVYEMQQnEj
v4/Ygwau3zlhCKkYi8HRyrugmtMuOYkbORIrOXilVGflLXZO1Et6czK73l6frQqhz+KGtzr0jdYU
5qhWarmcVB5oayEx+d+lcsUWZf9CjyH5SbRjGd2pNumELVZ3L6JNY+rze3NQfjXOopohBdwQRzg+
Z/DHYKGLjzLkVkq1MlQQvWKNh/itNeIlIAXZhsDDG2pkMtGKsTCJkWpfBUtQY27q0riKiv1AcV6d
G8wMKsldPWG9nsGaUjdj+Xz9tBC6PZDg9jJkpTlRf8BNRGdzBuuDowWO7whtig7CUP84kuBNGIAU
r8JpTK/emR+PJ4R4RVMeW3sSlY28bD+8aAXEtj6bdJVm6at9Y6z8ekAffLIZl0zKb66xFdmAodHy
jk0Xg50yQ6zYQkVQsIDYI/ou7P/QW4jzol3zjkfXVwds/ffs71icODY+tSjWv9L5z3m8ptukqzMg
yEEqLLXZsCldDtflXkILzCAcFTorgYeDq22/QOPAXovIqMQ+opRSJwVdgq1/VLZ+2im7cHKaQY2Y
FDTaQdoyDx5WfruOPBLtnv7C5VNvPZ6U7Ku24RvUBN0USsqmKITtV3UD159uE2SOVl3oj1pE9W76
yRL7iYmlczg6hCJbYKVrNiI5S+HB43zVsew28MvmZ+NSAn8RoIjpuexp63vSztuz3oxEXQW+/ZLQ
/pu3iOebK+7K5hDNuo25BaUCyiOMVtF2HNIUJKWa8YcYfSpMrepSlj9N2lMBy3kDJTEsXCVYHkhU
PiQ2RT3essz0OoqbGf7Dz++FlC9kUus/xh/pV88l56CkwFelVjUKiOYy3+0FBsKq+YHjWX0YOBtD
QHO4gJD+RMj1I0SNUkpijW0dadIat15z0X0BOHJtwUL4CqblBLixF4/Q72hG5N420CgfImNgNCQd
5AfHXIZ+RjjcPyGmVVdZgNKqYJtVQ+WWPVx91PcMYKv7UMpHyMbL9orCv3kNktKWOykdx8ErLj2E
9U1nBuDlbHLEJlYh68tVu9RWk8+Nrpiu1kwdLsfrqUJ7ry4wzx8pUHM9jXL/4buNYBDA9ADbxHRZ
p99wSuaOLHAT4V7sVddUXr52LhYyLkjWmyuTpDyQDeYD4VRu0TIHgU9p9XDJ2WNnzUpJk4fGKNee
uSs6iEJEGntF/FZcaASwrSOD/xFBqO0MxL/8EXuLVQAkWJX4hU/lctJmB8G9TXcRUy3TYlcADsmE
gKnLCexEEV8M2anRV8z4lD0QLDeRaqV0ZO2GlXSrzMD8TpzF2MgX90tqnNwNhiilB1bheARnw/RU
SoudcAOaA5fVgtoZ2E6WRSP2rh2kFaZRxV03Zej2BtgXmFBsztkoq0OywJ09evpdIHvz0EzWLwVu
DLM98U/+j6rDBZ9w85TWD2Matv+R69Z7VV/+S+z/bVOkFo8cTqIk0tn9akGk3Ip9CQsHiJt0pwV8
jWuleOFhgcAwMbjhkOHnufE+AVf71nT0vQxT+VEDlbL+psqjoZekTONBF2q/N/APTlP4A+rrIWQd
stAZAr0VzLbxtQjcTbu57SlG5kHnNL3HFE8+7szcdK8ncAphMOw9iWx9NtBPU/yFvu7RJFH1Eekr
D+pwhT8g+bpCV4st/+miZF07XF8nZ15Fs5VdiG/jMTw/O7Y7lPE/5DcGf2jcA2OBu6RHI3ND6GCX
yhDkggjsvfYK6eO6XJVzMKDS5vF6RinLDynv2Ewjd8edxkp023+6Xir+ofJIMvYSr3qVExdLoiuZ
vqzgs7bWXV8jNH1A+hWInFdXzafoPpgaVp9EkrTNubn1o6TB/GbItjJ5a5OfCnNA+b4PVYrcSWwE
6fo0Ceq2NpafxG5f/JScI3v75jS/6TcNNHgLsNJDWQQN9aCWU5kSI8I9sMdfnPgZ/xBoG9k0KCXZ
gh3LdMzH1d9ZmBZ/yqcDGRxhU/Aj2bmUnfz//a9OC0cgu8W54ZzFe4HVSn781QBvk7r8KJLNGqDA
1bANfHZa0tU1HhVGC4vl1wTk/5wfRFBceQMBAlQ0rgjCJSem+8fHIetk/aVK86liliMVuc/KnygW
6nzgz07gUMfxiC5fZvxiSdJZwE/C6kzAbDYayglzOGLgXzY7uevBkCUpH0T+HBVxnJkimQosu/K1
IOEdIbYOUOjDLxe+V0AY7NyO9KG2OFVf+YyqFnzAXNXQ6odwZ23Uk+LYyneL6mVG89OBL1eIXxTa
220jljoM95Uxk3Za/zvdkWQUun2kBEYkmHlhHFAMgt5LPOFV4sl/PSGwhA3YkKnp/tuTQm62lxHC
VlF7GCwieffuHFl16A34z2AgsXwZZNyRpqEf5yEms5NKgUOozGaBla3nVRLAm+RHAiW4pmVvUnLK
EOz8GrBEID2CFr4OQmJswaKj2cFBa7jOMdJNZQRQecsbIJHCuUNIFXippjXKCBBNxFbCR3FV7a4R
fe8WHlYgsA0MoCyZbW4rOcEyWOpVF3P96t2mvHCvewdjNhV15i5tXqvn6IJGU/PlkuG4yrRqFhoV
MsCgja0IzyaoUT2+M5vAXjjUhoWqSnG6TRPQO0IxBXBj16/g25BoFIh/YHIYLYy9KwHzTOqNOm/5
W03/HzwNJSJLvc3XSUcEOmwEcerZ37VUNEyPQXx4zmKCIp15AAwJ4lmWdqc3gHLi879udCDZgELX
1HpO9zyVMBN4xZyMRWG34BbhvW7ncagp3jYhIyPWAUjEtSc4lmZr5h7qQH5gBXKlALse8iatSoFN
0B6h9xKCAMMovRDhiIi2Mz5UCd5ZzZW2mGa37I1jznoqsxUDTygZSzLvAnqnpz67Y1un3wEWHvl1
Fo5zOszJvWdiXo/+jA6SSU6qGdyBV3ZKePfCgAMOsCxhmdEkBUwfKwhMwpNQIQ3o8TRKvdsQgYQ6
bW63Nsys25rE8xnyiGEKhk3JEw77+FQHR9BvIcpwvudpb4QncIXDpv+JGWGIiMgK7pk8uRfk+obM
jdHoWiOtKNNNYex6kdrkEO0OnYXx58mdDscN3XmdeE+QsICbjYsR/33IoTWLeu+nJjnDG5VDcFkr
byc+k6pejCwjfouTDOOjsmPP1Ii5ueuE6LSoeHUK6v/qhoH51cVADXY4csFUwhmiO00Qts9Be+3I
PtZOYeQ3KCyfr4EloYzKSdE8bDSR+nEh6pqvDSXDudk78MbpF+nI6FN+nq2jla9vgwIUU3haqtF/
4jxyUFZXm8UqdhrvbtkCeZCjVsBb19CCK41kqTpFGqmdM9ojUw6PDKM3hLDLZ2EkIUz6QHBKmq0A
PbhUTkqWH73i8MUxWrg3SXUMyq/YbpajqSIRHp5FJI92DDsa+j2bP6VU1/ckpDqV8royUSqHmqSR
cKwDefuQdl3TyJXd53T/zUajFKoO7r2bxoQLeMy45LLcs70o8toAQKd4AIFjUE1uFZv2RurKzJun
h+T8Obe2HdJzr2EQS9fRNQkm9IuXVf6L1o8kJPj/9tPjEbjoiTNqQEX/i5cxoCyRWH0Vbix+9+6X
mmKBffDgtp7GAFip6cbqDsF8unJKEN8W78DCoRs+ixWtzsT0w1ivvLDf/h8M2cDMzqtyt30aikmW
oo06L6h1NkwG9uwZrATxMmA+PVIy+MgI1QUnkMazXs6GLWF74jGcshLeHLF7R/waoK+x8evWfYYR
iQEGETqLUzkp4A/w9sJ9Zq2mJJnmpLJlrHvW54q4YGb0ckxlsL+i6EuYnN3fqlZS527F1Pi4ZjlL
aE68EPWNs39rA2T/q3wabqS3FodJ0BWZMW1dzYVTg89PY8JeP6cMjpMI+XRqSsKEP3kPtjKXZVU6
ekyALWsupaGCKj+EY955QlwFlRgbk7u3tJ5K2BTLamiQ0dPIQtInYd+efvynHlQTii4qVNdSWxnB
VtifM48JcGlo9D39RemlgLKihFoqW0t9wZ4JgerJxICGjLVF8+G35hU3PFfp1or7U4Igr4Vp0jAI
+V4mNhQpnR9PQIcH25gMvLWquipMIzm2WkBuUOUVmkELSvcoj8E0CLpPQKi1mpnqwTwAWGH18iu2
9+Q3nyZOvihG8g3flX/OdTyq6zcPpLyiAK1OKIPLE44SQPPutztOkUauQSlBhMkbaKic1a8X3wFY
RJYisD0OsjsWeehd0rZJMIPefeFGaxFS3O02SkkcXMxmT2tWVe/UIPYV8LWEBaktGbWZj4JnEDmt
taTV5SygodY2TfCoIBxpVmE45JbAAqmy4kx9Y1Wh7QZ+u+Zi2V1UTa+E1hkT5pwbVYCHvFKHzglr
wwj+svuJQWG/Dn8crClPjJsqd7bmqgxzoDDzRyA4BGbog4RJ5yWzYxLu/P+XNuhJJT0TlIy0mrNm
cOCcJk0tE56ebpp0L4oHZK7deLpxURXK3aWaDg88YS1ZtIwLiQhIQKZJGzzg/O8rS9PJyd3wgJJ4
csA3rX3aE1cc9cDCJ815Q3GCMTNTPY7hMKnuj2OWdblTTRjCWxY6gROLz6fqTh6IT6OOFLoDzBsF
chL4BVjI/eyPr1B2Wcq/SleQceqiY3JHeITAWyq3bmZoIldYBDXeXFPCKJYmjUZh4Q62tWe1q2rW
vnheOGkwIlWGeimZxg6E43W0dMWHD0BsV+hRSkFqQQJBjo0J2cezzBOcmpb59f7e8PgCFsBw8P5O
TWBeTSuRv0uDzbIO9p39/NlI1wPrmgCRQbFG1d+6ZF+ssLovRB6gpGv6b5mBFNEIbylC/S89TBYF
aZmDeVskjBiaAfdl5G41hW7gr7fVaNfvV//G0Kwy8YILtbX/F05tNE6pPpM9MdNlCN34Bey/3TI/
+SVtxDdq0fwBm60Rj/HSA8n27THfSpunM4Yl1hHaeaWlChOlURYdayDDm5Evtzd2aV+ze+2WxvJT
fP4TXfF79zE5GN+a7314tFoNLKCecuRSZ0o3IOP78RGODUp4wXyli85blQVwkzmnBQXcV4oxqtoy
+LFRoMchkjD69Hfx0Hw0KjG6atgVpkron472r11xhrojDSfy+6q/t34RFq0CyaRRZm/x0JRDRrKa
EEiej9qJW+QAk1r0qD3dIUJ1H0/plG8gw3qOUpmpNCZSHSxkKz5TVEjE8v/nUJ1JqFSqs+5o75pR
vZdRnBZCNAS3X/08oKrffYZqvOmYh4ic2RoiuYcSQRCjEkHNXQDk9TI/QVtDTyc2b/ImIaFZNiFJ
IzAD1IBh//6wqGUYNHpZoIJVkZ71+/4ub8LKPnz5t1HC311QF9C8AirTI2UrbIHIVf2DegFWBU+r
I20oOnVVEQXQrn5U5eQ1ScsMyzz3cCegBO+rcFmAaI3JWzbti4V9YlNjBu/hGMPGWVPszYKxDmEE
/+p0Jw8QY1bwLuq48/1Feyw+AxP5vxqecdc3kMk53NK7ii1irC/BhhtppXGdyiPDGOVK9XKvNbn5
olSQ9WyBX8LBjtErA0vsSMMA1oVnvfI/ASc4VDAtPkE4l/xqI+vYhZBnX7gG1vvPdn07kxjfQPjS
ygkQ1fCpSgHy61nKvuyNW+wObOhVGGLGdqgUWZsFHTYnLTTJlDcaTNvjdqwOqfYFJzSrGDen+Okr
Hbx13Ge8xfsY9oyw+xffaMbRQ9BUzxRLuZJhJIu8rHcW+5OSDKN37Sug+2gsaveri/jFVa2Izml8
2HNDCZNijB6Dxq4TM4eP9NjeOZX/UOIwYxxIc893/EqTqC2VauEB8MmpaabWGj+HxIcXAJzl+//0
WPLHolo5RZPs4Nd/sT3HNkHw/yLkcifyRG0b4ER8M2hV4AP4lT3t6N/HArBqSB+kjq0RtsjbyThA
84eEX54H6feO2yGSHdnq2QroPwT2mMltIGsJ+kvaws6uajMhi1LiDk+tbdXaeoOvm0tGicrYwaIX
tisBNF0TYegEQirv701Dhtx5zqxRdyAkgT9hQ/hF5ZmrdJLN55DNV1749aP83ZOI/oLAZjTNaaIl
y7tzzOSC95CJlcfPVZOOrJ5pes7pFMqfEMAk6YKHlzvuwTRNoZ8A8yoLDIBqfRVutJq8tCxRJC/w
o570icds9kSBzT0Bu7ZdQ5od+jVnI4n9yCmSwY5jgO34Uy1Ossn40Q2C0fTT4qMch2BgI8zyT1lW
JzBBWhl6yeNvUVZjH/vyeZEHJsCvGV68IjDYTx/2XOI3TN1rqsJY1UZKEUKmapE85lL06Uw1LccV
4+DjP6GUKwsWYDpn6GPkWULArqLZKvQcTNyb/BiqD/S+/IOz5rERIT0UwDjCgZYElyWU85di0ePS
Fezxnb2PlJ153VuE5ZpKNwD/o/Rt0MCRLUynJh6KBjzjTjaOwIsKd0bLGCgweRA7cYqqpxSnSyya
LCcjWt19GkjiwegChDDKlNbRTWKNJWS0dqp4ZxiKje/pjQ8CDd2xzUBImnCwiBj7dJz4PMEtNkTR
QZJGg9UcAqO21QXHpbGfWQX8a26R9RnTGvRvEuQV3Cn2m2UPUyH3W5AEJZ3ksLEq5nKqoQEGGoPp
/WaoW70hfKTC8yw4c39SAoqmcuK/W/6FPY3jl1LOBOYLccfcNhb7YHgb9NfLKiv0H+fu9g8gAwmB
U69u1+EvAtAUA0ECtiSs2G/1l83P+40OkFDE3LBarpEyr0MMfd5DOcNgExwCJc4Y+axG2UtGRBwH
/ekM2tVzx8q7PqAQf1M/nZ67nHrfXttqqoeqWQxdVDJO6yysK5y6Hsvtbm7+emDwsKINOGPV1crM
zz0KavsY8QKU1YjfQCGK4Ws3z7jipvWFDeEXaTKOcPMoYj8Knq21vxR0HzGqxG3X+OPW8Iu5d9CL
ri4Q/LPnI9WJuVQklWm+eFy2hE/R8a0sNcor302vvnsJ5g3+2e00IUJEgcEIgQaaOi0eA5RJszhE
+p3FU0vuvWeURuPIRlEBh2yDc/gyOyN/FfYcfdYQUU0m0igaBcQkiFG7UGT8RbSPosGvKfayHiaV
NTgvUxmbmB4ugk7A/HQDn+vI16lOLXb7SrZLMeC4mjNBuu7y0RScdg/lesShsF4+KnuvwI5ma/iJ
mJkC0o2Uk1tE73N3C2yxEsukxGuX1fAfV6mWXJtFFkko9Z6q5X3ru7Fmn6kyu/iMuWZZKj4SB0FA
3P4n2d8/XmWa43N/erakVuD0V6QMiwcLUaXXj+N86+SiPqKaQk9unoEjorcgpSMfrHgC//RF2CP6
aeJrql9tH3P47XAhJgFCqyY9sMioVlX5J+hAh4XIRYg7y7mqYDRakW6hyFOM+orGSx+4wGqAh1oH
TZTi/K8GNr0vCxoCBMPU/IgIdq7ZV2zOlue2SAeoMFQ6UHA7x0FSq9beQ2ZHZQREGsAhIr6k8xWS
HwsGfLxsaQ3+HcuITHETypCx3lpfDzE6D0Heh/W0zZCxRSw5OgIjevAAwRMFp7hkMGRW0UmvfwFv
pmJQjqKbFAB8NEhj1T9/j6rSWnIQnWj/HXoOdQrNQjePxsbLHkdpubqfXLzSUJfy3iV7sxHMjN9H
PbzqynSVxmo3d33l0sHTrGNsJi9wiUgL4FVU7cExmhdIYzxpWmJncqcQ/HmaWMBsBaKU3IlnbnaH
8JsMHz88KNa1b9Uyps5t0zkV+oGXliUJGF+vqocgTpkOjJwu97tyTTJouw1aQh4euGKiaScBzEGN
7qGnMhZXiiGj025KAIjqvwSBw6ddvYhkCr8OJwwqhvc0pYCeu4+JjoqrDl3WiI1SVRsF/IhC0p7r
AyV3wN9fV7ygxMOi7/bUXzBVndDhDU0FF97LLTX0RYKoPgpa5VI51vnD+OQddkxj0HU4SREEJVN1
bQlFDcTOWLrGJSN8uqaLjkb5EEFpz4s1xhO/VYPjjuN5p1bI8qDHTzPW6QpLPDzgC5JzAMSSMF8O
A51DCoGEeF+H06a0mNc+2qIYQJvu4xmtnRT6rRoN6nzMZjHK91C75X8vk+soS+iSATHJ6OsyL5UU
U1BBhJtPNvGYFF1kymIXQTDfa/UfREkUxHQ6le7qlIHycBHlog/QhsMLX5uGQlMiFP3zyb68wHhO
DuDOtK5p28f/plv23HjqXLNw1/Ip4RaPLsXyMNnv+/S4GVGXlrcLfQD91VvcuvyFIznzf/b6SfLB
VhWmDQRy32JUqSHo4yc86TQExePmfYSvQHvNfXOe75o53Xco1/cxe1XN8Z4BmDtKOZXx/XFZAOjg
FTGLTmhEaHyy8O03RsnSYYcxDN9qyfI2vjUfDRwIlt969DtvmYavpIKlOcaiD24q/8Jy2oJwh9ov
DCErF3vuvbSRnUvkB0sQaWgNpF6kWz0v5TmgsfKxoEPdjGot6IkPPRyCNZLTvV8mIawJk5aPtX4a
15hlxAbDWUJg1gO9rlqjm4osZUqKFgiw3BnyqBpVyDPmJ+fTWCm8jN6Qr2aQGo+V5PJUfcB36Cpm
GSdtyAT2gkOSQjSoqZC3eH9+CghW1D4pPwEw/Y+O1P2rawkvnXNpoh1i6bTYtFAdCuYhtgMoiEWI
OGQnHMjotxGyVZXA/AoX/Gm+reXD10/qE0TNHNcZaizy9R4hNqHbW+XHcWh5D0zHE7DBdgKUEaRZ
DKFn187IJUKqPN6RWh1McQdWXR2zsYtc0uOZ4c5Td4dFCU8q9Jd5ljFgxNdHPGSyWFW08e8vqMXv
4YLJ7s8mSdXyGndsZuJo4k+uHt1GxZBOV/pRQ2no3lOLp+MmwWYSmxpaOs9DQ7iKqII2jfZHQ44i
fty0AJc5UncG5NMxIaE7EmjuzeIphsk5HJK89M6PMBLi/zzau4T/M95nFIWqi+fqL0Mc5kP/e8Pv
vw/G5nBhhrgIHZvxXieMAlvc/XqxFoBnKR/crVNJUvgHFN0QtBibxkyQk9HUwgxcbP2A+BPBUL0e
xACWH9v2e282p4LlRlDb5i0ZVJGgAdTUGQnxwQ0TghfAhJcA8uxja+u+3qZrXxh9lnMnktLH9jmZ
3hZTJ5cFWfFTSJ7bfdkVkK7Nv6VY8VKEZflaTr6iiVV5xJdZhofx7YEvwM9nM/WyLpV9ER42hUAv
ZVokqgllUyuF5PJBxw2ShsO4MUkAldLtjK6ivLsrqGYcwQIsZCXnleLS4ApbyjeBSmtNH872pq8U
dSqDKb8M4O5NxoY2vtLC98T7POgw7SGHwUifMmwUnVB+cka/QENcVPL5g8iH17kQMqkox683rFZ3
KkyhPalZwI10xOQKL2eAs9Uxt5Zmfnu21pTQnHNtuFcyHZ35GUWaVvTcJ4NtLd3sKYM9trztlN9g
NH4/zug7CdMdrenR49z5U+hDjnR6dh4urK27KDiNpw3LStccY9Z4zhyLdsNyjUrHyn0S6DYmvEEc
OvYK919vUGr3QQEZph4PTE5SUohV7QLRGiITDJ1J/x+2fMUdxEd2TGRozGop1LHupSnRd3vhYoG6
7mX80mymhzcnbd1Jyl5TYG2+u/A97DgK7ITd3Wxnt0AapW6A3RI6rG56ypNuZVPGrzc/MYDP30/o
iuaG5FJhkWzPuc65+uvOpCtCme5XxjHMxcYok6YtVKv41At8zg+vyDYDnt55BiiRdt3ed7bJNo14
W5N7hkX9CyDLuwBIgp7jBVTNUQQlaWvIf+JHwL4Rl6nC7U4QTq0gFFfUml1Hc5oHJVnZcmd7jN5N
nKnKubDSEB4i6PcdkY3NKGM9uKUPR+mRzyRxJ2ESqOnNviFR2AihEulS0K7NDJwQa2dHKwKPT2NF
vFT+wWg1aARtdQepIxZPGqjCM+YWd5F40Ri0EqXg4/9XCRutsbec6vcLZq9TGVpWwhlCKI6b6Zsu
cTI/QNFCp1MpX5PMH5NSEU2+FA0cWIbCHEyxG7C+qaLhUoZfnfzGgW4UAyq6sIzN6Ocz+f7fHo1v
OVbPwxCj+izXmMT9vjBInUqK54//BfVaxgfnUh7n07i62r6+tWj3BbBOolua8qX2WbP7Gu7HsFSE
pNWyg/ezPCIu4J65SP1KXEYOwcoSukYc7G+/tdWWDn6szPXd22A5h+uHInMOL6KSn0waRMR7IiKN
VzIzmtjIdxm+Vylvzi19oHyvzXJzbtPquYNjaEofnSYkhme0PM1N2E/VsYL8LxkCP1l0cFnQBisx
ZjPWRqyOYJ7IW5naMqlcsBr121FSi9WVbR1fMW5+YnwOTna61D5B97Y7k9nevtQ/weyZGfT2zwm+
lLJFC77dTjGYRHJCKlEW8Co+zFQfoJNYoP1VEWVqwn5oRpB9ErUv0mGnnYlTXCfCcJ1eQ+NflkxO
C+3nCZfpQrGb8QqTWvZwIBSH1XDzQB6T+b2BUp7gvDDtNVxM5aghKf8ScqHtlTa57ctwwaSyPrVc
8C6bOzA+jA1fuT7ynyAbRL3HqnPOyXjFiqjvcd3vShDnuSTIDqDBsnCKRsP+f6mpLy7ZEjJw3fMK
wPF781jGQYprERlRwXZrStcoCkON4dY7VuHYsFzSXzKkrtYubRBLC3PjdTNasEoYEEZjNXjZfoG+
RHmwDF8GrulqUCZN5qKfm29dF/WC7lIoN9tblB0KZNpFz4dFWJEVcBNKIW+mEzmVd0oMJfRKJh7/
JM5h7G34+MWN7gpORPblnK0Rxq0x9DiNKaZPSayJrFS8ypCmYNSsvK8YORJc3+2UX7j/mA2TpeyE
TzUbM/EaNCaOv/2On3dvqjoOCE1wU2RsS90t12dzVfTnh538ZiVijcW9fvBuB9FiUfiql3ch0ko1
+tAbou5NLgiamniGAvTQKmkM+rv3AE7L6TAdIXUiD5oORPDpLTOeCTjHIdqgxYuOzYaQcegFyjUQ
TbEILuyuGsHeUDfnaTJobBp/pXrCPHfGlM+v7fBGGz4f/50RIUBapEvM+m+0U3miGZk+EmkfCL00
IwdtaOhccs2nnI+yTfhejyJhaIYC4ADqoVrJhgg58VYjBKbhSsXzZp40soRfg8BF6nAoNFqYokU4
DQp0wKWPpZTC8cE6P9jkKE0x04DRZelpUpKScJXxpuPXpmxSOix6Q03YnRp1/d2SASRdW/QmWv16
6q/NlCNstjt9cKzS4IyztUDIMPA5Rq6yh46mhuk1BNrEHvIwsCLtPMPrDngf7ZiEIIxn/bpkl3mq
ri4lyKgWAP6xbuIac3fuUOmZEigQ4jYPJ1uc8kAq1RnlLdr8i/1Ns450yUqJeK5nne28X0BbAe8I
Vhz/qiuXGfqhVDCzwy0jrpyPrXbIC4ClJb77Qh2VT4RhHBHlShEM/zTVyZaBvJV/8gqKujgACwob
ALvYHDz4EAdFWEUYWPgFsyqrkaMj1hiKEBzwDEvYOOwBLpZELfLL2tlxYWSnTeuPMZIVM6eN10qC
oiJG/m7SY1TMaLiV7gh4DGhbeM2MHpZITIVlG4ciBrym+qHIE9Va4uGXgDyS22NhlXJzd904lQGI
RHFzhgGkobkZ4YqvAmVUyGdyl4qWVrjbufvurWPnufIpAQilMqHrOKdd8ab4js3VSfuwyYx9ZRmV
dSgdoUeU3f1yr15QrMGlURErRQeRPmG6vlxCMR0otlP9Y+2+GIBPLUQ9iksVi26g7MRc0I/Q6XKt
fACpTvvzFjCGkmsz0O4Zb+mvpEefHaCOD1E63BQrz7GC+XWMyA6IOYm9MnKnRI/GgNqPeYYipHPG
e7sZ1H1B2dRfgLJiPPyBrcaNWGcuNNpi/fdZxXrcT4T/dIsaLY+iTIUuG9XwWZd+rheguvccekJi
Fr930ne7ZXAVCjBLLzRFKbaEYZ33JYuhyOLxrW4Nx9Oi+fvlmvADHoqEZ8qWZUX/G5f8WABpwiIe
hmGVtBAAz9dMFoinU2hlTzPaOSwNuslpl5BJ/65e+Xy1WMz/kQgmvL5lqL1y5Q8CHD2nY9+rpYCG
B8WwsTHurbsJN+A1AtnUjdMomTRIiPdhaQs9dhh9K7YcR6cV5rAQAv4fmGooHUcQoRDsca5r0zp8
8AISSU211DZvcMU0gCwgY11L9uGbU9pBIOEUu6cCHk4Sppx5KxlLZ0jqp19QTCyAflpAo3/etSCV
NXc/qsx5INLlaRjOXI4kAiPuaCRmkXJtef+0bW1B//usiWm7zSaX6DWWXSvfik0gE2BxUwYpx8sv
4S3bI1wYPpIUhIxQ3hz8CLNzIWRrY9//jZ3N2YgpuSAkgV82i9OGiDwYKmu7q7eWwXuBmmLJAgEC
+OpPjFh1JWEqkdh3ksV9nmFWECcFQ3HS27KgZ2NAyCTefWj3sYUKapxaTCqXDZbuPZcOXTJOUoWo
d+WaY2z6s++n9JgZ/CHfJMw/5dEkn79MuEY2QJ6ZzuHZbMeAEvrGctz7y2iqpwXIsAjDU9clJ/B1
5G4NG2AxvkKbeDdAVJoqjoxNDuVqxB0EV1yUhYhc0bEuvCqrdzUydP1dfjK8hbuacnp9p1AYc0SB
T/K+/0MEu0sDDOJjrudl33ksTtNPqohLqfnjKdcKI/C/+RXjV3fB8Z/fCmUyNPvZUG8mznE+XYnn
1yxUxHPuL1y8v8LUbR4tT7WbIEvIwnSEurS0kpL14j1XDRsMXroFizs+dOkxbQDOdywKtv4C0PR/
iIjnI9T2BY1pcEGYzhTnB6mQbv5y7c/bTo7o8dR7Cr1770HtquS8IHaUwl4DO9VAi5OZjwlgcZXE
k7hyuaeLvRIW1za6qbOIttkKuhP8HNe7rli3/J70PT7ySIj1/dexw+XkUBM0oOPLm3BhoSyF7R0M
kdgnM5lTwp7BcKDWHpdoyfCJLUmA6hZW9jiJrLMZS1thQdNZtABO9IokWupFS46yy6Lw1fXNsqpf
IC/1GRg/qY8e1Qnt1Ig/2QtjxhvMDjlR34Qg9qV2dEF07SyuQ2ScNUE7b5d4yJD0p1cnh1SXO6Ah
G7TAM7jYkgzx7rqLSVggGzVKwfaHZjjSZcYAh/scfXrLdMCf8HxCRTloHNyZmihN10xeTmJ4/YRb
sHMvusro8yLjykzUxhsZIjYL0Zaf/sG5ULnG9qVv+PEvbXcJCIriGFvjdsSgyr9xFQEoYqlvDP66
stSNQyI+4oxvO1mz7evntLd9UBm8ZrIQrj22eoYMqgTwyf0kT0M1rue+cVACm3BQPvdGaseZ8s3e
yFAI1pAk2KuFFhWtlTO5b4VweA3PBimPIbtnpUt4Y9Gaqx6Rt0q2SB5DbvYoaL8GpneFIGSkGW4J
U7UhmeIzIZuk6KRaeTRNgSmocGiZSxEnlPslXX2ZsP1FZnJtTwKLlGyqMJi/BvTzlJOMqaGWlCCT
PJbhqKciUHzsRlN1VTjz+4bUjMvnM5lMA5mSsHjBvXEzZvV4dv8yZmR0DIDZUBqEIBVWNOvmdtMi
x1eDLL6Hajq+nNsqmaykTIsYJtUCLh1jVrAr+Rsri3aAaatvSf9kALAqBHVBmUbV0sO8136CliCY
4Ynl6l2R6+UNRvd3l4AxHcVlkbJfjUBCnvoQWlpih4ChYvY+HOc0FaConCJaW/A/llsrGprt5r4Y
q3zeqQ0rJk2LBSefoz5KhfM0P/jE0KsegJDIkRNMuBm1ZhoJ8ZlLy5qtU5IgVBgI6fIjqbsYK2Mc
04OW8bPF3U6DRfpYs5N8Q/IH6FSf2bXXJyjdPjFOOhD+9VVZNgTg/idrSw5nahee6n18G8BFW22U
hpZpbRl2yfdaN+QaqNxNsIQEU/guggUBgA8IP76wtrjAWxFc/Qdn19inxoKohmuVqQGBRS4yy5tm
41MWAbBgz/dFnXaq0IUtk3JRZztFPdJ65boARsLwLdn9Wx+MWF+5IBsaZG01aZ7m912A+XpIbEiJ
p8Jmd5eG/GSwsdXsEJ+/AnBSuEk0+VZDQL3zGOYateS6+o00VN0AlN/LMiBFfklsiNuy5HYmdgKB
E1fhI8nP+6qqfORnynmKBaGclcWxX/a0E66eqzAVQOrIJURzIZYpLJEhS7ColjW7OW2RKyaBxlUH
q5heViQMoARaMF13qaHbhGoOkpuXFINc1CvDH797ju9MeoCfdF4QJk4VMEDPMq9+1BOS+5SXwjQw
qSVomZwQc8jjKiPsgolNNoLE58Pq3Quo2MObL6qqSn4gkOdXpdo4d1dn5miJDKeZcO1rl2CK7Lql
z8ynQiRW2rs0cZ6Z6q+GWMT32tySuswwfCCcIIvPGm2OsVGbIRxMTkKD2AgoEB2nSfWYA44+x4s6
KerbBiUxGvtShgtJvqgfWKjEji7AK49GOUgabE0m/+5pwYDZXG8Df40lQI9cdCD88aTxxqMdUa5n
bJkG0UZRWJXW0psZyOtGw0yAv1If6FmE/1Ur5wObYdkDZosoHAdJCyBH1LaJfNEjgDhG4KB848wl
fzypv94Iu2ngnxpsdLGZr88b/3PGkKPvZwXCCd5XSnsfnKyg7RbVbDkHOotoJtWMiANwJb/Bfnz7
3K30OZ859oQVZG2DK3hdGWEjvUVfka2oiWEACuEZ/SdhIH0ZNvyij9mdFBerT0RiPDVXCeaVxHNA
sSBoiVZrVmWSQlJqVFWC3fbV9OBGnU+AvZMhrHlZoN2HWpiXWeREnVTk9JaNPpUZFr1xJktWjT6V
rgsdS0vdOqkRYCzjLdWKPuM5Z3ObO9LkB1rPpA9PfQy3GMTq8mUARBl4qsUrDfzvJpovGe2DgkRE
OFc/0SXHO2jrNDXyLCqG8g+wMtNI3yJEtijgxq2Td5+mJJT3MnZsjFDatgpu/S39m2+FpiDey3w1
DZQ05zIWDLEFpYQp6I5tG6oLtFOib7cysgZX1X25JjeRYud1B3T/K7hHAwX6ugGF86Xylv/VwFf9
P/bcJM0KCNtJsInJsT+ezATCXwueSs3tx57u3uA6jhAE+ekY0V1/iSQOkVZfcM1HF3lsG4dKx0Rt
oxK1Dffsnj7MkRhQdIqh4i0TnF9S74W+eFYWkliNdJz3frokwc8/eqcVp5gglL0VewoC7uSlWP7J
y5fWbzozc9ndDDSzp8fgr4eAPPIwUseuF1l25GE+C0U69Y9Wo3AYi2OpHozSaq6eZtTMQ5NacDlM
GNtKDMKnZ2uikhSYSvHa6v6W6dccMuR3A8fi4MCz2owOOLNwltAzigHw+UcjfHPnGDdi0QTzzBzU
U+g/Qwi8Dz0oFEObE7NgOqxy8FrTUHZTb2Qk8lmj9dhTOl2MR85Ww8ew/2ngrrRphT3J+AS+PXXX
KZZfGg0FlfDbMEidQcEtD/N3NgHCfdCQomoWNQbdcRY8ZETDs2s78F2liu5TWGFcRsAs3Vcjn9V8
1FzvyW+Kysd2X4AQhdYH8F25XIeRsoV0DtpP+CR300iHSZf+cD/pURDvYgD1qOT19U8klOSLrKuK
1zjTAIkMR60DpLx2o7h09/Nv3kasTVIePz7Kjtd3bQ2JHMsfmv8vAB0zRe37qvSSn1N5YdwdFaao
AlxFCwXpftITYbsm1ZrL3tnMwaLuQsrDcAwzEuvcLiWz08ZHsyJix/lLDKbwv8BBj4rLmT0xczos
/ukUmu6tUcOJ1P45p5AlIwmUyU029WXS+EbeXfOLrBwYgYHhFC+O0BMraY4X3cn2jaG7J0D0FqzE
kyilA8tI04X74n3dRZKBEi2gOhaf/6kMdjU5BcZCWGG0whDdPGyh2UfQ8mbF5ajX1Hq2EUTEUVmu
wEeo2XasOdjblvUfaZfdVXXR9x3QS0SrmfhIZLK5gbI62QpSCI8d35OXcU+jp5Q8AQNc7RhgCSPm
XBO2elIIE0Jyz28r8sn/5wZyzWe79b7/oHxxhAy18jXeEBoN287ZCNUiqToSxnPuV2348ndbn+Gt
SasVUVzwZoKZYmLXTOJRKHBVsgyXYZEtcAuSEglkPRJDcjP4WPLcn8OdlYQP9KD7vmmYUqqmJD6R
FMGC84Ko7w2HStXcpBdiENA6f+X4ubHFTe/En8tb6BDXTUJKRl/4WmQzQJ14k7pK0h167GY9Fcs+
US/Zua+D3rABll5a/qOvA3YRSeVG9l4ttFGnPqqz00tAacNNKO4LbCuJ4TszLY1xDZ912RrNkMVQ
eSJdPeTU4i+YYjui5QuHQiqHlzGtnpEwfratNxkT3d5Uy0uF8yUNreAo8IK2479F+n3MyM7J9+m8
hmoaHgPZjp1D6MUFscAyFQMDu0ims+QN6nJWSVJBj6aRNugRSTeWAmHpfQQ7DzcgICtSNvC8XkwB
azqvY35i/Jt0lVaYoRr2EmkTJ8/a2OzQX9rHmLw5UokUau5Ve1QVZZf7Uc0QORFzkO6qfcuuQAjF
F0sf5NJBo62OpG2t50E9TGTxkdtESF1jTQw+zgppmuUPrpy7Gx654jy5NOQC3y6QEUcjpwzo682E
e1ivhnUTib107KTXh2RoX7FeOnYzQXD4wwOoZtOMzkLwcW3D2nDrfRRbVu4w0KEbq1mN478IwkxP
4bhZUpBUzejKhpwxsNW9+y8BgAJi7EJgGmQlpSs+SPscVMOTzJB2CgMz/oEW2OGkAslpoMKb7q6I
a1+0zaubMX35GPg5zvL4nZlXBjZJir6Erptw81L3NrfosRFR3WFkfv4kj31Ml6k5nTL9qRwS/Zfb
aWeflkTXo4HND9AWAVh4vERKdIs4EM0oVQQzb+R4Dw9L0mRIo1C+zp2eIVv92D9LcPAM3/ChA83y
kGsYUWqFhcsHJ+oNLxNbs9sbw6ooRL3GbU6pD7v00zmVnaqejsU6ZHsBUqSOrRyWRRHhywvtDoVq
AePXIz3s3JEYsN35X5kZkWmR5fqua92il5DF7P0Zk4eAM7dMcV2tjRfnMOEsuI6Iughw45h98LvW
onPAOi6kofpnCGNr9vyQ134BldRgj2RMfb5kfnyaXvtTY/Nu0qSZhyBP6V9TVjrDiFW88KDZ5plb
rEeLDUAAy28PSiZgFx15cpYe4VGd/pq/OsaP/2+OhkD6smVcQWxJPpH9L6AlQo1scsHjO9syTEfh
LezaPO3e05vtu3AKnxHpj0HXF+6upJ9xtcY79GSufpRukBtGA0gjNdOtv8Se3gb/08vEY+cJxjxI
nD+WdINEgPf3LWGha+qaXFw9gzsZdFgIK2uVv0hvihwLpmPCHxyA4R98ySqjTjQvPm+jxiBRVQa5
zKiBoAWksgqsqef0RPEc6GQYpx5z+bZpXcpPMhRgpRJm7ON5ly8yalhpyvI5Pl7+G2mJoHmpsDZc
GdErNPgD6QUROkS4hJ1xojhEgIo7K9KztMOO7z8R8nIPCcHPJE5Chq4HZCUXwtWcTiMmOWdEpVB/
6KDV8haC7TnLc/eRE17XhSEl2H32JkFdW8oVaqMwmI9BGEaqOc1JR5IafnzyI4kIgzYik9CG5Oe4
GR8M09jJ/xiGRC3PZKThw1G+fb/BQv+Dcp4utG9PYgXcmtgniT8khq8vAlkXJJrL0oWgX0eMWTwI
7dUbh4v0lRa7M64oxrrh/VbIN5B6HA635QGmt022T3jIa8y4+qukW5DJrhzfWQ3w6Movuk8xqL+2
yS8qtLVp8hmSnCZMEwpKSG3crxbhKzmzqOO35qjUhx+WEbAKZ2Dv5ZUA7wrKdT37TcnsPtXZH2Q1
8F7ItlfiY/6m27YK4aBuTC0IxVq+MyOHRVYn7DAKTjcwN7lGnd/vYcknG+8TY14pKp9aDlzcsiBR
XipL9zSNmQjQ8psrDC8ZEoGbGu8QSDYsb61YJb662DrjgOOPr5GPTGNI4g3AMmLYCkXFCbcBCF1z
R1PsDDKJGwCA46geO/yzAV+h5ysUhXKq3MQ+fTLiNZCdq/LlaZgAOjfFJn76daQn9KoyqTHfZnkg
1UbkSs5lwGsZO2dwCxxbyEAIgxrwKBMXryP2PKosbptC1BHV+csBSiXe1PkLupGh+vB2x7HsH1iT
cjc9Gxa8y2noSaDgKtMI1fXb7zT9mZF9VPYzkNzLnKsE6iRaIv5guYlUAl6cuKZtO1+LzeicAm+m
nJ86kZbMQ9HYOfiZeFwpiyfnnzINxFb6fIto5LkwVR2j7B7bQv4vBI2Qe5Wb3Tjl0BG93xzpF6OD
rUWX5Nyk4Xd4uxUaOIlWjOD2McnjCB6urLhpmt9q7Ev1gBT/LecjtfTTOvtT1WXdGd6/DcvYG02n
A+zcgsa3OqS9VITPUtY1SphWeRgnWCHE7w0nxGDCT6xPAZrfAHzr5j2A3e7bXJH4P2AygOrt3ZVE
GZEtFqKKTN9Tlp+bMAJjKDV5Ld92D3HrJJZPacNGhUHZg5Kk1irNLp3wifPIyynTxAytzD7jYzaU
/FsfXuRLE2VCi4JGwBTLVg6LOtF4chXnnFXdijEtJke7c9mDb8EzIRhElNU1Ho+oCqALhBkAC0hY
IME2QhSr55uLOWmPEFtM5bKnze1OouFSax74d+u8gjg7WK6+Hc5PG3r0NXIXfJ/Ij3VCs9YSWooe
yG6O6HWaNRQJzjLQpIw9grouXcd3+K2gbUn6XAF1UHqy4Z3/W0T/tqe1uFkIsw9qKgWMitb3cE01
Guc8ou+8ZRGn1J+coSG1oD7jH84CykQWwlLhaQE6S1wiRZ8H1eNl1x90b/2COUU9QenKeyDLpjM3
cFANbv/MCYYGNdGI1DYdNXMe2BQ4wbL+LZhTd+RjQDYyetUfL/VEBNViBT3pnXSCdbXRVQfnA9Tv
of5XgqYYz+EoLdOINLVthLCgSGyu6CWCHGXp+2prpG32osJf7n4JxOC9LS+WDF5Ug05IAe4tuNY+
hXsMo+1RNjD2eYZlVEPvWlmDmQE2QZoJ8tg2Wvlt5x1FMs/UTQIuUTL/xQvzoyRi9VsJ3d7NNfFa
JAYEjeQBQqWvY+knGQBCAOuojsiKiBIHHHWRy9cMYsAA8NC03iPpGBUdeuRxPwyDt2Ub+t68AKLn
AI9KqyIFl/2SOqo19zqIZaLveua8u1PzLoNF96oP/84S+lUcE5z2Ti9F9knTkKw7WED4sx2jfjG1
tI6jPQCuQgqJNCoc+MM6jZBGOD6+GqIVnckd9Hr26bq2m9o3sBrggvo/i2BsgKpqKy/XIwHUemjx
0gr6srlZVxUwBlBq3tRxTNzx4ig2ejGUuMd28Ua4zc9hPwmhCcE/nU3u1I3ruOIocPVSLJpYzZsM
0kj9iAhoAFCCI5xGjkWNhtvGByN0Ztd5z1/oLZcVXG7xuqfx3wMGMsMCDVTLfmfDSoSerWzot60S
VZb234DD4IeXqH0BsVXVuiTKgq3GIVVQyTY5juYUsDzccHBV73uaf89E9MHpfwPSSG2pvcmvUxqD
Tx4khY+4N/vUBrX72cApaSTZovIulX14fQKpz24nkn1tJqBhpw13tGFuhIs/M5EnjwjlAQHKuHy2
MohUcg6QWQNr49gXQRdRLluieSoFmuoBOSLNBgX8grEx9usUY6XtlXiKgnreKSVMqDkHpTD9WIOZ
FarP9nrKNbCuJVDt0h+8ecg7v1Vj80RNIFmA08X6sWd+Q7wWAFrJaJnozT/qTGjZ/UnfwyxiA6b5
ZXL5delTXZ5hxqa4zLH6nG9Q5gEfyz7F1obKUyYIn232NuO7Fs8m11NFtp7iS4pcGSdloFXxMXoM
L4LLfUJaDW0N7X9AZUbRDmpMM22XpTSy7HX2OVFJ/HQFLSHHs/MCenhAQ2Qn53a0AWsNu3ro3dKH
JERI/4a1t7wTfWhfDZ7daRbcqA58rPNFMuVEshMQb2qY6GMU6y/KBYuXyutm7mZXELmmRQ+EU1eG
bB1kQhA1usLPe0HpsKXYvpBQPEGCVLR0sC3wABFwLnXD9XdRiQPmHhczL7gB/1RcPJrYLUo3nK3G
ED3T1WBYbOl9o5nX9bo6TwG9ci+hL0UrOx+G0Tob6dnd19S0c/Cmjap5GJqdtlhHRtngwvv7pAP6
z5ww/LuHZ3+8x4ZsfDJLlvWGipEihsMYgLuGTbxrTaEhCU//uMBPSD0HIxnpSARytymsT2tMkGEM
FYk+jYxmi3sYVEmOzOJ1Su2PdC++MJZ7GGjlmDU2DnVF6uUiSMYIVEQuOEbSICP2XqIAYOLNbMy9
1Vk7LwpyI5dW9zFxJqkk5Xg2IblAowOfSPEU+qH3EfNFnCK9+cnX30I7i6J+zSGl5UIcJIuzgb70
YCwBO1LhV78IYymaJSz/WMhZZ7QLvA5EDyRi+6PnvyX9rWaeLjMXJyaCwSIeOKO5q44yZ9nw4Eaa
pY88sJD1vU0EnSTd2vNqHIydp4yYOyRMZV/MdP2H7mj/GtLDlBMLTfdMLSEMGRyVP4VnkM+EaaeU
msLlRZLfyj9N3ydPL2z0IMa7j9Tz6x9oNmbP4Qili/D3gMmuvq9FYS570jorsd/2SjNakhtJ30gt
jA63tcWYUB+mpIgR0wYKyqckmQf5OZkm/0Pf0AnXcT9s5NbL53pFYxdvslaLsT1iEAgeBEhuvRZd
nOGVge9fS5rVWT4GXzes8vBV71eQJ+9Lo90aeZjN2vkRAaQSxi2bnsScOiaDGtpRVCrKF2DkMsOp
l66dqXqT30c0jxopuoIBXRY+dF3Lj6EJAbbZKh7+fIX6eh+rLwBoK7YQYSctfEc567i9JhzntAHp
VzphulJlhGfeG2G91m3oyqJRtBNCeAdXVe7zBt9C+Jvm3nmM2VeWNeYakQsrc6btH0gQC/M+oCsz
2ZMGLw10XH8u9Q7K1eiJc+Mv6vCAsIWWXYO2BDJDFT8Qv9rMdzdRzJK66H1aztbSnhEVIOzj/TdH
pQ+aOcENzdFwsIWhn+P5JtkuplFR8RXakif2RX5zvLXStpwGAuFG+h3QWq3HbqPyvSezSyIZ47oF
ablZGkOltCz0XS7OuLA3X32UclpRmVRT272oluoogs2BTc4Uvai6Se4eaHMaJ/kGtTEHktx5kLgG
xlJOFUNN7n8zNbUKwgr5YtdhpBS3L/1BHIfWXZawV0sXu7tYrNfnoQBQsZxkoI776Sz6Wsg6PMLc
bRNdMaWSoiZT+DPaVYzeEvMj4Wd6i1IR7/zF6QyYOncMocA9p6oa4iEayHvSKxItanL57pIpZOXj
TshfU6FhXDbYWyeL0wPGeEnXOO+qLS+08+DqhykQ6qr/RXVucP55na8qBOfIXa506ydoyJLPx/3X
Y8BUV+jxG1pj3jhe/fPF+eOIgPLoo8xwsWdSYKiYrZ4RUyoXBPoOWMqbl8OLObhQ1akdj925cyJY
yAyjg5jO0BZNKgQxQbUw6abaWsd9kl8COWorAqVTUwc9VE3kZsMgUB9bTrc15LqDRmKbuAOAs0p/
dKORwVY4PVKOs1ebszNXUfSG4xHnwPC1gFYt7JU/MP5nc4LY9mdXUKsgvfZvUvvgjwzor6L+L5K0
gtv3sHgSMm5f8QDOL5Q+9jPTHpVa5s5azylag53HqMeCpRygsGmuy9eh5TJjnkq9PUKRDSYhLF9N
JIH2NNKiCUy74ggJaS6tAGNjOYHITl+TsNMmWQTw5LoPdHM3Zpjxyq5h8LMVHMOhaoIhm6reum/T
hVbAMNEwzHvO3XOksaux+6gtx67kJOq3M2JbB8CN/2KV97T4toV7no79sujBENidcqXOClAZ6oYp
ZcJkdLZA81C+0RsbcS2NAxk3jtK9aAFwui+Sj5ARTwtt+GaDSrCLGgeTbczjqopu9KhJim4pRfZT
QIWNkE17jHi+DEWGCffUjbYD7LQ5bjK8+u4LVb9WmwWg4Scc7INfN7YjgPntFeHPHOkF49ehmAtZ
Yy90LdmaAd75HpQb0wLJFXj/S+SVgkW+6AvRnvv8IzRR0PirhfbWF8qStFKNzZm1rwVCJc9cKK6v
JvcBYlkAC1OzTHpJdPVpa6Utvj7a/nNrMG4BhiARPOFArOzuMk6IfMpS6frcu8ULtJCCp+r4mqBe
ux4sYXpBuxUugDdxvdHKOTsjW+JHH+Lb6hlpr3vu2UM9J8L0XV8xnScJUcDur/gmOqv0qKAiZkAx
nHHSJdHp4Cr0MOkTfqEa07+F8oso1h0GnJAGFDNDyg2Stz7LRQw75sWLHS1m/ZkUp/o9FvCaG9xv
qfc0X0KPO/zBY8FwNFW9koawPEnTu6UHoDVjCJssghU0N8YyvawlJCt6IMH08U5ZMxWbtAcBjjD2
gfSMi9u1UZph1O9zF/b++8STjFtweGxQvo3S1vuRD2XW7CZTLwa5S2d7IN6KaQ8QeMkBkrOqNECA
i/sy0knxjtMtAR03ffOS17uW9QApsGyw/A9Fa3pIjqYvvEeZG0GYxg2KbxMvZMU4PCIlsF8kIl2E
bIVUtiUpNTRjUZg/s8vg9QgvjW0sA7eAXrD5dyrAimxROwi//e5glcGz+RxdhrSu98zH/ykGE0nY
6p+AqhAeM1zDZEruToxBpAO/bROK5eOnghNDp5vvpjhdhNrTEq7wBQZWB+jETWeodFb0e6wKernW
gdWclWhNKRAV9Sj3sY1Aftcc0TiXTszYlDWRP64/phEndCVQ+CNJ6NXdfwH/Hu68BnY4Gz2D24kZ
MR+m4AfHYbKIt0ilzUvVxokQYx2/5EtqfMt5ex1Yhyj0Qqe4L1oQybd8ZivVKga9WXcP26iat9wQ
kChHAMscGCCp3pZk0XLEXBtawO1XHA2hrTIhGoEb5OsIQ2edDp/wH5kFtUZb6gKHU/IYeT40w/+1
DRCFFYL0IR2YtOwS5EEHZ9QQmKfy1Mu+h5yb+KI0hd43pLDrryUAf3dMi05FrRWL0WL+wjlfVaqP
9it4aTx8rboDfDZeLxx/LdcvTo4GxY4/U1LvwoNq02xg6t5a+vicAm6DSnQydAckfs41zaKByV8o
i1vyxUUt2d3uELGyX5Xb6XYNl6GZRuSrKzEmtNY/H109wvYpxW3Gelam5aa13YuGL/JHBln+Dxvn
/iH2HRQL0HjaIjyz3xM2ymxs/X+gr+FYCP4cZ0X/3TfEfO1JAX/J1z9T5kry8RI6VsSZTZGcjB18
MJxjZxnXo3FgRsjhJUtMLMNsOfi1842gOI1vOw+cI5iA3nxhM8U7ND8SIgGwiZxiAi44rr9TIt4E
1TJPCAH1Hoe+uE5TqFPzi2MEzDkBI2LRKx9iyQDIOcIjWKsNqOjgB+9FB1GGg+TwPPve4gO2BHA6
PDZj6dESrvqiRqvB67V3hDvUK10ezBpkMMfvazoGaxy2FlYyPaosG71GZVLtcund4rm3/Eny6PIq
GLQ44sx2yZ2uYWLC0KJ1RDvooYuHz61uGrgEX4RDQc9kgEBE+A+JfOSGIKHZibYXHJE/ULU4X5jG
AR/Rwac9JlFrxz6NAH6Gba8nbgadr5fPMl10J5H4ktghH9RK0qemjBfl0Z/+d3UH/NgbjKkbKeuW
lVx/hC7QqWXNicOKek56+ZkL+lYRSurfb7YT667CDVMvvZvtb/yiDGSN4pU1FEAZ6sd1AvAOEqUZ
UuERi38FNkyQ1gcvxzta14vihAcqgTmez4sTQTkejR4cHwdPQ1OeTY9RJSaml24oGndP8dGhdAup
z5HUaa91C0E4c/+6cJC7SuRPxn5JPniBYtekoFuyX7/9LitkgQbpRkTTR3vbEHq8rtyxI3NfQ5ku
lhZrqXvpaxhHJLPMOhwzLIeXyoYgRyETDyQSNszizs5btoPts36NdIBJ4HutYppWTgoEgEeZFRhw
8xXZUuUIenn81YBK4bFPhx4Uq2zQ38VrnO9q4uiBFUId04LmjvM7hZYEpRNa802nd78UpZQ7XPWm
DCZMqf4nAnY3oz83To2bU4egib/FQW/qLBQqDPbqWkyX+ywaFPs+Y15oukQHE0bALCripZMgGcgA
rLaM7JGjvIrl8F1WQn0mRCugss7dMYJtewHokBfSOnD7t7XUMtWKUGCfamlciPlY1DA+c7F4N2de
Ag7l8sifK0c2KkZ5A/eJnodKK3MBw4T6dXXvfgMyk/WxlkwBvOJKxV/t9m6yYmBlaEcQx6ebkRA6
NQLd2twTmcRFAWMjcI9N+XCEn8CfJnS27QJzqKn3x1bz4XfKvCMWBKNpCuvwEi2JaRH02XYL2b2p
wSBEE3LzouCJTADU1zfHnXXtea7nyssI56cnOOYa47sNiu3FlpffrKgU+G6wx9mL/hAeLHQZuTo2
qRxUDD0GU2hy72tVk70BjRgwKbNw5/dtIfWGD/1LnC8NBnfTpDYcNKhkuH7h4qc3BMTb4ZnPnN4n
bBHi8OiMEMNCdzdShQOq1nZV2KUYsPR/nq8uODky05RkWnJm4v/a1KpicsjaObYv2WK/a+iRW5Ig
rPajm74Gez9ca/h7Cl7TC3AF3J22sFNuOf7wvcfUZce/Yw5dr3DvW5X2hpi+HrOIiLW1ATIBCC1R
pYTo2xIHnrrk+RTCqIRz6Fhw+iA+hdhMlhQ6pG7kziXa4MDVsLODAmZBuuqYVkOk5NqzoMCXiMdi
4fn97ii3hxZ1b6qNIP5OXR8fK/tQA7yl78M11jomYElLUHaTfzSDhuAiwNDpDxNX1TYGINFj5VUs
14/dmm0G8vY/VUC7OysxnRwVRDhbHhAzOO571vwWLz+Yl9WAnkcQGfrHVkXj5dutv7LTru4TIK1C
cUhn5nYefXb0xLbvpfGn47cDV4cvlaNnD0SomBUkMSFVSpLfoOD7MWk1HpcP/W/v9DaZYWsuVAE7
jXo+375KDRCuTasn6zXzDQwgC2lAc2853dNH1HcKHFZ7BwOliylaDvbxC33pOtipq6HsHfxJgsf8
WtBfdz12xj/0N3YusWpbM8SSsdXFThv4zSd8cw/Q9+AxgQnyPyErUu+t8mpekM1gpqOGR1gIdldG
93fRb5ozi9a7b/yWoflMjyr4SFtEKJg1Jk5mjlF1bKSnomaR3d2YJKB1CVQcUGKCRqBJJlTVSk1T
z9Sg7VR/UabiuQ/SwCJTE56mts7yD0AhgLE7a4qWnZoNYP1417X9KVPCKyx/bXse6DpbevTMx3pv
eEqa1o9o3C3pKwTXOYYzI2LZXjpoaVN1tUtXWTsAIWKQARH2evEpOTaVVDPWSjjFPr6kgPDw5/fg
5Y7ojFP7QvwSqAw/tW2Z375IrMHlcwzbLPofKFVT3Ae6ga33PsSVKDOxO08qZPsDXSe/kgFw2s+w
dwAP363Bi+LdBFp1lv6Fq2ggKWk//QJKraGF66lw9WE2ww09hfwgCm1aAZCCYaMk9ObYE0wHfxGv
/gWlUtnZl3YOaHoJumwQapSuW5r99wdwP+t+1HlUkf1UIIIdefJ0JZn407kr31R1zLGbPUrLN7Py
sq3CrfbklS1iRolMCG6BrPtsrqsRifYIqQvH8iv//DLozN8+u5ezRQLda2KbCaICG4WMQ3v1EraI
4NwAUfo+f72EJ6JR2zVorc9votJqnc3lAO0HK/fz6kHXnjgYi+D+uvymR8ABQUCXjybN/ePHINJn
UWnlqpXRVREemJMNuE33xU1aioIgXsbT2wjl1UxVOm7S59tL07L4DQhySx/iyKYwo3c5X9zTQcGL
jGi9RPXq7/C3USwHfNzZBKhE8KcuTeiOnWwo0upvcW+M64OMi+8cD5AiYPq1H/h4gRcYA7aFoi0b
yUTPyiU29bKDPZx5t2Dk4zTxGCKTm1G11yRkmKtjXYMaZ8aDVnOjGXSfBVdJ/5vsnlZyvqJBz+mH
sg+uEvqeXlRPuByOrrqxj/jeohAU+HO7JKXXxrnTVk8P2TlsD7K+nkJhFKqrfMMiy65aj/BG6rTO
2JOsbSdyJkeBf35tBE/Tx0/+zemlZ95jcHHz/tcIeXkm1nIxXhGcxSABTmwztJxoJvJgiMJO4NCu
LCe5BmApFjj85Pfl6H5Y55YTU3tuXWhO7u3/haXwNyFYC8nObAl6ag94ilTd7njVZXtAwjq05CfG
IdHMhWWiUILFymJ2o21+yLZpt9a13k5NU3Vx7VdiGJPSvmK6CXCHbQGl6t/9WhMXn+eMBJUN4H0b
9gHxMC7W3sez464lIofZGqaVGfCoptoZ72sUU32TyyAzxNZh6//nqdgPve9mvZ1bReiYaUoxwrI6
m6cdrdZXk0q0sEycwFPv1Lz5bS54NCXPsctp//dji+XwwI07vzGjydq5gmKxLMBCvPVZwHV9SE1h
5CbodEt8+FUSRlgWOn0PKPRtKzWkHmZD+GSgU+Cg5Wy9BE1pDw6887d5VtzVGx+RP5epNVz09myt
AG8WjVCGk5RgbkzSM37/M9ezLLFz5tfK3pf+34nvE8/tnWqCAKNNUmCyCr9jbc30SeXL1+33gQzr
GwGrRjU288tRc8bnz3Ka3MpazCAaIX+WTaYO2BItSUYqGlxGTnuJp7Ya9yWFgddL+4lBlVpyBPGU
9oW+GJKMnxxnFPdXDlyJOcBsrtP6LJaJwk8TbeJU644GMoyzK/9YypbOLGVnPScxY3Fz1gJzBqyH
mZb/uzuZdRJ1W69GCxmqSjcup3TNgAQcayv7cqwJrlFBIofeIo1zsYFIKydezMgdksY9pudMNl1b
RX2iN0AABtXUH09q6bAQ3qNQskJgOzT0bV25jkwX6UpSB7HAg9E4zYRUaWyvmIV/HyC8bnLkP3KN
qSutfnL6nYe7JkMe+HKmpiW6Bc7wL1C13VPkzYZ7X6eVM02ZpdrDNyb8sLN1ZOVfQ9EFjPUhwrtA
tU0BMuhKDn4wOnJdZ+msG3qtl+9ZWr96PX5aqDcsIfY3m/lyOQY4OKrPLY1DdOUvg4xeBo7+yHPk
AUe34QgsD3ExRLHuSDF7Pzr+Hu/jw6XBZxGIdXUwbdbfmuk+e5c7PBI+AuCB2bQ4wqCQ+RYhSNGc
jrTYA+KjYqOC4nP7iQWOPaLX03rKEUGNqzTqs0RQ6ddg2pzfDPjZzIQ9nNHo6NgSdLJ0t8WF/15R
r8r53BZJhlS9L4XEg5eP0NPLwdtsknhCijeSHyheY/H1jB8CuPQWHaje9hVoL/hH1AlU1YseUHOP
m7XZx/6uq26nRdTwO8GZ6uyouwyMloTig/hFgBakL+wohjvPewjg9Teteu9gH7JtSWB+ez/wRWgn
7nk1ZYDh0z+mJoYjW+lKmUXBRBHwFhuN1aWnFUx5u5nhWNnC+JpaZCdeGYIe1eoNlEe8YWTGRQ00
IsCFvJErfJqIV81IeobxfMXhS5ELFz34Ju2EXaEPmjVgtpZt6XQpTAy0sn0eKRxgHk9chsEHs/QP
u/0+dDieIAZmBaSvPDrQsV1hk5jgituNeVC5QMVQJZPSbYB07s+HHvKyb222nogPRWRpjCaeTPJ6
x+8xSFvMAu0i0W3Y+LwdSGr4LMvEoHUxUUwjdT9bH4sFDSIvbDSgTNDU0KZxkUJvvRnDyeF6jcpL
zYqpfRyfwpQ6WxmNWlzcRQ486EG9TSUTU83UIT/BBhieyB6DRlj2mbP09asZ2GpgOB5io/cQzqSf
jwjvx7HjT6gJI1eTu8TcyrzyAvabzqbB0tD8u3mtzwoNZk4ftEMgN0HEnuJ9URi25Opn93exUPHD
K/ZQ1A100Q+FDJCWpJKrfyxuRZC1k+WhsFwUFA8JzDiJyABRXbjYXUAT2vnCLgt8wREfDihfI51k
ZPy0QtCVmLCRYIvbCJsJ1Na2l4vjK5fFpnWyCRPX9zGalVJbOhAgwX7biIsHQ1cx7VwY1PdRYh8u
3oY0icXWz6vcyCP7qqIlzUnab4KD10PFRj3KsaFFA1BYaZpcAOnJqywWnFZ8pPUFLacjvvT0r96B
Hm45mjmRGchoEHSEeB/s3++OXHui0wlzhfXYm3WF9R7yee9NeCTFHAgxZqxU3qJEB8G6l2QPWHF/
aLrBJMf0KtDvIswzlZS57ZPM2QIk2+tW3gSBWv3EpndHXZ7rc9ADkXv5EWfykTC1oGIKJmxQNIvq
S4DIyFuOMUT09LAzws4Ob0sGv+l92DmDsfooqaLO0ZNaPYlICFxnUmAQuFpzhOurJCOCYnotOGqY
pC/t3Znzx6p7O/BEdALhTxLhEzqFxL7zpziynL210FS7Yt0K3MtzWSKWI5BLWpHgCzeFo112j3Yx
VZBaWJhf7Oxrk6No8YVrv3qIs1Ag9Jk9IXafiXgbwdVDvkfRM5HIxDEiz6Rk/VNdsqLJi45s/znX
AHYWAPL7+KeZ9ire3KdWyDGQMLQFmzCVLq/qXZHkw14f0dcWKJzBbnLDiarNgykS4a9gEP1L53T2
XObbHDnDJvG7kxXDXPu1mhXVxCjyF/I8e6mTuTHEVvwcgGyhYdjBNBL9Ob7BbWxe74W5Q2ro3z+6
geCIZ44a+8swjhSN7T8oefuHLWWgSLjMvuWWLi6r/pJriOgw0rZccWdmPNOPT8bVrG+PLtsiK9+Y
vZz7r1a2aTJeSgaile5okA/2ljHvXmwTBo7A03MHzt7Ahz43cFJGTIJ0Hj9skf/H8CvzCtaf3mr3
97LxCRfdVaS+kH25RLoOTf+2jSo7LHs2UuF5jbd4p373IZ8GTkOfY/v7OymGohh8WbqmEhmk3vNU
EtnBNsohLT44G5jIDS39EyFu4HsIaOG4drWidB73QO/etoYWtuqa17FZVlbUqL0RQOylNVIoc1YD
E1mDYqYrfWKkJFDezKBXSyGnNiZev2XyRVJTmbWs/olWhtFUtU773zkcAMwMX1eGN612YdiIOqhj
+d/ux5B+xxvFkECIokoNYYHXu8VD4Ea/Z9Z/F3ydHMzTbYND4WUTsTMjkqEM/1N7O6/TBaWAAEql
JZ3WGCm9iCDvfCpqQt8HOLBcSEAVEE6MyLQmVgAQDx1l1iAXRdO3WhFkGkqFK/xMVxG8vGgtuKMw
oaZoCIwB5sCMePzqjSH1PeTG5KJE/LB4kaer/jws1G9Huhpcg0u9rZIaDfZD1x17bV26l2SaWQMH
OYJ3mHYu3ekUlGBnrrt2FnXWluF8wZBRkUFmx3lvKqg10wIcwa0xVvf5uNg8p0CM2bnWpMMLBr6O
g+UvTnf/FbkFQJHN3II6u+krhZL4Myy++Y8URPmlWQZtdkueZDAehcZZzpnq9LtOtet0OGi8YPZJ
D+a+5u+VB+eWY28bsttYziKMlgczyyoWhHcgC8DAqfc9f+tBw02P5a/hv03+FwkAxtZA8TUYqn22
8/pn8OwigBmpPhGz2Wjh7AUgLxUWfOIKH32TzmAXJsVmF+9G06uZ+JHc12er9r9V28gP/WTw6lUY
D3Cwb3KUW5oWmenLJW3FqOOKiqdEKjsZchYlhG+/itlPN5GDalk2OyWX7HqX6y5xQJjuTcLuzJ1d
iudI2wf0Eh7A/JeKLbXS2vhUr24/V+mjJ7HTXuwjpl9q+weHd+ZpJzMP+tjV4c9ToE2YCcuMHgdh
bgNZLTuXMPW1Ne3HCzSfc6JoHtyVM7KOP3o+wjvo2WWnhDx3BlHWJ7GypnZR/+AZQyn2IpYcSALN
KSbFOc5WvLyyQqEcr0BgRZ4OONm8/I+7rfOVVckroteYBz0CV7OF8zA//Kd59wxPEDCrtMnP8eY1
gNFH5mFaVeh5IFW55s0t4dfpYMa3O/F3gsLN+u1tScWU87RCfYeD4GC1nTkHL+87+qDwzaCIsr99
SZ0w6yC51ikG6m6orPgwuPM9KWlMaOEapeqvJkgPF4oHCZq2VuCU77qWNdyXGRPM7nkfYuim2xXe
krqMlddYIB5/kLRRX3Az+wz1Wu669SscgHZGDPOWuAeaGyZoInejv6Kg+YFDol6TfbWe3SKbZHVx
N7C74mXIHzXPb1geACPb/e5VVSghTAdImNZ+t9EzZN93SQWzDUl6FTP75vgpqzpplo6QrDxBNbUL
h4FKmRn6TKXbQEwn7MIDQLpqoiDXb+Z0wxD73Cxy5MI8Yl5lJQfafAYoN9WaZQu7sxsEkYsUiyiQ
+e5/r/nHgkgWEizEbSHtuIyMSCQqAknnyhfQDefK/3VLsux/tCuMHpS9/vUO11TNTeVAf52CLWyi
SPxFQwWGFuMtV+puAL6Fgtyv2N7uqkffA3Npk5TEzeEh144LpJJuJUNc9NHyHzQfeO4VQeszj27+
P4z2cyfFkK4WbgrHiKDFtpi8L9yIomvZDuDQuUiRvKiy6aRnp1plOdB2L8kp62xveBa4FdxxHIlp
pChocmJzXT7pHGI0OSuEUD0ggxKWLzi3VwU86XFjn2t0C0CNsHnO97bvX2VMzTdcAwUuIJVoMbnN
l3L9Tc4VJ2jDfC6VKLZlK7NiLjXWrN00Vlj/r6YeZxU6xoXY+hRbWN2nWnO6xgQ6OhIhD57jZH6K
9mrfq8z3/9td/kfRQFVlwn5Um4e9gteWtBCBzIOQiPsPcnMT8MO3XhmH8UHYVs1oIrhj7gGE2fKk
U1MQtu9kMJqQ/+cBh+qLV6M9mfP0y5bDsbLIWK7T65+oXepofdPtuRZq6ZZ1NXNkMRVknjFWm3fA
R1laF07/3io3YAVIa59owamcyE+UA3ptxSGUHaTsV421/6ei/d+1v8uXDngsMCdpYq07V00t1Hu4
SpHLNzULTHf/uuyRWJ64U0pTSsJNo/hroXT+BqxMuXLNkIi/uo/UTxtVIsAZRhHjkuBkcK58ftg8
wx97AZBP8RR7ky8V+1WASyBBTqKBlAJrSoh4WK49PxA43rUrOwIrzS9iEUd0GvbNvrEzKMuLMkXK
zMURRjxr8ptPb3XIBL2x/0PVPZAwdqBCCOuTdCLVO315tUWRgeGtiyn+x/PTSHxk8/1OI8mb+RJ4
Mc1bd0Mm9/XvuCfmG6mKpje/PTLUQPhMK4mnpsECDZww8aljsANaEpkwQdxJqXgja+F/JF4M8/f8
o7qElT2ck6H2zEeQ0tIDSrw0XJheNbVXjcynSPtjLs2JLHeUSwUiKx0UtCRfU2/65JZlMi566gg5
trUR+Ye8OXYEgmsddhBulLA2/r85ZwxJiDrLKFvaOqW1kSg9dQnoWrwUk8x4AtgL551hm96gN3X/
Mqxiw7Qwv50pXDpO6tYquBNE3Y99RESBS5oP2tm5fLaqfXg3Q41DYk5VJ/wpwTQeV/25ZXqpQfys
OdE36kUUB/Bm42Wwlu1yr4y29hXIFDiWbL7NXYSQu9FNem9kOcGxiM7NSwQUTBkUflynLzuKBGwp
PUHBQdrdONZwOvinFq2E+anCMm2+OPPysAm4HRaPUCS/x1OrxuHdy/GwiHObA+WMvlG2C0s/W71q
sttl7VEtd6dIlIs3veYKv4mK+Y8SvBp8MP6OEU+AHPXY739G368CvHBJhFDyEhfEBs9fU9ft92Pw
lTgB64xEK5KayzniTebLCIrzBJ7OtLZsmKT65B/8a4CaTKmAQEEVsv5FoxHQvUZDe6GwErNY3z3w
0rgqdAOPudqhseYLfuoLKQmyNS0NkufbCk9nCTGUacgyFqPVflZ6bqGhvIwCnY2tCSikka8CXb31
P0DuupL8uB3EB48eqFmSJgR9GVqEtdxfSMFEGbKGh6g2yxp8dhOj2l+IHqF8f8YbZVIMPSlMFKcD
pX9q8PRO+J/LhDxFIvdOfySC4uLZZXn2Gy9pKMJMBGWbOWbJVAKAUT3Y15x+JnSwTmbdUYJrnG6H
ra3RiTTyf2DQlbfALju1FSuLZmc/cBcPuCIByDG2iUSwpTkGgycElyuY/BB1i8Bl8Xy0vVykjCKE
PEXE9Hd3DBkUe2pdMLHqgEpsD/2pxAGQRQxiUT0cT/5aP+JAdDSfMJtsVhhUvnvoBk6daaaqwEfN
xmEUbQjpHUgN8GmcEo3YB3LUX3BXNQkVUH/ihyQUY85P5U7Ozo1yGtdMAEIQeRTVvNL/SC6U0PbO
EHBXWeZNlw2MEkrs2xfxyl4A4s4j3LV9Zgs2C50DcX42mFAlWVxleiCaFj2NWUUFHO/ylJ2ZPnTy
/khL4g5iZWQl6ima6FSrXStTGOqnSvlD5VZwGpS4LJzIbk1SHp2WHXQ+5Tc5eH8awnI1JRQF9Lkh
yd/HUJV4Itdzw+HagCHKwYovzSnv1hKGt/TonLNMqz5qKbIN/XvUTlfIow0GuEYFy3lgBdb04fJQ
lX9powWuea2VRB7YwDPSjYYyYZM1WyI11s8o5yzFmrQqk/or4wuEbeST6iLnDumZiFh3bhn7kzQ5
zPbwhTE48VU8msKW+kjsMdUhER6XhNyV6l3rLc/HpLLKqU2cblRr42V6RPS45xD0A9NHyeTbCkd9
p74JGSFXk8wDPQfZu82bplxIFp2AJIhD0q+04Mwo6BEp/QJhPx2BO8WSIERTMeIQ0l/mY5iBxPkx
mO4F/frTSZvx7E/6Yqo1zelh7jdS3bsErPUatVcrOlAtE4wZed9z/trRQZLjiv7jl2pNP2MOwlFR
tAcV9Es+8pAK54GDDf21a8UpzxUzf412xwqeE7mMmJE4i2w/VmA3CaFzf8AdQHGN2ufR8H19zhy4
Nf8vwVkDxrJl3G9cYRrqCnlFM73xagT6WLqruBqObfdPuaX93TQih6qriZufxwzdca2CSN5ZFOh2
PxZvjYl4Nc+TwA1rh3Z13hTKGXUmWR3ixf7gC44xfgRknXvontTxQaOG66oE6kxZSJL7iOYLOpmF
9ETkMfeVqoogm9bMwsQWY5Bm5AUFmalzZmSMelnS9///Wi7CpOo7zl0ZgTQOYWwSBeNoNIdo7Mxa
NTg5TTo+zv0O9xSCj/oquhvjUNxZzfXSOLdxzlmje9Z7XfysZdo7zOahHPwGwksjJCDvCSgjguul
RkfYIfeC/h78c2mWVZHQwQX6Qkdx7YmZlHylq/m+FLWF3xtVVW7duwgKIqNMcY7dzJXYvpMtu3+w
qhjvArkbCx0JMqcpkNSmFYwFYzxO/oyrgBKiQTWbK5os
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

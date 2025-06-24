// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 20:20:02 2025
// Host        : NanwanPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Multiplier_sim_netlist.v
// Design      : Multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Multiplier,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [8:0]P;

  wire [0:0]A;
  wire [7:0]B;
  wire CLK;
  wire [8:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "1" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "8" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "8" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "1" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "8" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "8" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [0:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [8:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [0:0]A;
  wire [7:0]B;
  wire CLK;
  wire [8:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "1" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "8" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "8" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VY1+mPFlgCDe2y9yyJuPVvpR9vZABvZL4ZKGr/RuHxy5v7gUZkLaBe+9+9gCOr+Rt5sxn4kFbkEO
DfdJdUUafuNRwrnc1B0dI5Hl9YgE7mYK+VtlFwLre0ugm4JHVpDF6kDDGXN9KYpGJ02obI821Ugy
0DApznl5uvaB+G/B7ehG0ZRaHhcjAGuozLUXn7VPXRA4//SpIAwYLRvNLyVPkTh23nev4ziaVbwB
QQsDSi6vv8QacCyml97wiodmbDmJUZWo9jZl6h7DX4TeYsWRmHEa4QBUoen335wOKB9w8eeUyige
cyPAs/hpV9mDqzPIcJ27Dhb86SexzUfxknT+1w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3D2ht9HWcQZVnljp/54tdv8rwff5X3r7GjejR2gDgjUIwjctX3sEllvUZwLotmd59Dh2EHVog9Pn
HSY7mbCOKSaS4ZKwLSoTinWJNi1K9bARxR0RqglZhnPPVPwyERz8RyU5BwDvKHykpLIdBSrZRy+u
vtwkhddsYgRnJQ1ueNMljBbAlt3z39V4rlem4KLMZ1gu5ppqeDyy9pHTvO4+vso6DZCTRW7BA9Yc
Aeve23DUH/nlqVnkpofbaxStwGvDWfmuHYQPVFQGt1L/sinOfDVHR6Vx7b2uRAjqJLXQRR072z4U
cSJsVck3T2Znc4DIpuIEwmTm6Q9NUEPkDuwL+A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13104)
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

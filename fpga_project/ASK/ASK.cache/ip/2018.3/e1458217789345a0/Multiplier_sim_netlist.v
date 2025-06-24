// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 24 21:09:35 2025
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [7:0]P;

  wire [0:0]A;
  wire [7:0]B;
  wire CLK;
  wire [7:0]P;
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
  (* C_OUT_HIGH = "7" *) 
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
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "7" *) 
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
  output [7:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [0:0]A;
  wire [7:0]B;
  wire CLK;
  wire [7:0]P;
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
  (* C_OUT_HIGH = "7" *) 
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
QvzZ/gQq0HUmmqYHNnBzyZdXwH7kD9g/PYFlLEi3pMy3y8nFpz/5ntno2LSOoLg5/i1rdyYnHxV5
JBrL5mwrrrQreKkdYxKj4x6xjL/cChTOPRpHAyplzMrT5e1mFHUhaCxsSbq7MCgCyAOxfL1S9KZc
/c1g4W78gE6TnVFiZv1wt9gycFye3IFgURpVAf5kKvVxj9KkQX3WSzTxkPwhH92Eh9fIACpYuZCy
R8awH4FAXWyuyWk3fDQQ9vtd8TfU6lvGVkiFOUKmkk/q+jJ/mZwLiDayzitXSjNeo5QMxHcEdoBJ
uZoyKYfWHWpAWOxz/DCMXQYZZLqp9HSeTwYnEA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DVbpntr/JG4QbA4h2bsBygEp6N22dLq0qFb1oySpFj8BH7WmIUjDcTLg0DzQRhb/jR3ekCdnvcyb
k8e5rU8ie3510wUxllPqCEiEqWpVUJjMFErfOJFumRb57ei+r60BUqpVFkqsM578nRd/eTm2bZfQ
V+amR+PBZvDDWVj01GnCrWBQpuy813zNozUmMU0hl73I6ZfkZ7mgZI6RdljQuyXzgxAHYVWJLJmO
OmE0iKK2g0ii+L7VbVUlbeHmv70SifJbGtnFZPwePPr6e6GqeYx0Zris4NfLbzTxwc5XeH7/FHZ0
boEh92O2hi/6QO4r+td/vnOon3cCw622zS3Xfg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12400)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Apr 27 10:24:27 2026
// Host        : aks running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19328)
`pragma protect data_block
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
bGeu3OA=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

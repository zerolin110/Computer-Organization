// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Apr 27 10:24:28 2026
// Host        : aks running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jpxne/cmp/project_5/project_5.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RAM_B
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
  RAM_B_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19232)
`pragma protect data_block
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
eaA5nXwiQjNo2xMHII6dZvDBvxrDj1M=
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

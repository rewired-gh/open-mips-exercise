module RegFile(
  input         clock,
  input         reset,
  input         io_writePort_en,
  input  [4:0]  io_writePort_addr,
  input  [31:0] io_writePort_data,
  input         io_readPorts_0_en,
  input  [4:0]  io_readPorts_0_addr,
  output [31:0] io_readPorts_0_data,
  input         io_readPorts_1_en,
  input  [4:0]  io_readPorts_1_addr,
  output [31:0] io_readPorts_1_data,
  output [31:0] io_debugRegs_0,
  output [31:0] io_debugRegs_1,
  output [31:0] io_debugRegs_2,
  output [31:0] io_debugRegs_3,
  output [31:0] io_debugRegs_4,
  output [31:0] io_debugRegs_5,
  output [31:0] io_debugRegs_6,
  output [31:0] io_debugRegs_7,
  output [31:0] io_debugRegs_8,
  output [31:0] io_debugRegs_9,
  output [31:0] io_debugRegs_10,
  output [31:0] io_debugRegs_11,
  output [31:0] io_debugRegs_12,
  output [31:0] io_debugRegs_13,
  output [31:0] io_debugRegs_14,
  output [31:0] io_debugRegs_15,
  output [31:0] io_debugRegs_16,
  output [31:0] io_debugRegs_17,
  output [31:0] io_debugRegs_18,
  output [31:0] io_debugRegs_19,
  output [31:0] io_debugRegs_20,
  output [31:0] io_debugRegs_21,
  output [31:0] io_debugRegs_22,
  output [31:0] io_debugRegs_23,
  output [31:0] io_debugRegs_24,
  output [31:0] io_debugRegs_25,
  output [31:0] io_debugRegs_26,
  output [31:0] io_debugRegs_27,
  output [31:0] io_debugRegs_28,
  output [31:0] io_debugRegs_29,
  output [31:0] io_debugRegs_30,
  output [31:0] io_debugRegs_31
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[RegFile.scala 15:21]
  reg [31:0] regs_1; // @[RegFile.scala 15:21]
  reg [31:0] regs_2; // @[RegFile.scala 15:21]
  reg [31:0] regs_3; // @[RegFile.scala 15:21]
  reg [31:0] regs_4; // @[RegFile.scala 15:21]
  reg [31:0] regs_5; // @[RegFile.scala 15:21]
  reg [31:0] regs_6; // @[RegFile.scala 15:21]
  reg [31:0] regs_7; // @[RegFile.scala 15:21]
  reg [31:0] regs_8; // @[RegFile.scala 15:21]
  reg [31:0] regs_9; // @[RegFile.scala 15:21]
  reg [31:0] regs_10; // @[RegFile.scala 15:21]
  reg [31:0] regs_11; // @[RegFile.scala 15:21]
  reg [31:0] regs_12; // @[RegFile.scala 15:21]
  reg [31:0] regs_13; // @[RegFile.scala 15:21]
  reg [31:0] regs_14; // @[RegFile.scala 15:21]
  reg [31:0] regs_15; // @[RegFile.scala 15:21]
  reg [31:0] regs_16; // @[RegFile.scala 15:21]
  reg [31:0] regs_17; // @[RegFile.scala 15:21]
  reg [31:0] regs_18; // @[RegFile.scala 15:21]
  reg [31:0] regs_19; // @[RegFile.scala 15:21]
  reg [31:0] regs_20; // @[RegFile.scala 15:21]
  reg [31:0] regs_21; // @[RegFile.scala 15:21]
  reg [31:0] regs_22; // @[RegFile.scala 15:21]
  reg [31:0] regs_23; // @[RegFile.scala 15:21]
  reg [31:0] regs_24; // @[RegFile.scala 15:21]
  reg [31:0] regs_25; // @[RegFile.scala 15:21]
  reg [31:0] regs_26; // @[RegFile.scala 15:21]
  reg [31:0] regs_27; // @[RegFile.scala 15:21]
  reg [31:0] regs_28; // @[RegFile.scala 15:21]
  reg [31:0] regs_29; // @[RegFile.scala 15:21]
  reg [31:0] regs_30; // @[RegFile.scala 15:21]
  reg [31:0] regs_31; // @[RegFile.scala 15:21]
  wire  _regs_0_T_2 = io_writePort_en & 5'h0 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_1_T_2 = io_writePort_en & 5'h1 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_2_T_2 = io_writePort_en & 5'h2 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_3_T_2 = io_writePort_en & 5'h3 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_4_T_2 = io_writePort_en & 5'h4 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_5_T_2 = io_writePort_en & 5'h5 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_6_T_2 = io_writePort_en & 5'h6 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_7_T_2 = io_writePort_en & 5'h7 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_8_T_2 = io_writePort_en & 5'h8 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_9_T_2 = io_writePort_en & 5'h9 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_10_T_2 = io_writePort_en & 5'ha == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_11_T_2 = io_writePort_en & 5'hb == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_12_T_2 = io_writePort_en & 5'hc == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_13_T_2 = io_writePort_en & 5'hd == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_14_T_2 = io_writePort_en & 5'he == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_15_T_2 = io_writePort_en & 5'hf == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_16_T_2 = io_writePort_en & 5'h10 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_17_T_2 = io_writePort_en & 5'h11 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_18_T_2 = io_writePort_en & 5'h12 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_19_T_2 = io_writePort_en & 5'h13 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_20_T_2 = io_writePort_en & 5'h14 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_21_T_2 = io_writePort_en & 5'h15 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_22_T_2 = io_writePort_en & 5'h16 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_23_T_2 = io_writePort_en & 5'h17 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_24_T_2 = io_writePort_en & 5'h18 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_25_T_2 = io_writePort_en & 5'h19 == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_26_T_2 = io_writePort_en & 5'h1a == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_27_T_2 = io_writePort_en & 5'h1b == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_28_T_2 = io_writePort_en & 5'h1c == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_29_T_2 = io_writePort_en & 5'h1d == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_30_T_2 = io_writePort_en & 5'h1e == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _regs_31_T_2 = io_writePort_en & 5'h1f == io_writePort_addr; // @[RegFile.scala 23:36]
  wire  _T_3 = io_writePort_en & io_readPorts_0_addr == io_writePort_addr; // @[RegFile.scala 34:36]
  wire [31:0] _GEN_1 = 5'h1 == io_readPorts_0_addr ? regs_1 : regs_0; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_2 = 5'h2 == io_readPorts_0_addr ? regs_2 : _GEN_1; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_3 = 5'h3 == io_readPorts_0_addr ? regs_3 : _GEN_2; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_4 = 5'h4 == io_readPorts_0_addr ? regs_4 : _GEN_3; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_5 = 5'h5 == io_readPorts_0_addr ? regs_5 : _GEN_4; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_6 = 5'h6 == io_readPorts_0_addr ? regs_6 : _GEN_5; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_7 = 5'h7 == io_readPorts_0_addr ? regs_7 : _GEN_6; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_8 = 5'h8 == io_readPorts_0_addr ? regs_8 : _GEN_7; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_9 = 5'h9 == io_readPorts_0_addr ? regs_9 : _GEN_8; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_10 = 5'ha == io_readPorts_0_addr ? regs_10 : _GEN_9; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_11 = 5'hb == io_readPorts_0_addr ? regs_11 : _GEN_10; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_12 = 5'hc == io_readPorts_0_addr ? regs_12 : _GEN_11; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_13 = 5'hd == io_readPorts_0_addr ? regs_13 : _GEN_12; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_14 = 5'he == io_readPorts_0_addr ? regs_14 : _GEN_13; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_15 = 5'hf == io_readPorts_0_addr ? regs_15 : _GEN_14; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_16 = 5'h10 == io_readPorts_0_addr ? regs_16 : _GEN_15; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_17 = 5'h11 == io_readPorts_0_addr ? regs_17 : _GEN_16; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_18 = 5'h12 == io_readPorts_0_addr ? regs_18 : _GEN_17; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_19 = 5'h13 == io_readPorts_0_addr ? regs_19 : _GEN_18; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_20 = 5'h14 == io_readPorts_0_addr ? regs_20 : _GEN_19; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_21 = 5'h15 == io_readPorts_0_addr ? regs_21 : _GEN_20; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_22 = 5'h16 == io_readPorts_0_addr ? regs_22 : _GEN_21; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_23 = 5'h17 == io_readPorts_0_addr ? regs_23 : _GEN_22; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_24 = 5'h18 == io_readPorts_0_addr ? regs_24 : _GEN_23; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_25 = 5'h19 == io_readPorts_0_addr ? regs_25 : _GEN_24; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_26 = 5'h1a == io_readPorts_0_addr ? regs_26 : _GEN_25; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_27 = 5'h1b == io_readPorts_0_addr ? regs_27 : _GEN_26; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_28 = 5'h1c == io_readPorts_0_addr ? regs_28 : _GEN_27; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_29 = 5'h1d == io_readPorts_0_addr ? regs_29 : _GEN_28; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_30 = 5'h1e == io_readPorts_0_addr ? regs_30 : _GEN_29; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_31 = 5'h1f == io_readPorts_0_addr ? regs_31 : _GEN_30; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_32 = _T_3 ? io_writePort_data : _GEN_31; // @[RegFile.scala 35:9 36:23 38:23]
  wire [31:0] _GEN_33 = io_readPorts_0_en ? _GEN_32 : 32'h0; // @[RegFile.scala 32:29 41:21]
  wire  _T_7 = io_writePort_en & io_readPorts_1_addr == io_writePort_addr; // @[RegFile.scala 34:36]
  wire [31:0] _GEN_36 = 5'h1 == io_readPorts_1_addr ? regs_1 : regs_0; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_37 = 5'h2 == io_readPorts_1_addr ? regs_2 : _GEN_36; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_38 = 5'h3 == io_readPorts_1_addr ? regs_3 : _GEN_37; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_39 = 5'h4 == io_readPorts_1_addr ? regs_4 : _GEN_38; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_40 = 5'h5 == io_readPorts_1_addr ? regs_5 : _GEN_39; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_41 = 5'h6 == io_readPorts_1_addr ? regs_6 : _GEN_40; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_42 = 5'h7 == io_readPorts_1_addr ? regs_7 : _GEN_41; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_43 = 5'h8 == io_readPorts_1_addr ? regs_8 : _GEN_42; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_44 = 5'h9 == io_readPorts_1_addr ? regs_9 : _GEN_43; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_45 = 5'ha == io_readPorts_1_addr ? regs_10 : _GEN_44; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_46 = 5'hb == io_readPorts_1_addr ? regs_11 : _GEN_45; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_47 = 5'hc == io_readPorts_1_addr ? regs_12 : _GEN_46; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_48 = 5'hd == io_readPorts_1_addr ? regs_13 : _GEN_47; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_49 = 5'he == io_readPorts_1_addr ? regs_14 : _GEN_48; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_50 = 5'hf == io_readPorts_1_addr ? regs_15 : _GEN_49; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_51 = 5'h10 == io_readPorts_1_addr ? regs_16 : _GEN_50; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_52 = 5'h11 == io_readPorts_1_addr ? regs_17 : _GEN_51; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_53 = 5'h12 == io_readPorts_1_addr ? regs_18 : _GEN_52; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_54 = 5'h13 == io_readPorts_1_addr ? regs_19 : _GEN_53; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_55 = 5'h14 == io_readPorts_1_addr ? regs_20 : _GEN_54; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_56 = 5'h15 == io_readPorts_1_addr ? regs_21 : _GEN_55; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_57 = 5'h16 == io_readPorts_1_addr ? regs_22 : _GEN_56; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_58 = 5'h17 == io_readPorts_1_addr ? regs_23 : _GEN_57; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_59 = 5'h18 == io_readPorts_1_addr ? regs_24 : _GEN_58; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_60 = 5'h19 == io_readPorts_1_addr ? regs_25 : _GEN_59; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_61 = 5'h1a == io_readPorts_1_addr ? regs_26 : _GEN_60; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_62 = 5'h1b == io_readPorts_1_addr ? regs_27 : _GEN_61; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_63 = 5'h1c == io_readPorts_1_addr ? regs_28 : _GEN_62; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_64 = 5'h1d == io_readPorts_1_addr ? regs_29 : _GEN_63; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_65 = 5'h1e == io_readPorts_1_addr ? regs_30 : _GEN_64; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_66 = 5'h1f == io_readPorts_1_addr ? regs_31 : _GEN_65; // @[RegFile.scala 38:{23,23}]
  wire [31:0] _GEN_67 = _T_7 ? io_writePort_data : _GEN_66; // @[RegFile.scala 35:9 36:23 38:23]
  wire [31:0] _GEN_68 = io_readPorts_1_en ? _GEN_67 : 32'h0; // @[RegFile.scala 32:29 41:21]
  assign io_readPorts_0_data = io_readPorts_0_addr == 5'h0 ? 32'h0 : _GEN_33; // @[RegFile.scala 30:33 31:21]
  assign io_readPorts_1_data = io_readPorts_1_addr == 5'h0 ? 32'h0 : _GEN_68; // @[RegFile.scala 30:33 31:21]
  assign io_debugRegs_0 = regs_0; // @[RegFile.scala 17:16]
  assign io_debugRegs_1 = regs_1; // @[RegFile.scala 17:16]
  assign io_debugRegs_2 = regs_2; // @[RegFile.scala 17:16]
  assign io_debugRegs_3 = regs_3; // @[RegFile.scala 17:16]
  assign io_debugRegs_4 = regs_4; // @[RegFile.scala 17:16]
  assign io_debugRegs_5 = regs_5; // @[RegFile.scala 17:16]
  assign io_debugRegs_6 = regs_6; // @[RegFile.scala 17:16]
  assign io_debugRegs_7 = regs_7; // @[RegFile.scala 17:16]
  assign io_debugRegs_8 = regs_8; // @[RegFile.scala 17:16]
  assign io_debugRegs_9 = regs_9; // @[RegFile.scala 17:16]
  assign io_debugRegs_10 = regs_10; // @[RegFile.scala 17:16]
  assign io_debugRegs_11 = regs_11; // @[RegFile.scala 17:16]
  assign io_debugRegs_12 = regs_12; // @[RegFile.scala 17:16]
  assign io_debugRegs_13 = regs_13; // @[RegFile.scala 17:16]
  assign io_debugRegs_14 = regs_14; // @[RegFile.scala 17:16]
  assign io_debugRegs_15 = regs_15; // @[RegFile.scala 17:16]
  assign io_debugRegs_16 = regs_16; // @[RegFile.scala 17:16]
  assign io_debugRegs_17 = regs_17; // @[RegFile.scala 17:16]
  assign io_debugRegs_18 = regs_18; // @[RegFile.scala 17:16]
  assign io_debugRegs_19 = regs_19; // @[RegFile.scala 17:16]
  assign io_debugRegs_20 = regs_20; // @[RegFile.scala 17:16]
  assign io_debugRegs_21 = regs_21; // @[RegFile.scala 17:16]
  assign io_debugRegs_22 = regs_22; // @[RegFile.scala 17:16]
  assign io_debugRegs_23 = regs_23; // @[RegFile.scala 17:16]
  assign io_debugRegs_24 = regs_24; // @[RegFile.scala 17:16]
  assign io_debugRegs_25 = regs_25; // @[RegFile.scala 17:16]
  assign io_debugRegs_26 = regs_26; // @[RegFile.scala 17:16]
  assign io_debugRegs_27 = regs_27; // @[RegFile.scala 17:16]
  assign io_debugRegs_28 = regs_28; // @[RegFile.scala 17:16]
  assign io_debugRegs_29 = regs_29; // @[RegFile.scala 17:16]
  assign io_debugRegs_30 = regs_30; // @[RegFile.scala 17:16]
  assign io_debugRegs_31 = regs_31; // @[RegFile.scala 17:16]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 15:21]
      regs_0 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_0_T_2) begin // @[RegFile.scala 22:17]
      regs_0 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_1 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_1_T_2) begin // @[RegFile.scala 22:17]
      regs_1 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_2 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_2_T_2) begin // @[RegFile.scala 22:17]
      regs_2 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_3 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_3_T_2) begin // @[RegFile.scala 22:17]
      regs_3 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_4 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_4_T_2) begin // @[RegFile.scala 22:17]
      regs_4 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_5 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_5_T_2) begin // @[RegFile.scala 22:17]
      regs_5 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_6 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_6_T_2) begin // @[RegFile.scala 22:17]
      regs_6 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_7 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_7_T_2) begin // @[RegFile.scala 22:17]
      regs_7 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_8 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_8_T_2) begin // @[RegFile.scala 22:17]
      regs_8 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_9 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_9_T_2) begin // @[RegFile.scala 22:17]
      regs_9 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_10 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_10_T_2) begin // @[RegFile.scala 22:17]
      regs_10 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_11 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_11_T_2) begin // @[RegFile.scala 22:17]
      regs_11 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_12 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_12_T_2) begin // @[RegFile.scala 22:17]
      regs_12 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_13 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_13_T_2) begin // @[RegFile.scala 22:17]
      regs_13 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_14 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_14_T_2) begin // @[RegFile.scala 22:17]
      regs_14 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_15 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_15_T_2) begin // @[RegFile.scala 22:17]
      regs_15 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_16 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_16_T_2) begin // @[RegFile.scala 22:17]
      regs_16 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_17 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_17_T_2) begin // @[RegFile.scala 22:17]
      regs_17 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_18 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_18_T_2) begin // @[RegFile.scala 22:17]
      regs_18 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_19 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_19_T_2) begin // @[RegFile.scala 22:17]
      regs_19 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_20 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_20_T_2) begin // @[RegFile.scala 22:17]
      regs_20 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_21 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_21_T_2) begin // @[RegFile.scala 22:17]
      regs_21 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_22 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_22_T_2) begin // @[RegFile.scala 22:17]
      regs_22 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_23 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_23_T_2) begin // @[RegFile.scala 22:17]
      regs_23 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_24 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_24_T_2) begin // @[RegFile.scala 22:17]
      regs_24 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_25 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_25_T_2) begin // @[RegFile.scala 22:17]
      regs_25 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_26 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_26_T_2) begin // @[RegFile.scala 22:17]
      regs_26 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_27 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_27_T_2) begin // @[RegFile.scala 22:17]
      regs_27 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_28 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_28_T_2) begin // @[RegFile.scala 22:17]
      regs_28 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_29 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_29_T_2) begin // @[RegFile.scala 22:17]
      regs_29 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_30 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_30_T_2) begin // @[RegFile.scala 22:17]
      regs_30 <= io_writePort_data;
    end
    if (reset) begin // @[RegFile.scala 15:21]
      regs_31 <= 32'h0; // @[RegFile.scala 15:21]
    end else if (_regs_31_T_2) begin // @[RegFile.scala 22:17]
      regs_31 <= io_writePort_data;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regs_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module HiLoReg(
  input         clock,
  input         reset,
  input         io_writePort_en,
  input  [31:0] io_writePort_hi,
  input  [31:0] io_writePort_lo,
  output [31:0] io_readPort_hi,
  output [31:0] io_readPort_lo
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] hiReg; // @[HiLoReg.scala 14:22]
  reg [31:0] loReg; // @[HiLoReg.scala 15:22]
  assign io_readPort_hi = hiReg; // @[HiLoReg.scala 16:18]
  assign io_readPort_lo = loReg; // @[HiLoReg.scala 17:18]
  always @(posedge clock) begin
    if (reset) begin // @[HiLoReg.scala 14:22]
      hiReg <= 32'h0; // @[HiLoReg.scala 14:22]
    end else if (io_writePort_en) begin // @[HiLoReg.scala 19:25]
      hiReg <= io_writePort_hi; // @[HiLoReg.scala 20:11]
    end
    if (reset) begin // @[HiLoReg.scala 15:22]
      loReg <= 32'h0; // @[HiLoReg.scala 15:22]
    end else if (io_writePort_en) begin // @[HiLoReg.scala 19:25]
      loReg <= io_writePort_lo; // @[HiLoReg.scala 21:11]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  hiReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  loReg = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Pc(
  input         clock,
  input         reset,
  output [31:0] io_pc,
  output        io_ce
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pcReg; // @[Pc.scala 13:22]
  reg  ceReg; // @[Pc.scala 14:22]
  wire [31:0] _pcReg_T_1 = pcReg + 32'h1; // @[Pc.scala 24:20]
  assign io_pc = pcReg; // @[Pc.scala 16:9]
  assign io_ce = ceReg; // @[Pc.scala 17:9]
  always @(posedge clock) begin
    if (reset) begin // @[Pc.scala 13:22]
      pcReg <= 32'h0; // @[Pc.scala 13:22]
    end else if (~ceReg) begin // @[Pc.scala 19:27]
      pcReg <= 32'h0; // @[Pc.scala 20:11]
    end else begin
      pcReg <= _pcReg_T_1;
    end
    if (reset) begin // @[Pc.scala 14:22]
      ceReg <= 1'h0; // @[Pc.scala 14:22]
    end else begin
      ceReg <= 1'h1; // @[Pc.scala 14:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pcReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  ceReg = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Id(
  input  [31:0] io_idInstPort_inst,
  output        io_regFileReadPorts_0_en,
  output [4:0]  io_regFileReadPorts_0_addr,
  input  [31:0] io_regFileReadPorts_0_data,
  output        io_regFileReadPorts_1_en,
  output [4:0]  io_regFileReadPorts_1_addr,
  input  [31:0] io_regFileReadPorts_1_data,
  output [7:0]  io_execPort_aluOp,
  output [2:0]  io_execPort_aluSel,
  output [31:0] io_execPort_regData_0,
  output [31:0] io_execPort_regData_1,
  output [4:0]  io_execPort_destRegAddr,
  output        io_execPort_isWrite,
  input         io_exRfWriteFeedbackPort_en,
  input  [4:0]  io_exRfWriteFeedbackPort_addr,
  input  [31:0] io_exRfWriteFeedbackPort_data,
  input         io_memRfWriteFeedbackPort_en,
  input  [4:0]  io_memRfWriteFeedbackPort_addr,
  input  [31:0] io_memRfWriteFeedbackPort_data
);
  wire [5:0] op = io_idInstPort_inst[31:26]; // @[Id.scala 20:37]
  wire [4:0] op2 = io_idInstPort_inst[10:6]; // @[Id.scala 21:37]
  wire [5:0] op3 = io_idInstPort_inst[5:0]; // @[Id.scala 22:37]
  wire [4:0] op4 = io_idInstPort_inst[20:16]; // @[Id.scala 23:37]
  wire  _io_execPort_isWrite_T = io_regFileReadPorts_1_data == 32'h0; // @[Id.scala 103:23]
  wire [7:0] _GEN_1 = 6'h21 == op3 ? 8'h21 : 8'h0; // @[Id.scala 58:23 131:41 41:27]
  wire [2:0] _GEN_2 = 6'h21 == op3 ? 3'h4 : 3'h0; // @[Id.scala 58:23 132:41 42:27]
  wire  _GEN_4 = 6'h20 == op3 | 6'h21 == op3; // @[Id.scala 58:23 122:41]
  wire [7:0] _GEN_5 = 6'h20 == op3 ? 8'h20 : _GEN_1; // @[Id.scala 58:23 123:41]
  wire [2:0] _GEN_6 = 6'h20 == op3 ? 3'h4 : _GEN_2; // @[Id.scala 58:23 124:41]
  wire  _GEN_8 = 6'h2b == op3 | _GEN_4; // @[Id.scala 58:23 114:41]
  wire [7:0] _GEN_9 = 6'h2b == op3 ? 8'h2b : _GEN_5; // @[Id.scala 58:23 115:41]
  wire [2:0] _GEN_10 = 6'h2b == op3 ? 3'h4 : _GEN_6; // @[Id.scala 58:23 116:41]
  wire  _GEN_12 = 6'h2a == op3 | _GEN_8; // @[Id.scala 58:23 106:41]
  wire [7:0] _GEN_13 = 6'h2a == op3 ? 8'h2a : _GEN_9; // @[Id.scala 58:23 107:41]
  wire [2:0] _GEN_14 = 6'h2a == op3 ? 3'h4 : _GEN_10; // @[Id.scala 58:23 108:41]
  wire [7:0] _GEN_16 = 6'ha == op3 ? 8'ha : _GEN_13; // @[Id.scala 58:23 96:41]
  wire [2:0] _GEN_17 = 6'ha == op3 ? 3'h3 : _GEN_14; // @[Id.scala 58:23 97:41]
  wire  _GEN_18 = 6'ha == op3 | _GEN_12; // @[Id.scala 58:23 98:41]
  wire  _GEN_20 = 6'ha == op3 ? _io_execPort_isWrite_T : _GEN_12; // @[Id.scala 58:23 101:35]
  wire  _GEN_21 = 6'h11 == op3 ? 1'h0 : _GEN_20; // @[Id.scala 58:23 90:41]
  wire [7:0] _GEN_22 = 6'h11 == op3 ? 8'h11 : _GEN_16; // @[Id.scala 58:23 91:41]
  wire  _GEN_23 = 6'h11 == op3 | _GEN_18; // @[Id.scala 58:23 92:41]
  wire [2:0] _GEN_25 = 6'h11 == op3 ? 3'h0 : _GEN_17; // @[Id.scala 58:23 42:27]
  wire  _GEN_26 = 6'h11 == op3 ? 1'h0 : _GEN_18; // @[Id.scala 31:19 58:23]
  wire  _GEN_27 = 6'h10 == op3 | _GEN_21; // @[Id.scala 58:23 84:35]
  wire [7:0] _GEN_28 = 6'h10 == op3 ? 8'h10 : _GEN_22; // @[Id.scala 58:23 85:35]
  wire [2:0] _GEN_29 = 6'h10 == op3 ? 3'h3 : _GEN_25; // @[Id.scala 58:23 86:35]
  wire  _GEN_31 = 6'h10 == op3 ? 1'h0 : _GEN_23; // @[Id.scala 31:19 58:23]
  wire  _GEN_32 = 6'h10 == op3 ? 1'h0 : _GEN_26; // @[Id.scala 31:19 58:23]
  wire  _GEN_33 = 6'h7 == op3 | _GEN_27; // @[Id.scala 58:23 76:41]
  wire [7:0] _GEN_34 = 6'h7 == op3 ? 8'h3 : _GEN_28; // @[Id.scala 58:23 77:41]
  wire [2:0] _GEN_35 = 6'h7 == op3 ? 3'h2 : _GEN_29; // @[Id.scala 58:23 78:41]
  wire  _GEN_36 = 6'h7 == op3 | _GEN_31; // @[Id.scala 58:23 79:41]
  wire  _GEN_37 = 6'h7 == op3 | _GEN_32; // @[Id.scala 58:23 80:41]
  wire  _GEN_39 = 6'h4 == op3 | _GEN_33; // @[Id.scala 58:23 68:41]
  wire [7:0] _GEN_40 = 6'h4 == op3 ? 8'h7c : _GEN_34; // @[Id.scala 58:23 69:41]
  wire [2:0] _GEN_41 = 6'h4 == op3 ? 3'h2 : _GEN_35; // @[Id.scala 58:23 70:41]
  wire  _GEN_42 = 6'h4 == op3 | _GEN_36; // @[Id.scala 58:23 71:41]
  wire  _GEN_43 = 6'h4 == op3 | _GEN_37; // @[Id.scala 58:23 72:41]
  wire  _GEN_45 = 6'h25 == op3 | _GEN_39; // @[Id.scala 58:23 60:41]
  wire [7:0] _GEN_46 = 6'h25 == op3 ? 8'h25 : _GEN_40; // @[Id.scala 58:23 61:41]
  wire [2:0] _GEN_47 = 6'h25 == op3 ? 3'h1 : _GEN_41; // @[Id.scala 58:23 62:41]
  wire  _GEN_48 = 6'h25 == op3 | _GEN_42; // @[Id.scala 58:23 63:41]
  wire  _GEN_49 = 6'h25 == op3 | _GEN_43; // @[Id.scala 58:23 64:41]
  wire  _GEN_51 = 5'h0 == op2 & _GEN_45; // @[Id.scala 56:19 43:27]
  wire [7:0] _GEN_52 = 5'h0 == op2 ? _GEN_46 : 8'h0; // @[Id.scala 56:19 41:27]
  wire [2:0] _GEN_53 = 5'h0 == op2 ? _GEN_47 : 3'h0; // @[Id.scala 56:19 42:27]
  wire  _GEN_54 = 5'h0 == op2 & _GEN_48; // @[Id.scala 31:19 56:19]
  wire  _GEN_55 = 5'h0 == op2 & _GEN_49; // @[Id.scala 31:19 56:19]
  wire [31:0] _imm_T_2 = {io_idInstPort_inst[15:0],16'h0}; // @[Cat.scala 33:92]
  wire [15:0] _immSigned_T_2 = io_idInstPort_inst[15:0]; // @[Id.scala 164:62]
  wire [31:0] _GEN_60 = 6'ha == op ? $signed({{16{_immSigned_T_2[15]}},_immSigned_T_2}) : $signed(32'sh0); // @[Id.scala 54:14 164:33 50:21]
  wire [31:0] _GEN_70 = 6'hf == op ? $signed(32'sh0) : $signed(_GEN_60); // @[Id.scala 54:14 50:21]
  wire [31:0] _GEN_77 = 6'hd == op ? $signed(32'sh0) : $signed(_GEN_70); // @[Id.scala 54:14 50:21]
  wire [31:0] _imm_T_3 = 6'h0 == op ? $signed(32'sh0) : $signed(_GEN_77); // @[Id.scala 165:46]
  wire [7:0] _GEN_58 = 6'ha == op ? 8'h2a : 8'h0; // @[Id.scala 54:14 161:33 41:27]
  wire [2:0] _GEN_59 = 6'ha == op ? 3'h4 : 3'h0; // @[Id.scala 54:14 162:33 42:27]
  wire [31:0] _GEN_61 = 6'ha == op ? _imm_T_3 : 32'h0; // @[Id.scala 54:14 165:33 49:21]
  wire [4:0] _GEN_62 = 6'ha == op ? op4 : io_idInstPort_inst[15:11]; // @[Id.scala 54:14 166:33 44:27]
  wire  _GEN_64 = 6'hf == op | 6'ha == op; // @[Id.scala 54:14 151:33]
  wire [7:0] _GEN_65 = 6'hf == op ? 8'h25 : _GEN_58; // @[Id.scala 54:14 152:33]
  wire [2:0] _GEN_66 = 6'hf == op ? 3'h1 : _GEN_59; // @[Id.scala 54:14 153:33]
  wire [31:0] _GEN_67 = 6'hf == op ? _imm_T_2 : _GEN_61; // @[Id.scala 54:14 155:33]
  wire [4:0] _GEN_68 = 6'hf == op ? op4 : _GEN_62; // @[Id.scala 54:14 156:33]
  wire  _GEN_71 = 6'hd == op | _GEN_64; // @[Id.scala 54:14 142:33]
  wire [7:0] _GEN_72 = 6'hd == op ? 8'h25 : _GEN_65; // @[Id.scala 54:14 143:33]
  wire [2:0] _GEN_73 = 6'hd == op ? 3'h1 : _GEN_66; // @[Id.scala 54:14 144:33]
  wire [31:0] _GEN_74 = 6'hd == op ? {{16'd0}, io_idInstPort_inst[15:0]} : _GEN_67; // @[Id.scala 54:14 146:33]
  wire [4:0] _GEN_75 = 6'hd == op ? op4 : _GEN_68; // @[Id.scala 54:14 147:33]
  wire  _GEN_78 = 6'h0 == op ? _GEN_51 : _GEN_71; // @[Id.scala 54:14]
  wire [7:0] _GEN_79 = 6'h0 == op ? _GEN_52 : _GEN_72; // @[Id.scala 54:14]
  wire [2:0] _GEN_80 = 6'h0 == op ? _GEN_53 : _GEN_73; // @[Id.scala 54:14]
  wire  _GEN_82 = 6'h0 == op & _GEN_55; // @[Id.scala 54:14 31:19]
  wire [31:0] _GEN_84 = 6'h0 == op ? 32'h0 : _GEN_74; // @[Id.scala 54:14 49:21]
  wire [4:0] _GEN_85 = 6'h0 == op ? io_idInstPort_inst[15:11] : _GEN_75; // @[Id.scala 54:14 44:27]
  wire  _GEN_87 = 6'h0 == op3 | _GEN_78; // @[Id.scala 171:17 173:35]
  wire [7:0] _GEN_88 = 6'h0 == op3 ? 8'h7c : _GEN_79; // @[Id.scala 171:17 174:35]
  wire [2:0] _GEN_89 = 6'h0 == op3 ? 3'h2 : _GEN_80; // @[Id.scala 171:17 175:35]
  wire  _GEN_90 = 6'h0 == op3 | _GEN_82; // @[Id.scala 171:17 176:35]
  wire [31:0] _GEN_91 = 6'h0 == op3 ? {{27'd0}, op2} : _GEN_84; // @[Id.scala 171:17 177:35]
  wire [4:0] _GEN_92 = 6'h0 == op3 ? io_idInstPort_inst[15:11] : _GEN_85; // @[Id.scala 171:17 178:35]
  wire [31:0] imm = io_idInstPort_inst[31:21] == 11'h0 ? _GEN_91 : _GEN_84; // @[Id.scala 170:50]
  wire  _T_19 = io_exRfWriteFeedbackPort_en & io_exRfWriteFeedbackPort_addr == io_regFileReadPorts_0_addr; // @[Id.scala 193:39]
  wire  _T_21 = io_memRfWriteFeedbackPort_en & io_memRfWriteFeedbackPort_addr == io_regFileReadPorts_0_addr; // @[Id.scala 197:40]
  wire [31:0] _GEN_101 = _T_21 ? io_memRfWriteFeedbackPort_data : io_regFileReadPorts_0_data; // @[Id.scala 198:11 189:14 199:16]
  wire [31:0] _GEN_102 = _T_19 ? io_exRfWriteFeedbackPort_data : _GEN_101; // @[Id.scala 194:11 195:16]
  wire  _T_23 = io_exRfWriteFeedbackPort_en & io_exRfWriteFeedbackPort_addr == io_regFileReadPorts_1_addr; // @[Id.scala 193:39]
  wire  _T_25 = io_memRfWriteFeedbackPort_en & io_memRfWriteFeedbackPort_addr == io_regFileReadPorts_1_addr; // @[Id.scala 197:40]
  wire [31:0] _GEN_104 = _T_25 ? io_memRfWriteFeedbackPort_data : io_regFileReadPorts_1_data; // @[Id.scala 198:11 189:14 199:16]
  wire [31:0] _GEN_105 = _T_23 ? io_exRfWriteFeedbackPort_data : _GEN_104; // @[Id.scala 194:11 195:16]
  assign io_regFileReadPorts_0_en = 6'h0 == op ? _GEN_54 : _GEN_71; // @[Id.scala 54:14]
  assign io_regFileReadPorts_0_addr = io_idInstPort_inst[25:21]; // @[Id.scala 36:36]
  assign io_regFileReadPorts_1_en = io_idInstPort_inst[31:21] == 11'h0 ? _GEN_90 : _GEN_82; // @[Id.scala 170:50]
  assign io_regFileReadPorts_1_addr = io_idInstPort_inst[20:16]; // @[Id.scala 37:36]
  assign io_execPort_aluOp = io_idInstPort_inst[31:21] == 11'h0 ? _GEN_88 : _GEN_79; // @[Id.scala 170:50]
  assign io_execPort_aluSel = io_idInstPort_inst[31:21] == 11'h0 ? _GEN_89 : _GEN_80; // @[Id.scala 170:50]
  assign io_execPort_regData_0 = io_regFileReadPorts_0_en ? _GEN_102 : imm; // @[Id.scala 188:25 202:14]
  assign io_execPort_regData_1 = io_regFileReadPorts_1_en ? _GEN_105 : imm; // @[Id.scala 188:25 202:14]
  assign io_execPort_destRegAddr = io_idInstPort_inst[31:21] == 11'h0 ? _GEN_92 : _GEN_85; // @[Id.scala 170:50]
  assign io_execPort_isWrite = io_idInstPort_inst[31:21] == 11'h0 ? _GEN_87 : _GEN_78; // @[Id.scala 170:50]
endmodule
module Ex(
  input  [7:0]  io_execPort_aluOp,
  input  [2:0]  io_execPort_aluSel,
  input  [31:0] io_execPort_regData_0,
  input  [31:0] io_execPort_regData_1,
  input  [4:0]  io_execPort_destRegAddr,
  input         io_execPort_isWrite,
  output        io_regWritePort_rfWritePort_en,
  output [4:0]  io_regWritePort_rfWritePort_addr,
  output [31:0] io_regWritePort_rfWritePort_data,
  output        io_regWritePort_hiLoWritePort_en,
  output [31:0] io_regWritePort_hiLoWritePort_hi,
  output [31:0] io_regWritePort_hiLoWritePort_lo,
  input  [31:0] io_hiLoReadPort_hi,
  input  [31:0] io_hiLoReadPort_lo,
  input         io_memHiLoWriteFeedbackPort_en,
  input  [31:0] io_memHiLoWriteFeedbackPort_hi,
  input  [31:0] io_memHiLoWriteFeedbackPort_lo,
  input         io_wbHiLoWriteFeedbackPort_en,
  input  [31:0] io_wbHiLoWriteFeedbackPort_hi,
  input  [31:0] io_wbHiLoWriteFeedbackPort_lo
);
  wire [31:0] _GEN_0 = io_wbHiLoWriteFeedbackPort_en ? io_wbHiLoWriteFeedbackPort_hi : io_hiLoReadPort_hi; // @[Ex.scala 40:45 41:8 44:8]
  wire [31:0] _GEN_1 = io_wbHiLoWriteFeedbackPort_en ? io_wbHiLoWriteFeedbackPort_lo : io_hiLoReadPort_lo; // @[Ex.scala 40:45 42:8 45:8]
  wire [31:0] hi = io_memHiLoWriteFeedbackPort_en ? io_memHiLoWriteFeedbackPort_hi : _GEN_0; // @[Ex.scala 37:40 38:8]
  wire [31:0] _logicOut_T = io_execPort_regData_0 | io_execPort_regData_1; // @[Ex.scala 56:62]
  wire [31:0] logicOut = 8'h25 == io_execPort_aluOp ? _logicOut_T : 32'h0; // @[Ex.scala 53:29 56:16 49:17]
  wire [62:0] _GEN_2 = {{31'd0}, io_execPort_regData_1}; // @[Ex.scala 62:42]
  wire [62:0] _shiftOut_T_1 = _GEN_2 << io_execPort_regData_0[4:0]; // @[Ex.scala 62:42]
  wire [31:0] _shiftOut_T_2 = io_execPort_regData_1; // @[Ex.scala 65:43]
  wire [31:0] _shiftOut_T_5 = $signed(io_execPort_regData_1) >>> io_execPort_regData_0[4:0]; // @[Ex.scala 66:39]
  wire [31:0] _GEN_5 = 8'h3 == io_execPort_aluOp ? _shiftOut_T_5 : 32'h0; // @[Ex.scala 59:29 65:16 50:17]
  wire [62:0] _GEN_6 = 8'h7c == io_execPort_aluOp ? _shiftOut_T_1 : {{31'd0}, _GEN_5}; // @[Ex.scala 59:29 62:16]
  wire [31:0] _GEN_7 = 8'ha == io_execPort_aluOp ? io_execPort_regData_0 : 32'h0; // @[Ex.scala 69:29 75:15 51:17]
  wire [31:0] moveOut = 8'h10 == io_execPort_aluOp ? hi : _GEN_7; // @[Ex.scala 69:29 72:15]
  wire [31:0] _arithmeticOut_T = io_execPort_regData_0; // @[Ex.scala 81:47]
  wire [31:0] _arithmeticOut_T_5 = io_execPort_regData_0 + io_execPort_regData_1; // @[Ex.scala 88:67]
  wire [31:0] _arithmeticOut_T_11 = $signed(io_execPort_regData_0) + $signed(io_execPort_regData_1); // @[Ex.scala 96:10]
  wire  _isSumOverflow_T_3 = $signed(io_execPort_regData_1) > 32'sh0; // @[Ex.scala 98:37]
  wire  _isSumOverflow_T_4 = $signed(io_execPort_regData_0) > 32'sh0 & _isSumOverflow_T_3; // @[Ex.scala 97:61]
  wire [31:0] _GEN_9 = 8'h20 == io_execPort_aluOp ? _arithmeticOut_T_11 : 32'h0; // @[Ex.scala 52:17 78:29 91:21]
  wire [31:0] _GEN_11 = 8'h21 == io_execPort_aluOp ? _arithmeticOut_T_5 : _GEN_9; // @[Ex.scala 78:29 88:21]
  wire [31:0] _GEN_13 = 8'h2b == io_execPort_aluOp ? {{31'd0}, io_execPort_regData_0 < io_execPort_regData_1} : _GEN_11; // @[Ex.scala 78:29 85:21]
  wire [31:0] arithmeticOut = 8'h2a == io_execPort_aluOp ? {{31'd0}, $signed(_arithmeticOut_T) < $signed(_shiftOut_T_2)}
     : _GEN_13; // @[Ex.scala 78:29 81:21]
  wire [31:0] _isSumOverflow_T_5 = 8'h2a == io_execPort_aluOp ? {{31'd0}, $signed(_arithmeticOut_T) < $signed(
    _shiftOut_T_2)} : _GEN_13; // @[Ex.scala 99:21]
  wire  _isSumOverflow_T_6 = $signed(_isSumOverflow_T_5) < 32'sh0; // @[Ex.scala 99:28]
  wire  _isSumOverflow_T_7 = _isSumOverflow_T_4 & _isSumOverflow_T_6; // @[Ex.scala 98:43]
  wire  _isSumOverflow_T_11 = $signed(io_execPort_regData_1) < 32'sh0; // @[Ex.scala 100:37]
  wire  _isSumOverflow_T_12 = $signed(io_execPort_regData_0) < 32'sh0 & _isSumOverflow_T_11; // @[Ex.scala 99:75]
  wire  _isSumOverflow_T_14 = $signed(_isSumOverflow_T_5) > 32'sh0; // @[Ex.scala 101:28]
  wire  _isSumOverflow_T_15 = _isSumOverflow_T_12 & _isSumOverflow_T_14; // @[Ex.scala 100:43]
  wire  _isSumOverflow_T_16 = _isSumOverflow_T_7 | _isSumOverflow_T_15; // @[Ex.scala 99:35]
  wire  _GEN_10 = 8'h20 == io_execPort_aluOp & _isSumOverflow_T_16; // @[Ex.scala 32:21 78:29 97:21]
  wire  _GEN_12 = 8'h21 == io_execPort_aluOp ? 1'h0 : _GEN_10; // @[Ex.scala 32:21 78:29]
  wire  _GEN_14 = 8'h2b == io_execPort_aluOp ? 1'h0 : _GEN_12; // @[Ex.scala 32:21 78:29]
  wire  isSumOverflow = 8'h2a == io_execPort_aluOp ? 1'h0 : _GEN_14; // @[Ex.scala 32:21 78:29]
  wire [31:0] _GEN_17 = 3'h4 == io_execPort_aluSel ? arithmeticOut : 32'h0; // @[Ex.scala 113:30 112:36 124:40]
  wire [31:0] _GEN_18 = 3'h3 == io_execPort_aluSel ? moveOut : _GEN_17; // @[Ex.scala 113:30 121:40]
  wire [31:0] shiftOut = _GEN_6[31:0]; // @[Ex.scala 24:27]
  wire [31:0] _GEN_19 = 3'h2 == io_execPort_aluSel ? shiftOut : _GEN_18; // @[Ex.scala 113:30 118:40]
  assign io_regWritePort_rfWritePort_en = isSumOverflow ? 1'h0 : io_execPort_isWrite; // @[Ex.scala 107:40]
  assign io_regWritePort_rfWritePort_addr = io_execPort_destRegAddr; // @[Ex.scala 106:36]
  assign io_regWritePort_rfWritePort_data = 3'h1 == io_execPort_aluSel ? logicOut : _GEN_19; // @[Ex.scala 113:30 115:40]
  assign io_regWritePort_hiLoWritePort_en = 8'h11 == io_execPort_aluOp; // @[Ex.scala 132:29]
  assign io_regWritePort_hiLoWritePort_hi = 8'h11 == io_execPort_aluOp ? io_execPort_regData_0 : hi; // @[Ex.scala 132:29 130:36 135:40]
  assign io_regWritePort_hiLoWritePort_lo = io_memHiLoWriteFeedbackPort_en ? io_memHiLoWriteFeedbackPort_lo : _GEN_1; // @[Ex.scala 37:40 39:8]
endmodule
module Mem(
  input         io_regWritePort_i_rfWritePort_en,
  input  [4:0]  io_regWritePort_i_rfWritePort_addr,
  input  [31:0] io_regWritePort_i_rfWritePort_data,
  input         io_regWritePort_i_hiLoWritePort_en,
  input  [31:0] io_regWritePort_i_hiLoWritePort_hi,
  input  [31:0] io_regWritePort_i_hiLoWritePort_lo,
  output        io_regWritePort_o_rfWritePort_en,
  output [4:0]  io_regWritePort_o_rfWritePort_addr,
  output [31:0] io_regWritePort_o_rfWritePort_data,
  output        io_regWritePort_o_hiLoWritePort_en,
  output [31:0] io_regWritePort_o_hiLoWritePort_hi,
  output [31:0] io_regWritePort_o_hiLoWritePort_lo
);
  assign io_regWritePort_o_rfWritePort_en = io_regWritePort_i_rfWritePort_en; // @[Mem.scala 12:21]
  assign io_regWritePort_o_rfWritePort_addr = io_regWritePort_i_rfWritePort_addr; // @[Mem.scala 12:21]
  assign io_regWritePort_o_rfWritePort_data = io_regWritePort_i_rfWritePort_data; // @[Mem.scala 12:21]
  assign io_regWritePort_o_hiLoWritePort_en = io_regWritePort_i_hiLoWritePort_en; // @[Mem.scala 12:21]
  assign io_regWritePort_o_hiLoWritePort_hi = io_regWritePort_i_hiLoWritePort_hi; // @[Mem.scala 12:21]
  assign io_regWritePort_o_hiLoWritePort_lo = io_regWritePort_i_hiLoWritePort_lo; // @[Mem.scala 12:21]
endmodule
module IfToId(
  input         clock,
  input         reset,
  input  [31:0] io_input_inst,
  output [31:0] io_output_inst
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] bridgeReg_inst; // @[BridgeModule.scala 13:26]
  assign io_output_inst = bridgeReg_inst; // @[BridgeModule.scala 26:13]
  always @(posedge clock) begin
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_inst <= 32'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_inst <= io_input_inst; // @[BridgeModule.scala 13:26]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  bridgeReg_inst = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IdToEx(
  input         clock,
  input         reset,
  input  [7:0]  io_input_aluOp,
  input  [2:0]  io_input_aluSel,
  input  [31:0] io_input_regData_0,
  input  [31:0] io_input_regData_1,
  input  [4:0]  io_input_destRegAddr,
  input         io_input_isWrite,
  output [7:0]  io_output_aluOp,
  output [2:0]  io_output_aluSel,
  output [31:0] io_output_regData_0,
  output [31:0] io_output_regData_1,
  output [4:0]  io_output_destRegAddr,
  output        io_output_isWrite
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] bridgeReg_aluOp; // @[BridgeModule.scala 13:26]
  reg [2:0] bridgeReg_aluSel; // @[BridgeModule.scala 13:26]
  reg [31:0] bridgeReg_regData_0; // @[BridgeModule.scala 13:26]
  reg [31:0] bridgeReg_regData_1; // @[BridgeModule.scala 13:26]
  reg [4:0] bridgeReg_destRegAddr; // @[BridgeModule.scala 13:26]
  reg  bridgeReg_isWrite; // @[BridgeModule.scala 13:26]
  assign io_output_aluOp = bridgeReg_aluOp; // @[BridgeModule.scala 26:13]
  assign io_output_aluSel = bridgeReg_aluSel; // @[BridgeModule.scala 26:13]
  assign io_output_regData_0 = bridgeReg_regData_0; // @[BridgeModule.scala 26:13]
  assign io_output_regData_1 = bridgeReg_regData_1; // @[BridgeModule.scala 26:13]
  assign io_output_destRegAddr = bridgeReg_destRegAddr; // @[BridgeModule.scala 26:13]
  assign io_output_isWrite = bridgeReg_isWrite; // @[BridgeModule.scala 26:13]
  always @(posedge clock) begin
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_aluOp <= 8'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_aluOp <= io_input_aluOp; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_aluSel <= 3'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_aluSel <= io_input_aluSel; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_regData_0 <= 32'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_regData_0 <= io_input_regData_0; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_regData_1 <= 32'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_regData_1 <= io_input_regData_1; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_destRegAddr <= 5'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_destRegAddr <= io_input_destRegAddr; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_isWrite <= 1'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_isWrite <= io_input_isWrite; // @[BridgeModule.scala 13:26]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  bridgeReg_aluOp = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  bridgeReg_aluSel = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  bridgeReg_regData_0 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  bridgeReg_regData_1 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  bridgeReg_destRegAddr = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  bridgeReg_isWrite = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ExToMem(
  input         clock,
  input         reset,
  input         io_input_rfWritePort_en,
  input  [4:0]  io_input_rfWritePort_addr,
  input  [31:0] io_input_rfWritePort_data,
  input         io_input_hiLoWritePort_en,
  input  [31:0] io_input_hiLoWritePort_hi,
  input  [31:0] io_input_hiLoWritePort_lo,
  output        io_output_rfWritePort_en,
  output [4:0]  io_output_rfWritePort_addr,
  output [31:0] io_output_rfWritePort_data,
  output        io_output_hiLoWritePort_en,
  output [31:0] io_output_hiLoWritePort_hi,
  output [31:0] io_output_hiLoWritePort_lo
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  bridgeReg_rfWritePort_en; // @[BridgeModule.scala 13:26]
  reg [4:0] bridgeReg_rfWritePort_addr; // @[BridgeModule.scala 13:26]
  reg [31:0] bridgeReg_rfWritePort_data; // @[BridgeModule.scala 13:26]
  reg  bridgeReg_hiLoWritePort_en; // @[BridgeModule.scala 13:26]
  reg [31:0] bridgeReg_hiLoWritePort_hi; // @[BridgeModule.scala 13:26]
  reg [31:0] bridgeReg_hiLoWritePort_lo; // @[BridgeModule.scala 13:26]
  assign io_output_rfWritePort_en = bridgeReg_rfWritePort_en; // @[BridgeModule.scala 26:13]
  assign io_output_rfWritePort_addr = bridgeReg_rfWritePort_addr; // @[BridgeModule.scala 26:13]
  assign io_output_rfWritePort_data = bridgeReg_rfWritePort_data; // @[BridgeModule.scala 26:13]
  assign io_output_hiLoWritePort_en = bridgeReg_hiLoWritePort_en; // @[BridgeModule.scala 26:13]
  assign io_output_hiLoWritePort_hi = bridgeReg_hiLoWritePort_hi; // @[BridgeModule.scala 26:13]
  assign io_output_hiLoWritePort_lo = bridgeReg_hiLoWritePort_lo; // @[BridgeModule.scala 26:13]
  always @(posedge clock) begin
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_rfWritePort_en <= 1'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_rfWritePort_en <= io_input_rfWritePort_en; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_rfWritePort_addr <= 5'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_rfWritePort_addr <= io_input_rfWritePort_addr; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_rfWritePort_data <= 32'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_rfWritePort_data <= io_input_rfWritePort_data; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_hiLoWritePort_en <= 1'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_hiLoWritePort_en <= io_input_hiLoWritePort_en; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_hiLoWritePort_hi <= 32'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_hiLoWritePort_hi <= io_input_hiLoWritePort_hi; // @[BridgeModule.scala 13:26]
    end
    if (reset) begin // @[BridgeModule.scala 13:26]
      bridgeReg_hiLoWritePort_lo <= 32'h0; // @[BridgeModule.scala 13:26]
    end else begin
      bridgeReg_hiLoWritePort_lo <= io_input_hiLoWritePort_lo; // @[BridgeModule.scala 13:26]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  bridgeReg_rfWritePort_en = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  bridgeReg_rfWritePort_addr = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  bridgeReg_rfWritePort_data = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  bridgeReg_hiLoWritePort_en = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  bridgeReg_hiLoWritePort_hi = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  bridgeReg_hiLoWritePort_lo = _RAND_5[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Cpu(
  input         clock,
  input         reset,
  input  [31:0] io_romReadPort_data,
  output [31:0] io_romReadPort_addr,
  output        io_romReadPort_en,
  output [31:0] io_debugPort_regFileRegs_0,
  output [31:0] io_debugPort_regFileRegs_1,
  output [31:0] io_debugPort_regFileRegs_2,
  output [31:0] io_debugPort_regFileRegs_3,
  output [31:0] io_debugPort_regFileRegs_4,
  output [31:0] io_debugPort_regFileRegs_5,
  output [31:0] io_debugPort_regFileRegs_6,
  output [31:0] io_debugPort_regFileRegs_7,
  output [31:0] io_debugPort_regFileRegs_8,
  output [31:0] io_debugPort_regFileRegs_9,
  output [31:0] io_debugPort_regFileRegs_10,
  output [31:0] io_debugPort_regFileRegs_11,
  output [31:0] io_debugPort_regFileRegs_12,
  output [31:0] io_debugPort_regFileRegs_13,
  output [31:0] io_debugPort_regFileRegs_14,
  output [31:0] io_debugPort_regFileRegs_15,
  output [31:0] io_debugPort_regFileRegs_16,
  output [31:0] io_debugPort_regFileRegs_17,
  output [31:0] io_debugPort_regFileRegs_18,
  output [31:0] io_debugPort_regFileRegs_19,
  output [31:0] io_debugPort_regFileRegs_20,
  output [31:0] io_debugPort_regFileRegs_21,
  output [31:0] io_debugPort_regFileRegs_22,
  output [31:0] io_debugPort_regFileRegs_23,
  output [31:0] io_debugPort_regFileRegs_24,
  output [31:0] io_debugPort_regFileRegs_25,
  output [31:0] io_debugPort_regFileRegs_26,
  output [31:0] io_debugPort_regFileRegs_27,
  output [31:0] io_debugPort_regFileRegs_28,
  output [31:0] io_debugPort_regFileRegs_29,
  output [31:0] io_debugPort_regFileRegs_30,
  output [31:0] io_debugPort_regFileRegs_31,
  output [31:0] io_debugPort_hiReg,
  output [31:0] io_debugPort_loReg,
  output [31:0] io_debugPort_pcRegPc
);
  wire  regFile_clock; // @[Cpu.scala 14:23]
  wire  regFile_reset; // @[Cpu.scala 14:23]
  wire  regFile_io_writePort_en; // @[Cpu.scala 14:23]
  wire [4:0] regFile_io_writePort_addr; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_writePort_data; // @[Cpu.scala 14:23]
  wire  regFile_io_readPorts_0_en; // @[Cpu.scala 14:23]
  wire [4:0] regFile_io_readPorts_0_addr; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_readPorts_0_data; // @[Cpu.scala 14:23]
  wire  regFile_io_readPorts_1_en; // @[Cpu.scala 14:23]
  wire [4:0] regFile_io_readPorts_1_addr; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_readPorts_1_data; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_0; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_1; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_2; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_3; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_4; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_5; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_6; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_7; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_8; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_9; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_10; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_11; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_12; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_13; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_14; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_15; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_16; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_17; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_18; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_19; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_20; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_21; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_22; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_23; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_24; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_25; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_26; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_27; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_28; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_29; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_30; // @[Cpu.scala 14:23]
  wire [31:0] regFile_io_debugRegs_31; // @[Cpu.scala 14:23]
  wire  hiLoReg_clock; // @[Cpu.scala 15:23]
  wire  hiLoReg_reset; // @[Cpu.scala 15:23]
  wire  hiLoReg_io_writePort_en; // @[Cpu.scala 15:23]
  wire [31:0] hiLoReg_io_writePort_hi; // @[Cpu.scala 15:23]
  wire [31:0] hiLoReg_io_writePort_lo; // @[Cpu.scala 15:23]
  wire [31:0] hiLoReg_io_readPort_hi; // @[Cpu.scala 15:23]
  wire [31:0] hiLoReg_io_readPort_lo; // @[Cpu.scala 15:23]
  wire  pcReg_clock; // @[Cpu.scala 16:23]
  wire  pcReg_reset; // @[Cpu.scala 16:23]
  wire [31:0] pcReg_io_pc; // @[Cpu.scala 16:23]
  wire  pcReg_io_ce; // @[Cpu.scala 16:23]
  wire [31:0] idStage_io_idInstPort_inst; // @[Cpu.scala 20:24]
  wire  idStage_io_regFileReadPorts_0_en; // @[Cpu.scala 20:24]
  wire [4:0] idStage_io_regFileReadPorts_0_addr; // @[Cpu.scala 20:24]
  wire [31:0] idStage_io_regFileReadPorts_0_data; // @[Cpu.scala 20:24]
  wire  idStage_io_regFileReadPorts_1_en; // @[Cpu.scala 20:24]
  wire [4:0] idStage_io_regFileReadPorts_1_addr; // @[Cpu.scala 20:24]
  wire [31:0] idStage_io_regFileReadPorts_1_data; // @[Cpu.scala 20:24]
  wire [7:0] idStage_io_execPort_aluOp; // @[Cpu.scala 20:24]
  wire [2:0] idStage_io_execPort_aluSel; // @[Cpu.scala 20:24]
  wire [31:0] idStage_io_execPort_regData_0; // @[Cpu.scala 20:24]
  wire [31:0] idStage_io_execPort_regData_1; // @[Cpu.scala 20:24]
  wire [4:0] idStage_io_execPort_destRegAddr; // @[Cpu.scala 20:24]
  wire  idStage_io_execPort_isWrite; // @[Cpu.scala 20:24]
  wire  idStage_io_exRfWriteFeedbackPort_en; // @[Cpu.scala 20:24]
  wire [4:0] idStage_io_exRfWriteFeedbackPort_addr; // @[Cpu.scala 20:24]
  wire [31:0] idStage_io_exRfWriteFeedbackPort_data; // @[Cpu.scala 20:24]
  wire  idStage_io_memRfWriteFeedbackPort_en; // @[Cpu.scala 20:24]
  wire [4:0] idStage_io_memRfWriteFeedbackPort_addr; // @[Cpu.scala 20:24]
  wire [31:0] idStage_io_memRfWriteFeedbackPort_data; // @[Cpu.scala 20:24]
  wire [7:0] exStage_io_execPort_aluOp; // @[Cpu.scala 21:24]
  wire [2:0] exStage_io_execPort_aluSel; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_execPort_regData_0; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_execPort_regData_1; // @[Cpu.scala 21:24]
  wire [4:0] exStage_io_execPort_destRegAddr; // @[Cpu.scala 21:24]
  wire  exStage_io_execPort_isWrite; // @[Cpu.scala 21:24]
  wire  exStage_io_regWritePort_rfWritePort_en; // @[Cpu.scala 21:24]
  wire [4:0] exStage_io_regWritePort_rfWritePort_addr; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_regWritePort_rfWritePort_data; // @[Cpu.scala 21:24]
  wire  exStage_io_regWritePort_hiLoWritePort_en; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_regWritePort_hiLoWritePort_hi; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_regWritePort_hiLoWritePort_lo; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_hiLoReadPort_hi; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_hiLoReadPort_lo; // @[Cpu.scala 21:24]
  wire  exStage_io_memHiLoWriteFeedbackPort_en; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_memHiLoWriteFeedbackPort_hi; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_memHiLoWriteFeedbackPort_lo; // @[Cpu.scala 21:24]
  wire  exStage_io_wbHiLoWriteFeedbackPort_en; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_wbHiLoWriteFeedbackPort_hi; // @[Cpu.scala 21:24]
  wire [31:0] exStage_io_wbHiLoWriteFeedbackPort_lo; // @[Cpu.scala 21:24]
  wire  memStage_io_regWritePort_i_rfWritePort_en; // @[Cpu.scala 22:24]
  wire [4:0] memStage_io_regWritePort_i_rfWritePort_addr; // @[Cpu.scala 22:24]
  wire [31:0] memStage_io_regWritePort_i_rfWritePort_data; // @[Cpu.scala 22:24]
  wire  memStage_io_regWritePort_i_hiLoWritePort_en; // @[Cpu.scala 22:24]
  wire [31:0] memStage_io_regWritePort_i_hiLoWritePort_hi; // @[Cpu.scala 22:24]
  wire [31:0] memStage_io_regWritePort_i_hiLoWritePort_lo; // @[Cpu.scala 22:24]
  wire  memStage_io_regWritePort_o_rfWritePort_en; // @[Cpu.scala 22:24]
  wire [4:0] memStage_io_regWritePort_o_rfWritePort_addr; // @[Cpu.scala 22:24]
  wire [31:0] memStage_io_regWritePort_o_rfWritePort_data; // @[Cpu.scala 22:24]
  wire  memStage_io_regWritePort_o_hiLoWritePort_en; // @[Cpu.scala 22:24]
  wire [31:0] memStage_io_regWritePort_o_hiLoWritePort_hi; // @[Cpu.scala 22:24]
  wire [31:0] memStage_io_regWritePort_o_hiLoWritePort_lo; // @[Cpu.scala 22:24]
  wire  ifToId_clock; // @[Cpu.scala 24:23]
  wire  ifToId_reset; // @[Cpu.scala 24:23]
  wire [31:0] ifToId_io_input_inst; // @[Cpu.scala 24:23]
  wire [31:0] ifToId_io_output_inst; // @[Cpu.scala 24:23]
  wire  idToEx_clock; // @[Cpu.scala 25:23]
  wire  idToEx_reset; // @[Cpu.scala 25:23]
  wire [7:0] idToEx_io_input_aluOp; // @[Cpu.scala 25:23]
  wire [2:0] idToEx_io_input_aluSel; // @[Cpu.scala 25:23]
  wire [31:0] idToEx_io_input_regData_0; // @[Cpu.scala 25:23]
  wire [31:0] idToEx_io_input_regData_1; // @[Cpu.scala 25:23]
  wire [4:0] idToEx_io_input_destRegAddr; // @[Cpu.scala 25:23]
  wire  idToEx_io_input_isWrite; // @[Cpu.scala 25:23]
  wire [7:0] idToEx_io_output_aluOp; // @[Cpu.scala 25:23]
  wire [2:0] idToEx_io_output_aluSel; // @[Cpu.scala 25:23]
  wire [31:0] idToEx_io_output_regData_0; // @[Cpu.scala 25:23]
  wire [31:0] idToEx_io_output_regData_1; // @[Cpu.scala 25:23]
  wire [4:0] idToEx_io_output_destRegAddr; // @[Cpu.scala 25:23]
  wire  idToEx_io_output_isWrite; // @[Cpu.scala 25:23]
  wire  exToMem_clock; // @[Cpu.scala 26:23]
  wire  exToMem_reset; // @[Cpu.scala 26:23]
  wire  exToMem_io_input_rfWritePort_en; // @[Cpu.scala 26:23]
  wire [4:0] exToMem_io_input_rfWritePort_addr; // @[Cpu.scala 26:23]
  wire [31:0] exToMem_io_input_rfWritePort_data; // @[Cpu.scala 26:23]
  wire  exToMem_io_input_hiLoWritePort_en; // @[Cpu.scala 26:23]
  wire [31:0] exToMem_io_input_hiLoWritePort_hi; // @[Cpu.scala 26:23]
  wire [31:0] exToMem_io_input_hiLoWritePort_lo; // @[Cpu.scala 26:23]
  wire  exToMem_io_output_rfWritePort_en; // @[Cpu.scala 26:23]
  wire [4:0] exToMem_io_output_rfWritePort_addr; // @[Cpu.scala 26:23]
  wire [31:0] exToMem_io_output_rfWritePort_data; // @[Cpu.scala 26:23]
  wire  exToMem_io_output_hiLoWritePort_en; // @[Cpu.scala 26:23]
  wire [31:0] exToMem_io_output_hiLoWritePort_hi; // @[Cpu.scala 26:23]
  wire [31:0] exToMem_io_output_hiLoWritePort_lo; // @[Cpu.scala 26:23]
  wire  memToWb_clock; // @[Cpu.scala 27:23]
  wire  memToWb_reset; // @[Cpu.scala 27:23]
  wire  memToWb_io_input_rfWritePort_en; // @[Cpu.scala 27:23]
  wire [4:0] memToWb_io_input_rfWritePort_addr; // @[Cpu.scala 27:23]
  wire [31:0] memToWb_io_input_rfWritePort_data; // @[Cpu.scala 27:23]
  wire  memToWb_io_input_hiLoWritePort_en; // @[Cpu.scala 27:23]
  wire [31:0] memToWb_io_input_hiLoWritePort_hi; // @[Cpu.scala 27:23]
  wire [31:0] memToWb_io_input_hiLoWritePort_lo; // @[Cpu.scala 27:23]
  wire  memToWb_io_output_rfWritePort_en; // @[Cpu.scala 27:23]
  wire [4:0] memToWb_io_output_rfWritePort_addr; // @[Cpu.scala 27:23]
  wire [31:0] memToWb_io_output_rfWritePort_data; // @[Cpu.scala 27:23]
  wire  memToWb_io_output_hiLoWritePort_en; // @[Cpu.scala 27:23]
  wire [31:0] memToWb_io_output_hiLoWritePort_hi; // @[Cpu.scala 27:23]
  wire [31:0] memToWb_io_output_hiLoWritePort_lo; // @[Cpu.scala 27:23]
  RegFile regFile ( // @[Cpu.scala 14:23]
    .clock(regFile_clock),
    .reset(regFile_reset),
    .io_writePort_en(regFile_io_writePort_en),
    .io_writePort_addr(regFile_io_writePort_addr),
    .io_writePort_data(regFile_io_writePort_data),
    .io_readPorts_0_en(regFile_io_readPorts_0_en),
    .io_readPorts_0_addr(regFile_io_readPorts_0_addr),
    .io_readPorts_0_data(regFile_io_readPorts_0_data),
    .io_readPorts_1_en(regFile_io_readPorts_1_en),
    .io_readPorts_1_addr(regFile_io_readPorts_1_addr),
    .io_readPorts_1_data(regFile_io_readPorts_1_data),
    .io_debugRegs_0(regFile_io_debugRegs_0),
    .io_debugRegs_1(regFile_io_debugRegs_1),
    .io_debugRegs_2(regFile_io_debugRegs_2),
    .io_debugRegs_3(regFile_io_debugRegs_3),
    .io_debugRegs_4(regFile_io_debugRegs_4),
    .io_debugRegs_5(regFile_io_debugRegs_5),
    .io_debugRegs_6(regFile_io_debugRegs_6),
    .io_debugRegs_7(regFile_io_debugRegs_7),
    .io_debugRegs_8(regFile_io_debugRegs_8),
    .io_debugRegs_9(regFile_io_debugRegs_9),
    .io_debugRegs_10(regFile_io_debugRegs_10),
    .io_debugRegs_11(regFile_io_debugRegs_11),
    .io_debugRegs_12(regFile_io_debugRegs_12),
    .io_debugRegs_13(regFile_io_debugRegs_13),
    .io_debugRegs_14(regFile_io_debugRegs_14),
    .io_debugRegs_15(regFile_io_debugRegs_15),
    .io_debugRegs_16(regFile_io_debugRegs_16),
    .io_debugRegs_17(regFile_io_debugRegs_17),
    .io_debugRegs_18(regFile_io_debugRegs_18),
    .io_debugRegs_19(regFile_io_debugRegs_19),
    .io_debugRegs_20(regFile_io_debugRegs_20),
    .io_debugRegs_21(regFile_io_debugRegs_21),
    .io_debugRegs_22(regFile_io_debugRegs_22),
    .io_debugRegs_23(regFile_io_debugRegs_23),
    .io_debugRegs_24(regFile_io_debugRegs_24),
    .io_debugRegs_25(regFile_io_debugRegs_25),
    .io_debugRegs_26(regFile_io_debugRegs_26),
    .io_debugRegs_27(regFile_io_debugRegs_27),
    .io_debugRegs_28(regFile_io_debugRegs_28),
    .io_debugRegs_29(regFile_io_debugRegs_29),
    .io_debugRegs_30(regFile_io_debugRegs_30),
    .io_debugRegs_31(regFile_io_debugRegs_31)
  );
  HiLoReg hiLoReg ( // @[Cpu.scala 15:23]
    .clock(hiLoReg_clock),
    .reset(hiLoReg_reset),
    .io_writePort_en(hiLoReg_io_writePort_en),
    .io_writePort_hi(hiLoReg_io_writePort_hi),
    .io_writePort_lo(hiLoReg_io_writePort_lo),
    .io_readPort_hi(hiLoReg_io_readPort_hi),
    .io_readPort_lo(hiLoReg_io_readPort_lo)
  );
  Pc pcReg ( // @[Cpu.scala 16:23]
    .clock(pcReg_clock),
    .reset(pcReg_reset),
    .io_pc(pcReg_io_pc),
    .io_ce(pcReg_io_ce)
  );
  Id idStage ( // @[Cpu.scala 20:24]
    .io_idInstPort_inst(idStage_io_idInstPort_inst),
    .io_regFileReadPorts_0_en(idStage_io_regFileReadPorts_0_en),
    .io_regFileReadPorts_0_addr(idStage_io_regFileReadPorts_0_addr),
    .io_regFileReadPorts_0_data(idStage_io_regFileReadPorts_0_data),
    .io_regFileReadPorts_1_en(idStage_io_regFileReadPorts_1_en),
    .io_regFileReadPorts_1_addr(idStage_io_regFileReadPorts_1_addr),
    .io_regFileReadPorts_1_data(idStage_io_regFileReadPorts_1_data),
    .io_execPort_aluOp(idStage_io_execPort_aluOp),
    .io_execPort_aluSel(idStage_io_execPort_aluSel),
    .io_execPort_regData_0(idStage_io_execPort_regData_0),
    .io_execPort_regData_1(idStage_io_execPort_regData_1),
    .io_execPort_destRegAddr(idStage_io_execPort_destRegAddr),
    .io_execPort_isWrite(idStage_io_execPort_isWrite),
    .io_exRfWriteFeedbackPort_en(idStage_io_exRfWriteFeedbackPort_en),
    .io_exRfWriteFeedbackPort_addr(idStage_io_exRfWriteFeedbackPort_addr),
    .io_exRfWriteFeedbackPort_data(idStage_io_exRfWriteFeedbackPort_data),
    .io_memRfWriteFeedbackPort_en(idStage_io_memRfWriteFeedbackPort_en),
    .io_memRfWriteFeedbackPort_addr(idStage_io_memRfWriteFeedbackPort_addr),
    .io_memRfWriteFeedbackPort_data(idStage_io_memRfWriteFeedbackPort_data)
  );
  Ex exStage ( // @[Cpu.scala 21:24]
    .io_execPort_aluOp(exStage_io_execPort_aluOp),
    .io_execPort_aluSel(exStage_io_execPort_aluSel),
    .io_execPort_regData_0(exStage_io_execPort_regData_0),
    .io_execPort_regData_1(exStage_io_execPort_regData_1),
    .io_execPort_destRegAddr(exStage_io_execPort_destRegAddr),
    .io_execPort_isWrite(exStage_io_execPort_isWrite),
    .io_regWritePort_rfWritePort_en(exStage_io_regWritePort_rfWritePort_en),
    .io_regWritePort_rfWritePort_addr(exStage_io_regWritePort_rfWritePort_addr),
    .io_regWritePort_rfWritePort_data(exStage_io_regWritePort_rfWritePort_data),
    .io_regWritePort_hiLoWritePort_en(exStage_io_regWritePort_hiLoWritePort_en),
    .io_regWritePort_hiLoWritePort_hi(exStage_io_regWritePort_hiLoWritePort_hi),
    .io_regWritePort_hiLoWritePort_lo(exStage_io_regWritePort_hiLoWritePort_lo),
    .io_hiLoReadPort_hi(exStage_io_hiLoReadPort_hi),
    .io_hiLoReadPort_lo(exStage_io_hiLoReadPort_lo),
    .io_memHiLoWriteFeedbackPort_en(exStage_io_memHiLoWriteFeedbackPort_en),
    .io_memHiLoWriteFeedbackPort_hi(exStage_io_memHiLoWriteFeedbackPort_hi),
    .io_memHiLoWriteFeedbackPort_lo(exStage_io_memHiLoWriteFeedbackPort_lo),
    .io_wbHiLoWriteFeedbackPort_en(exStage_io_wbHiLoWriteFeedbackPort_en),
    .io_wbHiLoWriteFeedbackPort_hi(exStage_io_wbHiLoWriteFeedbackPort_hi),
    .io_wbHiLoWriteFeedbackPort_lo(exStage_io_wbHiLoWriteFeedbackPort_lo)
  );
  Mem memStage ( // @[Cpu.scala 22:24]
    .io_regWritePort_i_rfWritePort_en(memStage_io_regWritePort_i_rfWritePort_en),
    .io_regWritePort_i_rfWritePort_addr(memStage_io_regWritePort_i_rfWritePort_addr),
    .io_regWritePort_i_rfWritePort_data(memStage_io_regWritePort_i_rfWritePort_data),
    .io_regWritePort_i_hiLoWritePort_en(memStage_io_regWritePort_i_hiLoWritePort_en),
    .io_regWritePort_i_hiLoWritePort_hi(memStage_io_regWritePort_i_hiLoWritePort_hi),
    .io_regWritePort_i_hiLoWritePort_lo(memStage_io_regWritePort_i_hiLoWritePort_lo),
    .io_regWritePort_o_rfWritePort_en(memStage_io_regWritePort_o_rfWritePort_en),
    .io_regWritePort_o_rfWritePort_addr(memStage_io_regWritePort_o_rfWritePort_addr),
    .io_regWritePort_o_rfWritePort_data(memStage_io_regWritePort_o_rfWritePort_data),
    .io_regWritePort_o_hiLoWritePort_en(memStage_io_regWritePort_o_hiLoWritePort_en),
    .io_regWritePort_o_hiLoWritePort_hi(memStage_io_regWritePort_o_hiLoWritePort_hi),
    .io_regWritePort_o_hiLoWritePort_lo(memStage_io_regWritePort_o_hiLoWritePort_lo)
  );
  IfToId ifToId ( // @[Cpu.scala 24:23]
    .clock(ifToId_clock),
    .reset(ifToId_reset),
    .io_input_inst(ifToId_io_input_inst),
    .io_output_inst(ifToId_io_output_inst)
  );
  IdToEx idToEx ( // @[Cpu.scala 25:23]
    .clock(idToEx_clock),
    .reset(idToEx_reset),
    .io_input_aluOp(idToEx_io_input_aluOp),
    .io_input_aluSel(idToEx_io_input_aluSel),
    .io_input_regData_0(idToEx_io_input_regData_0),
    .io_input_regData_1(idToEx_io_input_regData_1),
    .io_input_destRegAddr(idToEx_io_input_destRegAddr),
    .io_input_isWrite(idToEx_io_input_isWrite),
    .io_output_aluOp(idToEx_io_output_aluOp),
    .io_output_aluSel(idToEx_io_output_aluSel),
    .io_output_regData_0(idToEx_io_output_regData_0),
    .io_output_regData_1(idToEx_io_output_regData_1),
    .io_output_destRegAddr(idToEx_io_output_destRegAddr),
    .io_output_isWrite(idToEx_io_output_isWrite)
  );
  ExToMem exToMem ( // @[Cpu.scala 26:23]
    .clock(exToMem_clock),
    .reset(exToMem_reset),
    .io_input_rfWritePort_en(exToMem_io_input_rfWritePort_en),
    .io_input_rfWritePort_addr(exToMem_io_input_rfWritePort_addr),
    .io_input_rfWritePort_data(exToMem_io_input_rfWritePort_data),
    .io_input_hiLoWritePort_en(exToMem_io_input_hiLoWritePort_en),
    .io_input_hiLoWritePort_hi(exToMem_io_input_hiLoWritePort_hi),
    .io_input_hiLoWritePort_lo(exToMem_io_input_hiLoWritePort_lo),
    .io_output_rfWritePort_en(exToMem_io_output_rfWritePort_en),
    .io_output_rfWritePort_addr(exToMem_io_output_rfWritePort_addr),
    .io_output_rfWritePort_data(exToMem_io_output_rfWritePort_data),
    .io_output_hiLoWritePort_en(exToMem_io_output_hiLoWritePort_en),
    .io_output_hiLoWritePort_hi(exToMem_io_output_hiLoWritePort_hi),
    .io_output_hiLoWritePort_lo(exToMem_io_output_hiLoWritePort_lo)
  );
  ExToMem memToWb ( // @[Cpu.scala 27:23]
    .clock(memToWb_clock),
    .reset(memToWb_reset),
    .io_input_rfWritePort_en(memToWb_io_input_rfWritePort_en),
    .io_input_rfWritePort_addr(memToWb_io_input_rfWritePort_addr),
    .io_input_rfWritePort_data(memToWb_io_input_rfWritePort_data),
    .io_input_hiLoWritePort_en(memToWb_io_input_hiLoWritePort_en),
    .io_input_hiLoWritePort_hi(memToWb_io_input_hiLoWritePort_hi),
    .io_input_hiLoWritePort_lo(memToWb_io_input_hiLoWritePort_lo),
    .io_output_rfWritePort_en(memToWb_io_output_rfWritePort_en),
    .io_output_rfWritePort_addr(memToWb_io_output_rfWritePort_addr),
    .io_output_rfWritePort_data(memToWb_io_output_rfWritePort_data),
    .io_output_hiLoWritePort_en(memToWb_io_output_hiLoWritePort_en),
    .io_output_hiLoWritePort_hi(memToWb_io_output_hiLoWritePort_hi),
    .io_output_hiLoWritePort_lo(memToWb_io_output_hiLoWritePort_lo)
  );
  assign io_romReadPort_addr = pcReg_io_pc; // @[Cpu.scala 30:23]
  assign io_romReadPort_en = pcReg_io_ce; // @[Cpu.scala 31:23]
  assign io_debugPort_regFileRegs_0 = regFile_io_debugRegs_0; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_1 = regFile_io_debugRegs_1; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_2 = regFile_io_debugRegs_2; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_3 = regFile_io_debugRegs_3; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_4 = regFile_io_debugRegs_4; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_5 = regFile_io_debugRegs_5; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_6 = regFile_io_debugRegs_6; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_7 = regFile_io_debugRegs_7; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_8 = regFile_io_debugRegs_8; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_9 = regFile_io_debugRegs_9; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_10 = regFile_io_debugRegs_10; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_11 = regFile_io_debugRegs_11; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_12 = regFile_io_debugRegs_12; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_13 = regFile_io_debugRegs_13; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_14 = regFile_io_debugRegs_14; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_15 = regFile_io_debugRegs_15; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_16 = regFile_io_debugRegs_16; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_17 = regFile_io_debugRegs_17; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_18 = regFile_io_debugRegs_18; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_19 = regFile_io_debugRegs_19; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_20 = regFile_io_debugRegs_20; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_21 = regFile_io_debugRegs_21; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_22 = regFile_io_debugRegs_22; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_23 = regFile_io_debugRegs_23; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_24 = regFile_io_debugRegs_24; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_25 = regFile_io_debugRegs_25; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_26 = regFile_io_debugRegs_26; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_27 = regFile_io_debugRegs_27; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_28 = regFile_io_debugRegs_28; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_29 = regFile_io_debugRegs_29; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_30 = regFile_io_debugRegs_30; // @[Cpu.scala 88:28]
  assign io_debugPort_regFileRegs_31 = regFile_io_debugRegs_31; // @[Cpu.scala 88:28]
  assign io_debugPort_hiReg = hiLoReg_io_readPort_hi; // @[Cpu.scala 90:28]
  assign io_debugPort_loReg = hiLoReg_io_readPort_lo; // @[Cpu.scala 91:28]
  assign io_debugPort_pcRegPc = pcReg_io_pc; // @[Cpu.scala 89:28]
  assign regFile_clock = clock;
  assign regFile_reset = reset;
  assign regFile_io_writePort_en = memToWb_io_output_rfWritePort_en; // @[Cpu.scala 74:24]
  assign regFile_io_writePort_addr = memToWb_io_output_rfWritePort_addr; // @[Cpu.scala 74:24]
  assign regFile_io_writePort_data = memToWb_io_output_rfWritePort_data; // @[Cpu.scala 74:24]
  assign regFile_io_readPorts_0_en = idStage_io_regFileReadPorts_0_en; // @[Cpu.scala 46:17]
  assign regFile_io_readPorts_0_addr = idStage_io_regFileReadPorts_0_addr; // @[Cpu.scala 47:17]
  assign regFile_io_readPorts_1_en = idStage_io_regFileReadPorts_1_en; // @[Cpu.scala 46:17]
  assign regFile_io_readPorts_1_addr = idStage_io_regFileReadPorts_1_addr; // @[Cpu.scala 47:17]
  assign hiLoReg_clock = clock;
  assign hiLoReg_reset = reset;
  assign hiLoReg_io_writePort_en = memToWb_io_output_hiLoWritePort_en; // @[Cpu.scala 75:24]
  assign hiLoReg_io_writePort_hi = memToWb_io_output_hiLoWritePort_hi; // @[Cpu.scala 75:24]
  assign hiLoReg_io_writePort_lo = memToWb_io_output_hiLoWritePort_lo; // @[Cpu.scala 75:24]
  assign pcReg_clock = clock;
  assign pcReg_reset = reset;
  assign idStage_io_idInstPort_inst = ifToId_io_output_inst; // @[Cpu.scala 37:25]
  assign idStage_io_regFileReadPorts_0_data = regFile_io_readPorts_0_data; // @[Cpu.scala 40:17]
  assign idStage_io_regFileReadPorts_1_data = regFile_io_readPorts_1_data; // @[Cpu.scala 40:17]
  assign idStage_io_exRfWriteFeedbackPort_en = exStage_io_regWritePort_rfWritePort_en; // @[Cpu.scala 51:37]
  assign idStage_io_exRfWriteFeedbackPort_addr = exStage_io_regWritePort_rfWritePort_addr; // @[Cpu.scala 51:37]
  assign idStage_io_exRfWriteFeedbackPort_data = exStage_io_regWritePort_rfWritePort_data; // @[Cpu.scala 51:37]
  assign idStage_io_memRfWriteFeedbackPort_en = memStage_io_regWritePort_o_rfWritePort_en; // @[Cpu.scala 52:37]
  assign idStage_io_memRfWriteFeedbackPort_addr = memStage_io_regWritePort_o_rfWritePort_addr; // @[Cpu.scala 52:37]
  assign idStage_io_memRfWriteFeedbackPort_data = memStage_io_regWritePort_o_rfWritePort_data; // @[Cpu.scala 52:37]
  assign exStage_io_execPort_aluOp = idToEx_io_output_aluOp; // @[Cpu.scala 57:23]
  assign exStage_io_execPort_aluSel = idToEx_io_output_aluSel; // @[Cpu.scala 57:23]
  assign exStage_io_execPort_regData_0 = idToEx_io_output_regData_0; // @[Cpu.scala 57:23]
  assign exStage_io_execPort_regData_1 = idToEx_io_output_regData_1; // @[Cpu.scala 57:23]
  assign exStage_io_execPort_destRegAddr = idToEx_io_output_destRegAddr; // @[Cpu.scala 57:23]
  assign exStage_io_execPort_isWrite = idToEx_io_output_isWrite; // @[Cpu.scala 57:23]
  assign exStage_io_hiLoReadPort_hi = hiLoReg_io_readPort_hi; // @[Cpu.scala 60:27]
  assign exStage_io_hiLoReadPort_lo = hiLoReg_io_readPort_lo; // @[Cpu.scala 60:27]
  assign exStage_io_memHiLoWriteFeedbackPort_en = memStage_io_regWritePort_o_hiLoWritePort_en; // @[Cpu.scala 63:39]
  assign exStage_io_memHiLoWriteFeedbackPort_hi = memStage_io_regWritePort_o_hiLoWritePort_hi; // @[Cpu.scala 63:39]
  assign exStage_io_memHiLoWriteFeedbackPort_lo = memStage_io_regWritePort_o_hiLoWritePort_lo; // @[Cpu.scala 63:39]
  assign exStage_io_wbHiLoWriteFeedbackPort_en = memToWb_io_output_hiLoWritePort_en; // @[Cpu.scala 64:39]
  assign exStage_io_wbHiLoWriteFeedbackPort_hi = memToWb_io_output_hiLoWritePort_hi; // @[Cpu.scala 64:39]
  assign exStage_io_wbHiLoWriteFeedbackPort_lo = memToWb_io_output_hiLoWritePort_lo; // @[Cpu.scala 64:39]
  assign memStage_io_regWritePort_i_rfWritePort_en = exToMem_io_output_rfWritePort_en; // @[Cpu.scala 69:30]
  assign memStage_io_regWritePort_i_rfWritePort_addr = exToMem_io_output_rfWritePort_addr; // @[Cpu.scala 69:30]
  assign memStage_io_regWritePort_i_rfWritePort_data = exToMem_io_output_rfWritePort_data; // @[Cpu.scala 69:30]
  assign memStage_io_regWritePort_i_hiLoWritePort_en = exToMem_io_output_hiLoWritePort_en; // @[Cpu.scala 69:30]
  assign memStage_io_regWritePort_i_hiLoWritePort_hi = exToMem_io_output_hiLoWritePort_hi; // @[Cpu.scala 69:30]
  assign memStage_io_regWritePort_i_hiLoWritePort_lo = exToMem_io_output_hiLoWritePort_lo; // @[Cpu.scala 69:30]
  assign ifToId_clock = clock;
  assign ifToId_reset = reset;
  assign ifToId_io_input_inst = io_romReadPort_data; // @[Cpu.scala 35:24]
  assign idToEx_clock = clock;
  assign idToEx_reset = reset;
  assign idToEx_io_input_aluOp = idStage_io_execPort_aluOp; // @[Cpu.scala 55:19]
  assign idToEx_io_input_aluSel = idStage_io_execPort_aluSel; // @[Cpu.scala 55:19]
  assign idToEx_io_input_regData_0 = idStage_io_execPort_regData_0; // @[Cpu.scala 55:19]
  assign idToEx_io_input_regData_1 = idStage_io_execPort_regData_1; // @[Cpu.scala 55:19]
  assign idToEx_io_input_destRegAddr = idStage_io_execPort_destRegAddr; // @[Cpu.scala 55:19]
  assign idToEx_io_input_isWrite = idStage_io_execPort_isWrite; // @[Cpu.scala 55:19]
  assign exToMem_clock = clock;
  assign exToMem_reset = reset;
  assign exToMem_io_input_rfWritePort_en = exStage_io_regWritePort_rfWritePort_en; // @[Cpu.scala 67:20]
  assign exToMem_io_input_rfWritePort_addr = exStage_io_regWritePort_rfWritePort_addr; // @[Cpu.scala 67:20]
  assign exToMem_io_input_rfWritePort_data = exStage_io_regWritePort_rfWritePort_data; // @[Cpu.scala 67:20]
  assign exToMem_io_input_hiLoWritePort_en = exStage_io_regWritePort_hiLoWritePort_en; // @[Cpu.scala 67:20]
  assign exToMem_io_input_hiLoWritePort_hi = exStage_io_regWritePort_hiLoWritePort_hi; // @[Cpu.scala 67:20]
  assign exToMem_io_input_hiLoWritePort_lo = exStage_io_regWritePort_hiLoWritePort_lo; // @[Cpu.scala 67:20]
  assign memToWb_clock = clock;
  assign memToWb_reset = reset;
  assign memToWb_io_input_rfWritePort_en = memStage_io_regWritePort_o_rfWritePort_en; // @[Cpu.scala 72:20]
  assign memToWb_io_input_rfWritePort_addr = memStage_io_regWritePort_o_rfWritePort_addr; // @[Cpu.scala 72:20]
  assign memToWb_io_input_rfWritePort_data = memStage_io_regWritePort_o_rfWritePort_data; // @[Cpu.scala 72:20]
  assign memToWb_io_input_hiLoWritePort_en = memStage_io_regWritePort_o_hiLoWritePort_en; // @[Cpu.scala 72:20]
  assign memToWb_io_input_hiLoWritePort_hi = memStage_io_regWritePort_o_hiLoWritePort_hi; // @[Cpu.scala 72:20]
  assign memToWb_io_input_hiLoWritePort_lo = memStage_io_regWritePort_o_hiLoWritePort_lo; // @[Cpu.scala 72:20]
endmodule

circuit Cpu :
  module RegFile :
    input clock : Clock
    input reset : Reset
    output io : { flip writePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, readPorts : { flip en : UInt<1>, flip addr : UInt<5>, data : UInt<32>}[2], debugRegs : UInt<32>[32]}

    wire _regs_WIRE : UInt<32>[32] @[RegFile.scala 15:29]
    _regs_WIRE[0] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[1] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[2] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[3] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[4] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[5] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[6] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[7] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[8] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[9] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[10] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[11] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[12] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[13] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[14] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[15] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[16] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[17] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[18] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[19] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[20] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[21] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[22] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[23] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[24] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[25] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[26] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[27] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[28] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[29] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[30] <= UInt<32>("h0") @[RegFile.scala 15:29]
    _regs_WIRE[31] <= UInt<32>("h0") @[RegFile.scala 15:29]
    reg regs : UInt<32>[32], clock with :
      reset => (reset, _regs_WIRE) @[RegFile.scala 15:21]
    io.debugRegs <= regs @[RegFile.scala 17:16]
    node _regs_0_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_0_T_1 = eq(UInt<1>("h0"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_0_T_2 = and(_regs_0_T, _regs_0_T_1) @[RegFile.scala 23:36]
    node _regs_0_T_3 = mux(_regs_0_T_2, io.writePort.data, regs[0]) @[RegFile.scala 22:17]
    regs[0] <= _regs_0_T_3 @[RegFile.scala 22:11]
    node _regs_1_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_1_T_1 = eq(UInt<1>("h1"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_1_T_2 = and(_regs_1_T, _regs_1_T_1) @[RegFile.scala 23:36]
    node _regs_1_T_3 = mux(_regs_1_T_2, io.writePort.data, regs[1]) @[RegFile.scala 22:17]
    regs[1] <= _regs_1_T_3 @[RegFile.scala 22:11]
    node _regs_2_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_2_T_1 = eq(UInt<2>("h2"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_2_T_2 = and(_regs_2_T, _regs_2_T_1) @[RegFile.scala 23:36]
    node _regs_2_T_3 = mux(_regs_2_T_2, io.writePort.data, regs[2]) @[RegFile.scala 22:17]
    regs[2] <= _regs_2_T_3 @[RegFile.scala 22:11]
    node _regs_3_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_3_T_1 = eq(UInt<2>("h3"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_3_T_2 = and(_regs_3_T, _regs_3_T_1) @[RegFile.scala 23:36]
    node _regs_3_T_3 = mux(_regs_3_T_2, io.writePort.data, regs[3]) @[RegFile.scala 22:17]
    regs[3] <= _regs_3_T_3 @[RegFile.scala 22:11]
    node _regs_4_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_4_T_1 = eq(UInt<3>("h4"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_4_T_2 = and(_regs_4_T, _regs_4_T_1) @[RegFile.scala 23:36]
    node _regs_4_T_3 = mux(_regs_4_T_2, io.writePort.data, regs[4]) @[RegFile.scala 22:17]
    regs[4] <= _regs_4_T_3 @[RegFile.scala 22:11]
    node _regs_5_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_5_T_1 = eq(UInt<3>("h5"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_5_T_2 = and(_regs_5_T, _regs_5_T_1) @[RegFile.scala 23:36]
    node _regs_5_T_3 = mux(_regs_5_T_2, io.writePort.data, regs[5]) @[RegFile.scala 22:17]
    regs[5] <= _regs_5_T_3 @[RegFile.scala 22:11]
    node _regs_6_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_6_T_1 = eq(UInt<3>("h6"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_6_T_2 = and(_regs_6_T, _regs_6_T_1) @[RegFile.scala 23:36]
    node _regs_6_T_3 = mux(_regs_6_T_2, io.writePort.data, regs[6]) @[RegFile.scala 22:17]
    regs[6] <= _regs_6_T_3 @[RegFile.scala 22:11]
    node _regs_7_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_7_T_1 = eq(UInt<3>("h7"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_7_T_2 = and(_regs_7_T, _regs_7_T_1) @[RegFile.scala 23:36]
    node _regs_7_T_3 = mux(_regs_7_T_2, io.writePort.data, regs[7]) @[RegFile.scala 22:17]
    regs[7] <= _regs_7_T_3 @[RegFile.scala 22:11]
    node _regs_8_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_8_T_1 = eq(UInt<4>("h8"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_8_T_2 = and(_regs_8_T, _regs_8_T_1) @[RegFile.scala 23:36]
    node _regs_8_T_3 = mux(_regs_8_T_2, io.writePort.data, regs[8]) @[RegFile.scala 22:17]
    regs[8] <= _regs_8_T_3 @[RegFile.scala 22:11]
    node _regs_9_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_9_T_1 = eq(UInt<4>("h9"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_9_T_2 = and(_regs_9_T, _regs_9_T_1) @[RegFile.scala 23:36]
    node _regs_9_T_3 = mux(_regs_9_T_2, io.writePort.data, regs[9]) @[RegFile.scala 22:17]
    regs[9] <= _regs_9_T_3 @[RegFile.scala 22:11]
    node _regs_10_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_10_T_1 = eq(UInt<4>("ha"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_10_T_2 = and(_regs_10_T, _regs_10_T_1) @[RegFile.scala 23:36]
    node _regs_10_T_3 = mux(_regs_10_T_2, io.writePort.data, regs[10]) @[RegFile.scala 22:17]
    regs[10] <= _regs_10_T_3 @[RegFile.scala 22:11]
    node _regs_11_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_11_T_1 = eq(UInt<4>("hb"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_11_T_2 = and(_regs_11_T, _regs_11_T_1) @[RegFile.scala 23:36]
    node _regs_11_T_3 = mux(_regs_11_T_2, io.writePort.data, regs[11]) @[RegFile.scala 22:17]
    regs[11] <= _regs_11_T_3 @[RegFile.scala 22:11]
    node _regs_12_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_12_T_1 = eq(UInt<4>("hc"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_12_T_2 = and(_regs_12_T, _regs_12_T_1) @[RegFile.scala 23:36]
    node _regs_12_T_3 = mux(_regs_12_T_2, io.writePort.data, regs[12]) @[RegFile.scala 22:17]
    regs[12] <= _regs_12_T_3 @[RegFile.scala 22:11]
    node _regs_13_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_13_T_1 = eq(UInt<4>("hd"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_13_T_2 = and(_regs_13_T, _regs_13_T_1) @[RegFile.scala 23:36]
    node _regs_13_T_3 = mux(_regs_13_T_2, io.writePort.data, regs[13]) @[RegFile.scala 22:17]
    regs[13] <= _regs_13_T_3 @[RegFile.scala 22:11]
    node _regs_14_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_14_T_1 = eq(UInt<4>("he"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_14_T_2 = and(_regs_14_T, _regs_14_T_1) @[RegFile.scala 23:36]
    node _regs_14_T_3 = mux(_regs_14_T_2, io.writePort.data, regs[14]) @[RegFile.scala 22:17]
    regs[14] <= _regs_14_T_3 @[RegFile.scala 22:11]
    node _regs_15_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_15_T_1 = eq(UInt<4>("hf"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_15_T_2 = and(_regs_15_T, _regs_15_T_1) @[RegFile.scala 23:36]
    node _regs_15_T_3 = mux(_regs_15_T_2, io.writePort.data, regs[15]) @[RegFile.scala 22:17]
    regs[15] <= _regs_15_T_3 @[RegFile.scala 22:11]
    node _regs_16_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_16_T_1 = eq(UInt<5>("h10"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_16_T_2 = and(_regs_16_T, _regs_16_T_1) @[RegFile.scala 23:36]
    node _regs_16_T_3 = mux(_regs_16_T_2, io.writePort.data, regs[16]) @[RegFile.scala 22:17]
    regs[16] <= _regs_16_T_3 @[RegFile.scala 22:11]
    node _regs_17_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_17_T_1 = eq(UInt<5>("h11"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_17_T_2 = and(_regs_17_T, _regs_17_T_1) @[RegFile.scala 23:36]
    node _regs_17_T_3 = mux(_regs_17_T_2, io.writePort.data, regs[17]) @[RegFile.scala 22:17]
    regs[17] <= _regs_17_T_3 @[RegFile.scala 22:11]
    node _regs_18_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_18_T_1 = eq(UInt<5>("h12"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_18_T_2 = and(_regs_18_T, _regs_18_T_1) @[RegFile.scala 23:36]
    node _regs_18_T_3 = mux(_regs_18_T_2, io.writePort.data, regs[18]) @[RegFile.scala 22:17]
    regs[18] <= _regs_18_T_3 @[RegFile.scala 22:11]
    node _regs_19_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_19_T_1 = eq(UInt<5>("h13"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_19_T_2 = and(_regs_19_T, _regs_19_T_1) @[RegFile.scala 23:36]
    node _regs_19_T_3 = mux(_regs_19_T_2, io.writePort.data, regs[19]) @[RegFile.scala 22:17]
    regs[19] <= _regs_19_T_3 @[RegFile.scala 22:11]
    node _regs_20_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_20_T_1 = eq(UInt<5>("h14"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_20_T_2 = and(_regs_20_T, _regs_20_T_1) @[RegFile.scala 23:36]
    node _regs_20_T_3 = mux(_regs_20_T_2, io.writePort.data, regs[20]) @[RegFile.scala 22:17]
    regs[20] <= _regs_20_T_3 @[RegFile.scala 22:11]
    node _regs_21_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_21_T_1 = eq(UInt<5>("h15"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_21_T_2 = and(_regs_21_T, _regs_21_T_1) @[RegFile.scala 23:36]
    node _regs_21_T_3 = mux(_regs_21_T_2, io.writePort.data, regs[21]) @[RegFile.scala 22:17]
    regs[21] <= _regs_21_T_3 @[RegFile.scala 22:11]
    node _regs_22_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_22_T_1 = eq(UInt<5>("h16"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_22_T_2 = and(_regs_22_T, _regs_22_T_1) @[RegFile.scala 23:36]
    node _regs_22_T_3 = mux(_regs_22_T_2, io.writePort.data, regs[22]) @[RegFile.scala 22:17]
    regs[22] <= _regs_22_T_3 @[RegFile.scala 22:11]
    node _regs_23_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_23_T_1 = eq(UInt<5>("h17"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_23_T_2 = and(_regs_23_T, _regs_23_T_1) @[RegFile.scala 23:36]
    node _regs_23_T_3 = mux(_regs_23_T_2, io.writePort.data, regs[23]) @[RegFile.scala 22:17]
    regs[23] <= _regs_23_T_3 @[RegFile.scala 22:11]
    node _regs_24_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_24_T_1 = eq(UInt<5>("h18"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_24_T_2 = and(_regs_24_T, _regs_24_T_1) @[RegFile.scala 23:36]
    node _regs_24_T_3 = mux(_regs_24_T_2, io.writePort.data, regs[24]) @[RegFile.scala 22:17]
    regs[24] <= _regs_24_T_3 @[RegFile.scala 22:11]
    node _regs_25_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_25_T_1 = eq(UInt<5>("h19"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_25_T_2 = and(_regs_25_T, _regs_25_T_1) @[RegFile.scala 23:36]
    node _regs_25_T_3 = mux(_regs_25_T_2, io.writePort.data, regs[25]) @[RegFile.scala 22:17]
    regs[25] <= _regs_25_T_3 @[RegFile.scala 22:11]
    node _regs_26_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_26_T_1 = eq(UInt<5>("h1a"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_26_T_2 = and(_regs_26_T, _regs_26_T_1) @[RegFile.scala 23:36]
    node _regs_26_T_3 = mux(_regs_26_T_2, io.writePort.data, regs[26]) @[RegFile.scala 22:17]
    regs[26] <= _regs_26_T_3 @[RegFile.scala 22:11]
    node _regs_27_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_27_T_1 = eq(UInt<5>("h1b"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_27_T_2 = and(_regs_27_T, _regs_27_T_1) @[RegFile.scala 23:36]
    node _regs_27_T_3 = mux(_regs_27_T_2, io.writePort.data, regs[27]) @[RegFile.scala 22:17]
    regs[27] <= _regs_27_T_3 @[RegFile.scala 22:11]
    node _regs_28_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_28_T_1 = eq(UInt<5>("h1c"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_28_T_2 = and(_regs_28_T, _regs_28_T_1) @[RegFile.scala 23:36]
    node _regs_28_T_3 = mux(_regs_28_T_2, io.writePort.data, regs[28]) @[RegFile.scala 22:17]
    regs[28] <= _regs_28_T_3 @[RegFile.scala 22:11]
    node _regs_29_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_29_T_1 = eq(UInt<5>("h1d"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_29_T_2 = and(_regs_29_T, _regs_29_T_1) @[RegFile.scala 23:36]
    node _regs_29_T_3 = mux(_regs_29_T_2, io.writePort.data, regs[29]) @[RegFile.scala 22:17]
    regs[29] <= _regs_29_T_3 @[RegFile.scala 22:11]
    node _regs_30_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_30_T_1 = eq(UInt<5>("h1e"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_30_T_2 = and(_regs_30_T, _regs_30_T_1) @[RegFile.scala 23:36]
    node _regs_30_T_3 = mux(_regs_30_T_2, io.writePort.data, regs[30]) @[RegFile.scala 22:17]
    regs[30] <= _regs_30_T_3 @[RegFile.scala 22:11]
    node _regs_31_T = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 23:25]
    node _regs_31_T_1 = eq(UInt<5>("h1f"), io.writePort.addr) @[RegFile.scala 23:47]
    node _regs_31_T_2 = and(_regs_31_T, _regs_31_T_1) @[RegFile.scala 23:36]
    node _regs_31_T_3 = mux(_regs_31_T_2, io.writePort.data, regs[31]) @[RegFile.scala 22:17]
    regs[31] <= _regs_31_T_3 @[RegFile.scala 22:11]
    node _T = eq(io.readPorts[0].addr, UInt<1>("h0")) @[RegFile.scala 30:24]
    when _T : @[RegFile.scala 30:33]
      io.readPorts[0].data <= UInt<32>("h0") @[RegFile.scala 31:21]
    else :
      when io.readPorts[0].en : @[RegFile.scala 32:29]
        node _T_1 = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 34:25]
        node _T_2 = eq(io.readPorts[0].addr, io.writePort.addr) @[RegFile.scala 34:53]
        node _T_3 = and(_T_1, _T_2) @[RegFile.scala 34:36]
        when _T_3 : @[RegFile.scala 35:9]
          io.readPorts[0].data <= io.writePort.data @[RegFile.scala 36:23]
        else :
          io.readPorts[0].data <= regs[io.readPorts[0].addr] @[RegFile.scala 38:23]
      else :
        io.readPorts[0].data <= UInt<32>("h0") @[RegFile.scala 41:21]
    node _T_4 = eq(io.readPorts[1].addr, UInt<1>("h0")) @[RegFile.scala 30:24]
    when _T_4 : @[RegFile.scala 30:33]
      io.readPorts[1].data <= UInt<32>("h0") @[RegFile.scala 31:21]
    else :
      when io.readPorts[1].en : @[RegFile.scala 32:29]
        node _T_5 = eq(io.writePort.en, UInt<1>("h1")) @[RegFile.scala 34:25]
        node _T_6 = eq(io.readPorts[1].addr, io.writePort.addr) @[RegFile.scala 34:53]
        node _T_7 = and(_T_5, _T_6) @[RegFile.scala 34:36]
        when _T_7 : @[RegFile.scala 35:9]
          io.readPorts[1].data <= io.writePort.data @[RegFile.scala 36:23]
        else :
          io.readPorts[1].data <= regs[io.readPorts[1].addr] @[RegFile.scala 38:23]
      else :
        io.readPorts[1].data <= UInt<32>("h0") @[RegFile.scala 41:21]

  module HiLoReg :
    input clock : Clock
    input reset : Reset
    output io : { flip writePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}, readPort : { hi : UInt<32>, lo : UInt<32>}}

    reg hiReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[HiLoReg.scala 14:22]
    reg loReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[HiLoReg.scala 15:22]
    io.readPort.hi <= hiReg @[HiLoReg.scala 16:18]
    io.readPort.lo <= loReg @[HiLoReg.scala 17:18]
    when io.writePort.en : @[HiLoReg.scala 19:25]
      hiReg <= io.writePort.hi @[HiLoReg.scala 20:11]
      loReg <= io.writePort.lo @[HiLoReg.scala 21:11]
    else :
      hiReg <= hiReg @[HiLoReg.scala 23:11]
      loReg <= loReg @[HiLoReg.scala 24:11]

  module Pc :
    input clock : Clock
    input reset : Reset
    output io : { pc : UInt<32>, ce : UInt<1>, flip isStall : UInt<1>}

    reg pcReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Pc.scala 13:22]
    reg ceReg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Pc.scala 14:22]
    ceReg <= UInt<1>("h1") @[Pc.scala 14:22]
    io.pc <= pcReg @[Pc.scala 16:9]
    io.ce <= ceReg @[Pc.scala 17:9]
    node _T = eq(ceReg, UInt<1>("h0")) @[Pc.scala 19:14]
    when _T : @[Pc.scala 19:27]
      pcReg <= UInt<1>("h0") @[Pc.scala 20:11]
    else :
      when io.isStall : @[Pc.scala 21:26]
        pcReg <= pcReg @[Pc.scala 22:11]
      else :
        node _pcReg_T = add(pcReg, UInt<1>("h1")) @[Pc.scala 24:20]
        node _pcReg_T_1 = tail(_pcReg_T, 1) @[Pc.scala 24:20]
        pcReg <= _pcReg_T_1 @[Pc.scala 24:11]

  module Ctrl :
    input clock : Clock
    input reset : Reset
    output io : { stallRequestPort : { flip id : UInt<1>, flip ex : UInt<1>}, stallCommandPort : { pc : UInt<1>, ifToId : UInt<1>, idToEx : UInt<1>, exToMem : UInt<1>, memToWb : UInt<1>}}

    io.stallCommandPort.pc <= UInt<1>("h0") @[Ctrl.scala 13:31]
    io.stallCommandPort.idToEx <= UInt<1>("h0") @[Ctrl.scala 14:31]
    io.stallCommandPort.ifToId <= UInt<1>("h0") @[Ctrl.scala 15:31]
    io.stallCommandPort.exToMem <= UInt<1>("h0") @[Ctrl.scala 16:31]
    io.stallCommandPort.memToWb <= UInt<1>("h0") @[Ctrl.scala 17:31]
    when io.stallRequestPort.ex : @[Ctrl.scala 18:32]
      io.stallCommandPort.pc <= UInt<1>("h1") @[Ctrl.scala 19:33]
      io.stallCommandPort.ifToId <= UInt<1>("h1") @[Ctrl.scala 20:33]
      io.stallCommandPort.idToEx <= UInt<1>("h1") @[Ctrl.scala 21:33]
      io.stallCommandPort.exToMem <= UInt<1>("h1") @[Ctrl.scala 22:33]
    else :
      when io.stallRequestPort.id : @[Ctrl.scala 23:38]
        io.stallCommandPort.pc <= UInt<1>("h1") @[Ctrl.scala 24:32]
        io.stallCommandPort.ifToId <= UInt<1>("h1") @[Ctrl.scala 25:32]
        io.stallCommandPort.idToEx <= UInt<1>("h1") @[Ctrl.scala 26:32]

  module Id :
    input clock : Clock
    input reset : Reset
    output io : { flip idInstPort : { pc : UInt<32>, inst : UInt<32>}, flip regFileReadPorts : { flip en : UInt<1>, flip addr : UInt<5>, data : UInt<32>}[2], execPort : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}, flip exRfWriteFeedbackPort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, flip memRfWriteFeedbackPort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, isStallRequest : UInt<1>}

    node op = bits(io.idInstPort.inst, 31, 26) @[Id.scala 20:37]
    node op2 = bits(io.idInstPort.inst, 10, 6) @[Id.scala 21:37]
    node op3 = bits(io.idInstPort.inst, 5, 0) @[Id.scala 22:37]
    node op4 = bits(io.idInstPort.inst, 20, 16) @[Id.scala 23:37]
    wire imm : UInt<32> @[Id.scala 24:23]
    wire immSigned : SInt<32> @[Id.scala 25:23]
    wire instValid : UInt<1> @[Id.scala 26:23]
    io.regFileReadPorts[0].en <= UInt<1>("h0") @[Id.scala 31:19]
    node _io_regFileReadPorts_0_addr_T = bits(io.idInstPort.inst, 25, 21) @[Id.scala 36:36]
    node _io_regFileReadPorts_0_addr_T_1 = bits(io.idInstPort.inst, 20, 16) @[Id.scala 37:36]
    node _io_regFileReadPorts_0_addr_T_2 = eq(UInt<1>("h1"), UInt<1>("h0")) @[Mux.scala 81:61]
    node _io_regFileReadPorts_0_addr_T_3 = mux(_io_regFileReadPorts_0_addr_T_2, _io_regFileReadPorts_0_addr_T_1, _io_regFileReadPorts_0_addr_T) @[Mux.scala 81:58]
    io.regFileReadPorts[0].addr <= _io_regFileReadPorts_0_addr_T_3 @[Id.scala 32:21]
    io.regFileReadPorts[1].en <= UInt<1>("h0") @[Id.scala 31:19]
    node _io_regFileReadPorts_1_addr_T = bits(io.idInstPort.inst, 25, 21) @[Id.scala 36:36]
    node _io_regFileReadPorts_1_addr_T_1 = bits(io.idInstPort.inst, 20, 16) @[Id.scala 37:36]
    node _io_regFileReadPorts_1_addr_T_2 = eq(UInt<1>("h1"), UInt<1>("h1")) @[Mux.scala 81:61]
    node _io_regFileReadPorts_1_addr_T_3 = mux(_io_regFileReadPorts_1_addr_T_2, _io_regFileReadPorts_1_addr_T_1, _io_regFileReadPorts_1_addr_T) @[Mux.scala 81:58]
    io.regFileReadPorts[1].addr <= _io_regFileReadPorts_1_addr_T_3 @[Id.scala 32:21]
    io.execPort.aluOp <= UInt<8>("h0") @[Id.scala 41:27]
    io.execPort.aluSel <= UInt<3>("h0") @[Id.scala 42:27]
    io.execPort.isWrite <= UInt<1>("h0") @[Id.scala 43:27]
    node _io_execPort_destRegAddr_T = bits(io.idInstPort.inst, 15, 11) @[Id.scala 44:48]
    io.execPort.destRegAddr <= _io_execPort_destRegAddr_T @[Id.scala 44:27]
    io.execPort.regData[0] <= UInt<32>("h0") @[Id.scala 46:10]
    io.execPort.regData[1] <= UInt<32>("h0") @[Id.scala 46:10]
    node _instValid_T = eq(UInt<1>("h0"), UInt<1>("h0")) @[Id.scala 48:24]
    instValid <= _instValid_T @[Id.scala 48:21]
    imm <= UInt<32>("h0") @[Id.scala 49:21]
    node _immSigned_T = asSInt(UInt<32>("h0")) @[Id.scala 50:38]
    immSigned <= _immSigned_T @[Id.scala 50:21]
    io.isStallRequest <= UInt<1>("h0") @[Id.scala 51:21]
    node _T = eq(UInt<6>("h0"), op) @[Id.scala 54:14]
    when _T : @[Id.scala 54:14]
      node _T_1 = eq(UInt<5>("h0"), op2) @[Id.scala 56:19]
      when _T_1 : @[Id.scala 56:19]
        node _T_2 = eq(UInt<6>("h25"), op3) @[Id.scala 58:23]
        when _T_2 : @[Id.scala 58:23]
          io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 60:41]
          io.execPort.aluOp <= UInt<8>("h25") @[Id.scala 61:41]
          io.execPort.aluSel <= UInt<3>("h1") @[Id.scala 62:41]
          io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 63:41]
          io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 64:41]
          instValid <= UInt<1>("h0") @[Id.scala 65:41]
        else :
          node _T_3 = eq(UInt<6>("h4"), op3) @[Id.scala 58:23]
          when _T_3 : @[Id.scala 58:23]
            io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 68:41]
            io.execPort.aluOp <= UInt<8>("h7c") @[Id.scala 69:41]
            io.execPort.aluSel <= UInt<3>("h2") @[Id.scala 70:41]
            io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 71:41]
            io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 72:41]
            instValid <= UInt<1>("h0") @[Id.scala 73:41]
          else :
            node _T_4 = eq(UInt<6>("h7"), op3) @[Id.scala 58:23]
            when _T_4 : @[Id.scala 58:23]
              io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 76:41]
              io.execPort.aluOp <= UInt<8>("h3") @[Id.scala 77:41]
              io.execPort.aluSel <= UInt<3>("h2") @[Id.scala 78:41]
              io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 79:41]
              io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 80:41]
              instValid <= UInt<1>("h0") @[Id.scala 81:41]
            else :
              node _T_5 = eq(UInt<6>("h10"), op3) @[Id.scala 58:23]
              when _T_5 : @[Id.scala 58:23]
                io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 84:35]
                io.execPort.aluOp <= UInt<8>("h10") @[Id.scala 85:35]
                io.execPort.aluSel <= UInt<3>("h3") @[Id.scala 86:35]
                instValid <= UInt<1>("h0") @[Id.scala 87:35]
              else :
                node _T_6 = eq(UInt<6>("h11"), op3) @[Id.scala 58:23]
                when _T_6 : @[Id.scala 58:23]
                  io.execPort.isWrite <= UInt<1>("h0") @[Id.scala 90:41]
                  io.execPort.aluOp <= UInt<8>("h11") @[Id.scala 91:41]
                  io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 92:41]
                  instValid <= UInt<1>("h0") @[Id.scala 93:41]
                else :
                  node _T_7 = eq(UInt<6>("ha"), op3) @[Id.scala 58:23]
                  when _T_7 : @[Id.scala 58:23]
                    io.execPort.aluOp <= UInt<8>("ha") @[Id.scala 96:41]
                    io.execPort.aluSel <= UInt<3>("h3") @[Id.scala 97:41]
                    io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 98:41]
                    io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 99:41]
                    instValid <= UInt<1>("h0") @[Id.scala 100:41]
                    node _io_execPort_isWrite_T = eq(io.regFileReadPorts[1].data, UInt<32>("h0")) @[Id.scala 103:23]
                    io.execPort.isWrite <= _io_execPort_isWrite_T @[Id.scala 101:35]
                  else :
                    node _T_8 = eq(UInt<6>("h2a"), op3) @[Id.scala 58:23]
                    when _T_8 : @[Id.scala 58:23]
                      io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 106:41]
                      io.execPort.aluOp <= UInt<8>("h2a") @[Id.scala 107:41]
                      io.execPort.aluSel <= UInt<3>("h4") @[Id.scala 108:41]
                      io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 109:41]
                      io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 110:41]
                      instValid <= UInt<1>("h0") @[Id.scala 111:41]
                    else :
                      node _T_9 = eq(UInt<6>("h2b"), op3) @[Id.scala 58:23]
                      when _T_9 : @[Id.scala 58:23]
                        io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 114:41]
                        io.execPort.aluOp <= UInt<8>("h2b") @[Id.scala 115:41]
                        io.execPort.aluSel <= UInt<3>("h4") @[Id.scala 116:41]
                        io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 117:41]
                        io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 118:41]
                        instValid <= UInt<1>("h0") @[Id.scala 119:41]
                      else :
                        node _T_10 = eq(UInt<6>("h20"), op3) @[Id.scala 58:23]
                        when _T_10 : @[Id.scala 58:23]
                          io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 122:41]
                          io.execPort.aluOp <= UInt<8>("h20") @[Id.scala 123:41]
                          io.execPort.aluSel <= UInt<3>("h4") @[Id.scala 124:41]
                          io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 125:41]
                          io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 126:41]
                          instValid <= UInt<1>("h0") @[Id.scala 127:41]
                        else :
                          node _T_11 = eq(UInt<6>("h21"), op3) @[Id.scala 58:23]
                          when _T_11 : @[Id.scala 58:23]
                            io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 130:41]
                            io.execPort.aluOp <= UInt<8>("h21") @[Id.scala 131:41]
                            io.execPort.aluSel <= UInt<3>("h4") @[Id.scala 132:41]
                            io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 133:41]
                            io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 134:41]
                            instValid <= UInt<1>("h0") @[Id.scala 135:41]
    else :
      node _T_12 = eq(UInt<6>("hd"), op) @[Id.scala 54:14]
      when _T_12 : @[Id.scala 54:14]
        io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 142:33]
        io.execPort.aluOp <= UInt<8>("h25") @[Id.scala 143:33]
        io.execPort.aluSel <= UInt<3>("h1") @[Id.scala 144:33]
        io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 145:33]
        node _imm_T = bits(io.idInstPort.inst, 15, 0) @[Id.scala 146:54]
        imm <= _imm_T @[Id.scala 146:33]
        node _io_execPort_destRegAddr_T_1 = bits(io.idInstPort.inst, 20, 16) @[Id.scala 147:54]
        io.execPort.destRegAddr <= _io_execPort_destRegAddr_T_1 @[Id.scala 147:33]
        instValid <= UInt<1>("h0") @[Id.scala 148:33]
      else :
        node _T_13 = eq(UInt<6>("hf"), op) @[Id.scala 54:14]
        when _T_13 : @[Id.scala 54:14]
          io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 151:33]
          io.execPort.aluOp <= UInt<8>("h25") @[Id.scala 152:33]
          io.execPort.aluSel <= UInt<3>("h1") @[Id.scala 153:33]
          io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 154:33]
          node _imm_T_1 = bits(io.idInstPort.inst, 15, 0) @[Id.scala 155:58]
          node _imm_T_2 = cat(_imm_T_1, UInt<16>("h0")) @[Cat.scala 33:92]
          imm <= _imm_T_2 @[Id.scala 155:33]
          node _io_execPort_destRegAddr_T_2 = bits(io.idInstPort.inst, 20, 16) @[Id.scala 156:54]
          io.execPort.destRegAddr <= _io_execPort_destRegAddr_T_2 @[Id.scala 156:33]
          instValid <= UInt<1>("h0") @[Id.scala 157:33]
        else :
          node _T_14 = eq(UInt<6>("ha"), op) @[Id.scala 54:14]
          when _T_14 : @[Id.scala 54:14]
            io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 160:33]
            io.execPort.aluOp <= UInt<8>("h2a") @[Id.scala 161:33]
            io.execPort.aluSel <= UInt<3>("h4") @[Id.scala 162:33]
            io.regFileReadPorts[0].en <= UInt<1>("h1") @[Id.scala 163:33]
            node _immSigned_T_1 = bits(io.idInstPort.inst, 15, 0) @[Id.scala 164:54]
            node _immSigned_T_2 = asSInt(_immSigned_T_1) @[Id.scala 164:62]
            immSigned <= _immSigned_T_2 @[Id.scala 164:33]
            node _imm_T_3 = asUInt(immSigned) @[Id.scala 165:46]
            imm <= _imm_T_3 @[Id.scala 165:33]
            node _io_execPort_destRegAddr_T_3 = bits(io.idInstPort.inst, 20, 16) @[Id.scala 166:54]
            io.execPort.destRegAddr <= _io_execPort_destRegAddr_T_3 @[Id.scala 166:33]
            instValid <= UInt<1>("h0") @[Id.scala 167:33]
    node _T_15 = bits(io.idInstPort.inst, 31, 21) @[Id.scala 170:26]
    node _T_16 = eq(_T_15, UInt<11>("h0")) @[Id.scala 170:35]
    when _T_16 : @[Id.scala 170:50]
      node _T_17 = eq(UInt<6>("h0"), op3) @[Id.scala 171:17]
      when _T_17 : @[Id.scala 171:17]
        io.execPort.isWrite <= UInt<1>("h1") @[Id.scala 173:35]
        io.execPort.aluOp <= UInt<8>("h7c") @[Id.scala 174:35]
        io.execPort.aluSel <= UInt<3>("h2") @[Id.scala 175:35]
        io.regFileReadPorts[1].en <= UInt<1>("h1") @[Id.scala 176:35]
        node _imm_T_4 = bits(io.idInstPort.inst, 10, 6) @[Id.scala 177:56]
        imm <= _imm_T_4 @[Id.scala 177:35]
        node _io_execPort_destRegAddr_T_4 = bits(io.idInstPort.inst, 15, 11) @[Id.scala 178:56]
        io.execPort.destRegAddr <= _io_execPort_destRegAddr_T_4 @[Id.scala 178:35]
        instValid <= UInt<1>("h0") @[Id.scala 179:35]
    when io.regFileReadPorts[0].en : @[Id.scala 188:25]
      io.execPort.regData[0] <= io.regFileReadPorts[0].data @[Id.scala 189:14]
      node _T_18 = eq(io.exRfWriteFeedbackPort.addr, io.regFileReadPorts[0].addr) @[Id.scala 193:72]
      node _T_19 = and(io.exRfWriteFeedbackPort.en, _T_18) @[Id.scala 193:39]
      when _T_19 : @[Id.scala 194:11]
        io.execPort.regData[0] <= io.exRfWriteFeedbackPort.data @[Id.scala 195:16]
      else :
        node _T_20 = eq(io.memRfWriteFeedbackPort.addr, io.regFileReadPorts[0].addr) @[Id.scala 197:74]
        node _T_21 = and(io.memRfWriteFeedbackPort.en, _T_20) @[Id.scala 197:40]
        when _T_21 : @[Id.scala 198:11]
          io.execPort.regData[0] <= io.memRfWriteFeedbackPort.data @[Id.scala 199:16]
    else :
      io.execPort.regData[0] <= imm @[Id.scala 202:14]
    when io.regFileReadPorts[1].en : @[Id.scala 188:25]
      io.execPort.regData[1] <= io.regFileReadPorts[1].data @[Id.scala 189:14]
      node _T_22 = eq(io.exRfWriteFeedbackPort.addr, io.regFileReadPorts[1].addr) @[Id.scala 193:72]
      node _T_23 = and(io.exRfWriteFeedbackPort.en, _T_22) @[Id.scala 193:39]
      when _T_23 : @[Id.scala 194:11]
        io.execPort.regData[1] <= io.exRfWriteFeedbackPort.data @[Id.scala 195:16]
      else :
        node _T_24 = eq(io.memRfWriteFeedbackPort.addr, io.regFileReadPorts[1].addr) @[Id.scala 197:74]
        node _T_25 = and(io.memRfWriteFeedbackPort.en, _T_24) @[Id.scala 197:40]
        when _T_25 : @[Id.scala 198:11]
          io.execPort.regData[1] <= io.memRfWriteFeedbackPort.data @[Id.scala 199:16]
    else :
      io.execPort.regData[1] <= imm @[Id.scala 202:14]

  module Ex :
    input clock : Clock
    input reset : Reset
    output io : { flip execPort : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}, regWritePort : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, flip hiLoReadPort : { hi : UInt<32>, lo : UInt<32>}, flip memHiLoWriteFeedbackPort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}, flip wbHiLoWriteFeedbackPort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}, isStallRequest : UInt<1>}

    wire logicOut : UInt<32> @[Ex.scala 23:27]
    wire shiftOut : UInt<32> @[Ex.scala 24:27]
    wire moveOut : UInt<32> @[Ex.scala 25:27]
    wire arithmeticOut : UInt<32> @[Ex.scala 26:27]
    wire isSumOverflow : UInt<1> @[Ex.scala 28:27]
    io.isStallRequest <= UInt<1>("h0") @[Ex.scala 31:21]
    isSumOverflow <= UInt<1>("h0") @[Ex.scala 32:21]
    wire hi : UInt<32> @[Ex.scala 35:16]
    wire lo : UInt<32> @[Ex.scala 36:16]
    when io.memHiLoWriteFeedbackPort.en : @[Ex.scala 37:40]
      hi <= io.memHiLoWriteFeedbackPort.hi @[Ex.scala 38:8]
      lo <= io.memHiLoWriteFeedbackPort.lo @[Ex.scala 39:8]
    else :
      when io.wbHiLoWriteFeedbackPort.en : @[Ex.scala 40:45]
        hi <= io.wbHiLoWriteFeedbackPort.hi @[Ex.scala 41:8]
        lo <= io.wbHiLoWriteFeedbackPort.lo @[Ex.scala 42:8]
      else :
        hi <= io.hiLoReadPort.hi @[Ex.scala 44:8]
        lo <= io.hiLoReadPort.lo @[Ex.scala 45:8]
    logicOut <= UInt<32>("h0") @[Ex.scala 49:17]
    shiftOut <= UInt<32>("h0") @[Ex.scala 50:17]
    moveOut <= UInt<32>("h0") @[Ex.scala 51:17]
    arithmeticOut <= UInt<32>("h0") @[Ex.scala 52:17]
    node _T = eq(UInt<8>("h25"), io.execPort.aluOp) @[Ex.scala 53:29]
    when _T : @[Ex.scala 53:29]
      node _logicOut_T = or(io.execPort.regData[0], io.execPort.regData[1]) @[Ex.scala 56:62]
      logicOut <= _logicOut_T @[Ex.scala 56:16]
    node _T_1 = eq(UInt<8>("h7c"), io.execPort.aluOp) @[Ex.scala 59:29]
    when _T_1 : @[Ex.scala 59:29]
      node _shiftOut_T = bits(io.execPort.regData[0], 4, 0) @[Ex.scala 62:67]
      node _shiftOut_T_1 = dshl(io.execPort.regData[1], _shiftOut_T) @[Ex.scala 62:42]
      shiftOut <= _shiftOut_T_1 @[Ex.scala 62:16]
    else :
      node _T_2 = eq(UInt<8>("h3"), io.execPort.aluOp) @[Ex.scala 59:29]
      when _T_2 : @[Ex.scala 59:29]
        node _shiftOut_T_2 = asSInt(io.execPort.regData[1]) @[Ex.scala 65:43]
        node _shiftOut_T_3 = bits(io.execPort.regData[0], 4, 0) @[Ex.scala 66:31]
        node _shiftOut_T_4 = dshr(_shiftOut_T_2, _shiftOut_T_3) @[Ex.scala 65:50]
        node _shiftOut_T_5 = asUInt(_shiftOut_T_4) @[Ex.scala 66:39]
        shiftOut <= _shiftOut_T_5 @[Ex.scala 65:16]
    node _T_3 = eq(UInt<8>("h10"), io.execPort.aluOp) @[Ex.scala 69:29]
    when _T_3 : @[Ex.scala 69:29]
      moveOut <= hi @[Ex.scala 72:15]
    else :
      node _T_4 = eq(UInt<8>("ha"), io.execPort.aluOp) @[Ex.scala 69:29]
      when _T_4 : @[Ex.scala 69:29]
        moveOut <= io.execPort.regData[0] @[Ex.scala 75:15]
    node _T_5 = eq(UInt<8>("h2a"), io.execPort.aluOp) @[Ex.scala 78:29]
    when _T_5 : @[Ex.scala 78:29]
      node _arithmeticOut_T = asSInt(io.execPort.regData[0]) @[Ex.scala 81:47]
      node _arithmeticOut_T_1 = asSInt(io.execPort.regData[1]) @[Ex.scala 82:32]
      node _arithmeticOut_T_2 = lt(_arithmeticOut_T, _arithmeticOut_T_1) @[Ex.scala 81:54]
      arithmeticOut <= _arithmeticOut_T_2 @[Ex.scala 81:21]
    else :
      node _T_6 = eq(UInt<8>("h2b"), io.execPort.aluOp) @[Ex.scala 78:29]
      when _T_6 : @[Ex.scala 78:29]
        node _arithmeticOut_T_3 = lt(io.execPort.regData[0], io.execPort.regData[1]) @[Ex.scala 85:47]
        arithmeticOut <= _arithmeticOut_T_3 @[Ex.scala 85:21]
      else :
        node _T_7 = eq(UInt<8>("h21"), io.execPort.aluOp) @[Ex.scala 78:29]
        when _T_7 : @[Ex.scala 78:29]
          node _arithmeticOut_T_4 = add(io.execPort.regData[0], io.execPort.regData[1]) @[Ex.scala 88:67]
          node _arithmeticOut_T_5 = tail(_arithmeticOut_T_4, 1) @[Ex.scala 88:67]
          arithmeticOut <= _arithmeticOut_T_5 @[Ex.scala 88:21]
        else :
          node _T_8 = eq(UInt<8>("h20"), io.execPort.aluOp) @[Ex.scala 78:29]
          when _T_8 : @[Ex.scala 78:29]
            node _arithmeticOut_T_6 = asSInt(io.execPort.regData[0]) @[Ex.scala 93:23]
            node _arithmeticOut_T_7 = asSInt(io.execPort.regData[1]) @[Ex.scala 93:23]
            node _arithmeticOut_T_8 = add(_arithmeticOut_T_6, _arithmeticOut_T_7) @[Ex.scala 94:35]
            node _arithmeticOut_T_9 = tail(_arithmeticOut_T_8, 1) @[Ex.scala 94:35]
            node _arithmeticOut_T_10 = asSInt(_arithmeticOut_T_9) @[Ex.scala 94:35]
            node _arithmeticOut_T_11 = asUInt(_arithmeticOut_T_10) @[Ex.scala 96:10]
            arithmeticOut <= _arithmeticOut_T_11 @[Ex.scala 91:21]
            node _isSumOverflow_T = asSInt(io.execPort.regData[0]) @[Ex.scala 97:48]
            node _isSumOverflow_T_1 = gt(_isSumOverflow_T, asSInt(UInt<1>("h0"))) @[Ex.scala 97:55]
            node _isSumOverflow_T_2 = asSInt(io.execPort.regData[1]) @[Ex.scala 98:30]
            node _isSumOverflow_T_3 = gt(_isSumOverflow_T_2, asSInt(UInt<1>("h0"))) @[Ex.scala 98:37]
            node _isSumOverflow_T_4 = and(_isSumOverflow_T_1, _isSumOverflow_T_3) @[Ex.scala 97:61]
            node _isSumOverflow_T_5 = asSInt(arithmeticOut) @[Ex.scala 99:21]
            node _isSumOverflow_T_6 = lt(_isSumOverflow_T_5, asSInt(UInt<1>("h0"))) @[Ex.scala 99:28]
            node _isSumOverflow_T_7 = and(_isSumOverflow_T_4, _isSumOverflow_T_6) @[Ex.scala 98:43]
            node _isSumOverflow_T_8 = asSInt(io.execPort.regData[0]) @[Ex.scala 99:62]
            node _isSumOverflow_T_9 = lt(_isSumOverflow_T_8, asSInt(UInt<1>("h0"))) @[Ex.scala 99:69]
            node _isSumOverflow_T_10 = asSInt(io.execPort.regData[1]) @[Ex.scala 100:30]
            node _isSumOverflow_T_11 = lt(_isSumOverflow_T_10, asSInt(UInt<1>("h0"))) @[Ex.scala 100:37]
            node _isSumOverflow_T_12 = and(_isSumOverflow_T_9, _isSumOverflow_T_11) @[Ex.scala 99:75]
            node _isSumOverflow_T_13 = asSInt(arithmeticOut) @[Ex.scala 101:21]
            node _isSumOverflow_T_14 = gt(_isSumOverflow_T_13, asSInt(UInt<1>("h0"))) @[Ex.scala 101:28]
            node _isSumOverflow_T_15 = and(_isSumOverflow_T_12, _isSumOverflow_T_14) @[Ex.scala 100:43]
            node _isSumOverflow_T_16 = or(_isSumOverflow_T_7, _isSumOverflow_T_15) @[Ex.scala 99:35]
            isSumOverflow <= _isSumOverflow_T_16 @[Ex.scala 97:21]
    io.regWritePort.rfWritePort.addr <= io.execPort.destRegAddr @[Ex.scala 106:36]
    node _io_regWritePort_rfWritePort_en_T = mux(isSumOverflow, UInt<1>("h0"), io.execPort.isWrite) @[Ex.scala 107:40]
    io.regWritePort.rfWritePort.en <= _io_regWritePort_rfWritePort_en_T @[Ex.scala 107:34]
    io.regWritePort.rfWritePort.data <= UInt<32>("h0") @[Ex.scala 112:36]
    node _T_9 = eq(UInt<3>("h1"), io.execPort.aluSel) @[Ex.scala 113:30]
    when _T_9 : @[Ex.scala 113:30]
      io.regWritePort.rfWritePort.data <= logicOut @[Ex.scala 115:40]
    else :
      node _T_10 = eq(UInt<3>("h2"), io.execPort.aluSel) @[Ex.scala 113:30]
      when _T_10 : @[Ex.scala 113:30]
        io.regWritePort.rfWritePort.data <= shiftOut @[Ex.scala 118:40]
      else :
        node _T_11 = eq(UInt<3>("h3"), io.execPort.aluSel) @[Ex.scala 113:30]
        when _T_11 : @[Ex.scala 113:30]
          io.regWritePort.rfWritePort.data <= moveOut @[Ex.scala 121:40]
        else :
          node _T_12 = eq(UInt<3>("h4"), io.execPort.aluSel) @[Ex.scala 113:30]
          when _T_12 : @[Ex.scala 113:30]
            io.regWritePort.rfWritePort.data <= arithmeticOut @[Ex.scala 124:40]
    io.regWritePort.hiLoWritePort.en <= UInt<1>("h0") @[Ex.scala 129:36]
    io.regWritePort.hiLoWritePort.hi <= hi @[Ex.scala 130:36]
    io.regWritePort.hiLoWritePort.lo <= lo @[Ex.scala 131:36]
    node _T_13 = eq(UInt<6>("h11"), io.execPort.aluOp) @[Ex.scala 132:29]
    when _T_13 : @[Ex.scala 132:29]
      io.regWritePort.hiLoWritePort.en <= UInt<1>("h1") @[Ex.scala 134:40]
      io.regWritePort.hiLoWritePort.hi <= io.execPort.regData[0] @[Ex.scala 135:40]
      io.regWritePort.hiLoWritePort.lo <= lo @[Ex.scala 136:40]

  module Mem :
    input clock : Clock
    input reset : Reset
    output io : { flip regWritePort_i : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, regWritePort_o : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}}

    io.regWritePort_o <= io.regWritePort_i @[Mem.scala 12:21]

  module IfToId :
    input clock : Clock
    input reset : Reset
    output io : { flip input : { pc : UInt<32>, inst : UInt<32>}, output : { pc : UInt<32>, inst : UInt<32>}, flip isStall : UInt<1>}

    wire _bridgeReg_WIRE : { pc : UInt<32>, inst : UInt<32>}
    _bridgeReg_WIRE.inst <= UInt<32>("h0")
    _bridgeReg_WIRE.pc <= UInt<32>("h0")
    node _bridgeReg_T = mux(io.isStall, _bridgeReg_WIRE, io.input) @[BridgeModule.scala 14:8]
    wire _bridgeReg_WIRE_1 : { pc : UInt<32>, inst : UInt<32>}
    _bridgeReg_WIRE_1.inst <= UInt<32>("h0")
    _bridgeReg_WIRE_1.pc <= UInt<32>("h0")
    reg bridgeReg : { pc : UInt<32>, inst : UInt<32>}, clock with :
      reset => (reset, _bridgeReg_WIRE_1) @[BridgeModule.scala 13:26]
    bridgeReg <= _bridgeReg_T @[BridgeModule.scala 13:26]
    io.output <= bridgeReg @[BridgeModule.scala 26:13]

  module IdToEx :
    input clock : Clock
    input reset : Reset
    output io : { flip input : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}, output : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}, flip isStall : UInt<1>}

    wire _bridgeReg_WIRE : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}
    _bridgeReg_WIRE.isWrite <= UInt<1>("h0")
    _bridgeReg_WIRE.destRegAddr <= UInt<5>("h0")
    _bridgeReg_WIRE.regData[0] <= UInt<32>("h0")
    _bridgeReg_WIRE.regData[1] <= UInt<32>("h0")
    _bridgeReg_WIRE.aluSel <= UInt<3>("h0")
    _bridgeReg_WIRE.aluOp <= UInt<8>("h0")
    node _bridgeReg_T = mux(io.isStall, _bridgeReg_WIRE, io.input) @[BridgeModule.scala 14:8]
    wire _bridgeReg_WIRE_1 : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}
    _bridgeReg_WIRE_1.isWrite <= UInt<1>("h0")
    _bridgeReg_WIRE_1.destRegAddr <= UInt<5>("h0")
    _bridgeReg_WIRE_1.regData[0] <= UInt<32>("h0")
    _bridgeReg_WIRE_1.regData[1] <= UInt<32>("h0")
    _bridgeReg_WIRE_1.aluSel <= UInt<3>("h0")
    _bridgeReg_WIRE_1.aluOp <= UInt<8>("h0")
    reg bridgeReg : { aluOp : UInt<8>, aluSel : UInt<3>, regData : UInt<32>[2], destRegAddr : UInt<5>, isWrite : UInt<1>}, clock with :
      reset => (reset, _bridgeReg_WIRE_1) @[BridgeModule.scala 13:26]
    bridgeReg <= _bridgeReg_T @[BridgeModule.scala 13:26]
    io.output <= bridgeReg @[BridgeModule.scala 26:13]

  module ExToMem :
    input clock : Clock
    input reset : Reset
    output io : { flip input : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, output : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, flip isStall : UInt<1>}

    wire _bridgeReg_WIRE : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}
    _bridgeReg_WIRE.hiLoWritePort.lo <= UInt<32>("h0")
    _bridgeReg_WIRE.hiLoWritePort.hi <= UInt<32>("h0")
    _bridgeReg_WIRE.hiLoWritePort.en <= UInt<1>("h0")
    _bridgeReg_WIRE.rfWritePort.data <= UInt<32>("h0")
    _bridgeReg_WIRE.rfWritePort.addr <= UInt<5>("h0")
    _bridgeReg_WIRE.rfWritePort.en <= UInt<1>("h0")
    node _bridgeReg_T = mux(io.isStall, _bridgeReg_WIRE, io.input) @[BridgeModule.scala 14:8]
    wire _bridgeReg_WIRE_1 : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}
    _bridgeReg_WIRE_1.hiLoWritePort.lo <= UInt<32>("h0")
    _bridgeReg_WIRE_1.hiLoWritePort.hi <= UInt<32>("h0")
    _bridgeReg_WIRE_1.hiLoWritePort.en <= UInt<1>("h0")
    _bridgeReg_WIRE_1.rfWritePort.data <= UInt<32>("h0")
    _bridgeReg_WIRE_1.rfWritePort.addr <= UInt<5>("h0")
    _bridgeReg_WIRE_1.rfWritePort.en <= UInt<1>("h0")
    reg bridgeReg : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, clock with :
      reset => (reset, _bridgeReg_WIRE_1) @[BridgeModule.scala 13:26]
    bridgeReg <= _bridgeReg_T @[BridgeModule.scala 13:26]
    io.output <= bridgeReg @[BridgeModule.scala 26:13]

  module MemToWb :
    input clock : Clock
    input reset : Reset
    output io : { flip input : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, output : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, flip isStall : UInt<1>}

    wire _bridgeReg_WIRE : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}
    _bridgeReg_WIRE.hiLoWritePort.lo <= UInt<32>("h0")
    _bridgeReg_WIRE.hiLoWritePort.hi <= UInt<32>("h0")
    _bridgeReg_WIRE.hiLoWritePort.en <= UInt<1>("h0")
    _bridgeReg_WIRE.rfWritePort.data <= UInt<32>("h0")
    _bridgeReg_WIRE.rfWritePort.addr <= UInt<5>("h0")
    _bridgeReg_WIRE.rfWritePort.en <= UInt<1>("h0")
    node _bridgeReg_T = mux(io.isStall, _bridgeReg_WIRE, io.input) @[BridgeModule.scala 14:8]
    wire _bridgeReg_WIRE_1 : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}
    _bridgeReg_WIRE_1.hiLoWritePort.lo <= UInt<32>("h0")
    _bridgeReg_WIRE_1.hiLoWritePort.hi <= UInt<32>("h0")
    _bridgeReg_WIRE_1.hiLoWritePort.en <= UInt<1>("h0")
    _bridgeReg_WIRE_1.rfWritePort.data <= UInt<32>("h0")
    _bridgeReg_WIRE_1.rfWritePort.addr <= UInt<5>("h0")
    _bridgeReg_WIRE_1.rfWritePort.en <= UInt<1>("h0")
    reg bridgeReg : { rfWritePort : { en : UInt<1>, addr : UInt<5>, data : UInt<32>}, hiLoWritePort : { en : UInt<1>, hi : UInt<32>, lo : UInt<32>}}, clock with :
      reset => (reset, _bridgeReg_WIRE_1) @[BridgeModule.scala 13:26]
    bridgeReg <= _bridgeReg_T @[BridgeModule.scala 13:26]
    io.output <= bridgeReg @[BridgeModule.scala 26:13]

  module Cpu :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip romReadPort : { data : UInt<32>, flip addr : UInt<32>, flip en : UInt<1>}, debugPort : { regFileRegs : UInt<32>[32], hiReg : UInt<32>, loReg : UInt<32>, pcRegPc : UInt<32>}}

    inst regFile of RegFile @[Cpu.scala 14:23]
    regFile.clock <= clock
    regFile.reset <= reset
    inst hiLoReg of HiLoReg @[Cpu.scala 15:23]
    hiLoReg.clock <= clock
    hiLoReg.reset <= reset
    inst pcReg of Pc @[Cpu.scala 16:23]
    pcReg.clock <= clock
    pcReg.reset <= reset
    inst ctrl of Ctrl @[Cpu.scala 18:20]
    ctrl.clock <= clock
    ctrl.reset <= reset
    inst idStage of Id @[Cpu.scala 20:24]
    idStage.clock <= clock
    idStage.reset <= reset
    inst exStage of Ex @[Cpu.scala 21:24]
    exStage.clock <= clock
    exStage.reset <= reset
    inst memStage of Mem @[Cpu.scala 22:24]
    memStage.clock <= clock
    memStage.reset <= reset
    inst ifToId of IfToId @[Cpu.scala 24:23]
    ifToId.clock <= clock
    ifToId.reset <= reset
    inst idToEx of IdToEx @[Cpu.scala 25:23]
    idToEx.clock <= clock
    idToEx.reset <= reset
    inst exToMem of ExToMem @[Cpu.scala 26:23]
    exToMem.clock <= clock
    exToMem.reset <= reset
    inst memToWb of MemToWb @[Cpu.scala 27:23]
    memToWb.clock <= clock
    memToWb.reset <= reset
    io.romReadPort.addr <= pcReg.io.pc @[Cpu.scala 30:23]
    io.romReadPort.en <= pcReg.io.ce @[Cpu.scala 31:23]
    ifToId.io.input.pc <= pcReg.io.pc @[Cpu.scala 34:24]
    ifToId.io.input.inst <= io.romReadPort.data @[Cpu.scala 35:24]
    idStage.io.idInstPort.inst <= ifToId.io.output.inst @[Cpu.scala 37:25]
    idStage.io.idInstPort.pc <= ifToId.io.output.pc @[Cpu.scala 37:25]
    idStage.io.regFileReadPorts[0].data <= regFile.io.readPorts[0].data @[Cpu.scala 40:17]
    idStage.io.regFileReadPorts[1].data <= regFile.io.readPorts[1].data @[Cpu.scala 40:17]
    regFile.io.readPorts[0].en <= idStage.io.regFileReadPorts[0].en @[Cpu.scala 46:17]
    regFile.io.readPorts[0].addr <= idStage.io.regFileReadPorts[0].addr @[Cpu.scala 47:17]
    regFile.io.readPorts[1].en <= idStage.io.regFileReadPorts[1].en @[Cpu.scala 46:17]
    regFile.io.readPorts[1].addr <= idStage.io.regFileReadPorts[1].addr @[Cpu.scala 47:17]
    idStage.io.exRfWriteFeedbackPort.data <= exStage.io.regWritePort.rfWritePort.data @[Cpu.scala 51:37]
    idStage.io.exRfWriteFeedbackPort.addr <= exStage.io.regWritePort.rfWritePort.addr @[Cpu.scala 51:37]
    idStage.io.exRfWriteFeedbackPort.en <= exStage.io.regWritePort.rfWritePort.en @[Cpu.scala 51:37]
    idStage.io.memRfWriteFeedbackPort.data <= memStage.io.regWritePort_o.rfWritePort.data @[Cpu.scala 52:37]
    idStage.io.memRfWriteFeedbackPort.addr <= memStage.io.regWritePort_o.rfWritePort.addr @[Cpu.scala 52:37]
    idStage.io.memRfWriteFeedbackPort.en <= memStage.io.regWritePort_o.rfWritePort.en @[Cpu.scala 52:37]
    idToEx.io.input.isWrite <= idStage.io.execPort.isWrite @[Cpu.scala 55:19]
    idToEx.io.input.destRegAddr <= idStage.io.execPort.destRegAddr @[Cpu.scala 55:19]
    idToEx.io.input.regData[0] <= idStage.io.execPort.regData[0] @[Cpu.scala 55:19]
    idToEx.io.input.regData[1] <= idStage.io.execPort.regData[1] @[Cpu.scala 55:19]
    idToEx.io.input.aluSel <= idStage.io.execPort.aluSel @[Cpu.scala 55:19]
    idToEx.io.input.aluOp <= idStage.io.execPort.aluOp @[Cpu.scala 55:19]
    exStage.io.execPort.isWrite <= idToEx.io.output.isWrite @[Cpu.scala 57:23]
    exStage.io.execPort.destRegAddr <= idToEx.io.output.destRegAddr @[Cpu.scala 57:23]
    exStage.io.execPort.regData[0] <= idToEx.io.output.regData[0] @[Cpu.scala 57:23]
    exStage.io.execPort.regData[1] <= idToEx.io.output.regData[1] @[Cpu.scala 57:23]
    exStage.io.execPort.aluSel <= idToEx.io.output.aluSel @[Cpu.scala 57:23]
    exStage.io.execPort.aluOp <= idToEx.io.output.aluOp @[Cpu.scala 57:23]
    exStage.io.hiLoReadPort.lo <= hiLoReg.io.readPort.lo @[Cpu.scala 60:27]
    exStage.io.hiLoReadPort.hi <= hiLoReg.io.readPort.hi @[Cpu.scala 60:27]
    exStage.io.memHiLoWriteFeedbackPort.lo <= memStage.io.regWritePort_o.hiLoWritePort.lo @[Cpu.scala 63:39]
    exStage.io.memHiLoWriteFeedbackPort.hi <= memStage.io.regWritePort_o.hiLoWritePort.hi @[Cpu.scala 63:39]
    exStage.io.memHiLoWriteFeedbackPort.en <= memStage.io.regWritePort_o.hiLoWritePort.en @[Cpu.scala 63:39]
    exStage.io.wbHiLoWriteFeedbackPort.lo <= memToWb.io.output.hiLoWritePort.lo @[Cpu.scala 64:39]
    exStage.io.wbHiLoWriteFeedbackPort.hi <= memToWb.io.output.hiLoWritePort.hi @[Cpu.scala 64:39]
    exStage.io.wbHiLoWriteFeedbackPort.en <= memToWb.io.output.hiLoWritePort.en @[Cpu.scala 64:39]
    exToMem.io.input.hiLoWritePort.lo <= exStage.io.regWritePort.hiLoWritePort.lo @[Cpu.scala 67:20]
    exToMem.io.input.hiLoWritePort.hi <= exStage.io.regWritePort.hiLoWritePort.hi @[Cpu.scala 67:20]
    exToMem.io.input.hiLoWritePort.en <= exStage.io.regWritePort.hiLoWritePort.en @[Cpu.scala 67:20]
    exToMem.io.input.rfWritePort.data <= exStage.io.regWritePort.rfWritePort.data @[Cpu.scala 67:20]
    exToMem.io.input.rfWritePort.addr <= exStage.io.regWritePort.rfWritePort.addr @[Cpu.scala 67:20]
    exToMem.io.input.rfWritePort.en <= exStage.io.regWritePort.rfWritePort.en @[Cpu.scala 67:20]
    memStage.io.regWritePort_i.hiLoWritePort.lo <= exToMem.io.output.hiLoWritePort.lo @[Cpu.scala 69:30]
    memStage.io.regWritePort_i.hiLoWritePort.hi <= exToMem.io.output.hiLoWritePort.hi @[Cpu.scala 69:30]
    memStage.io.regWritePort_i.hiLoWritePort.en <= exToMem.io.output.hiLoWritePort.en @[Cpu.scala 69:30]
    memStage.io.regWritePort_i.rfWritePort.data <= exToMem.io.output.rfWritePort.data @[Cpu.scala 69:30]
    memStage.io.regWritePort_i.rfWritePort.addr <= exToMem.io.output.rfWritePort.addr @[Cpu.scala 69:30]
    memStage.io.regWritePort_i.rfWritePort.en <= exToMem.io.output.rfWritePort.en @[Cpu.scala 69:30]
    memToWb.io.input.hiLoWritePort.lo <= memStage.io.regWritePort_o.hiLoWritePort.lo @[Cpu.scala 72:20]
    memToWb.io.input.hiLoWritePort.hi <= memStage.io.regWritePort_o.hiLoWritePort.hi @[Cpu.scala 72:20]
    memToWb.io.input.hiLoWritePort.en <= memStage.io.regWritePort_o.hiLoWritePort.en @[Cpu.scala 72:20]
    memToWb.io.input.rfWritePort.data <= memStage.io.regWritePort_o.rfWritePort.data @[Cpu.scala 72:20]
    memToWb.io.input.rfWritePort.addr <= memStage.io.regWritePort_o.rfWritePort.addr @[Cpu.scala 72:20]
    memToWb.io.input.rfWritePort.en <= memStage.io.regWritePort_o.rfWritePort.en @[Cpu.scala 72:20]
    regFile.io.writePort.data <= memToWb.io.output.rfWritePort.data @[Cpu.scala 74:24]
    regFile.io.writePort.addr <= memToWb.io.output.rfWritePort.addr @[Cpu.scala 74:24]
    regFile.io.writePort.en <= memToWb.io.output.rfWritePort.en @[Cpu.scala 74:24]
    hiLoReg.io.writePort.lo <= memToWb.io.output.hiLoWritePort.lo @[Cpu.scala 75:24]
    hiLoReg.io.writePort.hi <= memToWb.io.output.hiLoWritePort.hi @[Cpu.scala 75:24]
    hiLoReg.io.writePort.en <= memToWb.io.output.hiLoWritePort.en @[Cpu.scala 75:24]
    pcReg.io.isStall <= ctrl.io.stallCommandPort.pc @[Cpu.scala 78:22]
    ifToId.io.isStall <= ctrl.io.stallCommandPort.ifToId @[Cpu.scala 79:22]
    idToEx.io.isStall <= ctrl.io.stallCommandPort.idToEx @[Cpu.scala 80:22]
    exToMem.io.isStall <= ctrl.io.stallCommandPort.exToMem @[Cpu.scala 81:22]
    memToWb.io.isStall <= ctrl.io.stallCommandPort.memToWb @[Cpu.scala 82:22]
    ctrl.io.stallRequestPort.id <= idStage.io.isStallRequest @[Cpu.scala 84:31]
    ctrl.io.stallRequestPort.ex <= exStage.io.isStallRequest @[Cpu.scala 85:31]
    io.debugPort.regFileRegs <= regFile.io.debugRegs @[Cpu.scala 88:28]
    io.debugPort.pcRegPc <= pcReg.io.pc @[Cpu.scala 89:28]
    io.debugPort.hiReg <= hiLoReg.io.readPort.hi @[Cpu.scala 90:28]
    io.debugPort.loReg <= hiLoReg.io.readPort.lo @[Cpu.scala 91:28]


package mips.components

import chisel3._
import mips.bundles.{HiLoWriteNdPort, RegWriteNdPort, RfWriteNdPort}

class Mem extends Module {
  val io = IO(new Bundle {
    val regWritePort_i = Input(new RegWriteNdPort)
    val regWritePort_o = Output(new RegWriteNdPort)
  })

  io.regWritePort_o := io.regWritePort_i
}

package mips.components

import chisel3._
import mips.bundles.RfWriteNdPort

class Mem extends Module {
  val io = IO(new Bundle {
    val rfWritePort_i = Input(new RfWriteNdPort)
    val rfWritePort_o = Output(new RfWriteNdPort)
  })

  io.rfWritePort_o := io.rfWritePort_i
}

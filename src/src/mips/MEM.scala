package mips

import chisel3._
import mips.bundles.WbPort

class MEM extends Module {
  val io = IO(new Bundle {
    val memPort = new WbPort
    val wbPort  = Flipped(new WbPort)
  })

  val wbReg = new Bundle {
    val destRegAddr = RegNext(io.memPort.destRegAddr, Spec.Addr.Reg.nop)
    val isWrite     = RegNext(io.memPort.isWrite, false.B)
    val writeData   = RegNext(io.memPort.writeData, Spec.zeroWord)
  }
  io.wbPort.destRegAddr := wbReg.destRegAddr
  io.wbPort.isWrite     := wbReg.isWrite
  io.wbPort.writeData   := wbReg.writeData
}

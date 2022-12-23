package mips

import chisel3._
import mips.bundles.RfWritePort

class Mem extends Module {
  val io = IO(new Bundle {
    val rfWritePort_i = new RfWritePort
    val rfWritePort_o = Flipped(new RfWritePort)
  })

  val wbReg = new Bundle {
    val addr = RegNext(io.rfWritePort_i.addr, Spec.Addr.Reg.nop)
    val en   = RegNext(io.rfWritePort_i.en, false.B)
    val data = RegNext(io.rfWritePort_i.data, Spec.zeroWord)
  }
  io.rfWritePort_o.addr := wbReg.addr
  io.rfWritePort_o.en   := wbReg.en
  io.rfWritePort_o.data := wbReg.data
}

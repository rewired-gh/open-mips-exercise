package mips

import chisel3._

private class IfPort extends Bundle {
  val pc   = Input(UInt(Spec.Width.Rom.addr.W))
  val inst = Input(UInt(Spec.Width.Rom.data.W))
}

private class IdPort extends Bundle {
  val pc   = Output(RegInit(Spec.zeroWord))
  val inst = Output(RegInit(Spec.zeroWord))
}

class IFID extends Module {
  val io = IO(new Bundle {
    val ifPort = new IfPort
    val idPort = new IdPort
  })

  io.idPort.pc   := io.ifPort.pc
  io.idPort.inst := io.ifPort.inst
}

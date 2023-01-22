package mips

import chisel3._

class Pc extends Module {
  val io = IO(new Bundle {
    val pc = Output(UInt(Spec.Width.Rom.addr.W))
    val ce = Output(Bool())
  })

  val pcReg = RegInit(0.U(Spec.Width.Rom.addr.W))
  io.pc := pcReg
  val ceReg = RegNext(true.B, false.B)
  io.ce := ceReg

  when(ceReg === false.B) {
    pcReg := 0.U
  }.otherwise {
    pcReg := pcReg + 1.U
  }
}

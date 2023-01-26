package mips.components

import chisel3._
import mips.Spec

class Pc extends Module {
  val io = IO(new Bundle {
    val pc = Output(UInt(Spec.Width.Rom.addr.W))
    val ce = Output(Bool())
  })

  val pcReg = RegInit(Spec.zeroWord)
  val ceReg = RegNext(true.B, false.B)

  io.pc := pcReg
  io.ce := ceReg

  when(ceReg === false.B) {
    pcReg := 0.U
  }.otherwise {
    pcReg := pcReg + 1.U
  }
}

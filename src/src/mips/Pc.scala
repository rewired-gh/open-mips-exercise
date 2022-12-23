package mips

import chisel3._

class Pc extends Module {
  val io = IO(new Bundle {
    val pc = Output(RegInit(0.U(Spec.Width.Rom.addr.W)))
    val ce = Output(RegNext(true.B, false.B))
  })

  when(io.ce === false.B) {
    io.pc := 0.U
  }.otherwise {
    io.pc := io.pc + 4.U
  }
}

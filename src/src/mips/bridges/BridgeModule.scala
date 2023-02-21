package mips.bridges

import chisel3._

abstract class BridgeModule[PortT <: Bundle] extends Module {
  val io = IO(new Bundle {
    val input   = Input(new PortT)
    val output  = Output(new PortT)
    val isStall = Input(Bool())
  })

  val defaultValue: Bundle

  val bridgeReg = RegNext(
    Mux(
      io.isStall,
      defaultValue,
      io.input
    ),
    defaultValue
  )

  io.output := bridgeReg
}

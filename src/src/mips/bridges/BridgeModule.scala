package mips.bridges

import chisel3._

import scala.reflect.ClassTag

abstract class BridgeModule[PortT <: Bundle] extends Module {
  val io = IO(new Bundle {
    val input   = Input(bundleFactory)
    val output  = Output(bundleFactory)
    val isStall = Input(Bool())
  })
  val bridgeReg = RegNext(
    Mux(
      io.isStall,
      defaultValue,
      io.input
    ),
    defaultValue
  )

  def defaultValue: PortT

  def bundleFactory: PortT

  io.output := bridgeReg
}

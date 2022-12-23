package mips.bundles

import chisel3._
import mips.Spec

class WbPort {
  val destRegAddr = Output(UInt(Spec.Width.Reg.addr.W))
  val isWrite     = Output(Bool())
  val writeData   = Output(UInt(Spec.Width.Reg.data.W))
}

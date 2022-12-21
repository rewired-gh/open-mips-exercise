package mips.bundles

import chisel3._
import mips.Spec

class ExecResultPort extends Bundle {
  val destRegAddr = Output(UInt(Spec.Width.Reg.addr.W))
  val isWrite     = Output(Bool())
  val writeData   = Output(UInt(Spec.Width.Reg.data.W))
}

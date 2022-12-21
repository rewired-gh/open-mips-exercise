package mips.bundles

import chisel3._
import mips.Spec

class RfWritePort extends Bundle {
  val en   = Input(Bool())
  val addr = Input(UInt(Spec.Width.Reg.addr.W))
  val data = Input(UInt(Spec.Width.Reg.data.W))
}

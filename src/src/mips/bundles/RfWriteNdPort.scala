package mips.bundles

import chisel3._
import mips.Spec

class RfWriteNdPort extends Bundle {
  val en   = Bool()
  val addr = UInt(Spec.Width.Reg.addr.W)
  val data = UInt(Spec.Width.Reg.data.W)
}

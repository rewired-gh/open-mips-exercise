package mips.bundles

import chisel3._
import mips.Spec

class HiLoWriteNdPort extends Bundle {
  val en = Bool()
  val hi = UInt(Spec.Width.Reg.data.W)
  val lo = UInt(Spec.Width.Reg.data.W)
}

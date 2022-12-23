package mips.bundles

import chisel3._
import mips.Spec

class RomReadPort extends Bundle {
  val data = Output(UInt(Spec.Width.Rom.data.W))
  val addr = Input(UInt(Spec.Width.Rom.addr.W))
  val en   = Input(Bool())
}

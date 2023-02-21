package mips.bundles

import chisel3._

class StallRequestPort extends Bundle {
  val id = Input(Bool())
  val ex = Input(Bool())
}

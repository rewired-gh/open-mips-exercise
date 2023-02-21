package mips.bundles

import chisel3._

class StallCommandPort extends Bundle {
  val pc      = Output(Bool())
  val ifToId  = Output(Bool())
  val idToEx  = Output(Bool())
  val exToMem = Output(Bool())
  val memToWb = Output(Bool())
}

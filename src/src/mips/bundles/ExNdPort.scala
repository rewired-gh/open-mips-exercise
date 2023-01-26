package mips.bundles

import chisel3._
import mips.Params.regReadNum
import mips.Spec

class ExNdPort(readNum: Int = regReadNum) extends Bundle {
  val aluOp       = UInt(Spec.Width.Alu.op.W)
  val aluSel      = UInt(Spec.Width.Alu.sel.W)
  val regData     = Vec(readNum, UInt(Spec.Width.Reg.data.W))
  val destRegAddr = UInt(Spec.Width.Reg.addr.W)
  val isWrite     = Bool()
}

package mips.bundles

import chisel3._
import mips.Params.regReadNum
import mips.Spec

class ExecPort(readNum: Int = regReadNum) extends Bundle {
  val aluOp       = Input(UInt(Spec.Width.Alu.op.W))
  val aluSel      = Input(UInt(Spec.Width.Alu.sel.W))
  val regData     = Input(Vec(readNum, UInt(Spec.Width.Reg.data.W)))
  val destRegAddr = Input(UInt(Spec.Width.Reg.addr.W))
  val isWrite     = Input(Bool())
}

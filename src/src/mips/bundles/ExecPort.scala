package mips.bundles

import chisel3._
import mips.Params.regReadNum
import mips.Spec

class ExecPort(readNum: Int = regReadNum) extends Bundle {
  val aluOp       = Output(UInt(Spec.Width.Alu.op.W))
  val aluSel      = Output(UInt(Spec.Width.Alu.sel.W))
  val regData     = Output(Vec(readNum, UInt(Spec.Width.Reg.data.W)))
  val destRegAddr = Output(UInt(Spec.Width.Reg.addr.W))
  val isWrite     = Output(Bool())
}

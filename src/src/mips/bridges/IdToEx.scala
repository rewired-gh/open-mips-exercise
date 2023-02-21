package mips.bridges

import chisel3._
import chisel3.experimental.BundleLiterals._
import chisel3.experimental.VecLiterals._
import mips.Spec
import mips.bundles.ExNdPort
import mips.Params.regReadNum

class IdToEx(readNum: Int = regReadNum) extends BridgeModule[ExNdPort] {
  def defaultValue = (new ExNdPort).Lit(
    _.aluOp -> Spec.Op.Alu.nop,
    _.aluSel -> Spec.Sel.Alu.nop,
    _.regData -> Vec.Lit(Spec.zeroWord, Spec.zeroWord),
    _.destRegAddr -> Spec.Addr.Reg.nop,
    _.isWrite -> false.B
  )

  def bundleFactory = new ExNdPort
}

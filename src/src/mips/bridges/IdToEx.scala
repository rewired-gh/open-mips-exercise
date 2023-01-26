package mips.bridges

import chisel3._
import chisel3.experimental.BundleLiterals._
import chisel3.experimental.VecLiterals._
import mips.Spec
import mips.bundles.ExNdPort
import mips.Params.regReadNum

class IdToEx(readNum: Int = regReadNum) extends Module {
  val io = IO(new Bundle {
    val input  = Input(new ExNdPort)
    val output = Output(new ExNdPort)
  })

  val bridgeReg = RegNext(
    io.input,
    (new ExNdPort).Lit(
      _.aluOp -> Spec.Op.Alu.nop,
      _.aluSel -> Spec.Sel.Alu.nop,
      _.regData -> Vec.Lit(Spec.zeroWord, Spec.zeroWord),
      _.destRegAddr -> Spec.Addr.Reg.nop,
      _.isWrite -> false.B
    )
  )

  io.output := bridgeReg
}

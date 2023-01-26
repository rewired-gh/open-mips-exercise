package mips.bridges

import chisel3._
import chisel3.experimental.BundleLiterals._
import mips.Spec
import mips.bundles.RfWriteNdPort

class MemToWb extends Module {
  val io = IO(new Bundle {
    val input  = Input(new RfWriteNdPort)
    val output = Output(new RfWriteNdPort)
  })

  val bridgeReg = RegNext(
    io.input,
    (new RfWriteNdPort).Lit(
      _.en -> false.B,
      _.addr -> Spec.Addr.Reg.nop,
      _.data -> Spec.zeroWord
    )
  )

  io.output := bridgeReg
}

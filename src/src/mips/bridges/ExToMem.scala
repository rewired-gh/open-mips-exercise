package mips.bridges

import chisel3._
import chisel3.experimental.BundleLiterals._
import mips.Spec
import mips.bundles.{HiLoWriteNdPort, RegWriteNdPort, RfWriteNdPort}

class ExToMem extends BridgeModule[RegWriteNdPort] {
  def defaultValue = (new RegWriteNdPort).Lit(
    _.rfWritePort -> (new RfWriteNdPort).Lit(
      _.en -> false.B,
      _.addr -> Spec.Addr.Reg.nop,
      _.data -> Spec.zeroWord
    ),
    _.hiLoWritePort -> (new HiLoWriteNdPort).Lit(
      _.en -> false.B,
      _.lo -> Spec.zeroWord,
      _.hi -> Spec.zeroWord
    )
  )

  def bundleFactory = new RegWriteNdPort
}

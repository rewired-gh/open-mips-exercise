package mips.bridges

import chisel3._
import mips.Spec
import mips.bundles.IdInstNdPort
import chisel3.experimental.BundleLiterals._

class IfToId extends BridgeModule[IdInstNdPort] {
  val defaultValue = (new IdInstNdPort).Lit(
    _.pc -> Spec.zeroWord,
    _.inst -> Spec.zeroWord
  )
}

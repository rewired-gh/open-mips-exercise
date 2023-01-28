package mips.bundles

import chisel3._

class RegWriteNdPort extends Bundle {
  val rfWritePort   = new RfWriteNdPort
  val hiLoWritePort = new HiLoWriteNdPort
}

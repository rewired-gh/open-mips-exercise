package mips.components

import chisel3._
import chisel3.util._
import mips.bundles.{HiLoReadNdPort, HiLoWriteNdPort}
import mips.Spec

class HiLoReg extends Module {
  val io = IO(new Bundle {
    val writePort = Input(new HiLoWriteNdPort)
    val readPort  = Output(new HiLoReadNdPort)
  })

  val hiReg = RegInit(Spec.zeroWord)
  val loReg = RegInit(Spec.zeroWord)
  io.readPort.hi := hiReg
  io.readPort.lo := loReg

  when(io.writePort.en) {
    hiReg := io.writePort.hi
    loReg := io.writePort.lo
  }.otherwise {
    hiReg := hiReg
    loReg := loReg
  }
}

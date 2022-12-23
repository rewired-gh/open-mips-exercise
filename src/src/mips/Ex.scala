package mips

import chisel3._
import chisel3.util._
import mips.bundles.{ExecPort, RfWritePort}

class Ex extends Module {
  val io = IO(new Bundle {
    val execPort    = Flipped(new ExecPort)
    val rfWritePort = Flipped(new RfWritePort)
  })

  val rfWriteReg = new Bundle {
    val addr = RegInit(Spec.Addr.Reg.nop)
    val en   = RegInit(false.B)
    val data = RegInit(Spec.zeroWord)
  }
  io.rfWritePort.addr := rfWriteReg.addr
  io.rfWritePort.en   := rfWriteReg.en
  io.rfWritePort.data := rfWriteReg.data

  val logicOut = RegInit(Spec.zeroWord)

  // Compute corresponding to the operator
  logicOut := Spec.zeroWord
  switch(io.execPort.aluOp) {
    is(Spec.Op.Alu.or) {
      logicOut := io.execPort.regData.reduce((acc, p) => acc | p)
    }
  }

  // Select a computation result
  rfWriteReg.addr := io.execPort.destRegAddr
  rfWriteReg.en   := io.execPort.isWrite
  rfWriteReg.data := Spec.zeroWord
  switch(io.execPort.aluSel) {
    is(Spec.Sel.Alu.logic) {
      rfWriteReg.data := logicOut
    }
  }
}

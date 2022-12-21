package mips

import chisel3._
import chisel3.util._
import mips.bundles.{ExecPort, ExecResultPort}

class EX extends Module {
  val io = IO(new Bundle {
    val execPort       = Flipped(new ExecPort)
    val execResultPort = new ExecResultPort
  })

  val execResultReg = new Bundle {
    val destRegAddr = RegInit(Spec.Addr.Reg.nop)
    val isWrite     = RegInit(false.B)
    val writeData   = RegInit(Spec.zeroWord)
  }
  io.execResultPort.destRegAddr := execResultReg.destRegAddr
  io.execResultPort.destRegAddr := execResultReg.isWrite
  io.execResultPort.destRegAddr := execResultReg.writeData

  val logicOut = RegInit(Spec.zeroWord)

  // Compute corresponding to the operator
  logicOut := Spec.zeroWord
  switch(io.execPort.aluOp) {
    is(Spec.Op.Alu.or) {
      logicOut := io.execPort.regData.reduce((acc, p) => acc | p)
    }
  }

  // Select a computation result
  execResultReg.destRegAddr := io.execPort.destRegAddr
  execResultReg.isWrite     := io.execPort.isWrite
  execResultReg.writeData   := Spec.zeroWord
  switch(io.execPort.aluSel) {
    is(Spec.Sel.Alu.logic) {
      execResultReg.writeData := logicOut
    }
  }
}

package mips.components

import chisel3._
import chisel3.util._
import mips.bundles.{ExNdPort, RfWriteNdPort}
import mips.Spec

class Ex extends Module {
  val io = IO(new Bundle {
    val execPort    = Input(new ExNdPort)
    val rfWritePort = Output(new RfWriteNdPort)
  })
  val logicOut = Wire(UInt(Spec.Width.Reg.data.W))
  val shiftOut = Wire(UInt(Spec.Width.Reg.data.W))

  // Compute corresponding to the operator
  logicOut := Spec.zeroWord
  shiftOut := Spec.zeroWord
  switch(io.execPort.aluOp) {
    // Logic result
    is(Spec.Op.Alu.or) {
      logicOut := io.execPort.regData.reduce((acc, p) => acc | p)
    }
  }
  switch(io.execPort.aluOp) {
    // Shift result
    is(Spec.Op.Alu.sll) {
      shiftOut := io.execPort.regData(1) << io.execPort.regData(0)(4, 0)
    }
    is(Spec.Op.Alu.sra) {
      shiftOut := (io.execPort.regData(1).asSInt >>
        io.execPort.regData(0)(4, 0)).asUInt
    }
  }

  // Select a computation result
  io.rfWritePort.addr := io.execPort.destRegAddr
  io.rfWritePort.en   := io.execPort.isWrite
  io.rfWritePort.data := Spec.zeroWord
  switch(io.execPort.aluSel) {
    is(Spec.Sel.Alu.logic) {
      io.rfWritePort.data := logicOut
    }
    is(Spec.Sel.Alu.shift) {
      io.rfWritePort.data := shiftOut
    }
  }
}

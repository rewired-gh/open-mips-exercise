package mips.components

import chisel3._
import chisel3.util._
import mips.bundles.{
  ExNdPort,
  HiLoReadNdPort,
  HiLoWriteNdPort,
  RegWriteNdPort,
  RfWriteNdPort
}
import mips.Spec

class Ex extends Module {
  val io = IO(new Bundle {
    val execPort                 = Input(new ExNdPort)
    val regWritePort             = Output(new RegWriteNdPort)
    val hiLoReadPort             = Input(new HiLoReadNdPort)
    val memHiLoWriteFeedbackPort = Input(new HiLoWriteNdPort)
    val wbHiLoWriteFeedbackPort  = Input(new HiLoWriteNdPort)
    val isStallRequest           = Output(Bool())
  })
  val logicOut      = Wire(UInt(Spec.Width.Reg.data.W))
  val shiftOut      = Wire(UInt(Spec.Width.Reg.data.W))
  val moveOut       = Wire(UInt(Spec.Width.Reg.data.W))
  val arithmeticOut = Wire(UInt(Spec.Width.Reg.data.W))

  val isSumOverflow = Wire(Bool())

  // Fallback
  io.isStallRequest := false.B
  isSumOverflow     := false.B

  // Determine Hi-Lo registers value
  val hi = Wire(UInt(Spec.Width.Reg.data.W))
  val lo = Wire(UInt(Spec.Width.Reg.data.W))
  when(io.memHiLoWriteFeedbackPort.en) {
    hi := io.memHiLoWriteFeedbackPort.hi
    lo := io.memHiLoWriteFeedbackPort.lo
  }.elsewhen(io.wbHiLoWriteFeedbackPort.en) {
    hi := io.wbHiLoWriteFeedbackPort.hi
    lo := io.wbHiLoWriteFeedbackPort.lo
  }.otherwise {
    hi := io.hiLoReadPort.hi
    lo := io.hiLoReadPort.lo
  }

  // Compute corresponding to the operator
  logicOut      := Spec.zeroWord
  shiftOut      := Spec.zeroWord
  moveOut       := Spec.zeroWord
  arithmeticOut := Spec.zeroWord
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
  switch(io.execPort.aluOp) {
    // Move result
    is(Spec.Op.Alu.mfhi) {
      moveOut := hi
    }
    is(Spec.Op.Alu.movz) {
      moveOut := io.execPort.regData(0)
    }
  }
  switch(io.execPort.aluOp) {
    // Arithmetic result
    is(Spec.Op.Alu.slt) {
      arithmeticOut := io.execPort.regData(0).asSInt <
        io.execPort.regData(1).asSInt
    }
    is(Spec.Op.Alu.sltu) {
      arithmeticOut := io.execPort.regData(0) < io.execPort.regData(1)
    }
    is(Spec.Op.Alu.addu) {
      arithmeticOut := io.execPort.regData.reduce((acc, p) => acc + p)
    }
    is(Spec.Op.Alu.add) {
      arithmeticOut := io.execPort.regData
        .map(p => p.asSInt)
        .reduce((acc, p) => acc + p)
        .asUInt
      isSumOverflow := (io.execPort.regData(0).asSInt > 0.S &&
      io.execPort.regData(1).asSInt > 0.S &&
      arithmeticOut.asSInt < 0.S) || (io.execPort.regData(0).asSInt < 0.S &&
      io.execPort.regData(1).asSInt < 0.S &&
      arithmeticOut.asSInt > 0.S)
    }
  }

  // Select a computation result
  io.regWritePort.rfWritePort.addr := io.execPort.destRegAddr
  io.regWritePort.rfWritePort.en := Mux(
    isSumOverflow,
    false.B,
    io.execPort.isWrite
  )
  io.regWritePort.rfWritePort.data := Spec.zeroWord
  switch(io.execPort.aluSel) {
    is(Spec.Sel.Alu.logic) {
      io.regWritePort.rfWritePort.data := logicOut
    }
    is(Spec.Sel.Alu.shift) {
      io.regWritePort.rfWritePort.data := shiftOut
    }
    is(Spec.Sel.Alu.move) {
      io.regWritePort.rfWritePort.data := moveOut
    }
    is(Spec.Sel.Alu.arithmetic) {
      io.regWritePort.rfWritePort.data := arithmeticOut
    }
  }

  // Move to Hi-Lo registers
  io.regWritePort.hiLoWritePort.en := false.B
  io.regWritePort.hiLoWritePort.hi := hi
  io.regWritePort.hiLoWritePort.lo := lo
  switch(io.execPort.aluOp) {
    is(Spec.Op.mthi) {
      io.regWritePort.hiLoWritePort.en := true.B
      io.regWritePort.hiLoWritePort.hi := io.execPort.regData(0)
      io.regWritePort.hiLoWritePort.lo := lo
    }
  }
}

package mips

import chisel3._
import chisel3.util._

private class RegFileReadPort extends Bundle {
  val data = Input(UInt(Spec.Width.Reg.data.W))
  val en   = Output(RegInit(false.B))
  val addr = Output(RegInit(Spec.Addr.Reg.nop))
}

private class ExecPort(readNum: Int) extends Bundle {
  val aluOp       = Output(RegInit(Spec.Op.Alu.nop))
  val aluSel      = Output(RegInit(Spec.Sel.Alu.nop))
  val regData     = Output(Vec(readNum, RegInit(Spec.zeroWord)))
  val destRegAddr = Output(RegInit(Spec.Addr.Reg.nop))
  val isWrite     = Output(RegInit(false.B))
}

class ID(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val pc               = Input(UInt(Spec.Width.Rom.addr.W))
    val inst             = Input(UInt(Spec.Width.Rom.data.W))
    val regFileReadPorts = Vec(readNum, new RegFileReadPort)
    val execPort         = new ExecPort(readNum)
  })

  val op  = io.inst(31, 26)
  val op2 = io.inst(10, 6)
  val op3 = io.inst(5, 0)
  val op4 = io.inst(20, 16)

  val imm       = RegInit(Spec.zeroWord)
  val instValid = RegInit(!Spec.Signal.Valid.inst)

  // Fallback
  io.regFileReadPorts.zipWithIndex.foreach {
    case (port, index) =>
      port.en := false.B
      port.addr := MuxLookup(
        index,
        Spec.Addr.Reg.nop,
        Array(
          0.U -> io.inst(25, 21),
          1.U -> io.inst(20, 16)
        )
      )
  }
  io.execPort.aluOp       := Spec.Op.Alu.nop
  io.execPort.aluSel      := Spec.Sel.Alu.nop
  io.execPort.isWrite     := false.B
  io.execPort.destRegAddr := io.inst(15, 11)
  instValid               := !Spec.Signal.Valid.inst
  imm                     := Spec.zeroWord

  // Interpret execution
  switch(op) {
    is(Spec.Op.ori) {
      io.execPort.isWrite       := true.B
      io.execPort.aluOp         := Spec.Op.Alu.or
      io.execPort.aluSel        := Spec.Sel.Alu.logic
      io.regFileReadPorts(0).en := true.B
      imm                       := io.inst(15, 0)
      io.execPort.destRegAddr   := io.inst(20, 16)
      instValid                 := true.B
    }
  }

  // Determine operands
  io.execPort.regData.zipWithIndex.foreach {
    case (data, index) =>
      val readPort = io.regFileReadPorts(index)
      data := Mux(readPort.en, readPort.data, imm)
  }
}

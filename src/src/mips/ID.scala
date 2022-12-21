package mips

import chisel3._
import chisel3.util._
import mips.bundles.{ExecPort, RfReadPort}

class ID(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val pc               = Input(UInt(Spec.Width.Rom.addr.W))
    val inst             = Input(UInt(Spec.Width.Rom.data.W))
    val regFileReadPorts = Vec(readNum, Flipped(new RfReadPort))
    val execPort         = new ExecPort
  })

  val regFileReadRegs = Vec(
    readNum,
    new Bundle {
      val en   = RegInit(false.B)
      val addr = RegInit(Spec.Addr.Reg.nop)
    }
  )
  io.regFileReadPorts.zip(regFileReadRegs).foreach {
    case (port, reg) =>
      port.en   := reg.en
      port.addr := reg.addr
  }

  val execReg = new Bundle {
    val aluOp       = RegInit(Spec.Op.Alu.nop)
    val aluSel      = RegInit(Spec.Sel.Alu.nop)
    val regData     = Vec(readNum, RegInit(Spec.zeroWord))
    val destRegAddr = RegInit(Spec.Addr.Reg.nop)
    val isWrite     = RegInit(false.B)
  }
  io.execPort.aluOp       := execReg.aluOp
  io.execPort.aluSel      := execReg.aluSel
  io.execPort.regData     := execReg.regData
  io.execPort.destRegAddr := execReg.destRegAddr
  io.execPort.isWrite     := execReg.isWrite

  val op  = io.inst(31, 26)
  val op2 = io.inst(10, 6)
  val op3 = io.inst(5, 0)
  val op4 = io.inst(20, 16)

  val imm       = RegInit(Spec.zeroWord)
  val instValid = RegInit(!Spec.Signal.Valid.inst)

  // Fallback
  regFileReadRegs.zipWithIndex.foreach {
    case (readReg, index) =>
      readReg.en := false.B
      readReg.addr := MuxLookup(
        index,
        Spec.Addr.Reg.nop,
        Array(
          0.U -> io.inst(25, 21),
          1.U -> io.inst(20, 16)
        )
      )
  }
  execReg.aluOp       := Spec.Op.Alu.nop
  execReg.aluSel      := Spec.Sel.Alu.nop
  execReg.isWrite     := false.B
  execReg.destRegAddr := io.inst(15, 11)
  instValid           := !Spec.Signal.Valid.inst
  imm                 := Spec.zeroWord

  // Interpret execution
  switch(op) {
    is(Spec.Op.ori) {
      execReg.isWrite       := true.B
      execReg.aluOp         := Spec.Op.Alu.or
      execReg.aluSel        := Spec.Sel.Alu.logic
      regFileReadRegs(0).en := true.B
      imm                   := io.inst(15, 0)
      execReg.destRegAddr   := io.inst(20, 16)
      instValid             := true.B
    }
  }

  // Determine operands
  execReg.regData.zipWithIndex.foreach {
    case (data, index) =>
      val readPort = io.regFileReadPorts(index)
      data := Mux(readPort.en, readPort.data, imm)
  }
}

package mips.components

import chisel3._
import chisel3.util._
import mips.{Params, Spec}
import mips.bundles.{ExNdPort, IdInstNdPort, RfReadPort, RfWriteNdPort}

import scala.collection.immutable

class Id(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val idInstPort             = Input(new IdInstNdPort)
    val regFileReadPorts       = Vec(readNum, Flipped(new RfReadPort))
    val execPort               = Output(new ExNdPort)
    val exRfWriteFeedbackPort  = Input(new RfWriteNdPort)
    val memRfWriteFeedbackPort = Input(new RfWriteNdPort)
  })

  val op        = io.idInstPort.inst(31, 26)
  val op2       = io.idInstPort.inst(10, 6)
  val op3       = io.idInstPort.inst(5, 0)
  val op4       = io.idInstPort.inst(20, 16)
  val imm       = Wire(UInt(Spec.Width.Reg.data.W))
  val instValid = Wire(Bool())

  imm       := Spec.zeroWord
  instValid := !Spec.Signal.Valid.inst

  // Fallback
  io.regFileReadPorts.zipWithIndex.foreach {
    case (readPort, index) =>
      readPort.en := false.B
      readPort.addr := MuxLookup(
        index.U,
        Spec.Addr.Reg.nop,
        immutable.ArraySeq(
          0.U -> io.idInstPort.inst(25, 21),
          1.U -> io.idInstPort.inst(20, 16)
        )
      )
  }
  io.execPort.aluOp       := Spec.Op.Alu.nop
  io.execPort.aluSel      := Spec.Sel.Alu.nop
  io.execPort.isWrite     := false.B
  io.execPort.destRegAddr := io.idInstPort.inst(15, 11)
  io.execPort.regData.foreach { data =>
    data := Spec.zeroWord
  }
  instValid := !Spec.Signal.Valid.inst
  imm       := Spec.zeroWord

  // Interpret execution
  switch(op) {
    is(Spec.Op.special) {
      switch(op2) {
        is("b00000".U(5.W)) {
          switch(op3) {
            is(Spec.Op.or) {
              io.execPort.isWrite       := true.B
              io.execPort.aluOp         := Spec.Op.Alu.or
              io.execPort.aluSel        := Spec.Sel.Alu.logic
              io.regFileReadPorts(0).en := true.B
              io.regFileReadPorts(1).en := true.B
              instValid                 := Spec.Signal.Valid.inst
            }
            is(Spec.Op.sllv) {
              io.execPort.isWrite       := true.B
              io.execPort.aluOp         := Spec.Op.Alu.sll
              io.execPort.aluSel        := Spec.Sel.Alu.shift
              io.regFileReadPorts(0).en := true.B
              io.regFileReadPorts(1).en := true.B
              instValid                 := Spec.Signal.Valid.inst
            }
            is(Spec.Op.srav) {
              io.execPort.isWrite       := true.B
              io.execPort.aluOp         := Spec.Op.Alu.sra
              io.execPort.aluSel        := Spec.Sel.Alu.shift
              io.regFileReadPorts(0).en := true.B
              io.regFileReadPorts(1).en := true.B
              instValid                 := Spec.Signal.Valid.inst
            }
            is(Spec.Op.mfhi) {
              io.execPort.isWrite := true.B
              io.execPort.aluOp   := Spec.Op.Alu.mfhi
              io.execPort.aluSel  := Spec.Sel.Alu.move
              instValid           := Spec.Signal.Valid.inst
            }
            is(Spec.Op.mthi) {
              io.execPort.isWrite       := false.B
              io.execPort.aluOp         := Spec.Op.Alu.mthi
              io.regFileReadPorts(0).en := true.B
              instValid                 := Spec.Signal.Valid.inst
            }
            is(Spec.Op.movz) {
              io.execPort.aluOp         := Spec.Op.Alu.movz
              io.execPort.aluSel        := Spec.Sel.Alu.move
              io.regFileReadPorts(0).en := true.B
              io.regFileReadPorts(1).en := true.B
              instValid                 := Spec.Signal.Valid.inst
              io.execPort.isWrite := io
                .regFileReadPorts(1)
                .data === Spec.zeroWord
            }
          }
        }
      }
    }
    is(Spec.Op.ori) {
      io.execPort.isWrite       := true.B
      io.execPort.aluOp         := Spec.Op.Alu.or
      io.execPort.aluSel        := Spec.Sel.Alu.logic
      io.regFileReadPorts(0).en := true.B
      imm                       := io.idInstPort.inst(15, 0)
      io.execPort.destRegAddr   := io.idInstPort.inst(20, 16)
      instValid                 := Spec.Signal.Valid.inst
    }
    is(Spec.Op.lui) {
      io.execPort.isWrite       := true.B
      io.execPort.aluOp         := Spec.Op.Alu.or
      io.execPort.aluSel        := Spec.Sel.Alu.logic
      io.regFileReadPorts(0).en := true.B
      imm                       := Cat(io.idInstPort.inst(15, 0), 0.U(16.W))
      io.execPort.destRegAddr   := io.idInstPort.inst(20, 16)
      instValid                 := Spec.Signal.Valid.inst
    }
  }
  when(io.idInstPort.inst(31, 21) === 0.U(11.W)) {
    switch(op3) {
      is(Spec.Op.sll) {
        io.execPort.isWrite       := true.B
        io.execPort.aluOp         := Spec.Op.Alu.sll
        io.execPort.aluSel        := Spec.Sel.Alu.shift
        io.regFileReadPorts(1).en := true.B
        imm                       := io.idInstPort.inst(10, 6)
        io.execPort.destRegAddr   := io.idInstPort.inst(15, 11)
        instValid                 := Spec.Signal.Valid.inst
      }
    }
  }

  // Determine operands
  io.execPort.regData.zipWithIndex.foreach {
    case (data, index) =>
      val readPort = io.regFileReadPorts(index)
      when(readPort.en) {
        data := readPort.data

        // Ex and Mem stage feedback
        when(
          io.exRfWriteFeedbackPort.en && io.exRfWriteFeedbackPort.addr === readPort.addr
        ) {
          data := io.exRfWriteFeedbackPort.data
        }.elsewhen(
          io.memRfWriteFeedbackPort.en && io.memRfWriteFeedbackPort.addr === readPort.addr
        ) {
          data := io.memRfWriteFeedbackPort.data
        }
      }.otherwise {
        data := imm
      }
  }
}

package mips.components

import chisel3._
import mips.{Params, Spec}
import mips.bundles.{RfReadPort, RfWriteNdPort}

class RegFile(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val writePort = Input(new RfWriteNdPort)
    val readPorts = Vec(readNum, new RfReadPort)
    val debugRegs = Output(Vec(Spec.Num.reg, UInt(Spec.Width.Reg.data.W)))
  })

  // 32 bits registers of 32 number
  val regs = RegInit(VecInit(Seq.fill(Spec.Num.reg)(Spec.zeroWord)))

  io.debugRegs := regs

  // Write Operation
  regs.zipWithIndex.foreach {
    case (reg, index) =>
      reg := Mux(
        io.writePort.en === Spec.Signal.En.write && index.U === io.writePort.addr,
        io.writePort.data,
        reg
      )
  }

  io.readPorts.foreach { readPort =>
    when(readPort.addr === 0.U) {
      readPort.data := Spec.zeroWord
    }.elsewhen(readPort.en) {
      when(
        io.writePort.en === Spec.Signal.En.write && readPort.addr === io.writePort.addr
      ) {
        readPort.data := io.writePort.data
      }.otherwise {
        readPort.data := regs(readPort.addr)
      }
    }.otherwise {
      readPort.data := Spec.zeroWord
    }
  }
}

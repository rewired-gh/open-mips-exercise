package mips

import chisel3._
import mips.bundles.{RfReadPort, RfWritePort}

class RegFile(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val writePort = new RfWritePort
    val readPorts = Vec(readNum, new RfReadPort)
    val debugRegs = Output(Vec(Spec.Num.reg, UInt(Spec.Width.Reg.data.W)))
  })

  // 32 bits registers of 32 number
  val regs = RegInit(VecInit(Seq.fill(Spec.Num.reg)(Spec.zeroWord)))
  val readPortDataRegs =
    RegInit(VecInit(Seq.fill(readNum)(0.U(Spec.Width.Reg.data.W))))
  io.readPorts.map(port => port.data).zip(readPortDataRegs).foreach {
    case (data, dataReg) => data := dataReg
  }
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

  io.readPorts.zip(readPortDataRegs).foreach {
    case (readPort, dataReg) =>
      when(readPort.addr === 0.U) {
        dataReg := Spec.zeroWord
      }.elsewhen(readPort.en) {
        when(
          io.writePort.en === Spec.Signal.En.write && readPort.addr === io.writePort.addr
        ) {
          dataReg := io.writePort.data
        }.otherwise {
          dataReg := regs(readPort.addr)
        }
      }.otherwise {
        dataReg := Spec.zeroWord
      }
  }
}

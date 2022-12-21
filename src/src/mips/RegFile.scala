package mips

import chisel3._
import mips.bundles.{RfReadPort, RfWritePort}

class RegFile(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val writePort = new RfWritePort
    val readPorts = Vec(readNum, new RfReadPort)
  })

  // 32 bits registers of 32 number
  val regs = Vec(Spec.Num.reg, RegInit(Spec.zeroWord))
  val readPortDataRegs =
    Vec(readNum, RegInit(0.U(Spec.Width.Reg.data.W)))
  io.readPorts.map(port => port.data).zip(readPortDataRegs).foreach {
    case (data, dataReg) => data := dataReg
  }

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

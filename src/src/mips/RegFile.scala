package mips

import chisel3._

class RfWritePort extends Bundle {
  val en   = Input(Bool())
  val addr = Input(UInt(Spec.Width.Reg.addr.W))
  val data = Input(UInt(Spec.Width.Reg.data.W))
}

class RfReadPort extends Bundle {
  val en   = Input(Bool())
  val addr = Input(UInt(Spec.Width.Reg.addr.W))
  val data = Output(RegInit(0.U(Spec.Width.Reg.data.W)))
}

class RegFile(readNum: Int) extends Module {
  val io = IO(new Bundle {
    val writePort = new RfWritePort
    val readPorts = Vec(2, new RfReadPort)
  })

  // 32 bits registers of 32 number
  private val regs = Vec(Spec.Num.reg, RegInit(Spec.zeroWord))

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

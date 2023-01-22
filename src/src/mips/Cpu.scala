package mips

import chisel3._
import mips.bundles.{CpuDebugPort, RomReadPort}

class Cpu(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val romReadPort = Flipped(new RomReadPort)
    val debugPort   = new CpuDebugPort
  })

  val regFile  = Module(new RegFile)
  val pcReg    = Module(new Pc)
  val idStage  = Module(new Id)
  val exStage  = Module(new Ex)
  val memStage = Module(new mips.Mem)

  // Top ports
  io.romReadPort.addr := pcReg.io.pc
  io.romReadPort.en   := pcReg.io.ce

  // Id input ports
  idStage.io.pc   := pcReg.io.pc
  idStage.io.inst := io.romReadPort.data
  idStage.io.regFileReadPorts.zip(regFile.io.readPorts).foreach {
    case (dest, src) =>
      dest.data := src.data
  }

  // Id-RegFile ports
  regFile.io.readPorts.zip(idStage.io.regFileReadPorts).foreach {
    case (dest, src) =>
      dest.en   := src.en
      dest.addr := src.addr
  }

  // Ex input ports
  exStage.io.execPort := idStage.io.execPort

  // Mem input ports
  memStage.io.rfWritePort_i := exStage.io.rfWritePort

  // Mem-RegFile (Write back) ports
  regFile.io.writePort := memStage.io.rfWritePort_o

  // Debug port
  io.debugPort.regFileRegs := regFile.io.debugRegs
  io.debugPort.pcRegPc     := pcReg.io.pc
}

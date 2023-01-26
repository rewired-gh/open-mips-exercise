package mips

import chisel3._
import mips.bridges.{ExToMem, IdToEx, IfToId, MemToWb}
import mips.bundles.{CpuDebugPort, RomReadPort}
import mips.components.{Ex, Id, Pc, RegFile}

class Cpu(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val romReadPort = Flipped(new RomReadPort)
    val debugPort   = new CpuDebugPort
  })

  val regFile = Module(new RegFile)
  val pcReg   = Module(new Pc)

  val idStage  = Module(new Id)
  val exStage  = Module(new Ex)
  val memStage = Module(new components.Mem)

  val ifToId  = Module(new IfToId)
  val idToEx  = Module(new IdToEx)
  val exToMem = Module(new ExToMem)
  val memToWb = Module(new MemToWb)

  // Top ports
  io.romReadPort.addr := pcReg.io.pc
  io.romReadPort.en   := pcReg.io.ce

  // Id input ports
  ifToId.io.input.pc   := pcReg.io.pc
  ifToId.io.input.inst := io.romReadPort.data

  idStage.io.idInstPort := ifToId.io.output
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

  // Ex, Mem to Id feedback ports
  idStage.io.exRfWriteFeedbackPort  := exStage.io.rfWritePort
  idStage.io.memRfWriteFeedbackPort := memStage.io.rfWritePort_o

  // Ex input ports
  idToEx.io.input := idStage.io.execPort

  exStage.io.execPort := idToEx.io.output

  // Mem input ports
  exToMem.io.input := exStage.io.rfWritePort

  memStage.io.rfWritePort_i := exToMem.io.output

  // Mem-RegFile (Write back) ports
  memToWb.io.input := memStage.io.rfWritePort_o

  regFile.io.writePort := memToWb.io.output

  // Debug port
  io.debugPort.regFileRegs := regFile.io.debugRegs
  io.debugPort.pcRegPc     := pcReg.io.pc
}

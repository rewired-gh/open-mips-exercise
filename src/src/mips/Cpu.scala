package mips

import chisel3._
import mips.bridges.{ExToMem, IdToEx, IfToId, MemToWb}
import mips.bundles.{CpuDebugPort, RomReadPort}
import mips.components.{Ex, HiLoReg, Id, Pc, RegFile}

class Cpu(readNum: Int = Params.regReadNum) extends Module {
  val io = IO(new Bundle {
    val romReadPort = Flipped(new RomReadPort)
    val debugPort   = new CpuDebugPort
  })

  val regFile = Module(new RegFile)
  val hiLoReg = Module(new HiLoReg)
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
  idStage.io.exRfWriteFeedbackPort  := exStage.io.regWritePort.rfWritePort
  idStage.io.memRfWriteFeedbackPort := memStage.io.regWritePort_o.rfWritePort

  // Ex input ports
  idToEx.io.input := idStage.io.execPort

  exStage.io.execPort := idToEx.io.output

  // HiLoReg to Ex
  exStage.io.hiLoReadPort := hiLoReg.io.readPort

  // Mem, Wb to Ex feedback ports
  exStage.io.memHiLoWriteFeedbackPort := memStage.io.regWritePort_o.hiLoWritePort
  exStage.io.wbHiLoWriteFeedbackPort  := memToWb.io.output.hiLoWritePort

  // Mem input ports
  exToMem.io.input := exStage.io.regWritePort

  memStage.io.regWritePort_i := exToMem.io.output

  // Mem-RegFile (Write back) ports
  memToWb.io.input := memStage.io.regWritePort_o

  regFile.io.writePort := memToWb.io.output.rfWritePort
  hiLoReg.io.writePort := memToWb.io.output.hiLoWritePort

  // Debug port
  io.debugPort.regFileRegs := regFile.io.debugRegs
  io.debugPort.pcRegPc     := pcReg.io.pc
  io.debugPort.hiReg       := hiLoReg.io.readPort.hi
  io.debugPort.loReg       := hiLoReg.io.readPort.lo
}

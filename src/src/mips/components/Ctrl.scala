package mips.components

import chisel3._
import chisel3.util._
import mips.bundles.{StallCommandPort, StallRequestPort}

class Ctrl extends Module {
  val io = IO(new Bundle {
    val stallRequestPort = new StallRequestPort
    val stallCommandPort = new StallCommandPort
  })

  io.stallCommandPort.pc      := false.B
  io.stallCommandPort.idToEx  := false.B
  io.stallCommandPort.ifToId  := false.B
  io.stallCommandPort.exToMem := false.B
  io.stallCommandPort.memToWb := false.B
  when(io.stallRequestPort.ex) {
    io.stallCommandPort.pc      := true.B
    io.stallCommandPort.ifToId  := true.B
    io.stallCommandPort.idToEx  := true.B
    io.stallCommandPort.exToMem := true.B
  }.elsewhen(io.stallRequestPort.id) {
    io.stallCommandPort.pc     := true.B
    io.stallCommandPort.ifToId := true.B
    io.stallCommandPort.idToEx := true.B
  }
}

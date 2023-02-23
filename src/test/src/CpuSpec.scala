import chisel3._
import chiseltest._
import chiseltest.simulator.WriteVcdAnnotation
import mips.Cpu
import utest._

object CpuSpec extends ChiselUtestTester {
  val tests = Tests {
    test("Run CPU") {
      testCircuit(new Cpu, Seq(WriteVcdAnnotation)) { cpu =>
        val insts = Seq(
          "h34018000",
          "h00010c00",
          "h34210010",
          "h34028000",
          "h00021400",
          "h34420001",
          "h34030000",
          "h00411821",
          "h34030000",
          "h00411820",
          "h3401ffff",
          "h00010c00",
          "h0020102a",
          "h0020102b",
          "h28228000",
          "h00000000",
          "h00000000",
          "h00000000",
          "h00000000",
          "h00000000",
          "h00000000",
          "h00000000",
          "h00000000",
          "h00000000"
        )
        for (i <- 1 to insts.length) {
          println(s"\n[Cycle $i]")
          print("ROM read: ")
          println(cpu.io.romReadPort.data.peekInt().toString(16))
          println("Regs: ")
          cpu.io.debugPort.regFileRegs.zipWithIndex.foreach {
            case (reg, index) =>
              print(s"$$${index}_${reg.peekInt().toString(16)} ")
          }
          print(
            s"hi_${cpu.io.debugPort.hiReg.peekInt().toString(16)} lo_${cpu.io.debugPort.loReg.peekInt().toString(16)}"
          )
          println()
          val debugInfo = cpu.io.debugPort.peek()
          cpu.io.romReadPort.data
            .poke(insts(cpu.io.debugPort.pcRegPc.peekInt().toInt).U)
          cpu.clock.step()
        }
      }
    }
  }
}

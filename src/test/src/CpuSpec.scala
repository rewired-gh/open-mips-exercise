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
          "h00000000",
          "h3c010101",
          "h34210101",
          "h34221100",
          "h00220825",
          "h3c020404",
          "h34420404",
          "h34050005",
          "h34080008",
          "h00021200",
          "h00e21004",
          "h00021403",
          "h01021007",
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

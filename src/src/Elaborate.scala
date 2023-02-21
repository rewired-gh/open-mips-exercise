import chisel3.stage._
import circt.stage.{CIRCTTarget, CIRCTTargetAnnotation}
import circt.stage
import mips.Cpu

object Elaborate extends App {
  val useMFC    = false // use MLIR-based firrtl compiler
  val generator = Seq(chisel3.stage.ChiselGeneratorAnnotation(() => top))

  def top = new Cpu()

  if (useMFC) {
    (new stage.ChiselStage)
      .execute(args, generator :+ CIRCTTargetAnnotation(CIRCTTarget.Verilog))
  } else {
    (new ChiselStage).execute(args, generator)
  }
}

import circt.stage._
import mips.Cpu

object Elaborate extends App {
  val useMFC    = true // use MLIR-based firrtl compiler
  val generator = Seq(chisel3.stage.ChiselGeneratorAnnotation(() => top))

  def top = new Cpu()

  if (useMFC) {
    (new ChiselStage)
      .execute(args, generator :+ CIRCTTargetAnnotation(CIRCTTarget.Verilog))
  } else {
    (new ChiselStage).execute(args, generator)
  }
}

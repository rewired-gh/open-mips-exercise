package mips.bundles

import chisel3._
import mips.Spec

class CpuDebugPort extends Bundle {
  val regFileRegs = Output(Vec(Spec.Num.reg, UInt(Spec.Width.Reg.data.W)))
  val hiReg       = Output(UInt(Spec.Width.Reg.data.W))
  val loReg       = Output(UInt(Spec.Width.Reg.data.W))
  val pcRegPc     = Output(UInt(Spec.Width.Rom.addr.W))
}

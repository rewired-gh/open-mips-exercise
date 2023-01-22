import chisel3._

package object mips {
  object Params {
    final val wordLength = 32
    final val regReadNum = 2
    final val romMemFile = "./assets/ori_inst.data"
    final val romInstNum = 1024
  }

  object Spec {
    def zeroWord = 0.U(Params.wordLength.W)

    object Signal {
      object En {
        def write = true.B

        def read = true.B
      }

      object Valid {
        def inst = false.B
      }
    }

    object Width {
      val inst = 6

      object Alu {
        val op  = 8
        val sel = 3
      }

      object Rom {
        val addr = Params.wordLength
        val data = Params.wordLength
      }

      object Reg {
        val addr       = 5
        val data       = Params.wordLength
        val doubleData = data * 2
      }
    }

    object Num {
      val reg = 32
    }

    object Op {
      def ori = "b001101".U(Spec.Width.inst.W)

      def nop = "b000000".U(Spec.Width.inst.W)

      object Alu {
        def or = "b00100101".U(Spec.Width.Alu.op.W)

        def nop = "b00000000".U(Spec.Width.Alu.op.W)
      }
    }

    object Addr {
      object Reg {
        def nop = "b00000".U(Spec.Width.Reg.addr.W)
      }
    }

    object Sel {
      object Alu {
        def logic = "b001".U(Spec.Width.Alu.sel.W)

        def nop = "b000".U(Spec.Width.Alu.sel.W)
      }
    }
  }
}

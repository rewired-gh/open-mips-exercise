import chisel3._

package object mips {
  object Params {
    final val wordLength = 32
    final val regReadNum = 2
    final val romMemFile = "./assets/ori_inst.data"
    final val romInstNum = 1024
  }

  object Spec {
    def zeroWord = 0.U(Params.wordLength)

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
      def ori = "b001101".U

      def nop = "b000000".U

      object Alu {
        def or = "b00100101".U

        def nop = "b00000000".U
      }
    }

    object Addr {
      object Reg {
        def nop = "b00000".U
      }
    }

    object Sel {
      object Alu {
        def logic = "b001".U

        def nop = "b000".U
      }
    }
  }
}

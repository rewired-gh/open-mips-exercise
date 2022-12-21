import chisel3._

package object mips {
  object Spec {
    def zeroWord = 0.U(this.Width.Reg.data.W)

    object Signal {
      object En {
        def write = true.B
        def read  = true.B
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
        val addr = 32
        val data = 32
      }

      object Reg {
        val addr       = 5
        val data       = 32
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
        def or  = "b00100101".U
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
        def nop   = "b000".U
      }
    }
  }
}

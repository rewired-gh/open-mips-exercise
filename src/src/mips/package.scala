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
      def and = "b100100".U(Spec.Width.inst.W)

      def or = "b100101".U(Spec.Width.inst.W)

      def xor = "b100110".U(Spec.Width.inst.W)

      def nor = "b100111".U(Spec.Width.inst.W)

      def andi = "b001100".U(Spec.Width.inst.W)

      def ori = "b001101".U(Spec.Width.inst.W)

      def xori = "b001110".U(Spec.Width.inst.W)

      def lui = "b001111".U(Spec.Width.inst.W)

      def sll = "b000000".U(Spec.Width.inst.W)

      def sllv = "b000100".U(Spec.Width.inst.W)

      def srl = "b000010".U(Spec.Width.inst.W)

      def srlv = "b000110".U(Spec.Width.inst.W)

      def sra = "b000011".U(Spec.Width.inst.W)

      def srav = "b000111".U(Spec.Width.inst.W)

      def sync = "b001111".U(Spec.Width.inst.W)

      def pref = "b110011".U(Spec.Width.inst.W)

      def special = "b000000".U(Spec.Width.inst.W)

      def movz = "b001010".U(Spec.Width.inst.W)

      def mfhi = "b010000".U(Spec.Width.inst.W)

      def mthi = "b010001".U(Spec.Width.inst.W)

      def nop = "b000000".U(Spec.Width.inst.W)

      object Alu {
        def or = "b00100101".U(Spec.Width.Alu.op.W)

        def sll = "b01111100".U(Spec.Width.Alu.op.W)

        def sra = "b00000011".U(Spec.Width.Alu.op.W)

        def mfhi = "b00010000".U(Spec.Width.Alu.op.W)

        def mthi = "b00010001".U(Spec.Width.Alu.op.W)

        def movz = "b00001010".U(Spec.Width.Alu.op.W)

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

        def shift = "b010".U(Spec.Width.Alu.sel.W)

        def move = "b011".U(Spec.Width.Alu.sel.W)

        def nop = "b000".U(Spec.Width.Alu.sel.W)
      }
    }
  }
}

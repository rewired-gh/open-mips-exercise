.org 0x0
.set noat
.global _start

_start:
  lui $1, 0x0000
  lui $2, 0xffff
  lui $3, 0x0505
  lui $4, 0x0000

  movz $4, $2, $1
  movz $4, $3, $3

  mthi $0
  mthi $0
  mthi $3

  mfhi $4

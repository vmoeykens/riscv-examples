jal x0, main

intmul:
  addi    sp, sp, -32
  sw      ra, 28(sp)
  sw      s0, 24(sp)
  addi    s0, sp, 32
  sw      a0, -12(s0)  # numer, on the stack
  sw      a1, -16(s0)  # denom, on the stack
  blt     a1, x0, crash
  blt     a1, x0, crash
  beq     a1, x0, crash
  addi    a0, x0, 0    # i = 0
  sw      a0, -20(s0)  # i on the stack
loop2:
  lw      a0, -12(s0)   # numer
  lw      a1, -16(s0)   # denom
  blt     a0, a1, done2
  sub     a0, a0, a1    # numer = numer-denom
  sw      a0, -12(s0)
  lw      a0, -20(s0)   # i
  addi    a0, a0, 1     # i = i + 1
  sw      a0, -20(s0)
  jal     x0, loop2
done2:
  lw      a0, -20(s0)
  lw      s0, 24(sp)
  lw      ra, 28(sp)
  addi    sp, sp, 32
  jalr    x0, ra, 0

crash:
  lw x0, 1(x0)

main:
  addi a0, x0, 120
  addi sp, sp, 100
  jal ra, intmul

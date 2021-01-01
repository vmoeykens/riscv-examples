jal   x0, main

intmul:
  add   t1, x0, a1
  jal   ra, loop1

loop1:
  add   t2, t2, a0
  addi  t1, t1, -1
  beq   t1, x0, exit
  jal   x0, loop1

crash:
  lw    x0, 1(x0)

main:
  addi  a0, x0, 120   # first parameter in the multiplication
  addi  a1, x0, 4     # second parameter in the multiplication
  jal   ra, intmul

exit:
  add  a3, x0, t2

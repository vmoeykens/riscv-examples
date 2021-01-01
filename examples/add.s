jal x0, main

main: 
   addi  x10, x0, 10 # Add Immediate (Constant) of value 10 to register x0 (zero constant) and store it in register x10 (a0)
   addi  x11, x0, 5 # Add Immediate 10 to x0 and store in x11
   add   x12, x10, x11 # Add register x10 and x11 and store in x12
   addi  x13, x12, 207 # Add register x12 and immediate 207 and store in register x13
exit:

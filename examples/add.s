main: 
   ADDI x10,x0,10 # Add Immediate (Constant) of value 10 to register x0 (zero constant) and store it in register x10 (a0)
   ADDI x11,x0,5 # Add Immediate 10 to x0 and store in x11
   ADD x12,x10,x11 # Add register x10 and x11 and store in x12
   ADDI x13,x12,207 # Add register x12 and immediate 207 and store in register x13
main
exit:


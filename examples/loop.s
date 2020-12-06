ADDI t0,t0,0 # Add immediate constant 0 to register t0 and store in register t0 (effectively load 0 into register t0)
ADDI t2,t2,10 # Add immediate constant 10 to register t2 and store in register t0 (effectively load 10 into register t2)
loop_head:
   BGE t0, t2, loop_end # Branch if reguster t0 is equal to reguster t2
   # BEGIN LOOP SECTION
   ADDI a0, a0, 1 # Add immediate constant 1 to register s1
   # END LOOP SECTION
   ADDI t0, t0, 1 # add immediate 1 to register t0 (increment counter)
   JAL x0,loop_head # Jump to loop_head
loop_end:
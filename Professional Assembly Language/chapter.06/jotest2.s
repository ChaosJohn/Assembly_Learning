# jotest2.s - Another example of jo instruction 

.section .text 
.globl _start 
_start: 
  movl $1, %eax 
  movb $0, %bl 
loop: 
  addb $10, %bl 
  jo overhere 
  jmp loop 
overhere: 
  int $0x80 



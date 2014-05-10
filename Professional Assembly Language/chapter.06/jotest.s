# jotest.s - An example of jo instruction 

.section .text 
.globl _start 
_start: 
  movl $1, %eax 
  movb $0x7f, %bl 
  addb $10, %bl 
  jo overhere 
  int $0x80 
overhere: 
  movl $0, %ebx 
  int $0x80 


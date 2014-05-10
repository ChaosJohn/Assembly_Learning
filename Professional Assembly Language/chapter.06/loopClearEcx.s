# loopClearEcx.s - An example of the loop instruction clearing ecx 
.section .data 
output: 
  .asciz "The value is: %d\n" 

.section .text 
.globl _start 
_start: 
  movl $101, %ecx 
  movl $0, %eax 
loop1: 
  addl %ecx, %eax 
  subl $2, %ecx 
  loop loop1 
  pushl %eax 
  pushl $output 
  call printf 
  addl $8, %esp 
  movl $1, %eax 
  movl $0, %ebx 
  int $0x80 


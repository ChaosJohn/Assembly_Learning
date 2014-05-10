# movtest3.s - Another example of using indexed memory locations

.section .data 
output: 
  .asciz "The value is %d\n" 
values: 
  .int 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60 

.section .text 
.globl _start 
_start: 
  movl $0, %edi 
loop: 
  movl values(, %edi, 4), %eax 
  pushl %eax 
  pushl $output 
  call printf 
  addl $8, %esp # empty the stack value for printf
  inc %edi 
  cmpl $11, %edi 
  jne loop 

  movl $0, %ebx # the return value of the program
  movl $1, %eax # the interrupt program for 0x80 
  int $0x80 



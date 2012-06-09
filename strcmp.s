.globl _strcmpasm
_strcmpasm : 
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %edi
  movl 12(%ebp), %esi
  movl $0, %eax
cmploop : 
  movb (%esi), %dl
  cmpb %dl, (%edi)
  jg cmpisgreater
  jl cmpisless
  inc %edi
  inc %esi
  cmpb $0, %dl
  je endstrcmpasm
  jmp cmploop 
endstrcmpasm : 
  leave
  ret
               
cmpisgreater : 
  movl $1, %eax
  jmp endstrcmpasm
cmpisless : 
  movl $-1, %eax
  jmp endstrcmpasm

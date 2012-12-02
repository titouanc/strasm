.globl _strcmpasm
_strcmpasm : 
  pushl %ebp
  movl %esp, %ebp
  pushl %edi
  pushl %esi
  pushl %edx
  pushl %ebx
  
  movl 8(%ebp),  %edi
  movl 12(%ebp), %esi
  movl $0, %eax
  movl $0, %ebx
  
cmploop : 
  movb (%ebx,%esi), %dl
  cmpb %dl, (%ebx,%edi)
  jg cmpisgreater
  jl cmpisless
  inc %ebx
  cmpb $0, %dl
  je endstrcmpasm
  jmp cmploop 

cmpisgreater : 
  movl $1, %eax
  jmp endstrcmpasm
  
cmpisless : 
  movl $-1, %eax

endstrcmpasm :
  popl %ebx
  popl %edx /* Restore registers */
  popl %esi
  popl %edi
  leave
  ret

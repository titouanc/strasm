.globl _strncmpasm
_strncmpasm : 
  pushl %ebp 
  movl %esp, %ebp
  movl 8(%ebp),  %edi 
  movl 12(%ebp), %esi
  movl 16(%ebp), %ecx
  movl $0, %eax
  
loopncmp : 
  movb (%esi), %dl
  cmpb %dl, (%edi)
  jg ncmpisgreater
  jl ncmpisless
  inc %esi
  inc %edi
  cmp $0, %dl
  je endstrncmpasm
  loop loopncmp

endstrncmpasm :
  leave
  ret

ncmpisgreater : 
  movl $1, %eax
  jmp endstrncmpasm
ncmpisless : 
  movl $-1, %eax
  jmp endstrncmpasm

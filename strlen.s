.globl _strlenasm
_strlenasm   : 
  pushl %ebp
  movl %esp, %ebp
  
  pushl %esi
  movl 8(%ebp), %esi
  movl $0, %eax
  
lencountbytes: 
  cmpb $0, (%eax, %esi)
  je endstrlenasm
  inc %eax
  jmp lencountbytes
  
endstrlenasm : 
  popl %esi
  movl %ebp, %esp
  popl %ebp 
  ret

.globl _strlenasm
_strlenasm   : 
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp), %esi
  movl $0, %eax
lencountbytes: 
  cmpb $0, (%esi)
  je endstrlenasm
  inc %esi
  inc %eax
  jmp lencountbytes
endstrlenasm : 
  leave
  ret

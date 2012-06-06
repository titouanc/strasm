.globl _strncpyasm
_strncpyasm   : 
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %edi
  movl 12(%ebp), %esi
  movl 16(%ebp), %ecx
  pushl %edi
  dec %ecx
ncpycopybytes : 
  movb (%esi), %dl
  movb %dl, (%edi)
  cmp $0, %dl
  je endstrncpyasm
  inc %esi
  inc %edi
  loop ncpycopybytes
endstrncpyasm : 
  popl %eax
  leave
  ret
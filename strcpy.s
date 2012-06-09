.globl _strcpyasm
_strcpyasm :
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %edi
  movl 12(%ebp), %esi
  pushl %edi
cpycopybytes : 
  movb (%esi), %dl
  movb %dl, (%edi)
  cmpb $0, %dl
  je endstrcpyasm
  inc %esi
  inc %edi
  jmp cpycopybytes
endstrcpyasm : 
  popl %eax
  leave
  ret

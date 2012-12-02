#if (defined(__MACH__) && defined(__APPLE__))
.globl _strncatasm
_strncatasm   : 
#else 
.globl strncatasm
strncatasm   :
#endif
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %edi
  movl 12(%ebp), %esi
  movl 16(%ebp), %ecx
  pushl %edi
ncatgetendofs : 
  cmpb $0, (%edi)
  je ncatcopybytes
  incl %edi
  jmp ncatgetendofs
ncatcopybytes : 
  movb (%esi), %dl
  movb %dl, (%edi)
  cmpb $0, %dl
  je endstrncatasm
  incl %esi
  incl %edi
  loop ncatcopybytes
endstrncatasm : 
  movb $0, (%edi)
  popl %eax
  leave
  ret

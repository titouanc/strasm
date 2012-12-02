#if (defined(__MACH__) && defined(__APPLE__))
.globl _strncpyasm
_strncpyasm   : 
#else 
.globl strncpyasm
strncpyasm   :
#endif 
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %edi
  movl 12(%ebp), %esi
  movl 16(%ebp), %ecx
  movl %edi, %eax
  cmpl $0, %ecx
  je L3
  
L1:
  movb (%esi), %dl
  cmpb $0, %dl
  je L2
  movb %dl, (%edi)
  inc %edi
  inc %esi
  loop L1
  jmp L3
  
L2:
  movb $0, (%edi)
  inc %edi
  loop L2
  
L3:
  leave
  ret
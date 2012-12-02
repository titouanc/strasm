#if (defined(__MACH__) && defined(__APPLE__))
.globl _strchrasm
_strchrasm   : 
#else 
.globl strchrasm
strchrasm   :
#endif
  pushl %ebp 
  movl %esp, %ebp
  movl 8(%ebp), %esi
  movb 12(%ebp), %dl
  movl $0, %eax
  
loopstrchrasm:
  movb (%esi), %al
  cmpb %al, %dl
  je characterfound
  inc %esi
  cmp $0, %al
  jne loopstrchrasm
  
endstrchrasm:
  leave
  ret

characterfound:
  mov %esi, %eax
  jmp endstrchrasm

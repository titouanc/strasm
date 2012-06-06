.globl _strchrasm
_strchrasm : 
  pushl %ebp 
  movl %esp, %ebp
  movl 8(%ebp), %esi
  movb 9(%ebp), %dl
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
/* char *strpbrk(const char *haystack, const char *needles) */
.globl _strpbrkasm
_strpbrkasm :
  pushl %ebp
  movl  %esp, %ebp /* local stack init */
  pushl %esi       /* save registers state */
  pushl %edi
  pushl %ebx
  
  subl $4, %esp
  movl $0, (%esp)  /* res = NULL */
  
  movl 8(%ebp), %esi
  dec  %esi
  movl $0     , %eax 

aheadInHaystack:
  inc  %esi
  movb (%esi), %al
  cmpb $0, %al
  je   strpbrkret  /* haystack End Of String*/
  movl 12(%ebp), %edi

aheadInNeedles :
  movb (%edi), %bl
  cmpb $0    , %bl /* needles End Of String */
  je   aheadInHaystack
  inc  %edi
  cmpb %bl, %al
  jne  aheadInNeedles
  movl %esi, (%esp)
  
strpbrkret:
  movl (%esp), %eax
  addl $4    , %esp
  
  popl %ebx
  popl %edi
  popl %esi
  movl %ebp  , %esp
  popl %ebp
  ret
/* char *strcpyasm(char *dest, const char *src) */

#if (defined(__MACH__) && defined(__APPLE__))
.globl _strcpyasm
_strcpyasm   : 
#else 
.globl strcpyasm
strcpyasm   :
#endif
  pushl %ebp
  movl %esp, %ebp /* Local stack initialisation */
  
  pushl %esi      /* Keep EDI on the stack */
  pushl %edi      /* Keep ESI on the stack */
  
  movl 8(%ebp),  %edi /* EDI contains now dest */
  movl 12(%ebp), %esi /* ESI contains now source */
  
copyloop : 
  movb (%esi), %al
  movb %al, (%edi)
  cmpb $0, %al
  je strcpyret
  inc %esi
  inc %edi
  jmp copyloop
  
strcpyret : 
  popl %edi  /* Restore ESI and EDI*/
  popl %esi
  movl 8(%ebp), %eax /* Return dest */
  movl %ebp, %esp
  popl %ebp
  ret

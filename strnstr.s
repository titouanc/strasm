/* char *strnstr(const char *haystack, const char *needle, unsigned int n) */

#if (defined(__MACH__) && defined(__APPLE__))
.globl _strnstrasm
_strnstrasm   : 
#else 
.globl strnstrasm
strnstrasm   :
#endif
  pushl %ebp
  movl %esp, %ebp
  pushl %esi
  pushl %edi
  pushl %ecx
  subl $4, %esp /* found */
  
  movl 8(%ebp) , %esi /* ESI: haystack */
  movl 12(%ebp), %edi /* EDI: needle */
  movl 16(%ebp), %ecx /* ECX: n */
  movl $0, (%esp)     /* found = NULL */
  
  cmpb $0, (%edi) /* needle est vide */
  jne L1
  movl %esi, %eax
  jmp endstrnstrasm
  
L1:
  jecxz endstrnstrasm /* n atteint */
  movb (%esi), %dl
  cmpb $0, %dl /* End of haystack */
  je endstrnstrasm
  cmpb %dl, (%edi)
  je L2
  incl %esi
  decl %ecx
  jmp L1
  
L2:
  movl %esi, (%esp)
L3:
  inc %edi
  inc %esi
  cmpb $0, (%edi)
  je endstrnstrasm /* fin de needle trouvee */
  jecxz L5         /* n atteint */
  movb (%esi), %dl
  cmpb %dl, (%edi)
  jne L4
  loop L3

L4:
  movl $0, (%esp)
  movl 12(%ebp), %edi
  loop L1
  
L5:
  cmpb $0, 1(%edi)
  je endstrnstrasm
  movl $0, (%esp)
  
endstrnstrasm :
  movl (%esp), %eax
  addl $4, %esp
  popl %ecx
  popl %edi
  popl %esi
  movl %ebp, %esp
  popl %ebp
  ret

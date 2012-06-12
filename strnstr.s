/* char *strnstr(const char *haystack, const char *needle, unsigned int n) */

.globl _strnstrasm
_strnstrasm:
  pushl %ebp
  movl %esp, %ebp
  subl $4, %esp /* found */
  
  movl 8(%ebp) , %esi /* ESI: haystack */
  movl 12(%ebp), %edi /* EDI: needle */
  movl 16(%ebp), %ecx /* ECX: n */
  movl $0, (%esp)     /* found = NULL */
  
L1:
  movb (%esi), %dl
  cmpb $0, %dl /* End of haystack */
  je endstrnstrasm
  cmpb %dl, (%edi)
  je L2
  inc %esi
  loop L1
  jmp endstrnstrasm
  
L2:
  movl %esi, (%esp)
L3:
  inc %edi
  inc %esi
  movb (%edi), %dl
  cmpb %dl, (%esi)
  jne L4
  cmpb $0, %dl
  je endstrnstrasm
  loop L3

L4:
  movl $0, (%esp)
  loop L1
  
endstrnstrasm :
  movl (%esp), %eax
  movl %ebp, %esp
  popl %ebp
  ret

/* char *strstrasm(const char *haystack, const char *needle); */

.globl _strstrasm
_strstrasm :
  pushl %ebp
  movl %esp, %ebp
  pushl %edi
  pushl %esi
  subl $4, %esp
  movl 8(%ebp),  %esi /* ESI pointe vers haystack */
  movl 12(%ebp), %edi /* EDI pointe vers needle */
  movl $0,  (%esp)    /* found */
  
  cmpb $0, (%edi)
  jne L1
  movl %esi, (%esp)   /* needle est vide, on renvoie haystack */
  jmp endstrstrasm

L1:
  movb (%esi), %al
  cmpb $0, %al
  je endstrstrasm
  cmpb %al, (%edi)
  je L2
  inc %esi
  jmp L1

L2:
  movl %esi, (%esp)
L3:
  inc %esi
  inc %edi
  cmpb $0, (%edi) /* fin de needle */
  je endstrstrasm
  movb (%esi), %al
  cmpb %al, (%edi)
  je L3
  movl (%esp), %esi /* needle n'est pas en entier dans haystack */
  movl $0, (%esp)   
  inc %esi  
  movl 12(%ebp), %edi /* reinitialisation du pointeur de needle */
  jmp L1
  
endstrstrasm :
  movl (%esp), %eax
  addl $4, %esp
  popl %esi
  popl %edi
  movl %ebp, %esp
  popl %ebp
  ret
/* char *strstrsasm(const char *haystack, cons char *needle); */

.globl _strstrasm
_strstrasm :
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %esi /* ESI pointe vers haystack */

strstrasmResetPrelude:
  movl 12(%ebp), %edi /* EDI pointe vers needle */
  movl $0, %eax       /* EAX pointe vers le resultat (NULL) */
  
/* trouve le premier caractere de needle dans haystack */
findfirstchar:
  movb (%esi), %dl
  cmpb $0, %dl
  je endstrstrasm
  cmpb %dl, (%edi)
  je findnextchars
  inc %esi
  jmp findfirstchar

/* verifie que les caracteres suivant de needle sont presents */
findnextchars:
  movl %esi, %eax
loopfindnextchars:
  inc %esi
  inc %edi
  cmpb $0, (%edi)
  je endstrstrasm
  movb (%esi), %bl
  cmpb (%edi), %bl
  jne strstrasmResetPrelude
  jmp loopfindnextchars
  
endstrstrasm:
  leave
  ret
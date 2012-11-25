/* char *strpbrk(const char *haystack, const char *needles) */
.globl _strpbrkasm
_strpbrkasm : 
  pushl %ebp 
  movl  %esp, %ebp
  pushl %esi /* Save registers state */
  pushl %edi
  pushl %edx
  movl 8(%ebp), %esi
  movl $0, %eax
  
loopstrpbrkasm1:
  movb (%esi), %al /*AL contient le caractere courant de haystack */
  cmp $0, %al
  je endstrpbrkasm /* si fin de chaine, on sort de la routine */
  movl 12(%ebp), %edi /* EDI pointe sur le premier caractere de needles */

loopstrpbrkasm2:
  movb (%edi), %dl /* DL contient le caractere courant de needles */
  cmpb $0, %dl     /* Fin de needle, passe au caractere suivant de haystack */
  je loopstrpbrkasm1
  cmpb %al, %dl 
  je characterfound /* Caractere trouve, fin de routine */
  inc %esi
  inc %edi
  jmp loopstrpbrkasm2

characterfound:
  mov %esi, %eax

endstrpbrkasm:
  /* {EAX contient l'adresse de la premiere occurence d'un char de needles
      ou 0 (NULL) si non trouve} */
  popl %edx  /* Restore registers state */
  popl %edi
  popl %esi
  movl %ebp, %esp
  popl %ebp
  ret

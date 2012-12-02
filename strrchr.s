/* char *strrchr(const char *haystack, char needle) */
/* Algo: retenir la position du dernier char trouve */

#if (defined(__MACH__) && defined(__APPLE__))
.globl _strrchrasm
_strrchrasm   : 
#else 
.globl strrchrasm
strrchrasm   :
#endif
  pushl %ebp 
  movl %esp, %ebp
  pushl %esi
  pushl %edx
  movl 8(%ebp), %esi /* ESI contient haystack */
  movb 12(%ebp), %dl /* DL contient needle */
  movl $0, %eax      /* EAX contient l'adresse du resultat (NULL) */

loopstrrchrasm:
  cmpb (%esi), %dl
  jne endloopstrrchrasm
  mov %esi, %eax
  
endloopstrrchrasm:
  inc %esi
  cmpb $0, (%esi)
  jne loopstrrchrasm
  
endstrrchrasm:
  popl %edx
  popl %esi
  leave
  ret

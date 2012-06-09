.globl _strnstrasm
_strnstrasm :
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp),  %esi /* ESI pointe vers haystack */
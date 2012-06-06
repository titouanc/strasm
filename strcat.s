.globl _strcatasm
_strcatasm   : pushl %ebp
               movl %esp, %ebp
               movl 8(%ebp),  %edi
               movl 12(%ebp), %esi
               pushl %edi
catgetendofs : cmpb $0, (%edi)
               je catcopybytes
               incl %edi
               jmp catgetendofs
catcopybytes : movb (%esi), %dl
               movb %dl, (%edi)
               cmpb $0, %dl
               je endstrcatasm
               incl %esi
               incl %edi
               jmp catcopybytes
endstrcatasm : popl %eax
               leave
               ret

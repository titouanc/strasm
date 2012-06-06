	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.section __DWARF,__debug_macinfo,regular,debug
Lsection__debug_macinfo:
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.section __DWARF,__debug_inlined,regular,debug
Lsection__debug_inlined:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
	.section __DWARF,__debug_abbrev,regular,debug
Ldebug_abbrev0:
	.section __DWARF,__debug_info,regular,debug
Ldebug_info0:
	.section __DWARF,__debug_line,regular,debug
Ldebug_line0:
	.text
Ltext0:
.globl _strdupasm
_strdupasm:
LFB5:
	.file 1 "strasm.c"
	.loc 1 4 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$56, %esp
LCFI2:
	.loc 1 5 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlenasm
	movl	%eax, -12(%ebp)
	.loc 1 6 0
	movl	-12(%ebp), %eax
	incl	%eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	.loc 1 7 0
	cmpl	$0, -16(%ebp)
	jne	L2
	movl	$0, -28(%ebp)
	jmp	L4
L2:
	.loc 1 8 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpyasm
	.loc 1 9 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
L4:
	movl	-28(%ebp), %eax
	.loc 1 10 0
	leave
	ret
LFE5:
	.section __DWARF,__debug_frame,regular,debug
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.long	LFB5
	.set L$set$3,LFE5-LFB5
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB5
	.long L$set$4
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.byte	0x5
	.align 2
LEFDE0:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$6,LFB5-Ltext0
	.long L$set$6
	.set L$set$7,LCFI0-Ltext0
	.long L$set$7
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$8,LCFI0-Ltext0
	.long L$set$8
	.set L$set$9,LCFI1-Ltext0
	.long L$set$9
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$10,LCFI1-Ltext0
	.long L$set$10
	.set L$set$11,LFE5-Ltext0
	.long L$set$11
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_info,regular,debug
	.long	0x19c
	.word	0x2
	.set L$set$12,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$12
	.byte	0x4
	.byte	0x1
	.ascii "GNU C 4.2.1 (Apple Inc. build 5664)\0"
	.byte	0x1
	.ascii "strasm.c\0"
	.ascii "/Users/titou/sandbox/myasm\0"
	.long	Ltext0
	.long	Letext0
	.set L$set$13,Ldebug_line0-Lsection__debug_line
	.long L$set$13
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x4
	.byte	0x4
	.long	0xf5
	.byte	0x5
	.byte	0x1
	.set L$set$14,LASF0-Lsection__debug_str
	.long L$set$14
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.long	0x112
	.long	LFB5
	.long	LFE5
	.set L$set$15,LLST0-Lsection__debug_loc
	.long L$set$15
	.long	0x160
	.byte	0x6
	.ascii "src\0"
	.byte	0x1
	.byte	0x4
	.long	0x160
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x7
	.ascii "len\0"
	.byte	0x1
	.byte	0x5
	.long	0xab
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.ascii "res\0"
	.byte	0x1
	.byte	0x6
	.long	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x0
	.byte	0x4
	.byte	0x4
	.long	0x166
	.byte	0x8
	.long	0xf5
	.byte	0x9
	.long	0xa4
	.long	0x176
	.byte	0xa
	.byte	0x0
	.byte	0xb
	.ascii "__CFConstantStringClassReference\0"
	.long	0x16b
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section __DWARF,__debug_abbrev,regular,debug
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x34
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubnames,regular,debug
	.long	0x1c
	.word	0x2
	.set L$set$16,Ldebug_info0-Lsection__debug_info
	.long L$set$16
	.long	0x1a0
	.long	0x118
	.ascii "strdupasm\0"
	.long	0x0
	.section __DWARF,__debug_pubtypes,regular,debug
	.long	0xe
	.word	0x2
	.set L$set$17,Ldebug_info0-Lsection__debug_info
	.long L$set$17
	.long	0x1a0
	.long	0x0
	.section __DWARF,__debug_aranges,regular,debug
	.long	0x1c
	.word	0x2
	.set L$set$18,Ldebug_info0-Lsection__debug_info
	.long L$set$18
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	Ltext0
	.set L$set$19,Letext0-Ltext0
	.long L$set$19
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_str,regular,debug
LASF0:
	.ascii "strdupasm\0"
	.subsections_via_symbols

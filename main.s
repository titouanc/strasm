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
.globl _hello
	.cstring
LC0:
	.ascii "Hello\0"
	.data
	.align 2
_hello:
	.long	LC0
.globl _world
	.cstring
LC1:
	.ascii "World !\0"
	.data
	.align 2
_world:
	.long	LC1
	.cstring
LC2:
	.ascii "strlenasm(%s) = %u\12\0"
LC3:
	.ascii "Copy: %s\12\0"
LC4:
	.ascii " \0"
LC5:
	.ascii "\"%s\" <=> \"%s\": %d\12\0"
LC6:
	.ascii "%s has %c\12\0"
LC7:
	.ascii "%s hasn't %c\12\0"
	.text
.globl _main
_main:
LFB3:
	.file 1 "main.c"
	.loc 1 7 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$68, %esp
LCFI3:
	call	L7
"L00000000001$pb":
L7:
	popl	%ebx
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7 0
	leal	L___stack_chk_guard$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	%edx, -12(%ebp)
	xorl	%edx, %edx
	.loc 1 8 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 9 0
	movb	$108, -33(%ebp)
	.loc 1 11 0
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlenasm
	movl	%eax, %edx
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	LC2-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 1 13 0
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpyasm
	.loc 1 14 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	LC3-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 1 16 0
	leal	LC4-"L00000000001$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcatasm
	.loc 1 17 0
	leal	_world-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	$5, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncatasm
	.loc 1 18 0
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_puts
	.loc 1 20 0
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %edx
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmpasm
	movl	%eax, %edx
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	LC5-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 1 22 0
	movsbl	-33(%ebp),%edx
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strchrasm
	movl	%eax, -40(%ebp)
	.loc 1 23 0
	cmpl	$0, -40(%ebp)
	je	L2
	.loc 1 24 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%edx
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	LC6-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	jmp	L4
L2:
	.loc 1 26 0
	movsbl	-33(%ebp),%edx
	leal	_hello-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	LC7-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
L4:
	.loc 1 28 0
	movl	$0, %eax
	.loc 1 29 0
	leal	L___stack_chk_guard$non_lazy_ptr-"L00000000001$pb"(%ebx), %edx
	movl	(%edx), %edx
	movl	-12(%ebp), %ecx
	xorl	(%edx), %ecx
	je	L6
	call	___stack_chk_fail
L6:
	addl	$68, %esp
	popl	%ebx
	leave
	ret
LFE3:
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
	.long	LFB3
	.set L$set$3,LFE3-LFB3
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB3
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
	.byte	0x4
	.set L$set$6,LCFI3-LCFI1
	.long L$set$6
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE0:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$7,LFB3-Ltext0
	.long L$set$7
	.set L$set$8,LCFI0-Ltext0
	.long L$set$8
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$9,LCFI0-Ltext0
	.long L$set$9
	.set L$set$10,LCFI1-Ltext0
	.long L$set$10
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$11,LCFI1-Ltext0
	.long L$set$11
	.set L$set$12,LFE3-Ltext0
	.long L$set$12
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_info,regular,debug
	.long	0x1f2
	.word	0x2
	.set L$set$13,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$13
	.byte	0x4
	.byte	0x1
	.ascii "GNU C 4.2.1 (Apple Inc. build 5664)\0"
	.byte	0x1
	.ascii "main.c\0"
	.ascii "/Users/titou/sandbox/myasm\0"
	.long	Ltext0
	.long	Letext0
	.set L$set$14,Ldebug_line0-Lsection__debug_line
	.long L$set$14
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
	.long	0xf3
	.byte	0x4
	.byte	0x4
	.long	0x11c
	.byte	0x5
	.long	0xf3
	.byte	0x6
	.byte	0x1
	.set L$set$15,LASF0-Lsection__debug_str
	.long L$set$15
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	0xa2
	.long	LFB3
	.long	LFE3
	.set L$set$16,LLST0-Lsection__debug_loc
	.long L$set$16
	.long	0x183
	.byte	0x7
	.ascii "argc\0"
	.byte	0x1
	.byte	0x7
	.long	0xa2
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x7
	.ascii "argv\0"
	.byte	0x1
	.byte	0x7
	.long	0x183
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x8
	.ascii "str\0"
	.byte	0x1
	.byte	0x8
	.long	0x189
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x8
	.ascii "c\0"
	.byte	0x1
	.byte	0x9
	.long	0x110
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x8
	.ascii "l\0"
	.byte	0x1
	.byte	0x9
	.long	0xf3
	.byte	0x2
	.byte	0x91
	.byte	0x57
	.byte	0x0
	.byte	0x4
	.byte	0x4
	.long	0x116
	.byte	0x9
	.long	0xf3
	.long	0x199
	.byte	0xa
	.long	0xf0
	.byte	0x13
	.byte	0x0
	.byte	0x9
	.long	0xa2
	.long	0x1a4
	.byte	0xb
	.byte	0x0
	.byte	0xc
	.ascii "__CFConstantStringClassReference\0"
	.long	0x199
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xd
	.ascii "hello\0"
	.byte	0x1
	.byte	0x4
	.long	0x116
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_hello
	.byte	0xd
	.ascii "world\0"
	.byte	0x1
	.byte	0x5
	.long	0x116
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_world
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
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubnames,regular,debug
	.long	0x2b
	.word	0x2
	.set L$set$17,Ldebug_info0-Lsection__debug_info
	.long L$set$17
	.long	0x1f6
	.long	0x121
	.ascii "main\0"
	.long	0x1cd
	.ascii "hello\0"
	.long	0x1e1
	.ascii "world\0"
	.long	0x0
	.section __DWARF,__debug_pubtypes,regular,debug
	.long	0xe
	.word	0x2
	.set L$set$18,Ldebug_info0-Lsection__debug_info
	.long L$set$18
	.long	0x1f6
	.long	0x0
	.section __DWARF,__debug_aranges,regular,debug
	.long	0x1c
	.word	0x2
	.set L$set$19,Ldebug_info0-Lsection__debug_info
	.long L$set$19
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	Ltext0
	.set L$set$20,Letext0-Ltext0
	.long L$set$20
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_str,regular,debug
LASF0:
	.ascii "main\0"
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol ___stack_chk_guard
	.long	0
	.subsections_via_symbols

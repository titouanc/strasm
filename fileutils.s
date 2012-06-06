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
	.cstring
LC0:
	.ascii "%p vs %p\12\0"
	.align 2
LC1:
	.ascii "\"%s\" (%u@%p) <=> \"%s\" (%u@%p): \0"
LC2:
	.ascii "%d\12\0"
	.text
.globl _strcmpasmWrapper
_strcmpasmWrapper:
LFB8:
	.file 1 "fileutils.c"
	.loc 1 20 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$68, %esp
LCFI3:
	call	L3
"L00000000001$pb":
L3:
	popl	%ebx
	.loc 1 21 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	LC0-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 1 23 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 24 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 25 0
	movl	$8, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strndump
	.loc 1 26 0
	movl	$8, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strndump
	.loc 1 28 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlenasm
	movl	%eax, -20(%ebp)
	.loc 1 29 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlenasm
	movl	%eax, -24(%ebp)
	.loc 1 31 0
	movl	-16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	LC1-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	leal	L___stdoutp$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_fflush
	.loc 1 32 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmpasm
	movl	%eax, -28(%ebp)
	.loc 1 33 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	LC2-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 1 35 0
	movl	$0, %eax
	.loc 1 36 0
	addl	$68, %esp
	popl	%ebx
	leave
	ret
LFE8:
_strndump:
LFB7:
	.loc 1 10 0
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	pushl	%ebx
LCFI6:
	subl	$20, %esp
LCFI7:
	call	L9
"L00000000002$pb":
L9:
	popl	%ebx
	.loc 1 11 0
	movl	$35, (%esp)
	call	_putchar
	leal	L___stdoutp$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_fflush
	.loc 1 12 0
	jmp	L5
L6:
	.loc 1 13 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al,%eax
	movl	%eax, (%esp)
	call	_putchar
	leal	L___stdoutp$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_fflush
	.loc 1 14 0
	incl	8(%ebp)
	decl	12(%ebp)
L5:
	.loc 1 12 0
	cmpl	$0, 12(%ebp)
	jne	L6
	.loc 1 16 0
	movl	$10, (%esp)
	call	_putchar
	.loc 1 17 0
	addl	$20, %esp
	popl	%ebx
	leave
	ret
LFE7:
	.cstring
___func__.3479:
	.ascii "FILE_dimensions\0"
LC3:
	.ascii "input\0"
LC4:
	.ascii "fileutils.c\0"
	.text
.globl _FILE_dimensions
_FILE_dimensions:
LFB9:
	.loc 1 39 0
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	pushl	%ebx
LCFI10:
	subl	$36, %esp
LCFI11:
	call	L27
"L00000000003$pb":
L27:
	popl	%ebx
	.loc 1 40 0
	movl	$-1, -12(%ebp)
	.loc 1 41 0
	movl	$1, -16(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 42 0
	cmpl	$0, 12(%ebp)
	je	L11
	movl	12(%ebp), %eax
	movl	$0, (%eax)
L11:
	.loc 1 43 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	L13
	leal	LC3-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	leal	LC4-"L00000000003$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	___func__.3479-"L00000000003$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	___assert_rtn
L13:
	.loc 1 46 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgetc
	movl	%eax, -12(%ebp)
	.loc 1 47 0
	incl	-20(%ebp)
	.loc 1 48 0
	cmpl	$10, -12(%ebp)
	jne	L15
	.loc 1 49 0
	incl	-16(%ebp)
	.loc 1 50 0
	cmpl	$0, 12(%ebp)
	je	L17
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	L17
	.loc 1 51 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
L17:
	.loc 1 52 0
	movl	$0, -20(%ebp)
L15:
	.loc 1 54 0
	cmpl	$-1, -12(%ebp)
	jne	L13
	.loc 1 56 0
	decl	-20(%ebp)
	.loc 1 57 0
	cmpl	$0, 12(%ebp)
	je	L21
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	L21
	.loc 1 58 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 57 0
	jmp	L24
L21:
	.loc 1 59 0
	cmpl	$0, -20(%ebp)
	jne	L24
	.loc 1 60 0
	decl	-16(%ebp)
L24:
	.loc 1 62 0
	movl	-16(%ebp), %eax
	.loc 1 63 0
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE9:
	.cstring
___func__.3513:
	.ascii "FILE_getLines\0"
LC5:
	.ascii "result\0"
	.text
.globl _FILE_getLines
_FILE_getLines:
LFB10:
	.loc 1 65 0
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	pushl	%esi
LCFI14:
	pushl	%ebx
LCFI15:
	subl	$48, %esp
LCFI16:
	call	L38
"L00000000004$pb":
L38:
	popl	%ebx
	.loc 1 67 0
	movl	$0, -24(%ebp)
	.loc 1 68 0
	cmpl	$0, 12(%ebp)
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	L29
	leal	LC5-"L00000000004$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$68, 8(%esp)
	leal	LC4-"L00000000004$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	___func__.3513-"L00000000004$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	___assert_rtn
L29:
	.loc 1 70 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_FILE_dimensions
	movl	%eax, -16(%ebp)
	.loc 1 71 0
	movl	-12(%ebp), %eax
	incl	%eax
	movl	%eax, -12(%ebp)
	.loc 1 72 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_rewind
	.loc 1 74 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	.loc 1 75 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
LBB2:
	.loc 1 77 0
	movl	$0, -28(%ebp)
	jmp	L31
L32:
	.loc 1 78 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgets
	testl	%eax, %eax
	jne	L33
	.loc 1 79 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	$1, (%esp)
	call	_malloc
	movl	%eax, (%esi)
	.loc 1 80 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movb	$0, (%eax)
	jmp	L35
L33:
	.loc 1 82 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlenasm
	movl	%eax, -20(%ebp)
	.loc 1 83 0
	movl	-24(%ebp), %edx
	decl	%edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 84 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, (%esi)
	.loc 1 85 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcpyasm
L35:
	.loc 1 77 0
	incl	-28(%ebp)
L31:
	movl	-28(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	L32
LBE2:
	.loc 1 89 0
	movl	-16(%ebp), %eax
	.loc 1 90 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	leave
	ret
LFE10:
	.cstring
LC6:
	.ascii "Got %u lines...\12\0"
LC7:
	.ascii "\"%8s\" (%u) @ %p\12\0"
LC8:
	.ascii "--------------\0"
	.text
.globl _sortFile
_sortFile:
LFB11:
	.loc 1 92 0
	pushl	%ebp
LCFI17:
	movl	%esp, %ebp
LCFI18:
	pushl	%esi
LCFI19:
	pushl	%ebx
LCFI20:
	subl	$32, %esp
LCFI21:
	call	L47
"L00000000005$pb":
L47:
	popl	%ebx
	.loc 1 93 0
	movl	$0, -12(%ebp)
	.loc 1 94 0
	movl	$0, -16(%ebp)
	.loc 1 96 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_FILE_getLines
	movl	%eax, -16(%ebp)
	.loc 1 97 0
	leal	L___stderrp$non_lazy_ptr-"L00000000005$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	LC6-"L00000000005$pb"(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_fprintf
LBB3:
	.loc 1 100 0
	movl	$0, -20(%ebp)
	jmp	L40
L41:
	.loc 1 101 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlenasm
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	LC7-"L00000000005$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	.loc 1 100 0
	incl	-20(%ebp)
L40:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	L41
LBE3:
	.loc 1 102 0
	leal	LC8-"L00000000005$pb"(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	.loc 1 105 0
	movl	-12(%ebp), %edx
	leal	_strcmpasmWrapper-"L00000000005$pb"(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_qsort
LBB4:
	.loc 1 106 0
	movl	$0, -24(%ebp)
	jmp	L43
L44:
	.loc 1 107 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_puts
	.loc 1 108 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 106 0
	incl	-24(%ebp)
L43:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	L44
LBE4:
	.loc 1 110 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	.loc 1 111 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	leave
	ret
LFE11:
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
	.long	LFB8
	.set L$set$3,LFE8-LFB8
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB8
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
LSFDE2:
	.set L$set$7,LEFDE2-LASFDE2
	.long L$set$7
LASFDE2:
	.set L$set$8,Lframe0-Lsection__debug_frame
	.long L$set$8
	.long	LFB7
	.set L$set$9,LFE7-LFB7
	.long L$set$9
	.byte	0x4
	.set L$set$10,LCFI4-LFB7
	.long L$set$10
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$11,LCFI5-LCFI4
	.long L$set$11
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$12,LCFI7-LCFI5
	.long L$set$12
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE2:
LSFDE4:
	.set L$set$13,LEFDE4-LASFDE4
	.long L$set$13
LASFDE4:
	.set L$set$14,Lframe0-Lsection__debug_frame
	.long L$set$14
	.long	LFB9
	.set L$set$15,LFE9-LFB9
	.long L$set$15
	.byte	0x4
	.set L$set$16,LCFI8-LFB9
	.long L$set$16
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI9-LCFI8
	.long L$set$17
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$18,LCFI11-LCFI9
	.long L$set$18
	.byte	0x83
	.byte	0x3
	.align 2
LEFDE4:
LSFDE6:
	.set L$set$19,LEFDE6-LASFDE6
	.long L$set$19
LASFDE6:
	.set L$set$20,Lframe0-Lsection__debug_frame
	.long L$set$20
	.long	LFB10
	.set L$set$21,LFE10-LFB10
	.long L$set$21
	.byte	0x4
	.set L$set$22,LCFI12-LFB10
	.long L$set$22
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$23,LCFI13-LCFI12
	.long L$set$23
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$24,LCFI16-LCFI13
	.long L$set$24
	.byte	0x83
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.align 2
LEFDE6:
LSFDE8:
	.set L$set$25,LEFDE8-LASFDE8
	.long L$set$25
LASFDE8:
	.set L$set$26,Lframe0-Lsection__debug_frame
	.long L$set$26
	.long	LFB11
	.set L$set$27,LFE11-LFB11
	.long L$set$27
	.byte	0x4
	.set L$set$28,LCFI17-LFB11
	.long L$set$28
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$29,LCFI18-LCFI17
	.long L$set$29
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$30,LCFI21-LCFI18
	.long L$set$30
	.byte	0x83
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.align 2
LEFDE8:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$31,LFB8-Ltext0
	.long L$set$31
	.set L$set$32,LCFI0-Ltext0
	.long L$set$32
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$33,LCFI0-Ltext0
	.long L$set$33
	.set L$set$34,LCFI1-Ltext0
	.long L$set$34
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$35,LCFI1-Ltext0
	.long L$set$35
	.set L$set$36,LFE8-Ltext0
	.long L$set$36
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST1:
	.set L$set$37,LFB7-Ltext0
	.long L$set$37
	.set L$set$38,LCFI4-Ltext0
	.long L$set$38
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$39,LCFI4-Ltext0
	.long L$set$39
	.set L$set$40,LCFI5-Ltext0
	.long L$set$40
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$41,LCFI5-Ltext0
	.long L$set$41
	.set L$set$42,LFE7-Ltext0
	.long L$set$42
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST2:
	.set L$set$43,LFB9-Ltext0
	.long L$set$43
	.set L$set$44,LCFI8-Ltext0
	.long L$set$44
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$45,LCFI8-Ltext0
	.long L$set$45
	.set L$set$46,LCFI9-Ltext0
	.long L$set$46
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$47,LCFI9-Ltext0
	.long L$set$47
	.set L$set$48,LFE9-Ltext0
	.long L$set$48
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST3:
	.set L$set$49,LFB10-Ltext0
	.long L$set$49
	.set L$set$50,LCFI12-Ltext0
	.long L$set$50
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$51,LCFI12-Ltext0
	.long L$set$51
	.set L$set$52,LCFI13-Ltext0
	.long L$set$52
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$53,LCFI13-Ltext0
	.long L$set$53
	.set L$set$54,LFE10-Ltext0
	.long L$set$54
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST4:
	.set L$set$55,LFB11-Ltext0
	.long L$set$55
	.set L$set$56,LCFI17-Ltext0
	.long L$set$56
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$57,LCFI17-Ltext0
	.long L$set$57
	.set L$set$58,LCFI18-Ltext0
	.long L$set$58
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$59,LCFI18-Ltext0
	.long L$set$59
	.set L$set$60,LFE11-Ltext0
	.long L$set$60
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
	.file 2 "/usr/include/i386/_types.h"
	.file 3 "/usr/include/sys/_types.h"
	.file 4 "/usr/include/stdio.h"
	.section __DWARF,__debug_info,regular,debug
	.long	0x6b7
	.word	0x2
	.set L$set$61,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$61
	.byte	0x4
	.byte	0x1
	.ascii "GNU C 4.2.1 (Apple Inc. build 5664)\0"
	.byte	0x1
	.ascii "fileutils.c\0"
	.ascii "/Users/titou/sandbox/myasm\0"
	.long	Ltext0
	.long	Letext0
	.set L$set$62,Ldebug_line0-Lsection__debug_line
	.long L$set$62
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
	.byte	0x3
	.ascii "__int64_t\0"
	.byte	0x2
	.byte	0x2e
	.long	0xcf
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
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x128
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.ascii "__darwin_off_t\0"
	.byte	0x3
	.byte	0x6e
	.long	0xbe
	.byte	0x3
	.ascii "size_t\0"
	.byte	0x4
	.byte	0x50
	.long	0x111
	.byte	0x3
	.ascii "fpos_t\0"
	.byte	0x4
	.byte	0x57
	.long	0x13f
	.byte	0x6
	.ascii "__sbuf\0"
	.byte	0x8
	.byte	0x4
	.byte	0x62
	.long	0x1a1
	.byte	0x7
	.ascii "_base\0"
	.byte	0x4
	.byte	0x63
	.long	0x1a1
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x7
	.ascii "_size\0"
	.byte	0x4
	.byte	0x64
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x73
	.byte	0x6
	.ascii "__sFILE\0"
	.byte	0x58
	.byte	0x4
	.byte	0x84
	.long	0x2f5
	.byte	0x7
	.ascii "_p\0"
	.byte	0x4
	.byte	0x85
	.long	0x1a1
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x7
	.ascii "_r\0"
	.byte	0x4
	.byte	0x86
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x7
	.ascii "_w\0"
	.byte	0x4
	.byte	0x87
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x7
	.ascii "_flags\0"
	.byte	0x4
	.byte	0x88
	.long	0x84
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.ascii "_file\0"
	.byte	0x4
	.byte	0x89
	.long	0x84
	.byte	0x2
	.byte	0x23
	.byte	0xe
	.byte	0x7
	.ascii "_bf\0"
	.byte	0x4
	.byte	0x8a
	.long	0x171
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x7
	.ascii "_lbfsize\0"
	.byte	0x4
	.byte	0x8b
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x7
	.ascii "_cookie\0"
	.byte	0x4
	.byte	0x8e
	.long	0x13d
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0x7
	.ascii "_close\0"
	.byte	0x4
	.byte	0x8f
	.long	0x305
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x7
	.ascii "_read\0"
	.byte	0x4
	.byte	0x90
	.long	0x32b
	.byte	0x2
	.byte	0x23
	.byte	0x24
	.byte	0x7
	.ascii "_seek\0"
	.byte	0x4
	.byte	0x91
	.long	0x34b
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x7
	.ascii "_write\0"
	.byte	0x4
	.byte	0x92
	.long	0x376
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.byte	0x7
	.ascii "_ub\0"
	.byte	0x4
	.byte	0x95
	.long	0x171
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0x7
	.ascii "_extra\0"
	.byte	0x4
	.byte	0x96
	.long	0x387
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x7
	.ascii "_ur\0"
	.byte	0x4
	.byte	0x97
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.byte	0x3c
	.byte	0x7
	.ascii "_ubuf\0"
	.byte	0x4
	.byte	0x9a
	.long	0x38d
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.ascii "_nbuf\0"
	.byte	0x4
	.byte	0x9b
	.long	0x39d
	.byte	0x2
	.byte	0x23
	.byte	0x43
	.byte	0x7
	.ascii "_lb\0"
	.byte	0x4
	.byte	0x9e
	.long	0x171
	.byte	0x2
	.byte	0x23
	.byte	0x44
	.byte	0x7
	.ascii "_blksize\0"
	.byte	0x4
	.byte	0xa1
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.byte	0x4c
	.byte	0x7
	.ascii "_offset\0"
	.byte	0x4
	.byte	0xa2
	.long	0x163
	.byte	0x2
	.byte	0x23
	.byte	0x50
	.byte	0x0
	.byte	0x9
	.byte	0x1
	.long	0xa7
	.long	0x305
	.byte	0xa
	.long	0x13d
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x2f5
	.byte	0x9
	.byte	0x1
	.long	0xa7
	.long	0x325
	.byte	0xa
	.long	0x13d
	.byte	0xa
	.long	0x325
	.byte	0xa
	.long	0xa7
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x109
	.byte	0x8
	.byte	0x4
	.long	0x30b
	.byte	0x9
	.byte	0x1
	.long	0x163
	.long	0x34b
	.byte	0xa
	.long	0x13d
	.byte	0xa
	.long	0x163
	.byte	0xa
	.long	0xa7
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x331
	.byte	0x9
	.byte	0x1
	.long	0xa7
	.long	0x36b
	.byte	0xa
	.long	0x13d
	.byte	0xa
	.long	0x36b
	.byte	0xa
	.long	0xa7
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x371
	.byte	0xb
	.long	0x109
	.byte	0x8
	.byte	0x4
	.long	0x351
	.byte	0xc
	.ascii "__sFILEX\0"
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	0x37c
	.byte	0xd
	.long	0x73
	.long	0x39d
	.byte	0xe
	.long	0x106
	.byte	0x2
	.byte	0x0
	.byte	0xd
	.long	0x73
	.long	0x3ad
	.byte	0xe
	.long	0x106
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.ascii "FILE\0"
	.byte	0x4
	.byte	0xa3
	.long	0x1a7
	.byte	0xd
	.long	0x109
	.long	0x3c9
	.byte	0xe
	.long	0x106
	.byte	0xf
	.byte	0x0
	.byte	0xf
	.byte	0x1
	.set L$set$63,LASF0-Lsection__debug_str
	.long L$set$63
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.long	0xa7
	.long	LFB8
	.long	LFE8
	.set L$set$64,LLST0-Lsection__debug_loc
	.long L$set$64
	.long	0x445
	.byte	0x10
	.ascii "e1\0"
	.byte	0x1
	.byte	0x14
	.long	0x445
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x10
	.ascii "e2\0"
	.byte	0x1
	.byte	0x14
	.long	0x445
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x11
	.ascii "s1\0"
	.byte	0x1
	.byte	0x17
	.long	0x36b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.ascii "s2\0"
	.byte	0x1
	.byte	0x18
	.long	0x36b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.ascii "ls1\0"
	.byte	0x1
	.byte	0x1c
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x11
	.ascii "ls2\0"
	.byte	0x1
	.byte	0x1d
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x11
	.ascii "res\0"
	.byte	0x1
	.byte	0x20
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x44b
	.byte	0x12
	.byte	0x13
	.set L$set$65,LASF4-Lsection__debug_str
	.long L$set$65
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.set L$set$66,LLST1-Lsection__debug_loc
	.long L$set$66
	.long	0x47f
	.byte	0x10
	.ascii "str\0"
	.byte	0x1
	.byte	0xa
	.long	0x36b
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x10
	.ascii "n\0"
	.byte	0x1
	.byte	0xa
	.long	0x155
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x0
	.byte	0xf
	.byte	0x1
	.set L$set$67,LASF1-Lsection__debug_str
	.long L$set$67
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0xae
	.long	LFB9
	.long	LFE9
	.set L$set$68,LLST2-Lsection__debug_loc
	.long L$set$68
	.long	0x50d
	.byte	0x10
	.ascii "input\0"
	.byte	0x1
	.byte	0x27
	.long	0x50d
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x10
	.ascii "max_line_width\0"
	.byte	0x1
	.byte	0x27
	.long	0x513
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x11
	.ascii "char_read\0"
	.byte	0x1
	.byte	0x28
	.long	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.ascii "res\0"
	.byte	0x1
	.byte	0x29
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.ascii "line_width\0"
	.byte	0x1
	.byte	0x29
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.set L$set$69,LASF3-Lsection__debug_str
	.long L$set$69
	.long	0x65b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	___func__.3479
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x3ad
	.byte	0x8
	.byte	0x4
	.long	0xae
	.byte	0xf
	.byte	0x1
	.set L$set$70,LASF2-Lsection__debug_str
	.long L$set$70
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0xae
	.long	LFB10
	.long	LFE10
	.set L$set$71,LLST3-Lsection__debug_loc
	.long L$set$71
	.long	0x5b9
	.byte	0x10
	.ascii "input\0"
	.byte	0x1
	.byte	0x41
	.long	0x50d
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x10
	.ascii "result\0"
	.byte	0x1
	.byte	0x41
	.long	0x5b9
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x11
	.ascii "w\0"
	.byte	0x1
	.byte	0x42
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.ascii "h\0"
	.byte	0x1
	.byte	0x42
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.ascii "len\0"
	.byte	0x1
	.byte	0x42
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x11
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x43
	.long	0x325
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.long	LBB2
	.long	LBE2
	.long	0x5a8
	.byte	0x11
	.ascii "i\0"
	.byte	0x1
	.byte	0x4d
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x0
	.byte	0x14
	.set L$set$72,LASF3-Lsection__debug_str
	.long L$set$72
	.long	0x656
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	___func__.3513
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x5bf
	.byte	0x8
	.byte	0x4
	.long	0x325
	.byte	0x16
	.byte	0x1
	.set L$set$73,LASF5-Lsection__debug_str
	.long L$set$73
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	LFB11
	.long	LFE11
	.set L$set$74,LLST4-Lsection__debug_loc
	.long L$set$74
	.long	0x646
	.byte	0x10
	.ascii "stream\0"
	.byte	0x1
	.byte	0x5c
	.long	0x50d
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x11
	.ascii "lines\0"
	.byte	0x1
	.byte	0x5d
	.long	0x5bf
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.ascii "line_number\0"
	.byte	0x1
	.byte	0x5e
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.long	LBB3
	.long	LBE3
	.long	0x62f
	.byte	0x11
	.ascii "i\0"
	.byte	0x1
	.byte	0x64
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x0
	.byte	0x17
	.long	LBB4
	.long	LBE4
	.byte	0x11
	.ascii "i\0"
	.byte	0x1
	.byte	0x6a
	.long	0xae
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.long	0x109
	.long	0x656
	.byte	0xe
	.long	0x106
	.byte	0xd
	.byte	0x0
	.byte	0xb
	.long	0x646
	.byte	0xb
	.long	0x3b9
	.byte	0xd
	.long	0xa7
	.long	0x66b
	.byte	0x18
	.byte	0x0
	.byte	0x19
	.ascii "__CFConstantStringClassReference\0"
	.long	0x660
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1a
	.ascii "__stdoutp\0"
	.byte	0x4
	.byte	0xa8
	.long	0x50d
	.byte	0x1
	.byte	0x1
	.byte	0x1a
	.ascii "__stderrp\0"
	.byte	0x4
	.byte	0xa9
	.long	0x50d
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
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
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
	.byte	0x14
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x16
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
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x18
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubnames,regular,debug
	.long	0x56
	.word	0x2
	.set L$set$75,Ldebug_info0-Lsection__debug_info
	.long L$set$75
	.long	0x6bb
	.long	0x3c9
	.ascii "strcmpasmWrapper\0"
	.long	0x47f
	.ascii "FILE_dimensions\0"
	.long	0x519
	.ascii "FILE_getLines\0"
	.long	0x5c5
	.ascii "sortFile\0"
	.long	0x0
	.section __DWARF,__debug_pubtypes,regular,debug
	.long	0x79
	.word	0x2
	.set L$set$76,Ldebug_info0-Lsection__debug_info
	.long L$set$76
	.long	0x6bb
	.long	0xbe
	.ascii "__int64_t\0"
	.long	0x111
	.ascii "__darwin_size_t\0"
	.long	0x13f
	.ascii "__darwin_off_t\0"
	.long	0x155
	.ascii "size_t\0"
	.long	0x163
	.ascii "fpos_t\0"
	.long	0x171
	.ascii "__sbuf\0"
	.long	0x1a7
	.ascii "__sFILE\0"
	.long	0x3ad
	.ascii "FILE\0"
	.long	0x0
	.section __DWARF,__debug_aranges,regular,debug
	.long	0x1c
	.word	0x2
	.set L$set$77,Ldebug_info0-Lsection__debug_info
	.long L$set$77
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	Ltext0
	.set L$set$78,Letext0-Ltext0
	.long L$set$78
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_str,regular,debug
LASF3:
	.ascii "__func__\0"
LASF2:
	.ascii "FILE_getLines\0"
LASF4:
	.ascii "strndump\0"
LASF5:
	.ascii "sortFile\0"
LASF0:
	.ascii "strcmpasmWrapper\0"
LASF1:
	.ascii "FILE_dimensions\0"
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
L___stdoutp$non_lazy_ptr:
	.indirect_symbol ___stdoutp
	.long	0
L___stderrp$non_lazy_ptr:
	.indirect_symbol ___stderrp
	.long	0
	.subsections_via_symbols

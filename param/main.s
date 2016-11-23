	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"%i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	$0
	pushq	$8
	pushq	$7
	pushq	$4
	pushq	$5
	pushq	$6
	movl	$9, %r9d
	movl	$7, %r8d
	movl	$8, %ecx
	movl	$1, %edx
	movl	$5, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	sum
	addq	$48, %rsp
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Gentoo 5.3.0 p1.0, pie-0.6.5) 5.3.0"
	.section	.note.GNU-stack,"",@progbits

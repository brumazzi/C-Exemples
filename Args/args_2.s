	.file	"args_2.c"
	.text
	.globl	math
	.type	math, @function
math:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$92, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movl	%edi, %eax
	movb	%al, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -208(%rbp)
	cmpb	$1, -212(%rbp)
	jne	.L3
	jmp	.L4
.L7:
	movl	-204(%rbp), %eax
	addl	%eax, -208(%rbp)
.L4:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L5
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	.L6
.L5:
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	$8, %rdx
	movq	%rdx, -192(%rbp)
.L6:
	movl	(%rax), %eax
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	jne	.L7
.L3:
	movl	-208(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	math, .-math
	.section	.rodata
.LC0:
	.string	"%i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$5, 80(%rsp)
	movl	$1, 72(%rsp)
	movl	$1, 64(%rsp)
	movl	$1, 56(%rsp)
	movl	$1, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$1, 32(%rsp)
	movl	$1, 24(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 8(%rsp)
	movl	$1, (%rsp)
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	math
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Gentoo 4.8.4 p1.4, pie-0.6.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits

section .text
	global _start

_start:
	mov	rax,	12
	mov	rdi,	0
	syscall

	mov	rax,	12
	mov	rdi,	16
	syscall

	mov	rbx,	23
	mov	[rax+8],	rbx

	mov	rax,	60
	mov	rdi,	0
	syscall

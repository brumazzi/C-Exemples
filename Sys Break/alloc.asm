section .text
	global _alloc

_alloc:
	push	rdi

	mov	rax,	12
	syscall

	pop	rbx
	sub	rax,	rbx

	ret

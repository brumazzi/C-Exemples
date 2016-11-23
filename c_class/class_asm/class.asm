section .text
	global __cl_sym__

__cl_sym__:
	push	rbp
	mov	rbp,	rsp

	; Link class method with reference method
	mov	rbx,	rdi
	mov	rcx,	rsi
	mov	[rbx],	rcx
	call	[rbx]

	leave
	ret

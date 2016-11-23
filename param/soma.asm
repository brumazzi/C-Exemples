section	.text
	global	sum

sum:
	mov	esi,	4
	mov	eax,	0
	.loop:
		mov	ebx,	[esp+esi]
		cmp	ebx,	0
		je	.eloop

		add	eax,	ebx
		add	esi,	4
		jmp	.loop
	.eloop:

	ret

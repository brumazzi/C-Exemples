	.file	"MainFrame.cpp"
	.text
	.section	.text._Z8wxStrlenPKc,"axG",@progbits,_Z8wxStrlenPKc,comdat
	.weak	_Z8wxStrlenPKc
	.type	_Z8wxStrlenPKc, @function
_Z8wxStrlenPKc:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	_Z8wxStrlenPKc, .-_Z8wxStrlenPKc
	.section	.text._ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE,"axG",@progbits,_ZN9wxPrivate17UntypedBufferDataC5EPvmNS0_4KindE,comdat
	.align 2
	.weak	_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE
	.type	_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE, @function
_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movw	$1, 16(%rax)
	cmpl	$0, -28(%rbp)
	sete	%dl
	movq	-8(%rbp), %rax
	movb	%dl, 18(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE, .-_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE
	.weak	_ZN9wxPrivate17UntypedBufferDataC1EPvmNS0_4KindE
	.set	_ZN9wxPrivate17UntypedBufferDataC1EPvmNS0_4KindE,_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE
	.section	.text._ZN9wxPrivate17UntypedBufferDataD2Ev,"axG",@progbits,_ZN9wxPrivate17UntypedBufferDataD5Ev,comdat
	.align 2
	.weak	_ZN9wxPrivate17UntypedBufferDataD2Ev
	.type	_ZN9wxPrivate17UntypedBufferDataD2Ev, @function
_ZN9wxPrivate17UntypedBufferDataD2Ev:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	18(%rax), %eax
	testb	%al, %al
	je	.L8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	_ZN9wxPrivate17UntypedBufferDataD2Ev, .-_ZN9wxPrivate17UntypedBufferDataD2Ev
	.weak	_ZN9wxPrivate17UntypedBufferDataD1Ev
	.set	_ZN9wxPrivate17UntypedBufferDataD1Ev,_ZN9wxPrivate17UntypedBufferDataD2Ev
	.section	.text._Z16wxGet_wxConvLibcv,"axG",@progbits,_Z16wxGet_wxConvLibcv,comdat
	.weak	_Z16wxGet_wxConvLibcv
	.type	_Z16wxGet_wxConvLibcv, @function
_Z16wxGet_wxConvLibcv:
.LFB264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	wxConvLibcPtr(%rip), %rax
	testq	%rax, %rax
	jne	.L10
	call	_Z19wxGet_wxConvLibcPtrv@PLT
	movq	%rax, wxConvLibcPtr(%rip)
.L10:
	movq	wxConvLibcPtr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE264:
	.size	_Z16wxGet_wxConvLibcv, .-_Z16wxGet_wxConvLibcv
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNKSt9type_info4nameEv,"axG",@progbits,_ZNKSt9type_info4nameEv,comdat
	.align 2
	.weak	_ZNKSt9type_info4nameEv
	.type	_ZNKSt9type_info4nameEv, @function
_ZNKSt9type_info4nameEv:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	jmp	.L15
.L13:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	_ZNKSt9type_info4nameEv, .-_ZNKSt9type_info4nameEv
	.section	.text._ZN14wxFormatStringC2EPKc,"axG",@progbits,_ZN14wxFormatStringC5EPKc,comdat
	.align 2
	.weak	_ZN14wxFormatStringC2EPKc
	.type	_ZN14wxFormatStringC2EPKc, @function
_ZN14wxFormatStringC2EPKc:
.LFB1560:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1560
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZN22wxScopedCharTypeBufferIwEC1Ev
.LEHE0:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	$-1, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB1:
	call	_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm
.LEHE1:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZN22wxScopedCharTypeBufferIwEC1Ev
.LEHE2:
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L19
	jmp	.L22
.L21:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIcED1Ev
	jmp	.L18
.L20:
	movq	%rax, %rbx
.L18:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L22:
	call	__stack_chk_fail@PLT
.L19:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1560:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN14wxFormatStringC2EPKc,"aG",@progbits,_ZN14wxFormatStringC5EPKc,comdat
.LLSDA1560:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1560-.LLSDACSB1560
.LLSDACSB1560:
	.uleb128 .LEHB0-.LFB1560
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1560
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB1560
	.uleb128 0
	.uleb128 .LEHB2-.LFB1560
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB1560
	.uleb128 0
	.uleb128 .LEHB3-.LFB1560
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1560:
	.section	.text._ZN14wxFormatStringC2EPKc,"axG",@progbits,_ZN14wxFormatStringC5EPKc,comdat
	.size	_ZN14wxFormatStringC2EPKc, .-_ZN14wxFormatStringC2EPKc
	.weak	_ZN14wxFormatStringC1EPKc
	.set	_ZN14wxFormatStringC1EPKc,_ZN14wxFormatStringC2EPKc
	.section	.text._ZNK14wxFormatStringcvPKwEv,"axG",@progbits,_ZNK14wxFormatStringcvPKwEv,comdat
	.align 2
	.weak	_ZNK14wxFormatStringcvPKwEv
	.type	_ZNK14wxFormatStringcvPKwEv, @function
_ZNK14wxFormatStringcvPKwEv:
.LFB1577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN14wxFormatString7AsWCharEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1577:
	.size	_ZNK14wxFormatStringcvPKwEv, .-_ZNK14wxFormatStringcvPKwEv
	.section	.rodata
	.align 4
.LC0:
	.string	""
	.string	""
	.string	""
	.string	""
	.section	.text._ZN8wxString7ImplStrEPKw,"axG",@progbits,_ZN8wxString7ImplStrEPKw,comdat
	.weak	_ZN8wxString7ImplStrEPKw
	.type	_ZN8wxString7ImplStrEPKw, @function
_ZN8wxString7ImplStrEPKw:
.LFB1724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L26
	movq	-8(%rbp), %rax
	jmp	.L28
.L26:
	leaq	.LC0(%rip), %rax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1724:
	.size	_ZN8wxString7ImplStrEPKw, .-_ZN8wxString7ImplStrEPKw
	.section	.text._ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev,"axG",@progbits,_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED5Ev,comdat
	.align 2
	.weak	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev
	.type	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev, @function
_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev:
.LFB1728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1728:
	.size	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev, .-_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev
	.weak	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED1Ev
	.set	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED1Ev,_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED2Ev
	.section	.text._ZN8wxString7ImplStrEPKcRK8wxMBConv,"axG",@progbits,_ZN8wxString7ImplStrEPKcRK8wxMBConv,comdat
	.weak	_ZN8wxString7ImplStrEPKcRK8wxMBConv
	.type	_ZN8wxString7ImplStrEPKcRK8wxMBConv, @function
_ZN8wxString7ImplStrEPKcRK8wxMBConv:
.LFB1726:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1726
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	_ZN8wxString4nposE(%rip), %rdx
	leaq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZN8wxString10ConvertStrEPKcmRK8wxMBConv@PLT
.LEHE4:
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZN22wxScopedCharTypeBufferIwEC1ERKS0_
.LEHE5:
	nop
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED1Ev
	nop
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L33
	jmp	.L35
.L34:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxString17SubstrBufFromTypeI22wxScopedCharTypeBufferIwEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L35:
	call	__stack_chk_fail@PLT
.L33:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1726:
	.section	.gcc_except_table._ZN8wxString7ImplStrEPKcRK8wxMBConv,"aG",@progbits,_ZN8wxString7ImplStrEPKcRK8wxMBConv,comdat
.LLSDA1726:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1726-.LLSDACSB1726
.LLSDACSB1726:
	.uleb128 .LEHB4-.LFB1726
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1726
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L34-.LFB1726
	.uleb128 0
	.uleb128 .LEHB6-.LFB1726
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1726:
	.section	.text._ZN8wxString7ImplStrEPKcRK8wxMBConv,"axG",@progbits,_ZN8wxString7ImplStrEPKcRK8wxMBConv,comdat
	.size	_ZN8wxString7ImplStrEPKcRK8wxMBConv, .-_ZN8wxString7ImplStrEPKcRK8wxMBConv
	.section	.text._ZN8wxStringD2Ev,"axG",@progbits,_ZN8wxStringD5Ev,comdat
	.align 2
	.weak	_ZN8wxStringD2Ev
	.type	_ZN8wxStringD2Ev, @function
_ZN8wxStringD2Ev:
.LFB1805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN8wxString15ConvertedBufferIcED1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1805:
	.size	_ZN8wxStringD2Ev, .-_ZN8wxStringD2Ev
	.weak	_ZN8wxStringD1Ev
	.set	_ZN8wxStringD1Ev,_ZN8wxStringD2Ev
	.section	.text._ZN8wxStringC2Ev,"axG",@progbits,_ZN8wxStringC5Ev,comdat
	.align 2
	.weak	_ZN8wxStringC2Ev
	.type	_ZN8wxStringC2Ev, @function
_ZN8wxStringC2Ev:
.LFB1831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN8wxString15ConvertedBufferIcEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1831:
	.size	_ZN8wxStringC2Ev, .-_ZN8wxStringC2Ev
	.weak	_ZN8wxStringC1Ev
	.set	_ZN8wxStringC1Ev,_ZN8wxStringC2Ev
	.section	.text._ZN8wxStringC2ERKS_,"axG",@progbits,_ZN8wxStringC5ERKS_,comdat
	.align 2
	.weak	_ZN8wxStringC2ERKS_
	.type	_ZN8wxStringC2ERKS_, @function
_ZN8wxStringC2ERKS_:
.LFB1834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC1ERKS4_@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN8wxString15ConvertedBufferIcEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1834:
	.size	_ZN8wxStringC2ERKS_, .-_ZN8wxStringC2ERKS_
	.weak	_ZN8wxStringC1ERKS_
	.set	_ZN8wxStringC1ERKS_,_ZN8wxStringC2ERKS_
	.section	.text._ZN8wxStringC2EPKc,"axG",@progbits,_ZN8wxStringC5EPKc,comdat
	.align 2
	.weak	_ZN8wxStringC2EPKc
	.type	_ZN8wxStringC2EPKc, @function
_ZN8wxStringC2EPKc:
.LFB1861:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1861
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIwEC1Ev@PLT
.LEHB7:
	call	_Z16wxGet_wxConvLibcv
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxString7ImplStrEPKcRK8wxMBConv
.LEHE7:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZNK22wxScopedCharTypeBufferIwEcvPKwEv
	movq	%rax, %rcx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC1EPKwRKS3_@PLT
.LEHE8:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwED1Ev
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIwED1Ev@PLT
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN8wxString15ConvertedBufferIcEC1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L42
	jmp	.L45
.L44:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwED1Ev
	jmp	.L41
.L43:
	movq	%rax, %rbx
.L41:
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIwED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L45:
	call	__stack_chk_fail@PLT
.L42:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1861:
	.section	.gcc_except_table._ZN8wxStringC2EPKc,"aG",@progbits,_ZN8wxStringC5EPKc,comdat
.LLSDA1861:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1861-.LLSDACSB1861
.LLSDACSB1861:
	.uleb128 .LEHB7-.LFB1861
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L43-.LFB1861
	.uleb128 0
	.uleb128 .LEHB8-.LFB1861
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L44-.LFB1861
	.uleb128 0
	.uleb128 .LEHB9-.LFB1861
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1861:
	.section	.text._ZN8wxStringC2EPKc,"axG",@progbits,_ZN8wxStringC5EPKc,comdat
	.size	_ZN8wxStringC2EPKc, .-_ZN8wxStringC2EPKc
	.weak	_ZN8wxStringC1EPKc
	.set	_ZN8wxStringC1EPKc,_ZN8wxStringC2EPKc
	.section	.text._ZN8wxStringC2EPKw,"axG",@progbits,_ZN8wxStringC5EPKw,comdat
	.align 2
	.weak	_ZN8wxStringC2EPKw
	.type	_ZN8wxStringC2EPKw, @function
_ZN8wxStringC2EPKw:
.LFB1885:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1885
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIwEC1Ev@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxString7ImplStrEPKw
	movq	%rax, %rcx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC1EPKwRKS3_@PLT
.LEHE10:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIwED1Ev@PLT
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN8wxString15ConvertedBufferIcEC1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L48
	jmp	.L50
.L49:
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIwED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L50:
	call	__stack_chk_fail@PLT
.L48:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1885:
	.section	.gcc_except_table._ZN8wxStringC2EPKw,"aG",@progbits,_ZN8wxStringC5EPKw,comdat
.LLSDA1885:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1885-.LLSDACSB1885
.LLSDACSB1885:
	.uleb128 .LEHB10-.LFB1885
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L49-.LFB1885
	.uleb128 0
	.uleb128 .LEHB11-.LFB1885
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE1885:
	.section	.text._ZN8wxStringC2EPKw,"axG",@progbits,_ZN8wxStringC5EPKw,comdat
	.size	_ZN8wxStringC2EPKw, .-_ZN8wxStringC2EPKw
	.weak	_ZN8wxStringC1EPKw
	.set	_ZN8wxStringC1EPKw,_ZN8wxStringC2EPKw
	.section	.text._ZN8wxStringaSERKS_,"axG",@progbits,_ZN8wxStringaSERKS_,comdat
	.align 2
	.weak	_ZN8wxStringaSERKS_
	.type	_ZN8wxStringaSERKS_, @function
_ZN8wxStringaSERKS_:
.LFB1997:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L52
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSERKS4_@PLT
.L52:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1997:
	.size	_ZN8wxStringaSERKS_, .-_ZN8wxStringaSERKS_
	.section	.text._ZN14wxFormatStringD2Ev,"axG",@progbits,_ZN14wxFormatStringD5Ev,comdat
	.align 2
	.weak	_ZN14wxFormatStringD2Ev
	.type	_ZN14wxFormatStringD2Ev, @function
_ZN14wxFormatStringD2Ev:
.LFB2039:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwED1Ev
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIcED1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2039:
	.size	_ZN14wxFormatStringD2Ev, .-_ZN14wxFormatStringD2Ev
	.weak	_ZN14wxFormatStringD1Ev
	.set	_ZN14wxFormatStringD1Ev,_ZN14wxFormatStringD2Ev
	.section	.text._ZN8wxObjectaSERKS_,"axG",@progbits,_ZN8wxObjectaSERKS_,comdat
	.align 2
	.weak	_ZN8wxObjectaSERKS_
	.type	_ZN8wxObjectaSERKS_, @function
_ZN8wxObjectaSERKS_:
.LFB3729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L56
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxObject3RefERKS_@PLT
.L56:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3729:
	.size	_ZN8wxObjectaSERKS_, .-_ZN8wxObjectaSERKS_
	.section	.text._ZN17_wxHashTableBase29FreeTableEPv,"axG",@progbits,_ZN17_wxHashTableBase29FreeTableEPv,comdat
	.weak	_ZN17_wxHashTableBase29FreeTableEPv
	.type	_ZN17_wxHashTableBase29FreeTableEPv, @function
_ZN17_wxHashTableBase29FreeTableEPv:
.LFB4910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4910:
	.size	_ZN17_wxHashTableBase29FreeTableEPv, .-_ZN17_wxHashTableBase29FreeTableEPv
	.section	.text._ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev,"axG",@progbits,_ZN45wxStringToStringHashMap_wxImplementation_PairD5Ev,comdat
	.align 2
	.weak	_ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev
	.type	_ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev, @function
_ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev:
.LFB5066:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5066:
	.size	_ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev, .-_ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev
	.weak	_ZN45wxStringToStringHashMap_wxImplementation_PairD1Ev
	.set	_ZN45wxStringToStringHashMap_wxImplementation_PairD1Ev,_ZN45wxStringToStringHashMap_wxImplementation_PairD2Ev
	.section	.text._ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev,"axG",@progbits,_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD5Ev,comdat
	.align 2
	.weak	_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev
	.type	_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev, @function
_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev:
.LFB5073:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN45wxStringToStringHashMap_wxImplementation_PairD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5073:
	.size	_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev, .-_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev
	.weak	_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD1Ev
	.set	_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD1Ev,_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD2Ev
	.section	.text._ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase,"axG",@progbits,_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase,comdat
	.weak	_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase
	.type	_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase, @function
_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase:
.LFB5071:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L63
	movq	%rbx, %rdi
	call	_ZN50wxStringToStringHashMap_wxImplementation_HashTable4NodeD1Ev
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L63:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5071:
	.size	_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase, .-_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase
	.section	.text._ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev,"axG",@progbits,_ZN50wxStringToStringHashMap_wxImplementation_HashTableD5Ev,comdat
	.align 2
	.weak	_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev
	.type	_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev, @function
_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev:
.LFB5116:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5116
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN17_wxHashTableBase29FreeTableEPv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5116:
	.section	.gcc_except_table._ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev,"aG",@progbits,_ZN50wxStringToStringHashMap_wxImplementation_HashTableD5Ev,comdat
.LLSDA5116:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5116-.LLSDACSB5116
.LLSDACSB5116:
.LLSDACSE5116:
	.section	.text._ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev,"axG",@progbits,_ZN50wxStringToStringHashMap_wxImplementation_HashTableD5Ev,comdat
	.size	_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev, .-_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev
	.weak	_ZN50wxStringToStringHashMap_wxImplementation_HashTableD1Ev
	.set	_ZN50wxStringToStringHashMap_wxImplementation_HashTableD1Ev,_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev
	.section	.text._ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv,"axG",@progbits,_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv,comdat
	.align 2
	.weak	_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv
	.type	_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv, @function
_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv:
.LFB5120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	_ZN50wxStringToStringHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN17_wxHashTableBase211DeleteNodesEmPP21_wxHashTable_NodeBasePFvS1_E@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5120:
	.size	_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv, .-_ZN50wxStringToStringHashMap_wxImplementation_HashTable5clearEv
	.section	.text._ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev,"axG",@progbits,_ZN42wxStringToNumHashMap_wxImplementation_PairD5Ev,comdat
	.align 2
	.weak	_ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev
	.type	_ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev, @function
_ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev:
.LFB5167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5167:
	.size	_ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev, .-_ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev
	.weak	_ZN42wxStringToNumHashMap_wxImplementation_PairD1Ev
	.set	_ZN42wxStringToNumHashMap_wxImplementation_PairD1Ev,_ZN42wxStringToNumHashMap_wxImplementation_PairD2Ev
	.section	.text._ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev,"axG",@progbits,_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD5Ev,comdat
	.align 2
	.weak	_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev
	.type	_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev, @function
_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev:
.LFB5174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN42wxStringToNumHashMap_wxImplementation_PairD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5174:
	.size	_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev, .-_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev
	.weak	_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD1Ev
	.set	_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD1Ev,_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD2Ev
	.section	.text._ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase,"axG",@progbits,_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase,comdat
	.weak	_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase
	.type	_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase, @function
_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase:
.LFB5172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L70
	movq	%rbx, %rdi
	call	_ZN47wxStringToNumHashMap_wxImplementation_HashTable4NodeD1Ev
	movl	$64, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L70:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5172:
	.size	_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase, .-_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase
	.section	.text._ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev,"axG",@progbits,_ZN47wxStringToNumHashMap_wxImplementation_HashTableD5Ev,comdat
	.align 2
	.weak	_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev
	.type	_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev, @function
_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev:
.LFB5217:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5217
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN17_wxHashTableBase29FreeTableEPv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5217:
	.section	.gcc_except_table._ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev,"aG",@progbits,_ZN47wxStringToNumHashMap_wxImplementation_HashTableD5Ev,comdat
.LLSDA5217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5217-.LLSDACSB5217
.LLSDACSB5217:
.LLSDACSE5217:
	.section	.text._ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev,"axG",@progbits,_ZN47wxStringToNumHashMap_wxImplementation_HashTableD5Ev,comdat
	.size	_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev, .-_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev
	.weak	_ZN47wxStringToNumHashMap_wxImplementation_HashTableD1Ev
	.set	_ZN47wxStringToNumHashMap_wxImplementation_HashTableD1Ev,_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev
	.section	.text._ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv,"axG",@progbits,_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv,comdat
	.align 2
	.weak	_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv
	.type	_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv, @function
_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv:
.LFB5221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	_ZN47wxStringToNumHashMap_wxImplementation_HashTable10DeleteNodeEP21_wxHashTable_NodeBase(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN17_wxHashTableBase211DeleteNodesEmPP21_wxHashTable_NodeBasePFvS1_E@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5221:
	.size	_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv, .-_ZN47wxStringToNumHashMap_wxImplementation_HashTable5clearEv
	.section	.text._ZN23wxStringToStringHashMapD2Ev,"axG",@progbits,_ZN23wxStringToStringHashMapD5Ev,comdat
	.align 2
	.weak	_ZN23wxStringToStringHashMapD2Ev
	.type	_ZN23wxStringToStringHashMapD2Ev, @function
_ZN23wxStringToStringHashMapD2Ev:
.LFB5919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN50wxStringToStringHashMap_wxImplementation_HashTableD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5919:
	.size	_ZN23wxStringToStringHashMapD2Ev, .-_ZN23wxStringToStringHashMapD2Ev
	.weak	_ZN23wxStringToStringHashMapD1Ev
	.set	_ZN23wxStringToStringHashMapD1Ev,_ZN23wxStringToStringHashMapD2Ev
	.section	.text._ZN17wxCriticalSection5EnterEv,"axG",@progbits,_ZN17wxCriticalSection5EnterEv,comdat
	.align 2
	.weak	_ZN17wxCriticalSection5EnterEv
	.type	_ZN17wxCriticalSection5EnterEv, @function
_ZN17wxCriticalSection5EnterEv:
.LFB5963:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7wxMutex4LockEv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5963:
	.size	_ZN17wxCriticalSection5EnterEv, .-_ZN17wxCriticalSection5EnterEv
	.section	.text._ZN17wxCriticalSection5LeaveEv,"axG",@progbits,_ZN17wxCriticalSection5LeaveEv,comdat
	.align 2
	.weak	_ZN17wxCriticalSection5LeaveEv
	.type	_ZN17wxCriticalSection5LeaveEv, @function
_ZN17wxCriticalSection5LeaveEv:
.LFB5965:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7wxMutex6UnlockEv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5965:
	.size	_ZN17wxCriticalSection5LeaveEv, .-_ZN17wxCriticalSection5LeaveEv
	.section	.text._ZN23wxCriticalSectionLockerC2ER17wxCriticalSection,"axG",@progbits,_ZN23wxCriticalSectionLockerC5ER17wxCriticalSection,comdat
	.align 2
	.weak	_ZN23wxCriticalSectionLockerC2ER17wxCriticalSection
	.type	_ZN23wxCriticalSectionLockerC2ER17wxCriticalSection, @function
_ZN23wxCriticalSectionLockerC2ER17wxCriticalSection:
.LFB5967:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN17wxCriticalSection5EnterEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5967:
	.size	_ZN23wxCriticalSectionLockerC2ER17wxCriticalSection, .-_ZN23wxCriticalSectionLockerC2ER17wxCriticalSection
	.weak	_ZN23wxCriticalSectionLockerC1ER17wxCriticalSection
	.set	_ZN23wxCriticalSectionLockerC1ER17wxCriticalSection,_ZN23wxCriticalSectionLockerC2ER17wxCriticalSection
	.section	.text._ZN23wxCriticalSectionLockerD2Ev,"axG",@progbits,_ZN23wxCriticalSectionLockerD5Ev,comdat
	.align 2
	.weak	_ZN23wxCriticalSectionLockerD2Ev
	.type	_ZN23wxCriticalSectionLockerD2Ev, @function
_ZN23wxCriticalSectionLockerD2Ev:
.LFB5970:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5970
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN17wxCriticalSection5LeaveEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5970:
	.section	.gcc_except_table._ZN23wxCriticalSectionLockerD2Ev,"aG",@progbits,_ZN23wxCriticalSectionLockerD5Ev,comdat
.LLSDA5970:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5970-.LLSDACSB5970
.LLSDACSB5970:
.LLSDACSE5970:
	.section	.text._ZN23wxCriticalSectionLockerD2Ev,"axG",@progbits,_ZN23wxCriticalSectionLockerD5Ev,comdat
	.size	_ZN23wxCriticalSectionLockerD2Ev, .-_ZN23wxCriticalSectionLockerD2Ev
	.weak	_ZN23wxCriticalSectionLockerD1Ev
	.set	_ZN23wxCriticalSectionLockerD1Ev,_ZN23wxCriticalSectionLockerD2Ev
	.section	.text._ZN8wxThread6IsMainEv,"axG",@progbits,_ZN8wxThread6IsMainEv,comdat
	.weak	_ZN8wxThread6IsMainEv
	.type	_ZN8wxThread6IsMainEv, @function
_ZN8wxThread6IsMainEv:
.LFB5973:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_ZN8wxThread15ms_idMainThreadE(%rip), %rax
	testq	%rax, %rax
	je	.L79
	call	_ZN8wxThread12GetCurrentIdEv@PLT
	movq	%rax, %rdx
	movq	_ZN8wxThread15ms_idMainThreadE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L80
.L79:
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5973:
	.size	_ZN8wxThread6IsMainEv, .-_ZN8wxThread6IsMainEv
	.section	.text._ZN8wxThread8OnDeleteEv,"axG",@progbits,_ZN8wxThread8OnDeleteEv,comdat
	.align 2
	.weak	_ZN8wxThread8OnDeleteEv
	.type	_ZN8wxThread8OnDeleteEv, @function
_ZN8wxThread8OnDeleteEv:
.LFB5977:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5977:
	.size	_ZN8wxThread8OnDeleteEv, .-_ZN8wxThread8OnDeleteEv
	.section	.text._ZN8wxThread6OnKillEv,"axG",@progbits,_ZN8wxThread6OnKillEv,comdat
	.align 2
	.weak	_ZN8wxThread6OnKillEv
	.type	_ZN8wxThread6OnKillEv, @function
_ZN8wxThread6OnKillEv:
.LFB5978:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5978:
	.size	_ZN8wxThread6OnKillEv, .-_ZN8wxThread6OnKillEv
	.section	.text._ZN8wxThread6OnExitEv,"axG",@progbits,_ZN8wxThread6OnExitEv,comdat
	.align 2
	.weak	_ZN8wxThread6OnExitEv
	.type	_ZN8wxThread6OnExitEv, @function
_ZN8wxThread6OnExitEv:
.LFB5979:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5979:
	.size	_ZN8wxThread6OnExitEv, .-_ZN8wxThread6OnExitEv
	.section	.text._ZN20wxThreadHelperThread5EntryEv,"axG",@progbits,_ZN20wxThreadHelperThread5EntryEv,comdat
	.align 2
	.weak	_ZN20wxThreadHelperThread5EntryEv
	.type	_ZN20wxThreadHelperThread5EntryEv, @function
_ZN20wxThreadHelperThread5EntryEv:
.LFB5994:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	24(%rax), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN23wxCriticalSectionLockerC1ER17wxCriticalSection
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L87
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
.L87:
	movq	-32(%rbp), %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN23wxCriticalSectionLockerD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5994:
	.size	_ZN20wxThreadHelperThread5EntryEv, .-_ZN20wxThreadHelperThread5EntryEv
	.section	.text._ZN15wxLogRecordInfoC2EPKciS1_S1_,"axG",@progbits,_ZN15wxLogRecordInfoC5EPKciS1_S1_,comdat
	.align 2
	.weak	_ZN15wxLogRecordInfoC2EPKciS1_S1_
	.type	_ZN15wxLogRecordInfoC2EPKciS1_S1_, @function
_ZN15wxLogRecordInfoC2EPKciS1_S1_:
.LFB6006:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	call	_ZN8wxThread12GetCurrentIdEv@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6006:
	.size	_ZN15wxLogRecordInfoC2EPKciS1_S1_, .-_ZN15wxLogRecordInfoC2EPKciS1_S1_
	.weak	_ZN15wxLogRecordInfoC1EPKciS1_S1_
	.set	_ZN15wxLogRecordInfoC1EPKciS1_S1_,_ZN15wxLogRecordInfoC2EPKciS1_S1_
	.section	.text._ZN20wxStringToNumHashMapD2Ev,"axG",@progbits,_ZN20wxStringToNumHashMapD5Ev,comdat
	.align 2
	.weak	_ZN20wxStringToNumHashMapD2Ev
	.type	_ZN20wxStringToNumHashMapD2Ev, @function
_ZN20wxStringToNumHashMapD2Ev:
.LFB6014:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN47wxStringToNumHashMap_wxImplementation_HashTableD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6014:
	.size	_ZN20wxStringToNumHashMapD2Ev, .-_ZN20wxStringToNumHashMapD2Ev
	.weak	_ZN20wxStringToNumHashMapD1Ev
	.set	_ZN20wxStringToNumHashMapD1Ev,_ZN20wxStringToNumHashMapD2Ev
	.section	.text._ZN15wxLogRecordInfo9ExtraDataD2Ev,"axG",@progbits,_ZN15wxLogRecordInfo9ExtraDataD5Ev,comdat
	.align 2
	.weak	_ZN15wxLogRecordInfo9ExtraDataD2Ev
	.type	_ZN15wxLogRecordInfo9ExtraDataD2Ev, @function
_ZN15wxLogRecordInfo9ExtraDataD2Ev:
.LFB6016:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN23wxStringToStringHashMapD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN20wxStringToNumHashMapD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6016:
	.size	_ZN15wxLogRecordInfo9ExtraDataD2Ev, .-_ZN15wxLogRecordInfo9ExtraDataD2Ev
	.weak	_ZN15wxLogRecordInfo9ExtraDataD1Ev
	.set	_ZN15wxLogRecordInfo9ExtraDataD1Ev,_ZN15wxLogRecordInfo9ExtraDataD2Ev
	.section	.text._ZN15wxLogRecordInfoD2Ev,"axG",@progbits,_ZN15wxLogRecordInfoD5Ev,comdat
	.align 2
	.weak	_ZN15wxLogRecordInfoD2Ev
	.type	_ZN15wxLogRecordInfoD2Ev, @function
_ZN15wxLogRecordInfoD2Ev:
.LFB6019:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rbx
	testq	%rbx, %rbx
	je	.L95
	movq	%rbx, %rdi
	call	_ZN15wxLogRecordInfo9ExtraDataD1Ev
	movl	$64, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L95:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6019:
	.size	_ZN15wxLogRecordInfoD2Ev, .-_ZN15wxLogRecordInfoD2Ev
	.weak	_ZN15wxLogRecordInfoD1Ev
	.set	_ZN15wxLogRecordInfoD1Ev,_ZN15wxLogRecordInfoD2Ev
	.section	.text._ZN5wxLog9IsEnabledEv,"axG",@progbits,_ZN5wxLog9IsEnabledEv,comdat
	.weak	_ZN5wxLog9IsEnabledEv
	.type	_ZN5wxLog9IsEnabledEv, @function
_ZN5wxLog9IsEnabledEv:
.LFB6051:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN8wxThread6IsMainEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L97
	call	_ZN5wxLog22IsThreadLoggingEnabledEv@PLT
	jmp	.L98
.L97:
	movzbl	_ZN5wxLog8ms_doLogE(%rip), %eax
.L98:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6051:
	.size	_ZN5wxLog9IsEnabledEv, .-_ZN5wxLog9IsEnabledEv
	.section	.text._ZN5wxLog14IsLevelEnabledEm8wxString,"axG",@progbits,_ZN5wxLog14IsLevelEnabledEm8wxString,comdat
	.weak	_ZN5wxLog14IsLevelEnabledEm8wxString
	.type	_ZN5wxLog14IsLevelEnabledEm8wxString, @function
_ZN5wxLog14IsLevelEnabledEm8wxString:
.LFB6055:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6055
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, %ebx
.LEHB12:
	call	_ZN5wxLog9IsEnabledEv
	testb	%al, %al
	je	.L100
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxStringC1ERKS_
	movl	$1, %ebx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5wxLog17GetComponentLevelE8wxString@PLT
.LEHE12:
	cmpq	%rax, -88(%rbp)
	ja	.L100
	movl	$1, %r12d
	jmp	.L101
.L100:
	movl	$0, %r12d
.L101:
	testb	%bl, %bl
	je	.L103
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
.L103:
	movl	%r12d, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L106
	jmp	.L108
.L107:
	movq	%rax, %r12
	testb	%bl, %bl
	je	.L105
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
.L105:
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L108:
	call	__stack_chk_fail@PLT
.L106:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6055:
	.section	.gcc_except_table._ZN5wxLog14IsLevelEnabledEm8wxString,"aG",@progbits,_ZN5wxLog14IsLevelEnabledEm8wxString,comdat
.LLSDA6055:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6055-.LLSDACSB6055
.LLSDACSB6055:
	.uleb128 .LEHB12-.LFB6055
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L107-.LFB6055
	.uleb128 0
	.uleb128 .LEHB13-.LFB6055
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE6055:
	.section	.text._ZN5wxLog14IsLevelEnabledEm8wxString,"axG",@progbits,_ZN5wxLog14IsLevelEnabledEm8wxString,comdat
	.size	_ZN5wxLog14IsLevelEnabledEm8wxString, .-_ZN5wxLog14IsLevelEnabledEm8wxString
	.section	.text._ZN8wxLoggerC2EmPKciS1_S1_,"axG",@progbits,_ZN8wxLoggerC5EmPKciS1_S1_,comdat
	.align 2
	.weak	_ZN8wxLoggerC2EmPKciS1_S1_
	.type	_ZN8wxLoggerC2EmPKciS1_S1_, @function
_ZN8wxLoggerC2EmPKciS1_S1_:
.LFB6089:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	_ZN15wxLogRecordInfoC1EPKciS1_S1_
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN8wxStringC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6089:
	.size	_ZN8wxLoggerC2EmPKciS1_S1_, .-_ZN8wxLoggerC2EmPKciS1_S1_
	.weak	_ZN8wxLoggerC1EmPKciS1_S1_
	.set	_ZN8wxLoggerC1EmPKciS1_S1_,_ZN8wxLoggerC2EmPKciS1_S1_
	.section	.text._ZN8wxLogger3LogERK14wxFormatString,"axG",@progbits,_ZN8wxLogger3LogERK14wxFormatString,comdat
	.align 2
	.weak	_ZN8wxLogger3LogERK14wxFormatString
	.type	_ZN8wxLogger3LogERK14wxFormatString, @function
_ZN8wxLogger3LogERK14wxFormatString:
.LFB6097:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK14wxFormatStringcvPKwEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN8wxLogger5DoLogEPKwz
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6097:
	.size	_ZN8wxLogger3LogERK14wxFormatString, .-_ZN8wxLogger3LogERK14wxFormatString
	.section	.text._ZN8wxLogger5DoLogEPKwz,"axG",@progbits,_ZN8wxLogger5DoLogEPKwz,comdat
	.align 2
	.weak	_ZN8wxLogger5DoLogEPKwz
	.type	_ZN8wxLogger5DoLogEPKwz, @function
_ZN8wxLogger5DoLogEPKwz:
.LFB6283:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6283
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L112
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L112:
	movq	%fs:40, %rax
	movq	%rax, -200(%rbp)
	xorl	%eax, %eax
	movl	$16, -280(%rbp)
	movl	$48, -276(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZN8wxStringC1EPKw
.LEHE14:
	leaq	-280(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	movq	-296(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag
.LEHE15:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	nop
	movq	-200(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L114
	jmp	.L116
.L115:
	movq	%rax, %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L116:
	call	__stack_chk_fail@PLT
.L114:
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6283:
	.section	.gcc_except_table._ZN8wxLogger5DoLogEPKwz,"aG",@progbits,_ZN8wxLogger5DoLogEPKwz,comdat
.LLSDA6283:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6283-.LLSDACSB6283
.LLSDACSB6283:
	.uleb128 .LEHB14-.LFB6283
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB6283
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L115-.LFB6283
	.uleb128 0
	.uleb128 .LEHB16-.LFB6283
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE6283:
	.section	.text._ZN8wxLogger5DoLogEPKwz,"axG",@progbits,_ZN8wxLogger5DoLogEPKwz,comdat
	.size	_ZN8wxLogger5DoLogEPKwz, .-_ZN8wxLogger5DoLogEPKwz
	.section	.text._ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag,"axG",@progbits,_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag,comdat
	.align 2
	.weak	_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag
	.type	_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag, @function
_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag:
.LFB6289:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6289
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZN8wxString7FormatVERKS_P13__va_list_tag@PLT
.LEHE17:
	leaq	-80(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZN5wxLog5OnLogEmRK8wxStringRK15wxLogRecordInfo@PLT
.LEHE18:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L119
	jmp	.L121
.L120:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L121:
	call	__stack_chk_fail@PLT
.L119:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6289:
	.section	.gcc_except_table._ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag,"aG",@progbits,_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag,comdat
.LLSDA6289:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6289-.LLSDACSB6289
.LLSDACSB6289:
	.uleb128 .LEHB17-.LFB6289
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB6289
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L120-.LFB6289
	.uleb128 0
	.uleb128 .LEHB19-.LFB6289
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE6289:
	.section	.text._ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag,"axG",@progbits,_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag,comdat
	.size	_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag, .-_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag
	.section	.text._ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag,"axG",@progbits,_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag,comdat
	.align 2
	.weak	_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag
	.type	_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag, @function
_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag:
.LFB6290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxLogger11DoCallOnLogEmRK8wxStringP13__va_list_tag
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6290:
	.size	_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag, .-_ZN8wxLogger11DoCallOnLogERK8wxStringP13__va_list_tag
	.section	.text._ZN6wxSizeC2Eii,"axG",@progbits,_ZN6wxSizeC5Eii,comdat
	.align 2
	.weak	_ZN6wxSizeC2Eii
	.type	_ZN6wxSizeC2Eii, @function
_ZN6wxSizeC2Eii:
.LFB6763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6763:
	.size	_ZN6wxSizeC2Eii, .-_ZN6wxSizeC2Eii
	.weak	_ZN6wxSizeC1Eii
	.set	_ZN6wxSizeC1Eii,_ZN6wxSizeC2Eii
	.section	.text._ZN7wxPointC2Eii,"axG",@progbits,_ZN7wxPointC5Eii,comdat
	.align 2
	.weak	_ZN7wxPointC2Eii
	.type	_ZN7wxPointC2Eii, @function
_ZN7wxPointC2Eii:
.LFB6846:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6846:
	.size	_ZN7wxPointC2Eii, .-_ZN7wxPointC2Eii
	.weak	_ZN7wxPointC1Eii
	.set	_ZN7wxPointC1Eii,_ZN7wxPointC2Eii
	.section	.rodata
	.align 4
	.type	_ZL15wxInvalidOffset, @object
	.size	_ZL15wxInvalidOffset, 4
_ZL15wxInvalidOffset:
	.long	-1
	.section	.text._ZN16wxTypeIdentifierC2EPKc,"axG",@progbits,_ZN16wxTypeIdentifierC5EPKc,comdat
	.align 2
	.weak	_ZN16wxTypeIdentifierC2EPKc
	.type	_ZN16wxTypeIdentifierC2EPKc, @function
_ZN16wxTypeIdentifierC2EPKc:
.LFB7760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7760:
	.size	_ZN16wxTypeIdentifierC2EPKc, .-_ZN16wxTypeIdentifierC2EPKc
	.weak	_ZN16wxTypeIdentifierC1EPKc
	.set	_ZN16wxTypeIdentifierC1EPKc,_ZN16wxTypeIdentifierC2EPKc
	.section	.text._ZN16wxTypeIdentifiereqERKS_,"axG",@progbits,_ZN16wxTypeIdentifiereqERKS_,comdat
	.align 2
	.weak	_ZN16wxTypeIdentifiereqERKS_
	.type	_ZN16wxTypeIdentifiereqERKS_, @function
_ZN16wxTypeIdentifiereqERKS_:
.LFB7762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7762:
	.size	_ZN16wxTypeIdentifiereqERKS_, .-_ZN16wxTypeIdentifiereqERKS_
	.section	.text._ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor,"axG",@progbits,_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor,comdat
	.align 2
	.weak	_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor
	.type	_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor, @function
_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor:
.LFB8789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNKSt9type_info4nameEv
	movq	%rax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16wxTypeIdentifierC1EPKc
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNKSt9type_info4nameEv
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16wxTypeIdentifierC1EPKc
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16wxTypeIdentifiereqERKS_
	testb	%al, %al
	je	.L129
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L130
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L131
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L131
.L130:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L132
.L131:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L133
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L132
.L133:
	movl	$1, %eax
	jmp	.L135
.L132:
	movl	$0, %eax
	jmp	.L135
.L129:
	movl	$0, %eax
.L135:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8789:
	.size	_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor, .-_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor
	.section	.text._ZNK20wxObjectEventFunctor13GetEvtHandlerEv,"axG",@progbits,_ZNK20wxObjectEventFunctor13GetEvtHandlerEv,comdat
	.align 2
	.weak	_ZNK20wxObjectEventFunctor13GetEvtHandlerEv
	.type	_ZNK20wxObjectEventFunctor13GetEvtHandlerEv, @function
_ZNK20wxObjectEventFunctor13GetEvtHandlerEv:
.LFB8790:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8790:
	.size	_ZNK20wxObjectEventFunctor13GetEvtHandlerEv, .-_ZNK20wxObjectEventFunctor13GetEvtHandlerEv
	.section	.text._ZNK20wxObjectEventFunctor12GetEvtMethodEv,"axG",@progbits,_ZNK20wxObjectEventFunctor12GetEvtMethodEv,comdat
	.align 2
	.weak	_ZNK20wxObjectEventFunctor12GetEvtMethodEv
	.type	_ZNK20wxObjectEventFunctor12GetEvtMethodEv, @function
_ZNK20wxObjectEventFunctor12GetEvtMethodEv:
.LFB8791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8791:
	.size	_ZNK20wxObjectEventFunctor12GetEvtMethodEv, .-_ZNK20wxObjectEventFunctor12GetEvtMethodEv
	.section	.text._ZNK7wxEvent12GetEventTypeEv,"axG",@progbits,_ZNK7wxEvent12GetEventTypeEv,comdat
	.align 2
	.weak	_ZNK7wxEvent12GetEventTypeEv
	.type	_ZNK7wxEvent12GetEventTypeEv, @function
_ZNK7wxEvent12GetEventTypeEv:
.LFB8836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8836:
	.size	_ZNK7wxEvent12GetEventTypeEv, .-_ZNK7wxEvent12GetEventTypeEv
	.section	.text._ZNK7wxEvent17GetPropagatedFromEv,"axG",@progbits,_ZNK7wxEvent17GetPropagatedFromEv,comdat
	.align 2
	.weak	_ZNK7wxEvent17GetPropagatedFromEv
	.type	_ZNK7wxEvent17GetPropagatedFromEv, @function
_ZNK7wxEvent17GetPropagatedFromEv:
.LFB8851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8851:
	.size	_ZNK7wxEvent17GetPropagatedFromEv, .-_ZNK7wxEvent17GetPropagatedFromEv
	.section	.text._ZN12wxEvtHandler14SetNextHandlerEPS_,"axG",@progbits,_ZN12wxEvtHandler14SetNextHandlerEPS_,comdat
	.align 2
	.weak	_ZN12wxEvtHandler14SetNextHandlerEPS_
	.type	_ZN12wxEvtHandler14SetNextHandlerEPS_, @function
_ZN12wxEvtHandler14SetNextHandlerEPS_:
.LFB9461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9461:
	.size	_ZN12wxEvtHandler14SetNextHandlerEPS_, .-_ZN12wxEvtHandler14SetNextHandlerEPS_
	.section	.text._ZN12wxEvtHandler18SetPreviousHandlerEPS_,"axG",@progbits,_ZN12wxEvtHandler18SetPreviousHandlerEPS_,comdat
	.align 2
	.weak	_ZN12wxEvtHandler18SetPreviousHandlerEPS_
	.type	_ZN12wxEvtHandler18SetPreviousHandlerEPS_, @function
_ZN12wxEvtHandler18SetPreviousHandlerEPS_:
.LFB9462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9462:
	.size	_ZN12wxEvtHandler18SetPreviousHandlerEPS_, .-_ZN12wxEvtHandler18SetPreviousHandlerEPS_
	.section	.text._ZN12wxEvtHandler15AddPendingEventERK7wxEvent,"axG",@progbits,_ZN12wxEvtHandler15AddPendingEventERK7wxEvent,comdat
	.align 2
	.weak	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent
	.type	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent, @function
_ZN12wxEvtHandler15AddPendingEventERK7wxEvent:
.LFB9465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$64, %rax
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9465:
	.size	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent, .-_ZN12wxEvtHandler15AddPendingEventERK7wxEvent
	.section	.text._ZN12wxEvtHandler12TryValidatorER7wxEvent,"axG",@progbits,_ZN12wxEvtHandler12TryValidatorER7wxEvent,comdat
	.align 2
	.weak	_ZN12wxEvtHandler12TryValidatorER7wxEvent
	.type	_ZN12wxEvtHandler12TryValidatorER7wxEvent, @function
_ZN12wxEvtHandler12TryValidatorER7wxEvent:
.LFB9489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9489:
	.size	_ZN12wxEvtHandler12TryValidatorER7wxEvent, .-_ZN12wxEvtHandler12TryValidatorER7wxEvent
	.section	.text._ZN12wxEvtHandler9TryParentER7wxEvent,"axG",@progbits,_ZN12wxEvtHandler9TryParentER7wxEvent,comdat
	.align 2
	.weak	_ZN12wxEvtHandler9TryParentER7wxEvent
	.type	_ZN12wxEvtHandler9TryParentER7wxEvent, @function
_ZN12wxEvtHandler9TryParentER7wxEvent:
.LFB9490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN12wxEvtHandler8DoTryAppER7wxEvent@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9490:
	.size	_ZN12wxEvtHandler9TryParentER7wxEvent, .-_ZN12wxEvtHandler9TryParentER7wxEvent
	.section	.text._ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent,"axG",@progbits,_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent,comdat
	.align 2
	.weak	_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent
	.type	_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent, @function
_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent:
.LFB9581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L154
.L153:
	movq	-32(%rbp), %rax
.L154:
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L155
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L156
.L155:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
.L156:
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9581:
	.size	_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent, .-_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent
	.section	.text._ZN16wxAppConsoleBase10CallOnInitEv,"axG",@progbits,_ZN16wxAppConsoleBase10CallOnInitEv,comdat
	.align 2
	.weak	_ZN16wxAppConsoleBase10CallOnInitEv
	.type	_ZN16wxAppConsoleBase10CallOnInitEv, @function
_ZN16wxAppConsoleBase10CallOnInitEv:
.LFB9634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$184, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9634:
	.size	_ZN16wxAppConsoleBase10CallOnInitEv, .-_ZN16wxAppConsoleBase10CallOnInitEv
	.section	.text._ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase,"axG",@progbits,_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase,comdat
	.align 2
	.weak	_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase
	.type	_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase, @function
_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase:
.LFB9635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9635:
	.size	_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase, .-_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase
	.section	.text._ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase,"axG",@progbits,_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase,comdat
	.align 2
	.weak	_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase
	.type	_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase, @function
_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase:
.LFB9636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9636:
	.size	_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase, .-_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase
	.section	.text._ZN16wxAppConsoleBase16OnFatalExceptionEv,"axG",@progbits,_ZN16wxAppConsoleBase16OnFatalExceptionEv,comdat
	.align 2
	.weak	_ZN16wxAppConsoleBase16OnFatalExceptionEv
	.type	_ZN16wxAppConsoleBase16OnFatalExceptionEv, @function
_ZN16wxAppConsoleBase16OnFatalExceptionEv:
.LFB9637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9637:
	.size	_ZN16wxAppConsoleBase16OnFatalExceptionEv, .-_ZN16wxAppConsoleBase16OnFatalExceptionEv
	.section	.text._ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE,"axG",@progbits,_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE,comdat
	.weak	_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE
	.type	_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE, @function
_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE:
.LFB9647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, _ZN16wxAppConsoleBase12ms_appInitFnE(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9647:
	.size	_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE, .-_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE
	.section	.text._ZN16wxAppConsoleBase11GetInstanceEv,"axG",@progbits,_ZN16wxAppConsoleBase11GetInstanceEv,comdat
	.weak	_ZN16wxAppConsoleBase11GetInstanceEv
	.type	_ZN16wxAppConsoleBase11GetInstanceEv, @function
_ZN16wxAppConsoleBase11GetInstanceEv:
.LFB9649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_ZN16wxAppConsoleBase14ms_appInstanceE(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9649:
	.size	_ZN16wxAppConsoleBase11GetInstanceEv, .-_ZN16wxAppConsoleBase11GetInstanceEv
	.section	.text._ZNK9wxAppBase13UsesEventLoopEv,"axG",@progbits,_ZNK9wxAppBase13UsesEventLoopEv,comdat
	.align 2
	.weak	_ZNK9wxAppBase13UsesEventLoopEv
	.type	_ZNK9wxAppBase13UsesEventLoopEv, @function
_ZNK9wxAppBase13UsesEventLoopEv:
.LFB9740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9740:
	.size	_ZNK9wxAppBase13UsesEventLoopEv, .-_ZNK9wxAppBase13UsesEventLoopEv
	.section	.text._ZNK9wxAppBase8IsActiveEv,"axG",@progbits,_ZNK9wxAppBase8IsActiveEv,comdat
	.align 2
	.weak	_ZNK9wxAppBase8IsActiveEv
	.type	_ZNK9wxAppBase8IsActiveEv, @function
_ZNK9wxAppBase8IsActiveEv:
.LFB9741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	662(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9741:
	.size	_ZNK9wxAppBase8IsActiveEv, .-_ZNK9wxAppBase8IsActiveEv
	.section	.text._ZN9wxAppBase14SetDisplayModeERK11wxVideoMode,"axG",@progbits,_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode,comdat
	.align 2
	.weak	_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode
	.type	_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode, @function
_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode:
.LFB9745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9745:
	.size	_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode, .-_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode
	.section	.text._ZN9wxAppBase12SetPrintModeEi,"axG",@progbits,_ZN9wxAppBase12SetPrintModeEi,comdat
	.align 2
	.weak	_ZN9wxAppBase12SetPrintModeEi
	.type	_ZN9wxAppBase12SetPrintModeEi, @function
_ZN9wxAppBase12SetPrintModeEi:
.LFB9748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9748:
	.size	_ZN9wxAppBase12SetPrintModeEi, .-_ZN9wxAppBase12SetPrintModeEi
	.section	.text._ZN5wxApp14GetXVisualInfoEv,"axG",@progbits,_ZN5wxApp14GetXVisualInfoEv,comdat
	.align 2
	.weak	_ZN5wxApp14GetXVisualInfoEv
	.type	_ZN5wxApp14GetXVisualInfoEv, @function
_ZN5wxApp14GetXVisualInfoEv:
.LFB9751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9751:
	.size	_ZN5wxApp14GetXVisualInfoEv, .-_ZN5wxApp14GetXVisualInfoEv
	.section	.text._ZN16wxAppInitializerC2EPFP12wxAppConsolevE,"axG",@progbits,_ZN16wxAppInitializerC5EPFP12wxAppConsolevE,comdat
	.align 2
	.weak	_ZN16wxAppInitializerC2EPFP12wxAppConsolevE
	.type	_ZN16wxAppInitializerC2EPFP12wxAppConsolevE, @function
_ZN16wxAppInitializerC2EPFP12wxAppConsolevE:
.LFB9753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN16wxAppConsoleBase22SetInitializerFunctionEPFP12wxAppConsolevE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9753:
	.size	_ZN16wxAppInitializerC2EPFP12wxAppConsolevE, .-_ZN16wxAppInitializerC2EPFP12wxAppConsolevE
	.weak	_ZN16wxAppInitializerC1EPFP12wxAppConsolevE
	.set	_ZN16wxAppInitializerC1EPFP12wxAppConsolevE,_ZN16wxAppInitializerC2EPFP12wxAppConsolevE
	.section	.rodata
	.align 4
	.type	_ZL5wxEOF, @object
	.size	_ZL5wxEOF, 4
_ZL5wxEOF:
	.long	-1
	.type	_ZL19wxALPHA_TRANSPARENT, @object
	.size	_ZL19wxALPHA_TRANSPARENT, 1
_ZL19wxALPHA_TRANSPARENT:
	.zero	1
	.type	_ZL14wxALPHA_OPAQUE, @object
	.size	_ZL14wxALPHA_OPAQUE, 1
_ZL14wxALPHA_OPAQUE:
	.byte	-1
	.section	.text._ZN12wxWindowBase7SetNameERK8wxString,"axG",@progbits,_ZN12wxWindowBase7SetNameERK8wxString,comdat
	.align 2
	.weak	_ZN12wxWindowBase7SetNameERK8wxString
	.type	_ZN12wxWindowBase7SetNameERK8wxString, @function
_ZN12wxWindowBase7SetNameERK8wxString:
.LFB10458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	352(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN8wxStringaSERKS_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10458:
	.size	_ZN12wxWindowBase7SetNameERK8wxString, .-_ZN12wxWindowBase7SetNameERK8wxString
	.section	.text._ZNK12wxWindowBase7GetNameEv,"axG",@progbits,_ZNK12wxWindowBase7GetNameEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase7GetNameEv
	.type	_ZNK12wxWindowBase7GetNameEv, @function
_ZNK12wxWindowBase7GetNameEv:
.LFB10459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxStringC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10459:
	.size	_ZNK12wxWindowBase7GetNameEv, .-_ZNK12wxWindowBase7GetNameEv
	.section	.text._ZNK12wxWindowBase16GetWindowVariantEv,"axG",@progbits,_ZNK12wxWindowBase16GetWindowVariantEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase16GetWindowVariantEv
	.type	_ZNK12wxWindowBase16GetWindowVariantEv, @function
_ZNK12wxWindowBase16GetWindowVariantEv:
.LFB10460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	448(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10460:
	.size	_ZNK12wxWindowBase16GetWindowVariantEv, .-_ZNK12wxWindowBase16GetWindowVariantEv
	.section	.text._ZNK12wxWindowBase13GetClientSizeEv,"axG",@progbits,_ZNK12wxWindowBase13GetClientSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase13GetClientSizeEv
	.type	_ZNK12wxWindowBase13GetClientSizeEv, @function
_ZNK12wxWindowBase13GetClientSizeEv:
.LFB10484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$1312, %rax
	movq	(%rax), %rax
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6wxSizeC1Eii
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L182
	call	__stack_chk_fail@PLT
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10484:
	.size	_ZNK12wxWindowBase13GetClientSizeEv, .-_ZNK12wxWindowBase13GetClientSizeEv
	.section	.text._ZN12wxWindowBase6CentreEi,"axG",@progbits,_ZN12wxWindowBase6CentreEi,comdat
	.align 2
	.weak	_ZN12wxWindowBase6CentreEi
	.type	_ZN12wxWindowBase6CentreEi, @function
_ZN12wxWindowBase6CentreEi:
.LFB10492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1392, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10492:
	.size	_ZN12wxWindowBase6CentreEi, .-_ZN12wxWindowBase6CentreEi
	.section	.text._ZN12wxWindowBase12SetSizeHintsEiiiiii,"axG",@progbits,_ZN12wxWindowBase12SetSizeHintsEiiiiii,comdat
	.align 2
	.weak	_ZN12wxWindowBase12SetSizeHintsEiiiiii
	.type	_ZN12wxWindowBase12SetSizeHintsEiiiiii, @function
_ZN12wxWindowBase12SetSizeHintsEiiiiii:
.LFB10496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1368, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	subq	$8, %rsp
	movl	16(%rbp), %r8d
	pushq	%r8
	movl	%r10d, %r8d
	call	*%rax
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10496:
	.size	_ZN12wxWindowBase12SetSizeHintsEiiiiii, .-_ZN12wxWindowBase12SetSizeHintsEiiiiii
	.section	.text._ZN12wxWindowBase16SetMinClientSizeERK6wxSize,"axG",@progbits,_ZN12wxWindowBase16SetMinClientSizeERK6wxSize,comdat
	.align 2
	.weak	_ZN12wxWindowBase16SetMinClientSizeERK6wxSize
	.type	_ZN12wxWindowBase16SetMinClientSizeERK6wxSize, @function
_ZN12wxWindowBase16SetMinClientSizeERK6wxSize:
.LFB10498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$312, %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$256, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L186
	call	__stack_chk_fail@PLT
.L186:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10498:
	.size	_ZN12wxWindowBase16SetMinClientSizeERK6wxSize, .-_ZN12wxWindowBase16SetMinClientSizeERK6wxSize
	.section	.text._ZN12wxWindowBase16SetMaxClientSizeERK6wxSize,"axG",@progbits,_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize,comdat
	.align 2
	.weak	_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize
	.type	_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize, @function
_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize:
.LFB10499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$320, %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$256, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L188
	call	__stack_chk_fail@PLT
.L188:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10499:
	.size	_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize, .-_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize
	.section	.text._ZNK12wxWindowBase10GetMinSizeEv,"axG",@progbits,_ZNK12wxWindowBase10GetMinSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase10GetMinSizeEv
	.type	_ZNK12wxWindowBase10GetMinSizeEv, @function
_ZNK12wxWindowBase10GetMinSizeEv:
.LFB10500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	148(%rax), %edx
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6wxSizeC1Eii
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L191
	call	__stack_chk_fail@PLT
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10500:
	.size	_ZNK12wxWindowBase10GetMinSizeEv, .-_ZNK12wxWindowBase10GetMinSizeEv
	.section	.text._ZNK12wxWindowBase10GetMaxSizeEv,"axG",@progbits,_ZNK12wxWindowBase10GetMaxSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase10GetMaxSizeEv
	.type	_ZNK12wxWindowBase10GetMaxSizeEv, @function
_ZNK12wxWindowBase10GetMaxSizeEv:
.LFB10501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	156(%rax), %edx
	movq	-24(%rbp), %rax
	movl	152(%rax), %ecx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6wxSizeC1Eii
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L194
	call	__stack_chk_fail@PLT
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10501:
	.size	_ZNK12wxWindowBase10GetMaxSizeEv, .-_ZNK12wxWindowBase10GetMaxSizeEv
	.section	.text._ZNK12wxWindowBase16GetMinClientSizeEv,"axG",@progbits,_ZNK12wxWindowBase16GetMinClientSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase16GetMinClientSizeEv
	.type	_ZNK12wxWindowBase16GetMinClientSizeEv, @function
_ZNK12wxWindowBase16GetMinClientSizeEv:
.LFB10502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$264, %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$344, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L197
	call	__stack_chk_fail@PLT
.L197:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10502:
	.size	_ZNK12wxWindowBase16GetMinClientSizeEv, .-_ZNK12wxWindowBase16GetMinClientSizeEv
	.section	.text._ZNK12wxWindowBase16GetMaxClientSizeEv,"axG",@progbits,_ZNK12wxWindowBase16GetMaxClientSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase16GetMaxClientSizeEv
	.type	_ZNK12wxWindowBase16GetMaxClientSizeEv, @function
_ZNK12wxWindowBase16GetMaxClientSizeEv:
.LFB10503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$264, %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$352, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L200
	call	__stack_chk_fail@PLT
.L200:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10503:
	.size	_ZNK12wxWindowBase16GetMaxClientSizeEv, .-_ZNK12wxWindowBase16GetMaxClientSizeEv
	.section	.text._ZNK12wxWindowBase18GetBestVirtualSizeEv,"axG",@progbits,_ZNK12wxWindowBase18GetBestVirtualSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase18GetBestVirtualSizeEv
	.type	_ZNK12wxWindowBase18GetBestVirtualSizeEv, @function
_ZNK12wxWindowBase18GetBestVirtualSizeEv:
.LFB10512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase13GetClientSizeEv
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase11GetBestSizeEv@PLT
	movq	%rax, -40(%rbp)
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_
	movl	%eax, %ebx
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_
	movl	%eax, %ecx
	leaq	-32(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6wxSizeC1Eii
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10512:
	.size	_ZNK12wxWindowBase18GetBestVirtualSizeEv, .-_ZNK12wxWindowBase18GetBestVirtualSizeEv
	.section	.text._ZNK12wxWindowBase21GetContentScaleFactorEv,"axG",@progbits,_ZNK12wxWindowBase21GetContentScaleFactorEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase21GetContentScaleFactorEv
	.type	_ZNK12wxWindowBase21GetContentScaleFactorEv, @function
_ZNK12wxWindowBase21GetContentScaleFactorEv:
.LFB10513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movsd	.LC1(%rip), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10513:
	.size	_ZNK12wxWindowBase21GetContentScaleFactorEv, .-_ZNK12wxWindowBase21GetContentScaleFactorEv
	.section	.text._ZN12wxWindowBase26BeginRepositioningChildrenEv,"axG",@progbits,_ZN12wxWindowBase26BeginRepositioningChildrenEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase26BeginRepositioningChildrenEv
	.type	_ZN12wxWindowBase26BeginRepositioningChildrenEv, @function
_ZN12wxWindowBase26BeginRepositioningChildrenEv:
.LFB10516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10516:
	.size	_ZN12wxWindowBase26BeginRepositioningChildrenEv, .-_ZN12wxWindowBase26BeginRepositioningChildrenEv
	.section	.text._ZN12wxWindowBase24EndRepositioningChildrenEv,"axG",@progbits,_ZN12wxWindowBase24EndRepositioningChildrenEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase24EndRepositioningChildrenEv
	.type	_ZN12wxWindowBase24EndRepositioningChildrenEv, @function
_ZN12wxWindowBase24EndRepositioningChildrenEv:
.LFB10517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10517:
	.size	_ZN12wxWindowBase24EndRepositioningChildrenEv, .-_ZN12wxWindowBase24EndRepositioningChildrenEv
	.section	.text._ZN12wxWindowBase4HideEv,"axG",@progbits,_ZN12wxWindowBase4HideEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase4HideEv
	.type	_ZN12wxWindowBase4HideEv, @function
_ZN12wxWindowBase4HideEv:
.LFB10524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$448, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10524:
	.size	_ZN12wxWindowBase4HideEv, .-_ZN12wxWindowBase4HideEv
	.section	.text._ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj,"axG",@progbits,_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj,comdat
	.align 2
	.weak	_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj
	.type	_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj, @function
_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj:
.LFB10525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$448, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$1, %esi
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10525:
	.size	_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj, .-_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj
	.section	.text._ZN12wxWindowBase14HideWithEffectE12wxShowEffectj,"axG",@progbits,_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj,comdat
	.align 2
	.weak	_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj
	.type	_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj, @function
_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj:
.LFB10526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN12wxWindowBase4HideEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10526:
	.size	_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj, .-_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj
	.section	.text._ZN12wxWindowBase18SetWindowStyleFlagEl,"axG",@progbits,_ZN12wxWindowBase18SetWindowStyleFlagEl,comdat
	.align 2
	.weak	_ZN12wxWindowBase18SetWindowStyleFlagEl
	.type	_ZN12wxWindowBase18SetWindowStyleFlagEl, @function
_ZN12wxWindowBase18SetWindowStyleFlagEl:
.LFB10530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 336(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10530:
	.size	_ZN12wxWindowBase18SetWindowStyleFlagEl, .-_ZN12wxWindowBase18SetWindowStyleFlagEl
	.section	.text._ZNK12wxWindowBase18GetWindowStyleFlagEv,"axG",@progbits,_ZNK12wxWindowBase18GetWindowStyleFlagEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase18GetWindowStyleFlagEv
	.type	_ZNK12wxWindowBase18GetWindowStyleFlagEv, @function
_ZNK12wxWindowBase18GetWindowStyleFlagEv:
.LFB10531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10531:
	.size	_ZNK12wxWindowBase18GetWindowStyleFlagEv, .-_ZNK12wxWindowBase18GetWindowStyleFlagEv
	.section	.text._ZN12wxWindowBase13SetExtraStyleEl,"axG",@progbits,_ZN12wxWindowBase13SetExtraStyleEl,comdat
	.align 2
	.weak	_ZN12wxWindowBase13SetExtraStyleEl
	.type	_ZN12wxWindowBase13SetExtraStyleEl, @function
_ZN12wxWindowBase13SetExtraStyleEl:
.LFB10536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 344(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10536:
	.size	_ZN12wxWindowBase13SetExtraStyleEl, .-_ZN12wxWindowBase13SetExtraStyleEl
	.section	.text._ZN12wxWindowBase15SetThemeEnabledEb,"axG",@progbits,_ZN12wxWindowBase15SetThemeEnabledEb,comdat
	.align 2
	.weak	_ZN12wxWindowBase15SetThemeEnabledEb
	.type	_ZN12wxWindowBase15SetThemeEnabledEb, @function
_ZN12wxWindowBase15SetThemeEnabledEb:
.LFB10539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 400(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10539:
	.size	_ZN12wxWindowBase15SetThemeEnabledEb, .-_ZN12wxWindowBase15SetThemeEnabledEb
	.section	.text._ZNK12wxWindowBase15GetThemeEnabledEv,"axG",@progbits,_ZNK12wxWindowBase15GetThemeEnabledEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase15GetThemeEnabledEv
	.type	_ZNK12wxWindowBase15GetThemeEnabledEv, @function
_ZNK12wxWindowBase15GetThemeEnabledEv:
.LFB10540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	400(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10540:
	.size	_ZNK12wxWindowBase15GetThemeEnabledEv, .-_ZNK12wxWindowBase15GetThemeEnabledEv
	.section	.text._ZN12wxWindowBase15SetFocusFromKbdEv,"axG",@progbits,_ZN12wxWindowBase15SetFocusFromKbdEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase15SetFocusFromKbdEv
	.type	_ZN12wxWindowBase15SetFocusFromKbdEv, @function
_ZN12wxWindowBase15SetFocusFromKbdEv:
.LFB10541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10541:
	.size	_ZN12wxWindowBase15SetFocusFromKbdEv, .-_ZN12wxWindowBase15SetFocusFromKbdEv
	.section	.text._ZNK12wxWindowBase12AcceptsFocusEv,"axG",@progbits,_ZNK12wxWindowBase12AcceptsFocusEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase12AcceptsFocusEv
	.type	_ZNK12wxWindowBase12AcceptsFocusEv, @function
_ZNK12wxWindowBase12AcceptsFocusEv:
.LFB10542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10542:
	.size	_ZNK12wxWindowBase12AcceptsFocusEv, .-_ZNK12wxWindowBase12AcceptsFocusEv
	.section	.text._ZNK12wxWindowBase23AcceptsFocusRecursivelyEv,"axG",@progbits,_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv
	.type	_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv, @function
_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv:
.LFB10543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$576, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10543:
	.size	_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv, .-_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv
	.section	.text._ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv,"axG",@progbits,_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv
	.type	_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv, @function
_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv:
.LFB10544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$576, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10544:
	.size	_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv, .-_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv
	.section	.text._ZNK12wxWindowBase12CanBeFocusedEv,"axG",@progbits,_ZNK12wxWindowBase12CanBeFocusedEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase12CanBeFocusedEv
	.type	_ZNK12wxWindowBase12CanBeFocusedEv, @function
_ZNK12wxWindowBase12CanBeFocusedEv:
.LFB10545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$480, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	testb	%al, %al
	je	.L230
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase9IsEnabledEv@PLT
	testb	%al, %al
	je	.L230
	movl	$1, %eax
	jmp	.L231
.L230:
	movl	$0, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10545:
	.size	_ZNK12wxWindowBase12CanBeFocusedEv, .-_ZNK12wxWindowBase12CanBeFocusedEv
	.section	.text._ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow,"axG",@progbits,_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow,comdat
	.align 2
	.weak	_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow
	.type	_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow, @function
_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow:
.LFB10560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10560:
	.size	_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow, .-_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow
	.section	.text._ZNK12wxWindowBase15GetEventHandlerEv,"axG",@progbits,_ZNK12wxWindowBase15GetEventHandlerEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase15GetEventHandlerEv
	.type	_ZNK12wxWindowBase15GetEventHandlerEv, @function
_ZNK12wxWindowBase15GetEventHandlerEv:
.LFB10561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10561:
	.size	_ZNK12wxWindowBase15GetEventHandlerEv, .-_ZNK12wxWindowBase15GetEventHandlerEv
	.section	.text._ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent,"axG",@progbits,_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent,comdat
	.align 2
	.weak	_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent
	.type	_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent, @function
_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent:
.LFB10563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase15GetEventHandlerEv
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN12wxEvtHandler19ProcessEventLocallyER7wxEvent@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10563:
	.size	_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent, .-_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent
	.section	.text._ZN12wxWindowBase12GetValidatorEv,"axG",@progbits,_ZN12wxWindowBase12GetValidatorEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase12GetValidatorEv
	.type	_ZN12wxWindowBase12GetValidatorEv, @function
_ZN12wxWindowBase12GetValidatorEv:
.LFB10564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10564:
	.size	_ZN12wxWindowBase12GetValidatorEv, .-_ZN12wxWindowBase12GetValidatorEv
	.section	.text._ZN18wxAcceleratorTableaSERKS_,"axG",@progbits,_ZN18wxAcceleratorTableaSERKS_,comdat
	.align 2
	.weak	_ZN18wxAcceleratorTableaSERKS_
	.type	_ZN18wxAcceleratorTableaSERKS_, @function
_ZN18wxAcceleratorTableaSERKS_:
.LFB10566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxObjectaSERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10566:
	.size	_ZN18wxAcceleratorTableaSERKS_, .-_ZN18wxAcceleratorTableaSERKS_
	.section	.text._ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable,"axG",@progbits,_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable,comdat
	.align 2
	.weak	_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable
	.type	_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable, @function
_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable:
.LFB10565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	272(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN18wxAcceleratorTableaSERKS_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10565:
	.size	_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable, .-_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable
	.section	.text._ZNK12wxWindowBase10HasCaptureEv,"axG",@progbits,_ZNK12wxWindowBase10HasCaptureEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase10HasCaptureEv
	.type	_ZNK12wxWindowBase10HasCaptureEv, @function
_ZNK12wxWindowBase10HasCaptureEv:
.LFB10570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN12wxWindowBase10GetCaptureEv@PLT
	cmpq	%rax, -8(%rbp)
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10570:
	.size	_ZNK12wxWindowBase10HasCaptureEv, .-_ZNK12wxWindowBase10HasCaptureEv
	.section	.text._ZN12wxWindowBase9PrepareDCER4wxDC,"axG",@progbits,_ZN12wxWindowBase9PrepareDCER4wxDC,comdat
	.align 2
	.weak	_ZN12wxWindowBase9PrepareDCER4wxDC
	.type	_ZN12wxWindowBase9PrepareDCER4wxDC, @function
_ZN12wxWindowBase9PrepareDCER4wxDC:
.LFB10574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10574:
	.size	_ZN12wxWindowBase9PrepareDCER4wxDC, .-_ZN12wxWindowBase9PrepareDCER4wxDC
	.section	.text._ZNK12wxWindowBase20GetDefaultAttributesEv,"axG",@progbits,_ZNK12wxWindowBase20GetDefaultAttributesEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase20GetDefaultAttributesEv
	.type	_ZNK12wxWindowBase20GetDefaultAttributesEv, @function
_ZNK12wxWindowBase20GetDefaultAttributesEv:
.LFB10582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase16GetWindowVariantEv
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN12wxWindowBase25GetClassDefaultAttributesE15wxWindowVariant@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L249
	call	__stack_chk_fail@PLT
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10582:
	.size	_ZNK12wxWindowBase20GetDefaultAttributesEv, .-_ZNK12wxWindowBase20GetDefaultAttributesEv
	.section	.text._ZN12wxWindowBase24HasTransparentBackgroundEv,"axG",@progbits,_ZN12wxWindowBase24HasTransparentBackgroundEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase24HasTransparentBackgroundEv
	.type	_ZN12wxWindowBase24HasTransparentBackgroundEv, @function
_ZN12wxWindowBase24HasTransparentBackgroundEv:
.LFB10600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10600:
	.size	_ZN12wxWindowBase24HasTransparentBackgroundEv, .-_ZN12wxWindowBase24HasTransparentBackgroundEv
	.section	.text._ZNK12wxWindowBase16HasMultiplePagesEv,"axG",@progbits,_ZNK12wxWindowBase16HasMultiplePagesEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase16HasMultiplePagesEv
	.type	_ZNK12wxWindowBase16HasMultiplePagesEv, @function
_ZNK12wxWindowBase16HasMultiplePagesEv:
.LFB10616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10616:
	.size	_ZNK12wxWindowBase16HasMultiplePagesEv, .-_ZNK12wxWindowBase16HasMultiplePagesEv
	.section	.text._ZN12wxWindowBase20AlwaysShowScrollbarsEbb,"axG",@progbits,_ZN12wxWindowBase20AlwaysShowScrollbarsEbb,comdat
	.align 2
	.weak	_ZN12wxWindowBase20AlwaysShowScrollbarsEbb
	.type	_ZN12wxWindowBase20AlwaysShowScrollbarsEbb, @function
_ZN12wxWindowBase20AlwaysShowScrollbarsEbb:
.LFB10623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movl	%edx, %eax
	movb	%al, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10623:
	.size	_ZN12wxWindowBase20AlwaysShowScrollbarsEbb, .-_ZN12wxWindowBase20AlwaysShowScrollbarsEbb
	.section	.text._ZNK12wxWindowBase22IsScrollbarAlwaysShownEi,"axG",@progbits,_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi,comdat
	.align 2
	.weak	_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi
	.type	_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi, @function
_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi:
.LFB10624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10624:
	.size	_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi, .-_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi
	.section	.text._ZNK12wxWindowBase13GetDropTargetEv,"axG",@progbits,_ZNK12wxWindowBase13GetDropTargetEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase13GetDropTargetEv
	.type	_ZNK12wxWindowBase13GetDropTargetEv, @function
_ZNK12wxWindowBase13GetDropTargetEv:
.LFB10629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10629:
	.size	_ZNK12wxWindowBase13GetDropTargetEv, .-_ZNK12wxWindowBase13GetDropTargetEv
	.section	.text._ZN12wxWindowBase14SetTransparentEh,"axG",@progbits,_ZN12wxWindowBase14SetTransparentEh,comdat
	.align 2
	.weak	_ZN12wxWindowBase14SetTransparentEh
	.type	_ZN12wxWindowBase14SetTransparentEh, @function
_ZN12wxWindowBase14SetTransparentEh:
.LFB10636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10636:
	.size	_ZN12wxWindowBase14SetTransparentEh, .-_ZN12wxWindowBase14SetTransparentEh
	.section	.text._ZN12wxWindowBase17CanSetTransparentEv,"axG",@progbits,_ZN12wxWindowBase17CanSetTransparentEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase17CanSetTransparentEv
	.type	_ZN12wxWindowBase17CanSetTransparentEv, @function
_ZN12wxWindowBase17CanSetTransparentEv:
.LFB10637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10637:
	.size	_ZN12wxWindowBase17CanSetTransparentEv, .-_ZN12wxWindowBase17CanSetTransparentEv
	.section	.text._ZN12wxWindowBase15AssociateHandleEP10_GtkWidget,"axG",@progbits,_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget,comdat
	.align 2
	.weak	_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget
	.type	_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget, @function
_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget:
.LFB10638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10638:
	.size	_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget, .-_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget
	.section	.text._ZN12wxWindowBase16DissociateHandleEv,"axG",@progbits,_ZN12wxWindowBase16DissociateHandleEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase16DissociateHandleEv
	.type	_ZN12wxWindowBase16DissociateHandleEv, @function
_ZN12wxWindowBase16DissociateHandleEv:
.LFB10639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10639:
	.size	_ZN12wxWindowBase16DissociateHandleEv, .-_ZN12wxWindowBase16DissociateHandleEv
	.section	.text._ZNK12wxWindowBase20ShouldInheritColoursEv,"axG",@progbits,_ZNK12wxWindowBase20ShouldInheritColoursEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase20ShouldInheritColoursEv
	.type	_ZNK12wxWindowBase20ShouldInheritColoursEv, @function
_ZNK12wxWindowBase20ShouldInheritColoursEv:
.LFB10648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10648:
	.size	_ZNK12wxWindowBase20ShouldInheritColoursEv, .-_ZNK12wxWindowBase20ShouldInheritColoursEv
	.section	.text._ZNK12wxWindowBase22CanBeOutsideClientAreaEv,"axG",@progbits,_ZNK12wxWindowBase22CanBeOutsideClientAreaEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase22CanBeOutsideClientAreaEv
	.type	_ZNK12wxWindowBase22CanBeOutsideClientAreaEv, @function
_ZNK12wxWindowBase22CanBeOutsideClientAreaEv:
.LFB10649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10649:
	.size	_ZNK12wxWindowBase22CanBeOutsideClientAreaEv, .-_ZNK12wxWindowBase22CanBeOutsideClientAreaEv
	.section	.text._ZNK12wxWindowBase19CanApplyThemeBorderEv,"axG",@progbits,_ZNK12wxWindowBase19CanApplyThemeBorderEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase19CanApplyThemeBorderEv
	.type	_ZNK12wxWindowBase19CanApplyThemeBorderEv, @function
_ZNK12wxWindowBase19CanApplyThemeBorderEv:
.LFB10650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10650:
	.size	_ZNK12wxWindowBase19CanApplyThemeBorderEv, .-_ZNK12wxWindowBase19CanApplyThemeBorderEv
	.section	.text._ZN12wxWindowBase31GetMainWindowOfCompositeControlEv,"axG",@progbits,_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv,comdat
	.align 2
	.weak	_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv
	.type	_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv, @function
_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv:
.LFB10651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10651:
	.size	_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv, .-_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv
	.section	.text._ZNK12wxWindowBase21IsTopNavigationDomainEv,"axG",@progbits,_ZNK12wxWindowBase21IsTopNavigationDomainEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase21IsTopNavigationDomainEv
	.type	_ZNK12wxWindowBase21IsTopNavigationDomainEv, @function
_ZNK12wxWindowBase21IsTopNavigationDomainEv:
.LFB10652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10652:
	.size	_ZNK12wxWindowBase21IsTopNavigationDomainEv, .-_ZNK12wxWindowBase21IsTopNavigationDomainEv
	.section	.text._ZNK12wxWindowBase26GetDefaultBorderForControlEv,"axG",@progbits,_ZNK12wxWindowBase26GetDefaultBorderForControlEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase26GetDefaultBorderForControlEv
	.type	_ZNK12wxWindowBase26GetDefaultBorderForControlEv, @function
_ZNK12wxWindowBase26GetDefaultBorderForControlEv:
.LFB10654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$268435456, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10654:
	.size	_ZNK12wxWindowBase26GetDefaultBorderForControlEv, .-_ZNK12wxWindowBase26GetDefaultBorderForControlEv
	.section	.text._ZNK12wxWindowBase19DoGetBestClientSizeEv,"axG",@progbits,_ZNK12wxWindowBase19DoGetBestClientSizeEv,comdat
	.align 2
	.weak	_ZNK12wxWindowBase19DoGetBestClientSizeEv
	.type	_ZNK12wxWindowBase19DoGetBestClientSizeEv, @function
_ZNK12wxWindowBase19DoGetBestClientSizeEv:
.LFB10657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	wxDefaultSize(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10657:
	.size	_ZNK12wxWindowBase19DoGetBestClientSizeEv, .-_ZNK12wxWindowBase19DoGetBestClientSizeEv
	.section	.text._ZNK12wxWindowBase21DoGetBestClientHeightEi,"axG",@progbits,_ZNK12wxWindowBase21DoGetBestClientHeightEi,comdat
	.align 2
	.weak	_ZNK12wxWindowBase21DoGetBestClientHeightEi
	.type	_ZNK12wxWindowBase21DoGetBestClientHeightEi, @function
_ZNK12wxWindowBase21DoGetBestClientHeightEi:
.LFB10658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10658:
	.size	_ZNK12wxWindowBase21DoGetBestClientHeightEi, .-_ZNK12wxWindowBase21DoGetBestClientHeightEi
	.section	.text._ZNK12wxWindowBase20DoGetBestClientWidthEi,"axG",@progbits,_ZNK12wxWindowBase20DoGetBestClientWidthEi,comdat
	.align 2
	.weak	_ZNK12wxWindowBase20DoGetBestClientWidthEi
	.type	_ZNK12wxWindowBase20DoGetBestClientWidthEi, @function
_ZNK12wxWindowBase20DoGetBestClientWidthEi:
.LFB10659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10659:
	.size	_ZNK12wxWindowBase20DoGetBestClientWidthEi, .-_ZNK12wxWindowBase20DoGetBestClientWidthEi
	.section	.text._ZN12wxWindowBase18SetInitialBestSizeERK6wxSize,"axG",@progbits,_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize,comdat
	.align 2
	.weak	_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize
	.type	_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize, @function
_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize:
.LFB10665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN12wxWindowBase14SetInitialSizeERK6wxSize@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10665:
	.size	_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize, .-_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize
	.section	.text._ZN8wxWindow8SetLabelERK8wxString,"axG",@progbits,_ZN8wxWindow8SetLabelERK8wxString,comdat
	.align 2
	.weak	_ZN8wxWindow8SetLabelERK8wxString
	.type	_ZN8wxWindow8SetLabelERK8wxString, @function
_ZN8wxWindow8SetLabelERK8wxString:
.LFB10756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	512(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN8wxStringaSERKS_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10756:
	.size	_ZN8wxWindow8SetLabelERK8wxString, .-_ZN8wxWindow8SetLabelERK8wxString
	.section	.text._ZNK8wxWindow8GetLabelEv,"axG",@progbits,_ZNK8wxWindow8GetLabelEv,comdat
	.align 2
	.weak	_ZNK8wxWindow8GetLabelEv
	.type	_ZNK8wxWindow8GetLabelEv, @function
_ZNK8wxWindow8GetLabelEv:
.LFB10757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	512(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxStringC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10757:
	.size	_ZNK8wxWindow8GetLabelEv, .-_ZNK8wxWindow8GetLabelEv
	.section	.text._ZNK8wxWindow9GetHandleEv,"axG",@progbits,_ZNK8wxWindow9GetHandleEv,comdat
	.align 2
	.weak	_ZNK8wxWindow9GetHandleEv
	.type	_ZNK8wxWindow9GetHandleEv, @function
_ZNK8wxWindow9GetHandleEv:
.LFB10758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	496(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10758:
	.size	_ZNK8wxWindow9GetHandleEv, .-_ZNK8wxWindow9GetHandleEv
	.section	.text._ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv,"axG",@progbits,_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv,comdat
	.align 2
	.weak	_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv
	.type	_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv, @function
_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv:
.LFB10760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10760:
	.size	_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv, .-_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv
	.section	.text._ZNK8wxWindow24GTKIsTransparentForMouseEv,"axG",@progbits,_ZNK8wxWindow24GTKIsTransparentForMouseEv,comdat
	.align 2
	.weak	_ZNK8wxWindow24GTKIsTransparentForMouseEv
	.type	_ZNK8wxWindow24GTKIsTransparentForMouseEv, @function
_ZNK8wxWindow24GTKIsTransparentForMouseEv:
.LFB10762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10762:
	.size	_ZNK8wxWindow24GTKIsTransparentForMouseEv, .-_ZNK8wxWindow24GTKIsTransparentForMouseEv
	.section	.text._ZNK8wxWindow14GTKNeedsParentEv,"axG",@progbits,_ZNK8wxWindow14GTKNeedsParentEv,comdat
	.align 2
	.weak	_ZNK8wxWindow14GTKNeedsParentEv
	.type	_ZNK8wxWindow14GTKNeedsParentEv, @function
_ZNK8wxWindow14GTKNeedsParentEv:
.LFB10766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$616, %rax
	movq	(%rax), %rax
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10766:
	.size	_ZNK8wxWindow14GTKNeedsParentEv, .-_ZNK8wxWindow14GTKNeedsParentEv
	.section	.rodata
	.type	_ZL25wxIMAGE_ALPHA_TRANSPARENT, @object
	.size	_ZL25wxIMAGE_ALPHA_TRANSPARENT, 1
_ZL25wxIMAGE_ALPHA_TRANSPARENT:
	.zero	1
	.type	_ZL23wxIMAGE_ALPHA_THRESHOLD, @object
	.size	_ZL23wxIMAGE_ALPHA_THRESHOLD, 1
_ZL23wxIMAGE_ALPHA_THRESHOLD:
	.byte	-128
	.type	_ZL20wxIMAGE_ALPHA_OPAQUE, @object
	.size	_ZL20wxIMAGE_ALPHA_OPAQUE, 1
_ZL20wxIMAGE_ALPHA_OPAQUE:
	.byte	-1
	.section	.text._ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i,"axG",@progbits,_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i,comdat
	.align 2
	.weak	_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i
	.type	_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i, @function
_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i:
.LFB11094:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11094:
	.size	_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i, .-_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i
	.section	.text._ZN20wxNonOwnedWindowBase17InheritAttributesEv,"axG",@progbits,_ZN20wxNonOwnedWindowBase17InheritAttributesEv,comdat
	.align 2
	.weak	_ZN20wxNonOwnedWindowBase17InheritAttributesEv
	.type	_ZN20wxNonOwnedWindowBase17InheritAttributesEv, @function
_ZN20wxNonOwnedWindowBase17InheritAttributesEv:
.LFB11095:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11095:
	.size	_ZN20wxNonOwnedWindowBase17InheritAttributesEv, .-_ZN20wxNonOwnedWindowBase17InheritAttributesEv
	.section	.text._ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv,"axG",@progbits,_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv,comdat
	.align 2
	.weak	_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv
	.type	_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv, @function
_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv:
.LFB11203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11203:
	.size	_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv, .-_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv
	.section	.text._ZNK20wxTopLevelWindowBase10IsTopLevelEv,"axG",@progbits,_ZNK20wxTopLevelWindowBase10IsTopLevelEv,comdat
	.align 2
	.weak	_ZNK20wxTopLevelWindowBase10IsTopLevelEv
	.type	_ZNK20wxTopLevelWindowBase10IsTopLevelEv, @function
_ZNK20wxTopLevelWindowBase10IsTopLevelEv:
.LFB11210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11210:
	.size	_ZNK20wxTopLevelWindowBase10IsTopLevelEv, .-_ZNK20wxTopLevelWindowBase10IsTopLevelEv
	.section	.text._ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv,"axG",@progbits,_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv,comdat
	.align 2
	.weak	_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv
	.type	_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv, @function
_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv:
.LFB11211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11211:
	.size	_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv, .-_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv
	.section	.text._ZNK20wxTopLevelWindowBase9IsVisibleEv,"axG",@progbits,_ZNK20wxTopLevelWindowBase9IsVisibleEv,comdat
	.align 2
	.weak	_ZNK20wxTopLevelWindowBase9IsVisibleEv
	.type	_ZNK20wxTopLevelWindowBase9IsVisibleEv, @function
_ZNK20wxTopLevelWindowBase9IsVisibleEv:
.LFB11212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$480, %rax
	movq	(%rax), %rax
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11212:
	.size	_ZNK20wxTopLevelWindowBase9IsVisibleEv, .-_ZNK20wxTopLevelWindowBase9IsVisibleEv
	.section	.text._ZN20wxTopLevelWindowBase14OSXSetModifiedEb,"axG",@progbits,_ZN20wxTopLevelWindowBase14OSXSetModifiedEb,comdat
	.align 2
	.weak	_ZN20wxTopLevelWindowBase14OSXSetModifiedEb
	.type	_ZN20wxTopLevelWindowBase14OSXSetModifiedEb, @function
_ZN20wxTopLevelWindowBase14OSXSetModifiedEb:
.LFB11215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 720(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11215:
	.size	_ZN20wxTopLevelWindowBase14OSXSetModifiedEb, .-_ZN20wxTopLevelWindowBase14OSXSetModifiedEb
	.section	.text._ZNK20wxTopLevelWindowBase13OSXIsModifiedEv,"axG",@progbits,_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv,comdat
	.align 2
	.weak	_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv
	.type	_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv, @function
_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv:
.LFB11216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	720(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11216:
	.size	_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv, .-_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv
	.section	.text._ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString,"axG",@progbits,_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString,comdat
	.align 2
	.weak	_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString
	.type	_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString, @function
_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString:
.LFB11217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11217:
	.size	_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString, .-_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString
	.section	.text._ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_,"axG",@progbits,_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_,comdat
	.align 2
	.weak	_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_
	.type	_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_, @function
_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_:
.LFB11219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1288, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11219:
	.size	_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_, .-_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_
	.section	.text._ZNK19wxTopLevelWindowGTK12IsFullScreenEv,"axG",@progbits,_ZNK19wxTopLevelWindowGTK12IsFullScreenEv,comdat
	.align 2
	.weak	_ZNK19wxTopLevelWindowGTK12IsFullScreenEv
	.type	_ZNK19wxTopLevelWindowGTK12IsFullScreenEv, @function
_ZNK19wxTopLevelWindowGTK12IsFullScreenEv:
.LFB11229:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	736(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11229:
	.size	_ZNK19wxTopLevelWindowGTK12IsFullScreenEv, .-_ZNK19wxTopLevelWindowGTK12IsFullScreenEv
	.section	.text._ZNK19wxTopLevelWindowGTK8GetTitleEv,"axG",@progbits,_ZNK19wxTopLevelWindowGTK8GetTitleEv,comdat
	.align 2
	.weak	_ZNK19wxTopLevelWindowGTK8GetTitleEv
	.type	_ZNK19wxTopLevelWindowGTK8GetTitleEv, @function
_ZNK19wxTopLevelWindowGTK8GetTitleEv:
.LFB11230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	800(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8wxStringC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11230:
	.size	_ZNK19wxTopLevelWindowGTK8GetTitleEv, .-_ZNK19wxTopLevelWindowGTK8GetTitleEv
	.section	.text._ZN19wxTopLevelWindowGTK8SetLabelERK8wxString,"axG",@progbits,_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString,comdat
	.align 2
	.weak	_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString
	.type	_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString, @function
_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString:
.LFB11231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1656, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11231:
	.size	_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString, .-_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString
	.section	.text._ZNK19wxTopLevelWindowGTK8GetLabelEv,"axG",@progbits,_ZNK19wxTopLevelWindowGTK8GetLabelEv,comdat
	.align 2
	.weak	_ZNK19wxTopLevelWindowGTK8GetLabelEv
	.type	_ZNK19wxTopLevelWindowGTK8GetLabelEv, @function
_ZNK19wxTopLevelWindowGTK8GetLabelEv:
.LFB11232:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$1664, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L317
	call	__stack_chk_fail@PLT
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11232:
	.size	_ZNK19wxTopLevelWindowGTK8GetLabelEv, .-_ZNK19wxTopLevelWindowGTK8GetLabelEv
	.section	.text._ZNK19wxTopLevelWindowGTK9IsGrabbedEv,"axG",@progbits,_ZNK19wxTopLevelWindowGTK9IsGrabbedEv,comdat
	.align 2
	.weak	_ZNK19wxTopLevelWindowGTK9IsGrabbedEv
	.type	_ZNK19wxTopLevelWindowGTK9IsGrabbedEv, @function
_ZNK19wxTopLevelWindowGTK9IsGrabbedEv:
.LFB11233:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	861(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11233:
	.size	_ZNK19wxTopLevelWindowGTK9IsGrabbedEv, .-_ZNK19wxTopLevelWindowGTK9IsGrabbedEv
	.section	.text._ZNK11wxFrameBase10GetMenuBarEv,"axG",@progbits,_ZNK11wxFrameBase10GetMenuBarEv,comdat
	.align 2
	.weak	_ZNK11wxFrameBase10GetMenuBarEv
	.type	_ZNK11wxFrameBase10GetMenuBarEv, @function
_ZNK11wxFrameBase10GetMenuBarEv:
.LFB11322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11322:
	.size	_ZNK11wxFrameBase10GetMenuBarEv, .-_ZNK11wxFrameBase10GetMenuBarEv
	.section	.text._ZNK11wxFrameBase12GetStatusBarEv,"axG",@progbits,_ZNK11wxFrameBase12GetStatusBarEv,comdat
	.align 2
	.weak	_ZNK11wxFrameBase12GetStatusBarEv
	.type	_ZNK11wxFrameBase12GetStatusBarEv, @function
_ZNK11wxFrameBase12GetStatusBarEv:
.LFB11323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	968(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11323:
	.size	_ZNK11wxFrameBase12GetStatusBarEv, .-_ZNK11wxFrameBase12GetStatusBarEv
	.section	.text._ZNK11wxFrameBase10GetToolBarEv,"axG",@progbits,_ZNK11wxFrameBase10GetToolBarEv,comdat
	.align 2
	.weak	_ZNK11wxFrameBase10GetToolBarEv
	.type	_ZNK11wxFrameBase10GetToolBarEv, @function
_ZNK11wxFrameBase10GetToolBarEv:
.LFB11326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	984(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZNK11wxFrameBase10GetToolBarEv, .-_ZNK11wxFrameBase10GetToolBarEv
	.section	.text._ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow,"axG",@progbits,_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow,comdat
	.align 2
	.weak	_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow
	.type	_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow, @function
_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow:
.LFB11327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1752, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	testb	%al, %al
	je	.L327
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow
	testb	%al, %al
	je	.L327
	movl	$1, %eax
	jmp	.L328
.L327:
	movl	$0, %eax
.L328:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow, .-_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow
	.section	.text._ZN11wxFrameBase15PositionMenuBarEv,"axG",@progbits,_ZN11wxFrameBase15PositionMenuBarEv,comdat
	.align 2
	.weak	_ZN11wxFrameBase15PositionMenuBarEv
	.type	_ZN11wxFrameBase15PositionMenuBarEv, @function
_ZN11wxFrameBase15PositionMenuBarEv:
.LFB11328:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11328:
	.size	_ZN11wxFrameBase15PositionMenuBarEv, .-_ZN11wxFrameBase15PositionMenuBarEv
	.section	.text._ZN11wxFrameBase17PositionStatusBarEv,"axG",@progbits,_ZN11wxFrameBase17PositionStatusBarEv,comdat
	.align 2
	.weak	_ZN11wxFrameBase17PositionStatusBarEv
	.type	_ZN11wxFrameBase17PositionStatusBarEv, @function
_ZN11wxFrameBase17PositionStatusBarEv:
.LFB11329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZN11wxFrameBase17PositionStatusBarEv, .-_ZN11wxFrameBase17PositionStatusBarEv
	.section	.text._ZN11wxFrameBase15PositionToolBarEv,"axG",@progbits,_ZN11wxFrameBase15PositionToolBarEv,comdat
	.align 2
	.weak	_ZN11wxFrameBase15PositionToolBarEv
	.type	_ZN11wxFrameBase15PositionToolBarEv, @function
_ZN11wxFrameBase15PositionToolBarEv:
.LFB11330:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11330:
	.size	_ZN11wxFrameBase15PositionToolBarEv, .-_ZN11wxFrameBase15PositionToolBarEv
	.section	.text._ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,"axG",@progbits,_ZN7wxFrameC5EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,comdat
	.align 2
	.weak	_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_
	.type	_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_, @function
_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_:
.LFB11335:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11335
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB20:
	call	_ZN11wxFrameBaseC2Ev@PLT
.LEHE20:
	leaq	16+_ZTV7wxFrame(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB21:
	call	_ZN7wxFrame4InitEv@PLT
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	.cfi_escape 0x2e,0x10
	call	_ZN7wxFrame6CreateEP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_@PLT
.LEHE21:
	addq	$16, %rsp
	jmp	.L336
.L335:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN11wxFrameBaseD2Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.LEHE22:
.L336:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11335:
	.section	.gcc_except_table._ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,"aG",@progbits,_ZN7wxFrameC5EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,comdat
.LLSDA11335:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11335-.LLSDACSB11335
.LLSDACSB11335:
	.uleb128 .LEHB20-.LFB11335
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB11335
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L335-.LFB11335
	.uleb128 0
	.uleb128 .LEHB22-.LFB11335
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE11335:
	.section	.text._ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,"axG",@progbits,_ZN7wxFrameC5EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,comdat
	.size	_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_, .-_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_
	.weak	_ZN7wxFrameC1EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_
	.set	_ZN7wxFrameC1EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_,_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_
	.section	.text._ZNK7wxFrame19GetClientAreaOriginEv,"axG",@progbits,_ZNK7wxFrame19GetClientAreaOriginEv,comdat
	.align 2
	.weak	_ZNK7wxFrame19GetClientAreaOriginEv
	.type	_ZNK7wxFrame19GetClientAreaOriginEv, @function
_ZNK7wxFrame19GetClientAreaOriginEv:
.LFB11337:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN7wxPointC1Eii
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L339
	call	__stack_chk_fail@PLT
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11337:
	.size	_ZNK7wxFrame19GetClientAreaOriginEv, .-_ZNK7wxFrame19GetClientAreaOriginEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 8
	.type	_ZL21wxOutOfRangeTextCoord, @object
	.size	_ZL21wxOutOfRangeTextCoord, 8
_ZL21wxOutOfRangeTextCoord:
	.quad	-1
	.align 8
	.type	_ZL18wxInvalidTextCoord, @object
	.size	_ZL18wxInvalidTextCoord, 8
_ZL18wxInvalidTextCoord:
	.quad	-2
	.section	.text._ZNK20wxMDIParentFrameBase14GetActiveChildEv,"axG",@progbits,_ZNK20wxMDIParentFrameBase14GetActiveChildEv,comdat
	.align 2
	.weak	_ZNK20wxMDIParentFrameBase14GetActiveChildEv
	.type	_ZNK20wxMDIParentFrameBase14GetActiveChildEv, @function
_ZNK20wxMDIParentFrameBase14GetActiveChildEv:
.LFB14234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1008(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14234:
	.size	_ZNK20wxMDIParentFrameBase14GetActiveChildEv, .-_ZNK20wxMDIParentFrameBase14GetActiveChildEv
	.section	.text._ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame,"axG",@progbits,_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame
	.type	_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame, @function
_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame:
.LFB14235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 1008(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14235:
	.size	_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame, .-_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame
	.section	.text._ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu,"axG",@progbits,_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu
	.type	_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu, @function
_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu:
.LFB14238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	1016(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L346
	movq	-8(%rbp), %rax
	movq	1016(%rax), %rax
	testq	%rax, %rax
	je	.L345
	movq	-8(%rbp), %rax
	movq	1016(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1016(%rax), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rdi
	call	*%rax
.L345:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 1016(%rax)
.L346:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14238:
	.size	_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu, .-_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu
	.section	.text._ZN20wxMDIParentFrameBase7CascadeEv,"axG",@progbits,_ZN20wxMDIParentFrameBase7CascadeEv,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase7CascadeEv
	.type	_ZN20wxMDIParentFrameBase7CascadeEv, @function
_ZN20wxMDIParentFrameBase7CascadeEv:
.LFB14239:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14239:
	.size	_ZN20wxMDIParentFrameBase7CascadeEv, .-_ZN20wxMDIParentFrameBase7CascadeEv
	.section	.text._ZN20wxMDIParentFrameBase4TileE13wxOrientation,"axG",@progbits,_ZN20wxMDIParentFrameBase4TileE13wxOrientation,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase4TileE13wxOrientation
	.type	_ZN20wxMDIParentFrameBase4TileE13wxOrientation, @function
_ZN20wxMDIParentFrameBase4TileE13wxOrientation:
.LFB14240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14240:
	.size	_ZN20wxMDIParentFrameBase4TileE13wxOrientation, .-_ZN20wxMDIParentFrameBase4TileE13wxOrientation
	.section	.text._ZN20wxMDIParentFrameBase12ArrangeIconsEv,"axG",@progbits,_ZN20wxMDIParentFrameBase12ArrangeIconsEv,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase12ArrangeIconsEv
	.type	_ZN20wxMDIParentFrameBase12ArrangeIconsEv, @function
_ZN20wxMDIParentFrameBase12ArrangeIconsEv:
.LFB14241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14241:
	.size	_ZN20wxMDIParentFrameBase12ArrangeIconsEv, .-_ZN20wxMDIParentFrameBase12ArrangeIconsEv
	.section	.text._ZN21wxMDIClientWindowBaseC2Ev,"axG",@progbits,_ZN21wxMDIClientWindowBaseC5Ev,comdat
	.align 2
	.weak	_ZN21wxMDIClientWindowBaseC2Ev
	.type	_ZN21wxMDIClientWindowBaseC2Ev, @function
_ZN21wxMDIClientWindowBaseC2Ev:
.LFB14300:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxWindowC2Ev@PLT
	leaq	16+_ZTV21wxMDIClientWindowBase(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14300:
	.size	_ZN21wxMDIClientWindowBaseC2Ev, .-_ZN21wxMDIClientWindowBaseC2Ev
	.weak	_ZN21wxMDIClientWindowBaseC1Ev
	.set	_ZN21wxMDIClientWindowBaseC1Ev,_ZN21wxMDIClientWindowBaseC2Ev
	.section	.text._ZN17wxMDIClientWindowC2Ev,"axG",@progbits,_ZN17wxMDIClientWindowC5Ev,comdat
	.align 2
	.weak	_ZN17wxMDIClientWindowC2Ev
	.type	_ZN17wxMDIClientWindowC2Ev, @function
_ZN17wxMDIClientWindowC2Ev:
.LFB14306:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN21wxMDIClientWindowBaseC2Ev
	leaq	16+_ZTV17wxMDIClientWindow(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14306:
	.size	_ZN17wxMDIClientWindowC2Ev, .-_ZN17wxMDIClientWindowC2Ev
	.weak	_ZN17wxMDIClientWindowC1Ev
	.set	_ZN17wxMDIClientWindowC1Ev,_ZN17wxMDIClientWindowC2Ev
	.section	.text._ZN20wxMDIParentFrameBase14OnCreateClientEv,"axG",@progbits,_ZN20wxMDIParentFrameBase14OnCreateClientEv,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase14OnCreateClientEv
	.type	_ZN20wxMDIParentFrameBase14OnCreateClientEv, @function
_ZN20wxMDIParentFrameBase14OnCreateClientEv:
.LFB14308:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14308
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movl	$648, %edi
.LEHB23:
	call	_Znwm@PLT
.LEHE23:
	movq	%rax, %rbx
	movq	%rbx, %rdi
.LEHB24:
	call	_ZN17wxMDIClientWindowC1Ev
.LEHE24:
	movq	%rbx, %rax
	jmp	.L356
.L355:
	movq	%rax, %r12
	movl	$648, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.LEHE25:
.L356:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14308:
	.section	.gcc_except_table._ZN20wxMDIParentFrameBase14OnCreateClientEv,"aG",@progbits,_ZN20wxMDIParentFrameBase14OnCreateClientEv,comdat
.LLSDA14308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14308-.LLSDACSB14308
.LLSDACSB14308:
	.uleb128 .LEHB23-.LFB14308
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB14308
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L355-.LFB14308
	.uleb128 0
	.uleb128 .LEHB25-.LFB14308
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE14308:
	.section	.text._ZN20wxMDIParentFrameBase14OnCreateClientEv,"axG",@progbits,_ZN20wxMDIParentFrameBase14OnCreateClientEv,comdat
	.size	_ZN20wxMDIParentFrameBase14OnCreateClientEv, .-_ZN20wxMDIParentFrameBase14OnCreateClientEv
	.section	.text._ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent,"axG",@progbits,_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent,comdat
	.align 2
	.weak	_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent
	.type	_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent, @function
_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent:
.LFB14309:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7wxEvent12GetEventTypeEv
	movl	%eax, %ebx
	leaq	wxEVT_MENU(%rip), %rdi
	call	_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv
	movl	(%rax), %eax
	cmpl	%eax, %ebx
	je	.L358
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7wxEvent12GetEventTypeEv
	movl	%eax, %ebx
	leaq	wxEVT_UPDATE_UI(%rip), %rdi
	call	_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv
	movl	(%rax), %eax
	cmpl	%eax, %ebx
	jne	.L359
.L358:
	movl	$1, %eax
	jmp	.L360
.L359:
	movl	$0, %eax
.L360:
	testb	%al, %al
	je	.L361
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$1936, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L361
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7wxEvent17GetPropagatedFromEv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L363
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK12wxWindowBase12IsDescendantEPS_@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L364
.L363:
	movl	$1, %eax
	jmp	.L365
.L364:
	movl	$0, %eax
.L365:
	testb	%al, %al
	je	.L361
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN12wxWindowBase25ProcessWindowEventLocallyER7wxEvent
	testb	%al, %al
	je	.L361
	movl	$1, %eax
	jmp	.L367
.L361:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN12wxWindowBase9TryBeforeER7wxEvent@PLT
	nop
.L367:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14309:
	.size	_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent, .-_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent
	.section	.text._ZN10MainWindowC2ERK8wxString,"axG",@progbits,_ZN10MainWindowC5ERK8wxString,comdat
	.align 2
	.weak	_ZN10MainWindowC2ERK8wxString
	.type	_ZN10MainWindowC2ERK8wxString, @function
_ZN10MainWindowC2ERK8wxString:
.LFB14311:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14311
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rbx
	leaq	-80(%rbp), %rax
	leaq	wxFrameNameStr(%rip), %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZN8wxStringC1EPKc
.LEHE26:
	leaq	-88(%rbp), %rax
	movl	$480, %edx
	movl	$640, %esi
	movq	%rax, %rdi
	call	_ZN6wxSizeC1Eii
	leaq	-88(%rbp), %rcx
	movq	-112(%rbp), %rax
	leaq	-80(%rbp), %rdx
	pushq	%rdx
	pushq	$541072960
	movq	%rcx, %r9
	leaq	wxDefaultPosition(%rip), %r8
	movq	%rax, %rcx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
.LEHB27:
	.cfi_escape 0x2e,0x10
	call	_ZN7wxFrameC2EP8wxWindowiRK8wxStringRK7wxPointRK6wxSizelS4_
.LEHE27:
	addq	$16, %rsp
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	leaq	16+_ZTV10MainWindow(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
.LEHB28:
	.cfi_escape 0x2e,0
	call	_ZN12wxWindowBase6CentreEi
.LEHE28:
	jmp	.L374
.L372:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.L373:
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7wxFrameD2Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE29:
.L374:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L371
	call	__stack_chk_fail@PLT
.L371:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14311:
	.section	.gcc_except_table._ZN10MainWindowC2ERK8wxString,"aG",@progbits,_ZN10MainWindowC5ERK8wxString,comdat
.LLSDA14311:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14311-.LLSDACSB14311
.LLSDACSB14311:
	.uleb128 .LEHB26-.LFB14311
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB14311
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L372-.LFB14311
	.uleb128 0
	.uleb128 .LEHB28-.LFB14311
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L373-.LFB14311
	.uleb128 0
	.uleb128 .LEHB29-.LFB14311
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE14311:
	.section	.text._ZN10MainWindowC2ERK8wxString,"axG",@progbits,_ZN10MainWindowC5ERK8wxString,comdat
	.size	_ZN10MainWindowC2ERK8wxString, .-_ZN10MainWindowC2ERK8wxString
	.weak	_ZN10MainWindowC1ERK8wxString
	.set	_ZN10MainWindowC1ERK8wxString,_ZN10MainWindowC2ERK8wxString
	.section	.text._ZN8wxLoggerD2Ev,"axG",@progbits,_ZN8wxLoggerD5Ev,comdat
	.align 2
	.weak	_ZN8wxLoggerD2Ev
	.type	_ZN8wxLoggerD2Ev, @function
_ZN8wxLoggerD2Ev:
.LFB14315:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN15wxLogRecordInfoD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14315:
	.size	_ZN8wxLoggerD2Ev, .-_ZN8wxLoggerD2Ev
	.weak	_ZN8wxLoggerD1Ev
	.set	_ZN8wxLoggerD1Ev,_ZN8wxLoggerD2Ev
	.section	.rodata
	.align 8
.LC2:
	.string	"M"
	.string	""
	.string	""
	.string	"a"
	.string	""
	.string	""
	.string	"i"
	.string	""
	.string	""
	.string	"n"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"W"
	.string	""
	.string	""
	.string	"i"
	.string	""
	.string	""
	.string	"n"
	.string	""
	.string	""
	.string	"d"
	.string	""
	.string	""
	.string	"o"
	.string	""
	.string	""
	.string	"w"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC3:
	.string	"MainFrame.cpp"
.LC4:
	.string	"Hello world from wxWidgets!"
	.section	.text._ZN5MyApp6OnInitEv,"axG",@progbits,_ZN5MyApp6OnInitEv,comdat
	.align 2
	.weak	_ZN5MyApp6OnInitEv
	.type	_ZN5MyApp6OnInitEv, @function
_ZN5MyApp6OnInitEv:
.LFB14313:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14313
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-144(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZN8wxStringC1EPKw
.LEHE30:
	leaq	-144(%rbp), %r12
	movl	$1000, %edi
.LEHB31:
	call	_Znwm@PLT
.LEHE31:
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
.LEHB32:
	call	_ZN10MainWindowC1ERK8wxString
.LEHE32:
	movq	%rbx, -200(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	-200(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	addq	$448, %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rdx, %rdi
.LEHB33:
	call	*%rax
.LEHE33:
	movb	$0, -201(%rbp)
.L381:
	movl	$0, %ebx
	movzbl	-201(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L377
	movq	wxLOG_COMPONENT(%rip), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZN8wxStringC1EPKc
	movl	$1, %ebx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	_ZN5wxLog14IsLevelEnabledEm8wxString
.LEHE34:
	testb	%al, %al
	je	.L377
	movl	$1, %r12d
	jmp	.L378
.L377:
	movl	$0, %r12d
.L378:
	testb	%bl, %bl
	je	.L379
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
.L379:
	testb	%r12b, %r12b
	je	.L380
	movq	wxLOG_COMPONENT(%rip), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %r9
	leaq	_ZZN5MyApp6OnInitEvE12__FUNCTION__(%rip), %r8
	movl	$17, %ecx
	leaq	.LC3(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB35:
	call	_ZN8wxLoggerC1EmPKciS1_S1_
.LEHE35:
	leaq	-192(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_ZN14wxFormatStringC1EPKc
.LEHE36:
	leaq	-192(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_ZN8wxLogger3LogERK14wxFormatString
.LEHE37:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN14wxFormatStringD1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxLoggerD1Ev
	movb	$1, -201(%rbp)
	jmp	.L381
.L380:
	movl	$1, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L389
	jmp	.L395
.L391:
	movq	%rax, %r12
	movl	$1000, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rbx
	jmp	.L384
.L390:
	movq	%rax, %rbx
.L384:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB38:
	call	_Unwind_Resume@PLT
.L392:
	movq	%rax, %r12
	testb	%bl, %bl
	je	.L386
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxStringD1Ev
.L386:
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L394:
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN14wxFormatStringD1Ev
	jmp	.L388
.L393:
	movq	%rax, %rbx
.L388:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxLoggerD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE38:
.L395:
	call	__stack_chk_fail@PLT
.L389:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14313:
	.section	.gcc_except_table._ZN5MyApp6OnInitEv,"aG",@progbits,_ZN5MyApp6OnInitEv,comdat
.LLSDA14313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14313-.LLSDACSB14313
.LLSDACSB14313:
	.uleb128 .LEHB30-.LFB14313
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB14313
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L390-.LFB14313
	.uleb128 0
	.uleb128 .LEHB32-.LFB14313
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L391-.LFB14313
	.uleb128 0
	.uleb128 .LEHB33-.LFB14313
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB14313
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L392-.LFB14313
	.uleb128 0
	.uleb128 .LEHB35-.LFB14313
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB14313
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L393-.LFB14313
	.uleb128 0
	.uleb128 .LEHB37-.LFB14313
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L394-.LFB14313
	.uleb128 0
	.uleb128 .LEHB38-.LFB14313
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE14313:
	.section	.text._ZN5MyApp6OnInitEv,"axG",@progbits,_ZN5MyApp6OnInitEv,comdat
	.size	_ZN5MyApp6OnInitEv, .-_ZN5MyApp6OnInitEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB14317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z7wxEntryRiPPc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14317:
	.size	main, .-main
	.globl	_Z8wxGetAppv
	.type	_Z8wxGetAppv, @function
_Z8wxGetAppv:
.LFB14318:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN16wxAppConsoleBase11GetInstanceEv
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14318:
	.size	_Z8wxGetAppv, .-_Z8wxGetAppv
	.section	.text._ZN5MyAppC2Ev,"axG",@progbits,_ZN5MyAppC5Ev,comdat
	.align 2
	.weak	_ZN5MyAppC2Ev
	.type	_ZN5MyAppC2Ev, @function
_ZN5MyAppC2Ev:
.LFB14321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5wxAppC2Ev@PLT
	leaq	16+_ZTV5MyApp(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	552+_ZTV5MyApp(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14321:
	.size	_ZN5MyAppC2Ev, .-_ZN5MyAppC2Ev
	.weak	_ZN5MyAppC1Ev
	.set	_ZN5MyAppC1Ev,_ZN5MyAppC2Ev
	.section	.rodata
.LC5:
	.string	"your program"
	.align 8
.LC6:
	.string	"3.0 (wchar_t,compiler with C++ ABI 1013,wx containers,compatible with 2.8)"
	.text
	.globl	_Z11wxCreateAppv
	.type	_Z11wxCreateAppv, @function
_Z11wxCreateAppv:
.LFB14319:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14319
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	leaq	.LC5(%rip), %rsi
	leaq	.LC6(%rip), %rdi
.LEHB39:
	call	_ZN16wxAppConsoleBase17CheckBuildOptionsEPKcS1_@PLT
	movl	$680, %edi
	call	_Znwm@PLT
.LEHE39:
	movq	%rax, %rbx
	movq	%rbx, %rdi
.LEHB40:
	call	_ZN5MyAppC1Ev
.LEHE40:
	movq	%rbx, %rax
	jmp	.L405
.L404:
	movq	%rax, %r12
	movl	$680, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.LEHE41:
.L405:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14319:
	.section	.gcc_except_table,"a",@progbits
.LLSDA14319:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14319-.LLSDACSB14319
.LLSDACSB14319:
	.uleb128 .LEHB39-.LFB14319
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB14319
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L404-.LFB14319
	.uleb128 0
	.uleb128 .LEHB41-.LFB14319
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE14319:
	.text
	.size	_Z11wxCreateAppv, .-_Z11wxCreateAppv
	.globl	wxTheAppInitializer
	.bss
	.type	wxTheAppInitializer, @object
	.size	wxTheAppInitializer, 1
wxTheAppInitializer:
	.zero	1
	.section	.text._ZN22wxScopedCharTypeBufferIcED2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcED5Ev,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIcED2Ev
	.type	_ZN22wxScopedCharTypeBufferIcED2Ev, @function
_ZN22wxScopedCharTypeBufferIcED2Ev:
.LFB14327:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14327
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIcE6DecRefEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14327:
	.section	.gcc_except_table
.LLSDA14327:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14327-.LLSDACSB14327
.LLSDACSB14327:
.LLSDACSE14327:
	.section	.text._ZN22wxScopedCharTypeBufferIcED2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcED5Ev,comdat
	.size	_ZN22wxScopedCharTypeBufferIcED2Ev, .-_ZN22wxScopedCharTypeBufferIcED2Ev
	.weak	_ZN22wxScopedCharTypeBufferIcED1Ev
	.set	_ZN22wxScopedCharTypeBufferIcED1Ev,_ZN22wxScopedCharTypeBufferIcED2Ev
	.section	.text._ZN22wxScopedCharTypeBufferIwED2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwED5Ev,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIwED2Ev
	.type	_ZN22wxScopedCharTypeBufferIwED2Ev, @function
_ZN22wxScopedCharTypeBufferIwED2Ev:
.LFB14342:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14342
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwE6DecRefEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14342:
	.section	.gcc_except_table
.LLSDA14342:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14342-.LLSDACSB14342
.LLSDACSB14342:
.LLSDACSE14342:
	.section	.text._ZN22wxScopedCharTypeBufferIwED2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwED5Ev,comdat
	.size	_ZN22wxScopedCharTypeBufferIwED2Ev, .-_ZN22wxScopedCharTypeBufferIwED2Ev
	.weak	_ZN22wxScopedCharTypeBufferIwED1Ev
	.set	_ZN22wxScopedCharTypeBufferIwED1Ev,_ZN22wxScopedCharTypeBufferIwED2Ev
	.section	.text._ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm,comdat
	.weak	_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm
	.type	_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm, @function
_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm:
.LFB14584:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA14584
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -56(%rbp)
	jne	.L409
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8wxStrlenPKc
	movq	%rax, -56(%rbp)
.L409:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB42:
	call	_ZN22wxScopedCharTypeBufferIcEC1Ev
.LEHE42:
	cmpq	$0, -48(%rbp)
	je	.L415
	movl	$24, %edi
.LEHB43:
	call	_Znwm@PLT
.LEHE43:
	movq	%rax, %rbx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN22wxScopedCharTypeBufferIcE4DataC1EPcmN9wxPrivate17UntypedBufferData4KindE
	movq	-40(%rbp), %rax
	movq	%rbx, (%rax)
	jmp	.L415
.L414:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB44:
	call	_Unwind_Resume@PLT
.LEHE44:
.L415:
	nop
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L413
	call	__stack_chk_fail@PLT
.L413:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14584:
	.section	.gcc_except_table
.LLSDA14584:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14584-.LLSDACSB14584
.LLSDACSB14584:
	.uleb128 .LEHB42-.LFB14584
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB14584
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L414-.LFB14584
	.uleb128 0
	.uleb128 .LEHB44-.LFB14584
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE14584:
	.section	.text._ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm,comdat
	.size	_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm, .-_ZN22wxScopedCharTypeBufferIcE14CreateNonOwnedEPKcm
	.section	.text._ZN22wxScopedCharTypeBufferIwEC2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwEC5Ev,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIwEC2Ev
	.type	_ZN22wxScopedCharTypeBufferIwEC2Ev, @function
_ZN22wxScopedCharTypeBufferIwEC2Ev:
.LFB14586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14586:
	.size	_ZN22wxScopedCharTypeBufferIwEC2Ev, .-_ZN22wxScopedCharTypeBufferIwEC2Ev
	.weak	_ZN22wxScopedCharTypeBufferIwEC1Ev
	.set	_ZN22wxScopedCharTypeBufferIwEC1Ev,_ZN22wxScopedCharTypeBufferIwEC2Ev
	.section	.text._ZN22wxScopedCharTypeBufferIcEC2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcEC5Ev,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIcEC2Ev
	.type	_ZN22wxScopedCharTypeBufferIcEC2Ev, @function
_ZN22wxScopedCharTypeBufferIcEC2Ev:
.LFB14593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14593:
	.size	_ZN22wxScopedCharTypeBufferIcEC2Ev, .-_ZN22wxScopedCharTypeBufferIcEC2Ev
	.weak	_ZN22wxScopedCharTypeBufferIcEC1Ev
	.set	_ZN22wxScopedCharTypeBufferIcEC1Ev,_ZN22wxScopedCharTypeBufferIcEC2Ev
	.section	.text._ZN22wxScopedCharTypeBufferIwEC2ERKS0_,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwEC5ERKS0_,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIwEC2ERKS0_
	.type	_ZN22wxScopedCharTypeBufferIwEC2ERKS0_, @function
_ZN22wxScopedCharTypeBufferIwEC2ERKS0_:
.LFB14596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN22wxScopedCharTypeBufferIwE6IncRefEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14596:
	.size	_ZN22wxScopedCharTypeBufferIwEC2ERKS0_, .-_ZN22wxScopedCharTypeBufferIwEC2ERKS0_
	.weak	_ZN22wxScopedCharTypeBufferIwEC1ERKS0_
	.set	_ZN22wxScopedCharTypeBufferIwEC1ERKS0_,_ZN22wxScopedCharTypeBufferIwEC2ERKS0_
	.section	.text._ZN8wxString15ConvertedBufferIcED2Ev,"axG",@progbits,_ZN8wxString15ConvertedBufferIcED5Ev,comdat
	.align 2
	.weak	_ZN8wxString15ConvertedBufferIcED2Ev
	.type	_ZN8wxString15ConvertedBufferIcED2Ev, @function
_ZN8wxString15ConvertedBufferIcED2Ev:
.LFB14665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14665:
	.size	_ZN8wxString15ConvertedBufferIcED2Ev, .-_ZN8wxString15ConvertedBufferIcED2Ev
	.weak	_ZN8wxString15ConvertedBufferIcED1Ev
	.set	_ZN8wxString15ConvertedBufferIcED1Ev,_ZN8wxString15ConvertedBufferIcED2Ev
	.section	.text._ZN8wxString15ConvertedBufferIcEC2Ev,"axG",@progbits,_ZN8wxString15ConvertedBufferIcEC5Ev,comdat
	.align 2
	.weak	_ZN8wxString15ConvertedBufferIcEC2Ev
	.type	_ZN8wxString15ConvertedBufferIcEC2Ev, @function
_ZN8wxString15ConvertedBufferIcEC2Ev:
.LFB14671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14671:
	.size	_ZN8wxString15ConvertedBufferIcEC2Ev, .-_ZN8wxString15ConvertedBufferIcEC2Ev
	.weak	_ZN8wxString15ConvertedBufferIcEC1Ev
	.set	_ZN8wxString15ConvertedBufferIcEC1Ev,_ZN8wxString15ConvertedBufferIcEC2Ev
	.section	.text._ZNK22wxScopedCharTypeBufferIwEcvPKwEv,"axG",@progbits,_ZNK22wxScopedCharTypeBufferIwEcvPKwEv,comdat
	.align 2
	.weak	_ZNK22wxScopedCharTypeBufferIwEcvPKwEv
	.type	_ZNK22wxScopedCharTypeBufferIwEcvPKwEv, @function
_ZNK22wxScopedCharTypeBufferIwEcvPKwEv:
.LFB14676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK22wxScopedCharTypeBufferIwE4dataEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14676:
	.size	_ZNK22wxScopedCharTypeBufferIwEcvPKwEv, .-_ZNK22wxScopedCharTypeBufferIwEcvPKwEv
	.section	.text._ZNK22wxScopedCharTypeBufferIwE4dataEv,"axG",@progbits,_ZNK22wxScopedCharTypeBufferIwE4dataEv,comdat
	.align 2
	.weak	_ZNK22wxScopedCharTypeBufferIwE4dataEv
	.type	_ZNK22wxScopedCharTypeBufferIwE4dataEv, @function
_ZNK22wxScopedCharTypeBufferIwE4dataEv:
.LFB14683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14683:
	.size	_ZNK22wxScopedCharTypeBufferIwE4dataEv, .-_ZNK22wxScopedCharTypeBufferIwE4dataEv
	.section	.text._ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv,"axG",@progbits,_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv,comdat
	.align 2
	.weak	_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv
	.type	_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv, @function
_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv:
.LFB14955:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14955:
	.size	_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv, .-_ZNK14wxEventTypeTagI15wxUpdateUIEventEcvRKiEv
	.section	.text._Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_,"axG",@progbits,_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_,comdat
	.weak	_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_
	.type	_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_, @function
_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_:
.LFB14967:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L428
	movl	-4(%rbp), %eax
	jmp	.L430
.L428:
	movl	-8(%rbp), %eax
.L430:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14967:
	.size	_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_, .-_Z5wxMaxIiiEN24wxImplicitConversionTypeIT_T0_E5valueES1_S2_
	.section	.text._ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv,"axG",@progbits,_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv,comdat
	.align 2
	.weak	_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv
	.type	_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv, @function
_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv:
.LFB15014:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15014:
	.size	_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv, .-_ZNK14wxEventTypeTagI14wxCommandEventEcvRKiEv
	.section	.text._ZN22wxScopedCharTypeBufferIcE4DataD2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcE4DataD5Ev,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIcE4DataD2Ev
	.type	_ZN22wxScopedCharTypeBufferIcE4DataD2Ev, @function
_ZN22wxScopedCharTypeBufferIcE4DataD2Ev:
.LFB15017:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9wxPrivate17UntypedBufferDataD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15017:
	.size	_ZN22wxScopedCharTypeBufferIcE4DataD2Ev, .-_ZN22wxScopedCharTypeBufferIcE4DataD2Ev
	.weak	_ZN22wxScopedCharTypeBufferIcE4DataD1Ev
	.set	_ZN22wxScopedCharTypeBufferIcE4DataD1Ev,_ZN22wxScopedCharTypeBufferIcE4DataD2Ev
	.section	.text._ZN22wxScopedCharTypeBufferIcE6DecRefEv,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcE6DecRefEv,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIcE6DecRefEv
	.type	_ZN22wxScopedCharTypeBufferIcE6DecRefEv, @function
_ZN22wxScopedCharTypeBufferIcE6DecRefEv:
.LFB15015:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	call	_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L438
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzwl	16(%rax), %edx
	subl	$1, %edx
	movw	%dx, 16(%rax)
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	sete	%al
	testb	%al, %al
	je	.L437
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L437
	movq	%rbx, %rdi
	call	_ZN22wxScopedCharTypeBufferIcE4DataD1Ev
	movl	$24, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L437:
	call	_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L434
.L438:
	nop
.L434:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15015:
	.size	_ZN22wxScopedCharTypeBufferIcE6DecRefEv, .-_ZN22wxScopedCharTypeBufferIcE6DecRefEv
	.section	.text._ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcE4DataC5EPcmN9wxPrivate17UntypedBufferData4KindE,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE
	.type	_ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE, @function
_ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE:
.LFB15022:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZN9wxPrivate17UntypedBufferDataC2EPvmNS0_4KindE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15022:
	.size	_ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE, .-_ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE
	.weak	_ZN22wxScopedCharTypeBufferIcE4DataC1EPcmN9wxPrivate17UntypedBufferData4KindE
	.set	_ZN22wxScopedCharTypeBufferIcE4DataC1EPcmN9wxPrivate17UntypedBufferData4KindE,_ZN22wxScopedCharTypeBufferIcE4DataC2EPcmN9wxPrivate17UntypedBufferData4KindE
	.section	.text._ZN22wxScopedCharTypeBufferIcE11GetNullDataEv,"axG",@progbits,_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv,comdat
	.weak	_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv
	.type	_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv, @function
_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv:
.LFB15024:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN9wxPrivate18GetUntypedNullDataEv@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15024:
	.size	_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv, .-_ZN22wxScopedCharTypeBufferIcE11GetNullDataEv
	.section	.text._ZN22wxScopedCharTypeBufferIwE4DataD2Ev,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwE4DataD5Ev,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIwE4DataD2Ev
	.type	_ZN22wxScopedCharTypeBufferIwE4DataD2Ev, @function
_ZN22wxScopedCharTypeBufferIwE4DataD2Ev:
.LFB15027:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9wxPrivate17UntypedBufferDataD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15027:
	.size	_ZN22wxScopedCharTypeBufferIwE4DataD2Ev, .-_ZN22wxScopedCharTypeBufferIwE4DataD2Ev
	.weak	_ZN22wxScopedCharTypeBufferIwE4DataD1Ev
	.set	_ZN22wxScopedCharTypeBufferIwE4DataD1Ev,_ZN22wxScopedCharTypeBufferIwE4DataD2Ev
	.section	.text._ZN22wxScopedCharTypeBufferIwE6DecRefEv,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwE6DecRefEv,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIwE6DecRefEv
	.type	_ZN22wxScopedCharTypeBufferIwE6DecRefEv, @function
_ZN22wxScopedCharTypeBufferIwE6DecRefEv:
.LFB15025:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	call	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L447
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzwl	16(%rax), %edx
	subl	$1, %edx
	movw	%dx, 16(%rax)
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	sete	%al
	testb	%al, %al
	je	.L446
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L446
	movq	%rbx, %rdi
	call	_ZN22wxScopedCharTypeBufferIwE4DataD1Ev
	movl	$24, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L446:
	call	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L443
.L447:
	nop
.L443:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15025:
	.size	_ZN22wxScopedCharTypeBufferIwE6DecRefEv, .-_ZN22wxScopedCharTypeBufferIwE6DecRefEv
	.section	.text._ZN22wxScopedCharTypeBufferIwE11GetNullDataEv,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv,comdat
	.weak	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv
	.type	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv, @function
_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv:
.LFB15034:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN9wxPrivate18GetUntypedNullDataEv@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15034:
	.size	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv, .-_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv
	.section	.text._ZN22wxScopedCharTypeBufferIwE6IncRefEv,"axG",@progbits,_ZN22wxScopedCharTypeBufferIwE6IncRefEv,comdat
	.align 2
	.weak	_ZN22wxScopedCharTypeBufferIwE6IncRefEv
	.type	_ZN22wxScopedCharTypeBufferIwE6IncRefEv, @function
_ZN22wxScopedCharTypeBufferIwE6IncRefEv:
.LFB15134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	call	_ZN22wxScopedCharTypeBufferIwE11GetNullDataEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	jne	.L453
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzwl	16(%rax), %edx
	addl	$1, %edx
	movw	%dx, 16(%rax)
	jmp	.L450
.L453:
	nop
.L450:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15134:
	.size	_ZN22wxScopedCharTypeBufferIwE6IncRefEv, .-_ZN22wxScopedCharTypeBufferIwE6IncRefEv
	.section	.text._ZNK22wxScopedCharTypeBufferIwE4Data3GetEv,"axG",@progbits,_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv,comdat
	.align 2
	.weak	_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv
	.type	_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv, @function
_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv:
.LFB15152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15152:
	.size	_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv, .-_ZNK22wxScopedCharTypeBufferIwE4Data3GetEv
	.weak	_ZTV5MyApp
	.section	.data.rel.ro._ZTV5MyApp,"awG",@progbits,_ZTV5MyApp,comdat
	.align 8
	.type	_ZTV5MyApp, @object
	.size	_ZTV5MyApp, 576
_ZTV5MyApp:
	.quad	0
	.quad	_ZTI5MyApp
	.quad	_ZNK5wxApp12GetClassInfoEv
	.quad	_ZN5MyAppD1Ev
	.quad	_ZN5MyAppD0Ev
	.quad	_ZNK8wxObject13CreateRefDataEv
	.quad	_ZNK8wxObject12CloneRefDataEPK12wxRefCounter
	.quad	_ZN12wxEvtHandler14SetNextHandlerEPS_
	.quad	_ZN12wxEvtHandler18SetPreviousHandlerEPS_
	.quad	_ZN12wxEvtHandler12ProcessEventER7wxEvent
	.quad	_ZN12wxEvtHandler10QueueEventEP7wxEvent
	.quad	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent
	.quad	_ZN12wxEvtHandler16SearchEventTableER12wxEventTableR7wxEvent
	.quad	_ZN12wxEvtHandler9TryBeforeER7wxEvent
	.quad	_ZN12wxEvtHandler8TryAfterER7wxEvent
	.quad	_ZN12wxEvtHandler12TryValidatorER7wxEvent
	.quad	_ZN12wxEvtHandler9TryParentER7wxEvent
	.quad	_ZNK12wxEvtHandler13GetEventTableEv
	.quad	_ZNK12wxEvtHandler17GetEventHashTableEv
	.quad	_ZN12wxEvtHandler17DoSetClientObjectEP12wxClientData
	.quad	_ZNK12wxEvtHandler17DoGetClientObjectEv
	.quad	_ZN12wxEvtHandler15DoSetClientDataEPv
	.quad	_ZNK12wxEvtHandler15DoGetClientDataEv
	.quad	_ZN5wxApp10InitializeERiPPw
	.quad	_ZN16wxAppConsoleBase10CallOnInitEv
	.quad	_ZN5MyApp6OnInitEv
	.quad	_ZN9wxAppBase5OnRunEv
	.quad	_ZN16wxAppConsoleBase10OnLaunchedEv
	.quad	_ZN16wxAppConsoleBase16OnEventLoopEnterEP15wxEventLoopBase
	.quad	_ZN9wxAppBase6OnExitEv
	.quad	_ZN16wxAppConsoleBase15OnEventLoopExitEP15wxEventLoopBase
	.quad	_ZN5wxApp7CleanUpEv
	.quad	_ZN16wxAppConsoleBase16OnFatalExceptionEv
	.quad	_ZN16wxAppConsoleBase4ExitEv
	.quad	_ZN9wxAppBase13OnInitCmdLineER15wxCmdLineParser
	.quad	_ZN9wxAppBase15OnCmdLineParsedER15wxCmdLineParser
	.quad	_ZN16wxAppConsoleBase13OnCmdLineHelpER15wxCmdLineParser
	.quad	_ZN16wxAppConsoleBase14OnCmdLineErrorER15wxCmdLineParser
	.quad	_ZN16wxAppConsoleBase10SetCLocaleEv
	.quad	_ZN16wxAppConsoleBase11FilterEventER7wxEvent
	.quad	_ZNK16wxAppConsoleBase16CallEventHandlerEP12wxEvtHandlerR14wxEventFunctorR7wxEvent
	.quad	_ZNK16wxAppConsoleBase11HandleEventEP12wxEvtHandlerMS0_FvR7wxEventES3_
	.quad	_ZN16wxAppConsoleBase20OnUnhandledExceptionEv
	.quad	_ZN16wxAppConsoleBase21OnExceptionInMainLoopEv
	.quad	_ZN16wxAppConsoleBase20ProcessPendingEventsEv
	.quad	_ZN16wxAppConsoleBase7PendingEv
	.quad	_ZN16wxAppConsoleBase8DispatchEv
	.quad	_ZN16wxAppConsoleBase8MainLoopEv
	.quad	_ZN16wxAppConsoleBase12ExitMainLoopEv
	.quad	_ZN5wxApp10WakeUpIdleEv
	.quad	_ZN9wxAppBase11ProcessIdleEv
	.quad	_ZNK9wxAppBase13UsesEventLoopEv
	.quad	_ZN5wxApp15OnAssertFailureEPKwiS1_S1_S1_
	.quad	_ZN16wxAppConsoleBase8OnAssertEPKwiS1_S1_
	.quad	_ZN9wxAppBase12CreateTraitsEv
	.quad	_ZN5wxApp9OnInitGuiEv
	.quad	_ZN9wxAppBase9SafeYieldEP8wxWindowb
	.quad	_ZN9wxAppBase12SafeYieldForEP8wxWindowl
	.quad	_ZNK9wxAppBase8IsActiveEv
	.quad	_ZNK9wxAppBase12GetTopWindowEv
	.quad	_ZNK9wxAppBase14GetDisplayModeEv
	.quad	_ZN9wxAppBase14SetDisplayModeERK11wxVideoMode
	.quad	_ZN9wxAppBase12SetPrintModeEi
	.quad	_ZNK9wxAppBase18GetLayoutDirectionEv
	.quad	_ZN5wxApp14SetNativeThemeERK8wxString
	.quad	_ZN9wxAppBase9SetActiveEbP8wxWindow
	.quad	_ZN5wxApp14GetXVisualInfoEv
	.quad	-88
	.quad	_ZTI5MyApp
	.quad	_ZThn88_N5MyAppD1Ev
	.quad	_ZThn88_N5MyAppD0Ev
	.quad	_ZThn88_N16wxAppConsoleBase11FilterEventER7wxEvent
	.section	.text._ZN5MyAppD2Ev,"axG",@progbits,_ZN5MyAppD5Ev,comdat
	.align 2
	.weak	_ZN5MyAppD2Ev
	.type	_ZN5MyAppD2Ev, @function
_ZN5MyAppD2Ev:
.LFB15407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV5MyApp(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	552+_ZTV5MyApp(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5wxAppD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15407:
	.size	_ZN5MyAppD2Ev, .-_ZN5MyAppD2Ev
	.weak	_ZN5MyAppD1Ev
	.set	_ZN5MyAppD1Ev,_ZN5MyAppD2Ev
	.set	.LTHUNK41,_ZN5MyAppD1Ev
	.weak	_ZThn88_N5MyAppD1Ev
	.type	_ZThn88_N5MyAppD1Ev, @function
_ZThn88_N5MyAppD1Ev:
.LFB15589:
	.cfi_startproc
	subq	$88, %rdi
	jmp	.LTHUNK41
	.cfi_endproc
.LFE15589:
	.size	_ZThn88_N5MyAppD1Ev, .-_ZThn88_N5MyAppD1Ev
	.section	.text._ZN5MyAppD0Ev,"axG",@progbits,_ZN5MyAppD5Ev,comdat
	.align 2
	.weak	_ZN5MyAppD0Ev
	.type	_ZN5MyAppD0Ev, @function
_ZN5MyAppD0Ev:
.LFB15409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5MyAppD1Ev
	movq	-8(%rbp), %rax
	movl	$680, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15409:
	.size	_ZN5MyAppD0Ev, .-_ZN5MyAppD0Ev
	.set	.LTHUNK42,_ZN5MyAppD0Ev
	.weak	_ZThn88_N5MyAppD0Ev
	.type	_ZThn88_N5MyAppD0Ev, @function
_ZThn88_N5MyAppD0Ev:
.LFB15590:
	.cfi_startproc
	subq	$88, %rdi
	jmp	.LTHUNK42
	.cfi_endproc
.LFE15590:
	.size	_ZThn88_N5MyAppD0Ev, .-_ZThn88_N5MyAppD0Ev
	.weak	_ZTV10MainWindow
	.section	.data.rel.ro._ZTV10MainWindow,"awG",@progbits,_ZTV10MainWindow,comdat
	.align 8
	.type	_ZTV10MainWindow, @object
	.size	_ZTV10MainWindow, 1952
_ZTV10MainWindow:
	.quad	0
	.quad	_ZTI10MainWindow
	.quad	_ZNK7wxFrame12GetClassInfoEv
	.quad	_ZN10MainWindowD1Ev
	.quad	_ZN10MainWindowD0Ev
	.quad	_ZNK8wxObject13CreateRefDataEv
	.quad	_ZNK8wxObject12CloneRefDataEPK12wxRefCounter
	.quad	_ZN12wxWindowBase14SetNextHandlerEP12wxEvtHandler
	.quad	_ZN12wxWindowBase18SetPreviousHandlerEP12wxEvtHandler
	.quad	_ZN12wxEvtHandler12ProcessEventER7wxEvent
	.quad	_ZN12wxEvtHandler10QueueEventEP7wxEvent
	.quad	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent
	.quad	_ZN12wxEvtHandler16SearchEventTableER12wxEventTableR7wxEvent
	.quad	_ZN12wxWindowBase9TryBeforeER7wxEvent
	.quad	_ZN12wxWindowBase8TryAfterER7wxEvent
	.quad	_ZN12wxEvtHandler12TryValidatorER7wxEvent
	.quad	_ZN12wxEvtHandler9TryParentER7wxEvent
	.quad	_ZNK11wxFrameBase13GetEventTableEv
	.quad	_ZNK11wxFrameBase17GetEventHashTableEv
	.quad	_ZN12wxEvtHandler17DoSetClientObjectEP12wxClientData
	.quad	_ZNK12wxEvtHandler17DoGetClientObjectEv
	.quad	_ZN12wxEvtHandler15DoSetClientDataEPv
	.quad	_ZNK12wxEvtHandler15DoGetClientDataEv
	.quad	_ZN20wxTopLevelWindowBase7DestroyEv
	.quad	_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString
	.quad	_ZNK19wxTopLevelWindowGTK8GetLabelEv
	.quad	_ZN12wxWindowBase7SetNameERK8wxString
	.quad	_ZNK12wxWindowBase7GetNameEv
	.quad	_ZNK8wxWindow18GetLayoutDirectionEv
	.quad	_ZN8wxWindow18SetLayoutDirectionE17wxLayoutDirection
	.quad	_ZNK8wxWindow24AdjustForLayoutDirectionEiii
	.quad	_ZN19wxTopLevelWindowGTK5RaiseEv
	.quad	_ZN8wxWindow5LowerEv
	.quad	_ZNK7wxFrame19GetClientAreaOriginEv
	.quad	_ZNK12wxWindowBase18ClientToWindowSizeERK6wxSize
	.quad	_ZNK12wxWindowBase18WindowToClientSizeERK6wxSize
	.quad	_ZNK12wxWindowBase19GetEffectiveMinSizeEv
	.quad	_ZN12wxWindowBase3FitEv
	.quad	_ZN12wxWindowBase9FitInsideEv
	.quad	_ZN12wxWindowBase12SetSizeHintsEiiiiii
	.quad	_ZN12wxWindowBase19SetVirtualSizeHintsEiiii
	.quad	_ZN20wxTopLevelWindowBase10SetMinSizeERK6wxSize
	.quad	_ZN20wxTopLevelWindowBase10SetMaxSizeERK6wxSize
	.quad	_ZN12wxWindowBase16SetMinClientSizeERK6wxSize
	.quad	_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize
	.quad	_ZNK12wxWindowBase10GetMinSizeEv
	.quad	_ZNK12wxWindowBase10GetMaxSizeEv
	.quad	_ZNK12wxWindowBase16GetMinClientSizeEv
	.quad	_ZNK12wxWindowBase16GetMaxClientSizeEv
	.quad	_ZN12wxWindowBase16DoSetVirtualSizeEii
	.quad	_ZNK12wxWindowBase16DoGetVirtualSizeEv
	.quad	_ZNK12wxWindowBase18GetBestVirtualSizeEv
	.quad	_ZNK12wxWindowBase21GetContentScaleFactorEv
	.quad	_ZNK12wxWindowBase19GetWindowBorderSizeEv
	.quad	_ZN12wxWindowBase20InformFirstDirectionEiii
	.quad	_ZN12wxWindowBase13SendSizeEventEi
	.quad	_ZN12wxWindowBase26BeginRepositioningChildrenEv
	.quad	_ZN12wxWindowBase24EndRepositioningChildrenEv
	.quad	_ZN19wxTopLevelWindowGTK4ShowEb
	.quad	_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj
	.quad	_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj
	.quad	_ZN12wxWindowBase6EnableEb
	.quad	_ZNK8wxWindow7IsShownEv
	.quad	_ZNK12wxWindowBase15IsShownOnScreenEv
	.quad	_ZN19wxTopLevelWindowGTK18SetWindowStyleFlagEl
	.quad	_ZNK12wxWindowBase18GetWindowStyleFlagEv
	.quad	_ZNK8wxWindow10IsRetainedEv
	.quad	_ZN12wxWindowBase13SetExtraStyleEl
	.quad	_ZN12wxWindowBase9MakeModalEb
	.quad	_ZN12wxWindowBase15SetThemeEnabledEb
	.quad	_ZNK12wxWindowBase15GetThemeEnabledEv
	.quad	_ZN8wxWindow8SetFocusEv
	.quad	_ZN12wxWindowBase15SetFocusFromKbdEv
	.quad	_ZNK12wxWindowBase8HasFocusEv
	.quad	_ZNK12wxWindowBase12AcceptsFocusEv
	.quad	_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv
	.quad	_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv
	.quad	_ZNK12wxWindowBase12CanBeFocusedEv
	.quad	_ZN8wxWindow11SetCanFocusEb
	.quad	_ZNK20wxTopLevelWindowBase10IsTopLevelEv
	.quad	_ZN8wxWindow8ReparentEP12wxWindowBase
	.quad	_ZN8wxWindow8AddChildEP12wxWindowBase
	.quad	_ZN8wxWindow11RemoveChildEP12wxWindowBase
	.quad	_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow
	.quad	_ZN12wxWindowBase12SetValidatorERK11wxValidator
	.quad	_ZN12wxWindowBase12GetValidatorEv
	.quad	_ZN12wxWindowBase8ValidateEv
	.quad	_ZN12wxWindowBase20TransferDataToWindowEv
	.quad	_ZN12wxWindowBase22TransferDataFromWindowEv
	.quad	_ZN12wxWindowBase10InitDialogEv
	.quad	_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable
	.quad	_ZN8wxWindow11WarpPointerEii
	.quad	_ZNK12wxWindowBase10HasCaptureEv
	.quad	_ZN19wxTopLevelWindowGTK7RefreshEbPK6wxRect
	.quad	_ZN8wxWindow6UpdateEv
	.quad	_ZN8wxWindow15ClearBackgroundEv
	.quad	_ZN12wxWindowBase9PrepareDCER4wxDC
	.quad	_ZNK8wxWindow16IsDoubleBufferedEv
	.quad	_ZNK8wxWindow11DoIsExposedEii
	.quad	_ZNK8wxWindow11DoIsExposedEiiii
	.quad	_ZNK12wxWindowBase20GetDefaultAttributesEv
	.quad	_ZN8wxWindow19SetBackgroundColourERK8wxColour
	.quad	_ZN8wxWindow19SetForegroundColourERK8wxColour
	.quad	_ZN8wxWindow18SetBackgroundStyleE17wxBackgroundStyle
	.quad	_ZN12wxWindowBase24HasTransparentBackgroundEv
	.quad	_ZNK8wxWindow32IsTransparentBackgroundSupportedEP8wxString
	.quad	_ZN8wxWindow7SetFontERK6wxFont
	.quad	_ZN8wxWindow9SetCursorERK8wxCursor
	.quad	_ZNK8wxWindow13GetCharHeightEv
	.quad	_ZNK8wxWindow12GetCharWidthEv
	.quad	_ZN11wxFrameBase14UpdateWindowUIEl
	.quad	_ZN20wxTopLevelWindowBase16DoUpdateWindowUIER15wxUpdateUIEvent
	.quad	_ZNK12wxWindowBase16HasMultiplePagesEv
	.quad	_ZNK12wxWindowBase9CanScrollEi
	.quad	_ZN8wxWindow12SetScrollbarEiiiib
	.quad	_ZN8wxWindow12SetScrollPosEiib
	.quad	_ZNK8wxWindow12GetScrollPosEi
	.quad	_ZNK8wxWindow14GetScrollThumbEi
	.quad	_ZNK8wxWindow14GetScrollRangeEi
	.quad	_ZN8wxWindow12ScrollWindowEiiPK6wxRect
	.quad	_ZN8wxWindow11ScrollLinesEi
	.quad	_ZN8wxWindow11ScrollPagesEi
	.quad	_ZN12wxWindowBase20AlwaysShowScrollbarsEbb
	.quad	_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi
	.quad	_ZNK12wxWindowBase18GetHelpTextAtPointERK7wxPointN11wxHelpEvent6OriginE
	.quad	_ZN8wxWindow13SetDropTargetEP12wxDropTarget
	.quad	_ZNK12wxWindowBase13GetDropTargetEv
	.quad	_ZN12wxWindowBase15DragAcceptFilesEb
	.quad	_ZN12wxWindowBase18SetConstraintSizesEb
	.quad	_ZN12wxWindowBase12LayoutPhase1EPi
	.quad	_ZN12wxWindowBase12LayoutPhase2EPi
	.quad	_ZN12wxWindowBase7DoPhaseEi
	.quad	_ZN12wxWindowBase17SetSizeConstraintEiiii
	.quad	_ZN12wxWindowBase14MoveConstraintEii
	.quad	_ZNK12wxWindowBase17GetSizeConstraintEPiS0_
	.quad	_ZNK12wxWindowBase23GetClientSizeConstraintEPiS0_
	.quad	_ZNK12wxWindowBase21GetPositionConstraintEPiS0_
	.quad	_ZN12wxWindowBase6LayoutEv
	.quad	_ZN19wxTopLevelWindowGTK14SetTransparentEh
	.quad	_ZN19wxTopLevelWindowGTK17CanSetTransparentEv
	.quad	_ZN11wxFrameBase14OnInternalIdleEv
	.quad	_ZN7wxFrame14SendIdleEventsER11wxIdleEvent
	.quad	_ZNK8wxWindow9GetHandleEv
	.quad	_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget
	.quad	_ZN12wxWindowBase16DissociateHandleEv
	.quad	_ZN20wxNonOwnedWindowBase17InheritAttributesEv
	.quad	_ZNK12wxWindowBase20ShouldInheritColoursEv
	.quad	_ZNK12wxWindowBase22CanBeOutsideClientAreaEv
	.quad	_ZNK12wxWindowBase19CanApplyThemeBorderEv
	.quad	_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv
	.quad	_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv
	.quad	_ZN8wxWindow16DoMoveInTabOrderEPS_N12wxWindowBase11WindowOrderE
	.quad	_ZN8wxWindow12DoNavigateInEi
	.quad	_ZN8wxWindow8DoEnableEb
	.quad	_ZNK12wxWindowBase16GetDefaultBorderEv
	.quad	_ZNK12wxWindowBase26GetDefaultBorderForControlEv
	.quad	_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize
	.quad	_ZNK8wxWindow15DoGetTextExtentERK8wxStringPiS3_S3_S3_PK6wxFont
	.quad	_ZNK20wxTopLevelWindowBase16DoClientToScreenEPiS0_
	.quad	_ZNK20wxTopLevelWindowBase16DoScreenToClientEPiS0_
	.quad	_ZNK12wxWindowBase9DoHitTestEii
	.quad	_ZN8wxWindow14DoCaptureMouseEv
	.quad	_ZN8wxWindow14DoReleaseMouseEv
	.quad	_ZNK8wxWindow13DoGetPositionEPiS0_
	.quad	_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_
	.quad	_ZNK8wxWindow9DoGetSizeEPiS0_
	.quad	_ZNK7wxFrame15DoGetClientSizeEPiS0_
	.quad	_ZNK12wxWindowBase13DoGetBestSizeEv
	.quad	_ZNK12wxWindowBase19DoGetBestClientSizeEv
	.quad	_ZNK12wxWindowBase21DoGetBestClientHeightEi
	.quad	_ZNK12wxWindowBase20DoGetBestClientWidthEi
	.quad	_ZN19wxTopLevelWindowGTK9DoSetSizeEiiiii
	.quad	_ZN19wxTopLevelWindowGTK15DoSetClientSizeEii
	.quad	_ZN19wxTopLevelWindowGTK14DoSetSizeHintsEiiiiii
	.quad	_ZNK8wxWindow15DoGetBorderSizeEv
	.quad	_ZN19wxTopLevelWindowGTK12DoMoveWindowEiiii
	.quad	_ZN20wxTopLevelWindowBase8DoCentreEi
	.quad	_ZN8wxWindow12DoSetToolTipEP9wxToolTip
	.quad	_ZN8wxWindow11DoPopupMenuEP6wxMenuii
	.quad	_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i
	.quad	_ZN12wxWindowBase18DoSetWindowVariantE15wxWindowVariant
	.quad	_ZN8wxWindow8DoFreezeEv
	.quad	_ZN8wxWindow6DoThawEv
	.quad	_ZN8wxWindow16GetConnectWidgetEv
	.quad	_ZNK8wxWindow15GTKProcessEventER7wxEvent
	.quad	_ZN19wxTopLevelWindowGTK17GTKHandleRealizedEv
	.quad	_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv
	.quad	_ZNK8wxWindow22GTKWidgetNeedsMnemonicEv
	.quad	_ZN8wxWindow22GTKWidgetDoSetMnemonicEP10_GtkWidget
	.quad	_ZNK8wxWindow12GTKGetWindowER17wxArrayGdkWindows
	.quad	_ZN8wxWindow15GTKApplyToolTipEPKc
	.quad	_ZNK8wxWindow24GTKIsTransparentForMouseEv
	.quad	_ZNK8wxWindow19GTKIMFilterKeypressEP12_GdkEventKey
	.quad	_ZN8wxWindow18DoApplyWidgetStyleEP11_GtkRcStyle
	.quad	_ZNK8wxWindow14GTKNeedsParentEv
	.quad	_ZN8wxWindow11AddChildGTKEPS_
	.quad	_ZN16wxNonOwnedWindow12DoClearShapeEv
	.quad	_ZN16wxNonOwnedWindow16DoSetRegionShapeERK8wxRegion
	.quad	_ZN16wxNonOwnedWindow14DoSetPathShapeERK14wxGraphicsPath
	.quad	_ZN19wxTopLevelWindowGTK8MaximizeEb
	.quad	_ZN19wxTopLevelWindowGTK7RestoreEv
	.quad	_ZN19wxTopLevelWindowGTK7IconizeEb
	.quad	_ZNK19wxTopLevelWindowGTK11IsMaximizedEv
	.quad	_ZNK20wxTopLevelWindowBase17IsAlwaysMaximizedEv
	.quad	_ZNK19wxTopLevelWindowGTK10IsIconizedEv
	.quad	_ZN19wxTopLevelWindowGTK8SetIconsERK12wxIconBundle
	.quad	_ZN7wxFrame14ShowFullScreenEbl
	.quad	_ZN19wxTopLevelWindowGTK21ShowWithoutActivatingEv
	.quad	_ZNK19wxTopLevelWindowGTK12IsFullScreenEv
	.quad	_ZN19wxTopLevelWindowGTK8SetTitleERK8wxString
	.quad	_ZNK19wxTopLevelWindowGTK8GetTitleEv
	.quad	_ZN19wxTopLevelWindowGTK17EnableCloseButtonEb
	.quad	_ZN19wxTopLevelWindowGTK20RequestUserAttentionEi
	.quad	_ZN19wxTopLevelWindowGTK8IsActiveEv
	.quad	_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv
	.quad	_ZNK20wxTopLevelWindowBase9IsVisibleEv
	.quad	_ZN20wxTopLevelWindowBase26GetRectForTopLevelChildrenEPiS0_S0_S0_
	.quad	_ZN20wxTopLevelWindowBase14OSXSetModifiedEb
	.quad	_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv
	.quad	_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString
	.quad	_ZN11wxFrameBase10DoGiveHelpERK8wxStringb
	.quad	_ZNK11wxFrameBase11IsOneOfBarsEPK8wxWindow
	.quad	_ZN19wxTopLevelWindowGTK7AddGrabEv
	.quad	_ZN19wxTopLevelWindowGTK10RemoveGrabEv
	.quad	_ZNK19wxTopLevelWindowGTK9IsGrabbedEv
	.quad	_ZN11wxFrameBase10SetMenuBarEP9wxMenuBar
	.quad	_ZNK11wxFrameBase10GetMenuBarEv
	.quad	_ZNK11wxFrameBase17FindItemInMenuBarEi
	.quad	_ZN11wxFrameBase15CreateStatusBarEiliRK8wxString
	.quad	_ZN11wxFrameBase17OnCreateStatusBarEiliRK8wxString
	.quad	_ZNK11wxFrameBase12GetStatusBarEv
	.quad	_ZN7wxFrame12SetStatusBarEP11wxStatusBar
	.quad	_ZN11wxFrameBase13SetStatusTextERK8wxStringi
	.quad	_ZN11wxFrameBase15SetStatusWidthsEiPKi
	.quad	_ZN11wxFrameBase13CreateToolBarEliRK8wxString
	.quad	_ZN11wxFrameBase15OnCreateToolBarEliRK8wxString
	.quad	_ZNK11wxFrameBase10GetToolBarEv
	.quad	_ZN7wxFrame10SetToolBarEP9wxToolBar
	.quad	_ZN11wxFrameBase13DoMenuUpdatesEP6wxMenu
	.quad	_ZN11wxFrameBase15PositionMenuBarEv
	.quad	_ZN7wxFrame13DetachMenuBarEv
	.quad	_ZN7wxFrame13AttachMenuBarEP9wxMenuBar
	.quad	_ZN11wxFrameBase17PositionStatusBarEv
	.quad	_ZN11wxFrameBase15PositionToolBarEv
	.section	.text._ZN10MainWindowD2Ev,"axG",@progbits,_ZN10MainWindowD5Ev,comdat
	.align 2
	.weak	_ZN10MainWindowD2Ev
	.type	_ZN10MainWindowD2Ev, @function
_ZN10MainWindowD2Ev:
.LFB15411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV10MainWindow(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7wxFrameD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15411:
	.size	_ZN10MainWindowD2Ev, .-_ZN10MainWindowD2Ev
	.weak	_ZN10MainWindowD1Ev
	.set	_ZN10MainWindowD1Ev,_ZN10MainWindowD2Ev
	.section	.text._ZN10MainWindowD0Ev,"axG",@progbits,_ZN10MainWindowD5Ev,comdat
	.align 2
	.weak	_ZN10MainWindowD0Ev
	.type	_ZN10MainWindowD0Ev, @function
_ZN10MainWindowD0Ev:
.LFB15413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10MainWindowD1Ev
	movq	-8(%rbp), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15413:
	.size	_ZN10MainWindowD0Ev, .-_ZN10MainWindowD0Ev
	.weak	_ZTV20wxMDIParentFrameBase
	.section	.data.rel.ro._ZTV20wxMDIParentFrameBase,"awG",@progbits,_ZTV20wxMDIParentFrameBase,comdat
	.align 8
	.type	_ZTV20wxMDIParentFrameBase, @object
	.size	_ZTV20wxMDIParentFrameBase, 2024
_ZTV20wxMDIParentFrameBase:
	.quad	0
	.quad	_ZTI20wxMDIParentFrameBase
	.quad	_ZNK7wxFrame12GetClassInfoEv
	.quad	0
	.quad	0
	.quad	_ZNK8wxObject13CreateRefDataEv
	.quad	_ZNK8wxObject12CloneRefDataEPK12wxRefCounter
	.quad	_ZN12wxWindowBase14SetNextHandlerEP12wxEvtHandler
	.quad	_ZN12wxWindowBase18SetPreviousHandlerEP12wxEvtHandler
	.quad	_ZN12wxEvtHandler12ProcessEventER7wxEvent
	.quad	_ZN12wxEvtHandler10QueueEventEP7wxEvent
	.quad	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent
	.quad	_ZN12wxEvtHandler16SearchEventTableER12wxEventTableR7wxEvent
	.quad	_ZN20wxMDIParentFrameBase9TryBeforeER7wxEvent
	.quad	_ZN12wxWindowBase8TryAfterER7wxEvent
	.quad	_ZN12wxEvtHandler12TryValidatorER7wxEvent
	.quad	_ZN12wxEvtHandler9TryParentER7wxEvent
	.quad	_ZNK11wxFrameBase13GetEventTableEv
	.quad	_ZNK11wxFrameBase17GetEventHashTableEv
	.quad	_ZN12wxEvtHandler17DoSetClientObjectEP12wxClientData
	.quad	_ZNK12wxEvtHandler17DoGetClientObjectEv
	.quad	_ZN12wxEvtHandler15DoSetClientDataEPv
	.quad	_ZNK12wxEvtHandler15DoGetClientDataEv
	.quad	_ZN20wxTopLevelWindowBase7DestroyEv
	.quad	_ZN19wxTopLevelWindowGTK8SetLabelERK8wxString
	.quad	_ZNK19wxTopLevelWindowGTK8GetLabelEv
	.quad	_ZN12wxWindowBase7SetNameERK8wxString
	.quad	_ZNK12wxWindowBase7GetNameEv
	.quad	_ZNK8wxWindow18GetLayoutDirectionEv
	.quad	_ZN8wxWindow18SetLayoutDirectionE17wxLayoutDirection
	.quad	_ZNK8wxWindow24AdjustForLayoutDirectionEiii
	.quad	_ZN19wxTopLevelWindowGTK5RaiseEv
	.quad	_ZN8wxWindow5LowerEv
	.quad	_ZNK7wxFrame19GetClientAreaOriginEv
	.quad	_ZNK12wxWindowBase18ClientToWindowSizeERK6wxSize
	.quad	_ZNK12wxWindowBase18WindowToClientSizeERK6wxSize
	.quad	_ZNK12wxWindowBase19GetEffectiveMinSizeEv
	.quad	_ZN12wxWindowBase3FitEv
	.quad	_ZN12wxWindowBase9FitInsideEv
	.quad	_ZN12wxWindowBase12SetSizeHintsEiiiiii
	.quad	_ZN12wxWindowBase19SetVirtualSizeHintsEiiii
	.quad	_ZN20wxTopLevelWindowBase10SetMinSizeERK6wxSize
	.quad	_ZN20wxTopLevelWindowBase10SetMaxSizeERK6wxSize
	.quad	_ZN12wxWindowBase16SetMinClientSizeERK6wxSize
	.quad	_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize
	.quad	_ZNK12wxWindowBase10GetMinSizeEv
	.quad	_ZNK12wxWindowBase10GetMaxSizeEv
	.quad	_ZNK12wxWindowBase16GetMinClientSizeEv
	.quad	_ZNK12wxWindowBase16GetMaxClientSizeEv
	.quad	_ZN12wxWindowBase16DoSetVirtualSizeEii
	.quad	_ZNK12wxWindowBase16DoGetVirtualSizeEv
	.quad	_ZNK12wxWindowBase18GetBestVirtualSizeEv
	.quad	_ZNK12wxWindowBase21GetContentScaleFactorEv
	.quad	_ZNK12wxWindowBase19GetWindowBorderSizeEv
	.quad	_ZN12wxWindowBase20InformFirstDirectionEiii
	.quad	_ZN12wxWindowBase13SendSizeEventEi
	.quad	_ZN12wxWindowBase26BeginRepositioningChildrenEv
	.quad	_ZN12wxWindowBase24EndRepositioningChildrenEv
	.quad	_ZN19wxTopLevelWindowGTK4ShowEb
	.quad	_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj
	.quad	_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj
	.quad	_ZN12wxWindowBase6EnableEb
	.quad	_ZNK8wxWindow7IsShownEv
	.quad	_ZNK12wxWindowBase15IsShownOnScreenEv
	.quad	_ZN19wxTopLevelWindowGTK18SetWindowStyleFlagEl
	.quad	_ZNK12wxWindowBase18GetWindowStyleFlagEv
	.quad	_ZNK8wxWindow10IsRetainedEv
	.quad	_ZN12wxWindowBase13SetExtraStyleEl
	.quad	_ZN12wxWindowBase9MakeModalEb
	.quad	_ZN12wxWindowBase15SetThemeEnabledEb
	.quad	_ZNK12wxWindowBase15GetThemeEnabledEv
	.quad	_ZN8wxWindow8SetFocusEv
	.quad	_ZN12wxWindowBase15SetFocusFromKbdEv
	.quad	_ZNK12wxWindowBase8HasFocusEv
	.quad	_ZNK12wxWindowBase12AcceptsFocusEv
	.quad	_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv
	.quad	_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv
	.quad	_ZNK12wxWindowBase12CanBeFocusedEv
	.quad	_ZN8wxWindow11SetCanFocusEb
	.quad	_ZNK20wxTopLevelWindowBase10IsTopLevelEv
	.quad	_ZN8wxWindow8ReparentEP12wxWindowBase
	.quad	_ZN8wxWindow8AddChildEP12wxWindowBase
	.quad	_ZN8wxWindow11RemoveChildEP12wxWindowBase
	.quad	_ZNK11wxFrameBase17IsClientAreaChildEPK8wxWindow
	.quad	_ZN12wxWindowBase12SetValidatorERK11wxValidator
	.quad	_ZN12wxWindowBase12GetValidatorEv
	.quad	_ZN12wxWindowBase8ValidateEv
	.quad	_ZN12wxWindowBase20TransferDataToWindowEv
	.quad	_ZN12wxWindowBase22TransferDataFromWindowEv
	.quad	_ZN12wxWindowBase10InitDialogEv
	.quad	_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable
	.quad	_ZN8wxWindow11WarpPointerEii
	.quad	_ZNK12wxWindowBase10HasCaptureEv
	.quad	_ZN19wxTopLevelWindowGTK7RefreshEbPK6wxRect
	.quad	_ZN8wxWindow6UpdateEv
	.quad	_ZN8wxWindow15ClearBackgroundEv
	.quad	_ZN12wxWindowBase9PrepareDCER4wxDC
	.quad	_ZNK8wxWindow16IsDoubleBufferedEv
	.quad	_ZNK8wxWindow11DoIsExposedEii
	.quad	_ZNK8wxWindow11DoIsExposedEiiii
	.quad	_ZNK12wxWindowBase20GetDefaultAttributesEv
	.quad	_ZN8wxWindow19SetBackgroundColourERK8wxColour
	.quad	_ZN8wxWindow19SetForegroundColourERK8wxColour
	.quad	_ZN8wxWindow18SetBackgroundStyleE17wxBackgroundStyle
	.quad	_ZN12wxWindowBase24HasTransparentBackgroundEv
	.quad	_ZNK8wxWindow32IsTransparentBackgroundSupportedEP8wxString
	.quad	_ZN8wxWindow7SetFontERK6wxFont
	.quad	_ZN8wxWindow9SetCursorERK8wxCursor
	.quad	_ZNK8wxWindow13GetCharHeightEv
	.quad	_ZNK8wxWindow12GetCharWidthEv
	.quad	_ZN11wxFrameBase14UpdateWindowUIEl
	.quad	_ZN20wxTopLevelWindowBase16DoUpdateWindowUIER15wxUpdateUIEvent
	.quad	_ZNK12wxWindowBase16HasMultiplePagesEv
	.quad	_ZNK12wxWindowBase9CanScrollEi
	.quad	_ZN8wxWindow12SetScrollbarEiiiib
	.quad	_ZN8wxWindow12SetScrollPosEiib
	.quad	_ZNK8wxWindow12GetScrollPosEi
	.quad	_ZNK8wxWindow14GetScrollThumbEi
	.quad	_ZNK8wxWindow14GetScrollRangeEi
	.quad	_ZN8wxWindow12ScrollWindowEiiPK6wxRect
	.quad	_ZN8wxWindow11ScrollLinesEi
	.quad	_ZN8wxWindow11ScrollPagesEi
	.quad	_ZN12wxWindowBase20AlwaysShowScrollbarsEbb
	.quad	_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi
	.quad	_ZNK12wxWindowBase18GetHelpTextAtPointERK7wxPointN11wxHelpEvent6OriginE
	.quad	_ZN8wxWindow13SetDropTargetEP12wxDropTarget
	.quad	_ZNK12wxWindowBase13GetDropTargetEv
	.quad	_ZN12wxWindowBase15DragAcceptFilesEb
	.quad	_ZN12wxWindowBase18SetConstraintSizesEb
	.quad	_ZN12wxWindowBase12LayoutPhase1EPi
	.quad	_ZN12wxWindowBase12LayoutPhase2EPi
	.quad	_ZN12wxWindowBase7DoPhaseEi
	.quad	_ZN12wxWindowBase17SetSizeConstraintEiiii
	.quad	_ZN12wxWindowBase14MoveConstraintEii
	.quad	_ZNK12wxWindowBase17GetSizeConstraintEPiS0_
	.quad	_ZNK12wxWindowBase23GetClientSizeConstraintEPiS0_
	.quad	_ZNK12wxWindowBase21GetPositionConstraintEPiS0_
	.quad	_ZN12wxWindowBase6LayoutEv
	.quad	_ZN19wxTopLevelWindowGTK14SetTransparentEh
	.quad	_ZN19wxTopLevelWindowGTK17CanSetTransparentEv
	.quad	_ZN11wxFrameBase14OnInternalIdleEv
	.quad	_ZN7wxFrame14SendIdleEventsER11wxIdleEvent
	.quad	_ZNK8wxWindow9GetHandleEv
	.quad	_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget
	.quad	_ZN12wxWindowBase16DissociateHandleEv
	.quad	_ZN20wxNonOwnedWindowBase17InheritAttributesEv
	.quad	_ZNK12wxWindowBase20ShouldInheritColoursEv
	.quad	_ZNK12wxWindowBase22CanBeOutsideClientAreaEv
	.quad	_ZNK12wxWindowBase19CanApplyThemeBorderEv
	.quad	_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv
	.quad	_ZNK20wxTopLevelWindowBase21IsTopNavigationDomainEv
	.quad	_ZN8wxWindow16DoMoveInTabOrderEPS_N12wxWindowBase11WindowOrderE
	.quad	_ZN8wxWindow12DoNavigateInEi
	.quad	_ZN8wxWindow8DoEnableEb
	.quad	_ZNK12wxWindowBase16GetDefaultBorderEv
	.quad	_ZNK12wxWindowBase26GetDefaultBorderForControlEv
	.quad	_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize
	.quad	_ZNK8wxWindow15DoGetTextExtentERK8wxStringPiS3_S3_S3_PK6wxFont
	.quad	_ZNK20wxTopLevelWindowBase16DoClientToScreenEPiS0_
	.quad	_ZNK20wxTopLevelWindowBase16DoScreenToClientEPiS0_
	.quad	_ZNK12wxWindowBase9DoHitTestEii
	.quad	_ZN8wxWindow14DoCaptureMouseEv
	.quad	_ZN8wxWindow14DoReleaseMouseEv
	.quad	_ZNK8wxWindow13DoGetPositionEPiS0_
	.quad	_ZNK20wxTopLevelWindowBase19DoGetScreenPositionEPiS0_
	.quad	_ZNK8wxWindow9DoGetSizeEPiS0_
	.quad	_ZNK7wxFrame15DoGetClientSizeEPiS0_
	.quad	_ZNK12wxWindowBase13DoGetBestSizeEv
	.quad	_ZNK12wxWindowBase19DoGetBestClientSizeEv
	.quad	_ZNK12wxWindowBase21DoGetBestClientHeightEi
	.quad	_ZNK12wxWindowBase20DoGetBestClientWidthEi
	.quad	_ZN19wxTopLevelWindowGTK9DoSetSizeEiiiii
	.quad	_ZN19wxTopLevelWindowGTK15DoSetClientSizeEii
	.quad	_ZN19wxTopLevelWindowGTK14DoSetSizeHintsEiiiiii
	.quad	_ZNK8wxWindow15DoGetBorderSizeEv
	.quad	_ZN19wxTopLevelWindowGTK12DoMoveWindowEiiii
	.quad	_ZN20wxTopLevelWindowBase8DoCentreEi
	.quad	_ZN8wxWindow12DoSetToolTipEP9wxToolTip
	.quad	_ZN8wxWindow11DoPopupMenuEP6wxMenuii
	.quad	_ZNK20wxNonOwnedWindowBase27AdjustForParentClientOriginERiS0_i
	.quad	_ZN12wxWindowBase18DoSetWindowVariantE15wxWindowVariant
	.quad	_ZN8wxWindow8DoFreezeEv
	.quad	_ZN8wxWindow6DoThawEv
	.quad	_ZN8wxWindow16GetConnectWidgetEv
	.quad	_ZNK8wxWindow15GTKProcessEventER7wxEvent
	.quad	_ZN19wxTopLevelWindowGTK17GTKHandleRealizedEv
	.quad	_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv
	.quad	_ZNK8wxWindow22GTKWidgetNeedsMnemonicEv
	.quad	_ZN8wxWindow22GTKWidgetDoSetMnemonicEP10_GtkWidget
	.quad	_ZNK8wxWindow12GTKGetWindowER17wxArrayGdkWindows
	.quad	_ZN8wxWindow15GTKApplyToolTipEPKc
	.quad	_ZNK8wxWindow24GTKIsTransparentForMouseEv
	.quad	_ZNK8wxWindow19GTKIMFilterKeypressEP12_GdkEventKey
	.quad	_ZN8wxWindow18DoApplyWidgetStyleEP11_GtkRcStyle
	.quad	_ZNK8wxWindow14GTKNeedsParentEv
	.quad	_ZN8wxWindow11AddChildGTKEPS_
	.quad	_ZN16wxNonOwnedWindow12DoClearShapeEv
	.quad	_ZN16wxNonOwnedWindow16DoSetRegionShapeERK8wxRegion
	.quad	_ZN16wxNonOwnedWindow14DoSetPathShapeERK14wxGraphicsPath
	.quad	_ZN19wxTopLevelWindowGTK8MaximizeEb
	.quad	_ZN19wxTopLevelWindowGTK7RestoreEv
	.quad	_ZN19wxTopLevelWindowGTK7IconizeEb
	.quad	_ZNK19wxTopLevelWindowGTK11IsMaximizedEv
	.quad	_ZNK20wxTopLevelWindowBase17IsAlwaysMaximizedEv
	.quad	_ZNK19wxTopLevelWindowGTK10IsIconizedEv
	.quad	_ZN19wxTopLevelWindowGTK8SetIconsERK12wxIconBundle
	.quad	_ZN7wxFrame14ShowFullScreenEbl
	.quad	_ZN19wxTopLevelWindowGTK21ShowWithoutActivatingEv
	.quad	_ZNK19wxTopLevelWindowGTK12IsFullScreenEv
	.quad	_ZN19wxTopLevelWindowGTK8SetTitleERK8wxString
	.quad	_ZNK19wxTopLevelWindowGTK8GetTitleEv
	.quad	_ZN19wxTopLevelWindowGTK17EnableCloseButtonEb
	.quad	_ZN19wxTopLevelWindowGTK20RequestUserAttentionEi
	.quad	_ZN19wxTopLevelWindowGTK8IsActiveEv
	.quad	_ZNK20wxTopLevelWindowBase20ShouldPreventAppExitEv
	.quad	_ZNK20wxTopLevelWindowBase9IsVisibleEv
	.quad	_ZN20wxTopLevelWindowBase26GetRectForTopLevelChildrenEPiS0_S0_S0_
	.quad	_ZN20wxTopLevelWindowBase14OSXSetModifiedEb
	.quad	_ZNK20wxTopLevelWindowBase13OSXIsModifiedEv
	.quad	_ZN20wxTopLevelWindowBase22SetRepresentedFilenameERK8wxString
	.quad	_ZN11wxFrameBase10DoGiveHelpERK8wxStringb
	.quad	_ZNK11wxFrameBase11IsOneOfBarsEPK8wxWindow
	.quad	_ZN19wxTopLevelWindowGTK7AddGrabEv
	.quad	_ZN19wxTopLevelWindowGTK10RemoveGrabEv
	.quad	_ZNK19wxTopLevelWindowGTK9IsGrabbedEv
	.quad	_ZN11wxFrameBase10SetMenuBarEP9wxMenuBar
	.quad	_ZNK11wxFrameBase10GetMenuBarEv
	.quad	_ZNK11wxFrameBase17FindItemInMenuBarEi
	.quad	_ZN11wxFrameBase15CreateStatusBarEiliRK8wxString
	.quad	_ZN11wxFrameBase17OnCreateStatusBarEiliRK8wxString
	.quad	_ZNK11wxFrameBase12GetStatusBarEv
	.quad	_ZN7wxFrame12SetStatusBarEP11wxStatusBar
	.quad	_ZN11wxFrameBase13SetStatusTextERK8wxStringi
	.quad	_ZN11wxFrameBase15SetStatusWidthsEiPKi
	.quad	_ZN11wxFrameBase13CreateToolBarEliRK8wxString
	.quad	_ZN11wxFrameBase15OnCreateToolBarEliRK8wxString
	.quad	_ZNK11wxFrameBase10GetToolBarEv
	.quad	_ZN7wxFrame10SetToolBarEP9wxToolBar
	.quad	_ZN11wxFrameBase13DoMenuUpdatesEP6wxMenu
	.quad	_ZN11wxFrameBase15PositionMenuBarEv
	.quad	_ZN7wxFrame13DetachMenuBarEv
	.quad	_ZN7wxFrame13AttachMenuBarEP9wxMenuBar
	.quad	_ZN11wxFrameBase17PositionStatusBarEv
	.quad	_ZN11wxFrameBase15PositionToolBarEv
	.quad	_ZNK20wxMDIParentFrameBase14GetActiveChildEv
	.quad	_ZN20wxMDIParentFrameBase14SetActiveChildEP15wxMDIChildFrame
	.quad	_ZN20wxMDIParentFrameBase13SetWindowMenuEP6wxMenu
	.quad	_ZN20wxMDIParentFrameBase7CascadeEv
	.quad	_ZN20wxMDIParentFrameBase4TileE13wxOrientation
	.quad	_ZN20wxMDIParentFrameBase12ArrangeIconsEv
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	_ZN20wxMDIParentFrameBase14OnCreateClientEv
	.weak	_ZTV21wxMDIClientWindowBase
	.section	.data.rel.ro._ZTV21wxMDIClientWindowBase,"awG",@progbits,_ZTV21wxMDIClientWindowBase,comdat
	.align 8
	.type	_ZTV21wxMDIClientWindowBase, @object
	.size	_ZTV21wxMDIClientWindowBase, 1576
_ZTV21wxMDIClientWindowBase:
	.quad	0
	.quad	_ZTI21wxMDIClientWindowBase
	.quad	_ZNK8wxWindow12GetClassInfoEv
	.quad	0
	.quad	0
	.quad	_ZNK8wxObject13CreateRefDataEv
	.quad	_ZNK8wxObject12CloneRefDataEPK12wxRefCounter
	.quad	_ZN12wxWindowBase14SetNextHandlerEP12wxEvtHandler
	.quad	_ZN12wxWindowBase18SetPreviousHandlerEP12wxEvtHandler
	.quad	_ZN12wxEvtHandler12ProcessEventER7wxEvent
	.quad	_ZN12wxEvtHandler10QueueEventEP7wxEvent
	.quad	_ZN12wxEvtHandler15AddPendingEventERK7wxEvent
	.quad	_ZN12wxEvtHandler16SearchEventTableER12wxEventTableR7wxEvent
	.quad	_ZN12wxWindowBase9TryBeforeER7wxEvent
	.quad	_ZN12wxWindowBase8TryAfterER7wxEvent
	.quad	_ZN12wxEvtHandler12TryValidatorER7wxEvent
	.quad	_ZN12wxEvtHandler9TryParentER7wxEvent
	.quad	_ZNK12wxWindowBase13GetEventTableEv
	.quad	_ZNK12wxWindowBase17GetEventHashTableEv
	.quad	_ZN12wxEvtHandler17DoSetClientObjectEP12wxClientData
	.quad	_ZNK12wxEvtHandler17DoGetClientObjectEv
	.quad	_ZN12wxEvtHandler15DoSetClientDataEPv
	.quad	_ZNK12wxEvtHandler15DoGetClientDataEv
	.quad	_ZN12wxWindowBase7DestroyEv
	.quad	_ZN8wxWindow8SetLabelERK8wxString
	.quad	_ZNK8wxWindow8GetLabelEv
	.quad	_ZN12wxWindowBase7SetNameERK8wxString
	.quad	_ZNK12wxWindowBase7GetNameEv
	.quad	_ZNK8wxWindow18GetLayoutDirectionEv
	.quad	_ZN8wxWindow18SetLayoutDirectionE17wxLayoutDirection
	.quad	_ZNK8wxWindow24AdjustForLayoutDirectionEiii
	.quad	_ZN8wxWindow5RaiseEv
	.quad	_ZN8wxWindow5LowerEv
	.quad	_ZNK12wxWindowBase19GetClientAreaOriginEv
	.quad	_ZNK12wxWindowBase18ClientToWindowSizeERK6wxSize
	.quad	_ZNK12wxWindowBase18WindowToClientSizeERK6wxSize
	.quad	_ZNK12wxWindowBase19GetEffectiveMinSizeEv
	.quad	_ZN12wxWindowBase3FitEv
	.quad	_ZN12wxWindowBase9FitInsideEv
	.quad	_ZN12wxWindowBase12SetSizeHintsEiiiiii
	.quad	_ZN12wxWindowBase19SetVirtualSizeHintsEiiii
	.quad	_ZN12wxWindowBase10SetMinSizeERK6wxSize
	.quad	_ZN12wxWindowBase10SetMaxSizeERK6wxSize
	.quad	_ZN12wxWindowBase16SetMinClientSizeERK6wxSize
	.quad	_ZN12wxWindowBase16SetMaxClientSizeERK6wxSize
	.quad	_ZNK12wxWindowBase10GetMinSizeEv
	.quad	_ZNK12wxWindowBase10GetMaxSizeEv
	.quad	_ZNK12wxWindowBase16GetMinClientSizeEv
	.quad	_ZNK12wxWindowBase16GetMaxClientSizeEv
	.quad	_ZN12wxWindowBase16DoSetVirtualSizeEii
	.quad	_ZNK12wxWindowBase16DoGetVirtualSizeEv
	.quad	_ZNK12wxWindowBase18GetBestVirtualSizeEv
	.quad	_ZNK12wxWindowBase21GetContentScaleFactorEv
	.quad	_ZNK12wxWindowBase19GetWindowBorderSizeEv
	.quad	_ZN12wxWindowBase20InformFirstDirectionEiii
	.quad	_ZN12wxWindowBase13SendSizeEventEi
	.quad	_ZN12wxWindowBase26BeginRepositioningChildrenEv
	.quad	_ZN12wxWindowBase24EndRepositioningChildrenEv
	.quad	_ZN8wxWindow4ShowEb
	.quad	_ZN12wxWindowBase14ShowWithEffectE12wxShowEffectj
	.quad	_ZN12wxWindowBase14HideWithEffectE12wxShowEffectj
	.quad	_ZN12wxWindowBase6EnableEb
	.quad	_ZNK8wxWindow7IsShownEv
	.quad	_ZNK12wxWindowBase15IsShownOnScreenEv
	.quad	_ZN12wxWindowBase18SetWindowStyleFlagEl
	.quad	_ZNK12wxWindowBase18GetWindowStyleFlagEv
	.quad	_ZNK8wxWindow10IsRetainedEv
	.quad	_ZN12wxWindowBase13SetExtraStyleEl
	.quad	_ZN12wxWindowBase9MakeModalEb
	.quad	_ZN12wxWindowBase15SetThemeEnabledEb
	.quad	_ZNK12wxWindowBase15GetThemeEnabledEv
	.quad	_ZN8wxWindow8SetFocusEv
	.quad	_ZN12wxWindowBase15SetFocusFromKbdEv
	.quad	_ZNK12wxWindowBase8HasFocusEv
	.quad	_ZNK12wxWindowBase12AcceptsFocusEv
	.quad	_ZNK12wxWindowBase23AcceptsFocusRecursivelyEv
	.quad	_ZNK12wxWindowBase24AcceptsFocusFromKeyboardEv
	.quad	_ZNK12wxWindowBase12CanBeFocusedEv
	.quad	_ZN8wxWindow11SetCanFocusEb
	.quad	_ZNK12wxWindowBase10IsTopLevelEv
	.quad	_ZN8wxWindow8ReparentEP12wxWindowBase
	.quad	_ZN8wxWindow8AddChildEP12wxWindowBase
	.quad	_ZN8wxWindow11RemoveChildEP12wxWindowBase
	.quad	_ZNK12wxWindowBase17IsClientAreaChildEPK8wxWindow
	.quad	_ZN12wxWindowBase12SetValidatorERK11wxValidator
	.quad	_ZN12wxWindowBase12GetValidatorEv
	.quad	_ZN12wxWindowBase8ValidateEv
	.quad	_ZN12wxWindowBase20TransferDataToWindowEv
	.quad	_ZN12wxWindowBase22TransferDataFromWindowEv
	.quad	_ZN12wxWindowBase10InitDialogEv
	.quad	_ZN12wxWindowBase19SetAcceleratorTableERK18wxAcceleratorTable
	.quad	_ZN8wxWindow11WarpPointerEii
	.quad	_ZNK12wxWindowBase10HasCaptureEv
	.quad	_ZN8wxWindow7RefreshEbPK6wxRect
	.quad	_ZN8wxWindow6UpdateEv
	.quad	_ZN8wxWindow15ClearBackgroundEv
	.quad	_ZN12wxWindowBase9PrepareDCER4wxDC
	.quad	_ZNK8wxWindow16IsDoubleBufferedEv
	.quad	_ZNK8wxWindow11DoIsExposedEii
	.quad	_ZNK8wxWindow11DoIsExposedEiiii
	.quad	_ZNK12wxWindowBase20GetDefaultAttributesEv
	.quad	_ZN8wxWindow19SetBackgroundColourERK8wxColour
	.quad	_ZN8wxWindow19SetForegroundColourERK8wxColour
	.quad	_ZN8wxWindow18SetBackgroundStyleE17wxBackgroundStyle
	.quad	_ZN12wxWindowBase24HasTransparentBackgroundEv
	.quad	_ZNK8wxWindow32IsTransparentBackgroundSupportedEP8wxString
	.quad	_ZN8wxWindow7SetFontERK6wxFont
	.quad	_ZN8wxWindow9SetCursorERK8wxCursor
	.quad	_ZNK8wxWindow13GetCharHeightEv
	.quad	_ZNK8wxWindow12GetCharWidthEv
	.quad	_ZN12wxWindowBase14UpdateWindowUIEl
	.quad	_ZN12wxWindowBase16DoUpdateWindowUIER15wxUpdateUIEvent
	.quad	_ZNK12wxWindowBase16HasMultiplePagesEv
	.quad	_ZNK12wxWindowBase9CanScrollEi
	.quad	_ZN8wxWindow12SetScrollbarEiiiib
	.quad	_ZN8wxWindow12SetScrollPosEiib
	.quad	_ZNK8wxWindow12GetScrollPosEi
	.quad	_ZNK8wxWindow14GetScrollThumbEi
	.quad	_ZNK8wxWindow14GetScrollRangeEi
	.quad	_ZN8wxWindow12ScrollWindowEiiPK6wxRect
	.quad	_ZN8wxWindow11ScrollLinesEi
	.quad	_ZN8wxWindow11ScrollPagesEi
	.quad	_ZN12wxWindowBase20AlwaysShowScrollbarsEbb
	.quad	_ZNK12wxWindowBase22IsScrollbarAlwaysShownEi
	.quad	_ZNK12wxWindowBase18GetHelpTextAtPointERK7wxPointN11wxHelpEvent6OriginE
	.quad	_ZN8wxWindow13SetDropTargetEP12wxDropTarget
	.quad	_ZNK12wxWindowBase13GetDropTargetEv
	.quad	_ZN12wxWindowBase15DragAcceptFilesEb
	.quad	_ZN12wxWindowBase18SetConstraintSizesEb
	.quad	_ZN12wxWindowBase12LayoutPhase1EPi
	.quad	_ZN12wxWindowBase12LayoutPhase2EPi
	.quad	_ZN12wxWindowBase7DoPhaseEi
	.quad	_ZN12wxWindowBase17SetSizeConstraintEiiii
	.quad	_ZN12wxWindowBase14MoveConstraintEii
	.quad	_ZNK12wxWindowBase17GetSizeConstraintEPiS0_
	.quad	_ZNK12wxWindowBase23GetClientSizeConstraintEPiS0_
	.quad	_ZNK12wxWindowBase21GetPositionConstraintEPiS0_
	.quad	_ZN12wxWindowBase6LayoutEv
	.quad	_ZN12wxWindowBase14SetTransparentEh
	.quad	_ZN12wxWindowBase17CanSetTransparentEv
	.quad	_ZN8wxWindow14OnInternalIdleEv
	.quad	_ZN12wxWindowBase14SendIdleEventsER11wxIdleEvent
	.quad	_ZNK8wxWindow9GetHandleEv
	.quad	_ZN12wxWindowBase15AssociateHandleEP10_GtkWidget
	.quad	_ZN12wxWindowBase16DissociateHandleEv
	.quad	_ZN12wxWindowBase17InheritAttributesEv
	.quad	_ZNK12wxWindowBase20ShouldInheritColoursEv
	.quad	_ZNK12wxWindowBase22CanBeOutsideClientAreaEv
	.quad	_ZNK12wxWindowBase19CanApplyThemeBorderEv
	.quad	_ZN12wxWindowBase31GetMainWindowOfCompositeControlEv
	.quad	_ZNK12wxWindowBase21IsTopNavigationDomainEv
	.quad	_ZN8wxWindow16DoMoveInTabOrderEPS_N12wxWindowBase11WindowOrderE
	.quad	_ZN8wxWindow12DoNavigateInEi
	.quad	_ZN8wxWindow8DoEnableEb
	.quad	_ZNK12wxWindowBase16GetDefaultBorderEv
	.quad	_ZNK12wxWindowBase26GetDefaultBorderForControlEv
	.quad	_ZN12wxWindowBase18SetInitialBestSizeERK6wxSize
	.quad	_ZNK8wxWindow15DoGetTextExtentERK8wxStringPiS3_S3_S3_PK6wxFont
	.quad	_ZNK8wxWindow16DoClientToScreenEPiS0_
	.quad	_ZNK8wxWindow16DoScreenToClientEPiS0_
	.quad	_ZNK12wxWindowBase9DoHitTestEii
	.quad	_ZN8wxWindow14DoCaptureMouseEv
	.quad	_ZN8wxWindow14DoReleaseMouseEv
	.quad	_ZNK8wxWindow13DoGetPositionEPiS0_
	.quad	_ZNK12wxWindowBase19DoGetScreenPositionEPiS0_
	.quad	_ZNK8wxWindow9DoGetSizeEPiS0_
	.quad	_ZNK8wxWindow15DoGetClientSizeEPiS0_
	.quad	_ZNK12wxWindowBase13DoGetBestSizeEv
	.quad	_ZNK12wxWindowBase19DoGetBestClientSizeEv
	.quad	_ZNK12wxWindowBase21DoGetBestClientHeightEi
	.quad	_ZNK12wxWindowBase20DoGetBestClientWidthEi
	.quad	_ZN8wxWindow9DoSetSizeEiiiii
	.quad	_ZN8wxWindow15DoSetClientSizeEii
	.quad	_ZN12wxWindowBase14DoSetSizeHintsEiiiiii
	.quad	_ZNK8wxWindow15DoGetBorderSizeEv
	.quad	_ZN8wxWindow12DoMoveWindowEiiii
	.quad	_ZN12wxWindowBase8DoCentreEi
	.quad	_ZN8wxWindow12DoSetToolTipEP9wxToolTip
	.quad	_ZN8wxWindow11DoPopupMenuEP6wxMenuii
	.quad	_ZNK12wxWindowBase27AdjustForParentClientOriginERiS0_i
	.quad	_ZN12wxWindowBase18DoSetWindowVariantE15wxWindowVariant
	.quad	_ZN8wxWindow8DoFreezeEv
	.quad	_ZN8wxWindow6DoThawEv
	.quad	_ZN8wxWindow16GetConnectWidgetEv
	.quad	_ZNK8wxWindow15GTKProcessEventER7wxEvent
	.quad	_ZN8wxWindow17GTKHandleRealizedEv
	.quad	_ZNK8wxWindow31GTKNeedsToFilterSameWindowFocusEv
	.quad	_ZNK8wxWindow22GTKWidgetNeedsMnemonicEv
	.quad	_ZN8wxWindow22GTKWidgetDoSetMnemonicEP10_GtkWidget
	.quad	_ZNK8wxWindow12GTKGetWindowER17wxArrayGdkWindows
	.quad	_ZN8wxWindow15GTKApplyToolTipEPKc
	.quad	_ZNK8wxWindow24GTKIsTransparentForMouseEv
	.quad	_ZNK8wxWindow19GTKIMFilterKeypressEP12_GdkEventKey
	.quad	_ZN8wxWindow18DoApplyWidgetStyleEP11_GtkRcStyle
	.quad	_ZNK8wxWindow14GTKNeedsParentEv
	.quad	_ZN8wxWindow11AddChildGTKEPS_
	.quad	__cxa_pure_virtual
	.weak	_ZTV20wxObjectEventFunctor
	.section	.data.rel.ro.local._ZTV20wxObjectEventFunctor,"awG",@progbits,_ZTV20wxObjectEventFunctor,comdat
	.align 8
	.type	_ZTV20wxObjectEventFunctor, @object
	.size	_ZTV20wxObjectEventFunctor, 64
_ZTV20wxObjectEventFunctor:
	.quad	0
	.quad	_ZTI20wxObjectEventFunctor
	.quad	_ZN20wxObjectEventFunctorD1Ev
	.quad	_ZN20wxObjectEventFunctorD0Ev
	.quad	_ZN20wxObjectEventFunctorclEP12wxEvtHandlerR7wxEvent
	.quad	_ZNK20wxObjectEventFunctor10IsMatchingERK14wxEventFunctor
	.quad	_ZNK20wxObjectEventFunctor13GetEvtHandlerEv
	.quad	_ZNK20wxObjectEventFunctor12GetEvtMethodEv
	.section	.text._ZN20wxObjectEventFunctorD2Ev,"axG",@progbits,_ZN20wxObjectEventFunctorD5Ev,comdat
	.align 2
	.weak	_ZN20wxObjectEventFunctorD2Ev
	.type	_ZN20wxObjectEventFunctorD2Ev, @function
_ZN20wxObjectEventFunctorD2Ev:
.LFB15459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV20wxObjectEventFunctor(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN14wxEventFunctorD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15459:
	.size	_ZN20wxObjectEventFunctorD2Ev, .-_ZN20wxObjectEventFunctorD2Ev
	.weak	_ZN20wxObjectEventFunctorD1Ev
	.set	_ZN20wxObjectEventFunctorD1Ev,_ZN20wxObjectEventFunctorD2Ev
	.section	.text._ZN20wxObjectEventFunctorD0Ev,"axG",@progbits,_ZN20wxObjectEventFunctorD5Ev,comdat
	.align 2
	.weak	_ZN20wxObjectEventFunctorD0Ev
	.type	_ZN20wxObjectEventFunctorD0Ev, @function
_ZN20wxObjectEventFunctorD0Ev:
.LFB15461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN20wxObjectEventFunctorD1Ev
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15461:
	.size	_ZN20wxObjectEventFunctorD0Ev, .-_ZN20wxObjectEventFunctorD0Ev
	.weak	_ZTV20wxThreadHelperThread
	.section	.data.rel.ro._ZTV20wxThreadHelperThread,"awG",@progbits,_ZTV20wxThreadHelperThread,comdat
	.align 8
	.type	_ZTV20wxThreadHelperThread, @object
	.size	_ZTV20wxThreadHelperThread, 72
_ZTV20wxThreadHelperThread:
	.quad	0
	.quad	_ZTI20wxThreadHelperThread
	.quad	_ZN8wxThread11TestDestroyEv
	.quad	_ZN20wxThreadHelperThreadD1Ev
	.quad	_ZN20wxThreadHelperThreadD0Ev
	.quad	_ZN20wxThreadHelperThread5EntryEv
	.quad	_ZN8wxThread8OnDeleteEv
	.quad	_ZN8wxThread6OnKillEv
	.quad	_ZN8wxThread6OnExitEv
	.section	.text._ZN20wxThreadHelperThreadD2Ev,"axG",@progbits,_ZN20wxThreadHelperThreadD5Ev,comdat
	.align 2
	.weak	_ZN20wxThreadHelperThreadD2Ev
	.type	_ZN20wxThreadHelperThreadD2Ev, @function
_ZN20wxThreadHelperThreadD2Ev:
.LFB15483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV20wxThreadHelperThread(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8wxThreadD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15483:
	.size	_ZN20wxThreadHelperThreadD2Ev, .-_ZN20wxThreadHelperThreadD2Ev
	.weak	_ZN20wxThreadHelperThreadD1Ev
	.set	_ZN20wxThreadHelperThreadD1Ev,_ZN20wxThreadHelperThreadD2Ev
	.section	.text._ZN20wxThreadHelperThreadD0Ev,"axG",@progbits,_ZN20wxThreadHelperThreadD5Ev,comdat
	.align 2
	.weak	_ZN20wxThreadHelperThreadD0Ev
	.type	_ZN20wxThreadHelperThreadD0Ev, @function
_ZN20wxThreadHelperThreadD0Ev:
.LFB15485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN20wxThreadHelperThreadD1Ev
	movq	-8(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15485:
	.size	_ZN20wxThreadHelperThreadD0Ev, .-_ZN20wxThreadHelperThreadD0Ev
	.weak	_ZTI5MyApp
	.section	.data.rel.ro._ZTI5MyApp,"awG",@progbits,_ZTI5MyApp,comdat
	.align 8
	.type	_ZTI5MyApp, @object
	.size	_ZTI5MyApp, 24
_ZTI5MyApp:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5MyApp
	.quad	_ZTI5wxApp
	.weak	_ZTS5MyApp
	.section	.rodata._ZTS5MyApp,"aG",@progbits,_ZTS5MyApp,comdat
	.type	_ZTS5MyApp, @object
	.size	_ZTS5MyApp, 7
_ZTS5MyApp:
	.string	"5MyApp"
	.weak	_ZTI10MainWindow
	.section	.data.rel.ro._ZTI10MainWindow,"awG",@progbits,_ZTI10MainWindow,comdat
	.align 8
	.type	_ZTI10MainWindow, @object
	.size	_ZTI10MainWindow, 24
_ZTI10MainWindow:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS10MainWindow
	.quad	_ZTI7wxFrame
	.weak	_ZTS10MainWindow
	.section	.rodata._ZTS10MainWindow,"aG",@progbits,_ZTS10MainWindow,comdat
	.align 8
	.type	_ZTS10MainWindow, @object
	.size	_ZTS10MainWindow, 13
_ZTS10MainWindow:
	.string	"10MainWindow"
	.weak	_ZTI21wxMDIClientWindowBase
	.section	.data.rel.ro._ZTI21wxMDIClientWindowBase,"awG",@progbits,_ZTI21wxMDIClientWindowBase,comdat
	.align 8
	.type	_ZTI21wxMDIClientWindowBase, @object
	.size	_ZTI21wxMDIClientWindowBase, 24
_ZTI21wxMDIClientWindowBase:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS21wxMDIClientWindowBase
	.quad	_ZTI8wxWindow
	.weak	_ZTS21wxMDIClientWindowBase
	.section	.rodata._ZTS21wxMDIClientWindowBase,"aG",@progbits,_ZTS21wxMDIClientWindowBase,comdat
	.align 16
	.type	_ZTS21wxMDIClientWindowBase, @object
	.size	_ZTS21wxMDIClientWindowBase, 24
_ZTS21wxMDIClientWindowBase:
	.string	"21wxMDIClientWindowBase"
	.weak	_ZTI20wxMDIParentFrameBase
	.section	.data.rel.ro._ZTI20wxMDIParentFrameBase,"awG",@progbits,_ZTI20wxMDIParentFrameBase,comdat
	.align 8
	.type	_ZTI20wxMDIParentFrameBase, @object
	.size	_ZTI20wxMDIParentFrameBase, 24
_ZTI20wxMDIParentFrameBase:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS20wxMDIParentFrameBase
	.quad	_ZTI7wxFrame
	.weak	_ZTS20wxMDIParentFrameBase
	.section	.rodata._ZTS20wxMDIParentFrameBase,"aG",@progbits,_ZTS20wxMDIParentFrameBase,comdat
	.align 16
	.type	_ZTS20wxMDIParentFrameBase, @object
	.size	_ZTS20wxMDIParentFrameBase, 23
_ZTS20wxMDIParentFrameBase:
	.string	"20wxMDIParentFrameBase"
	.weak	_ZTI20wxObjectEventFunctor
	.section	.data.rel.ro._ZTI20wxObjectEventFunctor,"awG",@progbits,_ZTI20wxObjectEventFunctor,comdat
	.align 8
	.type	_ZTI20wxObjectEventFunctor, @object
	.size	_ZTI20wxObjectEventFunctor, 24
_ZTI20wxObjectEventFunctor:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS20wxObjectEventFunctor
	.quad	_ZTI14wxEventFunctor
	.weak	_ZTS20wxObjectEventFunctor
	.section	.rodata._ZTS20wxObjectEventFunctor,"aG",@progbits,_ZTS20wxObjectEventFunctor,comdat
	.align 16
	.type	_ZTS20wxObjectEventFunctor, @object
	.size	_ZTS20wxObjectEventFunctor, 23
_ZTS20wxObjectEventFunctor:
	.string	"20wxObjectEventFunctor"
	.weak	_ZTI20wxThreadHelperThread
	.section	.data.rel.ro._ZTI20wxThreadHelperThread,"awG",@progbits,_ZTI20wxThreadHelperThread,comdat
	.align 8
	.type	_ZTI20wxThreadHelperThread, @object
	.size	_ZTI20wxThreadHelperThread, 24
_ZTI20wxThreadHelperThread:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS20wxThreadHelperThread
	.quad	_ZTI8wxThread
	.weak	_ZTS20wxThreadHelperThread
	.section	.rodata._ZTS20wxThreadHelperThread,"aG",@progbits,_ZTS20wxThreadHelperThread,comdat
	.align 16
	.type	_ZTS20wxThreadHelperThread, @object
	.size	_ZTS20wxThreadHelperThread, 23
_ZTS20wxThreadHelperThread:
	.string	"20wxThreadHelperThread"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB15490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L466
	cmpl	$65535, -8(%rbp)
	jne	.L466
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	leaq	_Z11wxCreateAppv(%rip), %rsi
	leaq	wxTheAppInitializer(%rip), %rdi
	call	_ZN16wxAppInitializerC1EPFP12wxAppConsolevE
.L466:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15490:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB15588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15588:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.type	_ZZN5MyApp6OnInitEvE12__FUNCTION__, @object
	.size	_ZZN5MyApp6OnInitEvE12__FUNCTION__, 7
_ZZN5MyApp6OnInitEvE12__FUNCTION__:
	.string	"OnInit"
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Gentoo 8.2.0 p1.3) 8.2.0"
	.section	.note.GNU-stack,"",@progbits

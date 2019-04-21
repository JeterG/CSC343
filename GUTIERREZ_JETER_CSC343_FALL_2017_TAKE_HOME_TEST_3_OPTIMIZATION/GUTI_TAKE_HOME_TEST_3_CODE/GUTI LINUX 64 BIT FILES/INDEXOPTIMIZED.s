	.file	"index.cpp"
	.text
	.globl	_Z20DotProductUsingIndexPiS_i
	.type	_Z20DotProductUsingIndexPiS_i, @function
_Z20DotProductUsingIndexPiS_i:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L4
	movl	-4(%rbp), %eax
	cltq
	#leaq	0(,%rax,4), %rdx		REDUNDANT STEP IGNORED
	leaq	0(,%rax,4), %rcx		#MADE FASTER
	movq	-24(%rbp), %rax
	addq	%rcx, %rax			#CHANGED IN ORDER TO USE MORE THAN ONE AT A TIME IN ORDER TO SAVE ENERGY
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	#leaq	0(,%rax,4), %rcx		MOVED TO LINE 26
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax

	imull	%edx, %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L3
.L4:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z20DotProductUsingIndexPiS_i, .-_Z20DotProductUsingIndexPiS_i
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

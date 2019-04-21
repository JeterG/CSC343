	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"index.cpp"
	.text
	.align	2
	.global	_Z20DotProductUsingIndexPiS_i
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z20DotProductUsingIndexPiS_i, %function
_Z20DotProductUsingIndexPiS_i:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r4, #0                @CHANGED REGISTER
	str	r4, [fp, #-12]        @CHANGED REGISTER
.L3:
	@ldr     r2, [fp, #-12]        @REDUNDANT
	ldr	r3, [fp, #-24]
	cmp	r4, r3                @CHANGED REGISTER
	bge	.L4
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #2
	ldr	r1, [fp, #-20]
	add	r2, r1, r2
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	@ldr     r3, [fp, #-12]       @REDUNDANT
	add	r4, r4, #1            @CHANGED REGISTER
	str	r4, [fp, #-12]        @CHANGED REGISTER
	b	.L3
.L4:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z20DotProductUsingIndexPiS_i, .-_Z20DotProductUsingIndexPiS_i
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits

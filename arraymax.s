	.text
	.p2align 4,,15
	.globl	arraymax
arraymax:
	movabsq $-9223372036854775808, %rax
	testq	%rsi, %rsi
	jle	.Ldone
.Lloop:
	movq    (%rdi,%rsi,8), %rcx
	cmpq	%rcx, %rax
	jge     .Lskip
	movq    %rcx, %rax
.Lskip:
	dec     %rsi
	jge	.Lloop
.Ldone:
	rep
	ret

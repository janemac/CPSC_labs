	.text
	.p2align 4,,15
	.globl	collatz
collatz:
	movq $2, %rsi;				#give %rsi the value 2
	movq %rdi, %rax
	divq %rsi;				#divide the given number by two
	movq $rdx, %r10;				#move the remainder into %r10
	movq $0, %r11

	cmpq %r10, %r11				
	jne ODD;
	ret

ODD:
	movq 1(%rdi, %rdi, 2), %rax
	ret

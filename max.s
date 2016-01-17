	.text
	.globl	max
max:
	cmpq    %rdi, %rsi	#compares the values of the two input registers
	jg      second			#If %rsi is greater than %rdi then jump to second
	movq    %rdi, %rax	#Move the value stored in %rdi into %rax
	ret									#return the value in %rax
second:
	movq    %rsi, %rax	#Move the value stored in %rsi into %rax
	ret									#return the value in %rax

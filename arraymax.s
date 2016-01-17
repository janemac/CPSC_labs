	.text
	.p2align 4,,15
	.globl	arraymax
arraymax:
	movabsq $-9223372036854775808, %rax			#give %rax an arbitrary starting value
	dec			%rsi														#decrement %rsi by one to account for the fact that the array index starts at 0

	testq	%rsi, %rsi												#Compare %rsi to 0
	jle	.Ldone															#if the value in %rsi is less than 0 jump to Ldone

.Lloop:
	movq    (%rdi,%rsi,8), %rcx						#value in %rdi + 8 multiplied by the value in %rsi, moved into %rcx
	cmpq	%rcx, %rax											#compare the value in %rcx and the value in %rax
	jge     .Lskip												#If %rcx if greater than or equal to the value in &rax, jump to Lskip
	movq    %rcx, %rax										#set the return value (%rax) to the value in %rcx
.Lskip:
	dec     %rsi													#decrement the value in %rsi by one
	jge	.Lloop														#if the value in %rsi is greater than or equal to zero jump to Lloop
.Ldone:
	rep																		#arbitrary repeat statement
	ret																		#return with the value in %rax

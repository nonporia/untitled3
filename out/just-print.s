.text
.globl main
.type main, @function
main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $4, %rsp
	movl    $0, -4(%rbp)
	call SEC0
	leave
	ret
SEC0:
	addl    $36, -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $-26, -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	ret

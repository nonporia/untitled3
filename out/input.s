.text
.globl main
.type main, @function
.input:
	.string "%d"
	.text
main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $4, %rsp
	movl    $0, -4(%rbp)
	subq    $4, %rsp
	movl    $0, -8(%rbp)
	call SEC0
	leave
	ret
SEC0:
	leaq    -4(%rbp), %rsi
	leaq    .input(%rip), %rdi
	movl    $0, %eax
	call    __isoc99_scanf@PLT
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	leaq    -8(%rbp), %rsi
	leaq    .input(%rip), %rdi
	movl    $0, %eax
	call    __isoc99_scanf@PLT
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	ret

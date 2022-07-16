.text
.globl main
.type main, @function
main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $4, %rsp
	movl    $0, -4(%rbp)
	subq    $4, %rsp
	movl    $0, -8(%rbp)
	subq    $4, %rsp
	movl    $0, -12(%rbp)
	call SEC0
	leave
	ret
SEC0:
	addl    $78, -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $110, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $10, -12(%rbp)
	movl    -12(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $-1, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -12(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $-1, -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	ret

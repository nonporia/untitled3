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
	subq    $4, %rsp
	movl    $0, -12(%rbp)
	call    SEC0
	leave
	ret
SEC0:
	addl    $10, -4(%rbp)
	call    LOOP1
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $2, -12(%rbp)
	movl    -12(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $5, -8(%rbp)
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
	movl    -12(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $-6, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	addl    $10, -4(%rbp)
	call    LOOP2
	addl    $-2, -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	ret
SEC1:
	addl    $6, -8(%rbp)
	addl    $3, -12(%rbp)
	addl    $-1, -4(%rbp)
	call    LOOP1
	ret
LOOP1:
	cmpl    $0, -4(%rbp)
	jg      SEC1
	ret
SEC2:
	addl    $-5, -8(%rbp)
	addl    $-1, -4(%rbp)
	call    LOOP2
	ret
LOOP2:
	cmpl    $0, -4(%rbp)
	jg      SEC2
	ret

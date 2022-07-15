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
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	incl    -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	incl    -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	incl    -8(%rbp)
	movl    -8(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
	incl    -12(%rbp)
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
	decl    -8(%rbp)
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
	decl    -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	ret

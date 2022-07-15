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
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	decl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	incl    -4(%rbp)
	movl    -4(%rbp), %edi
	call    putchar@PLT
	movl    $0, %eax
	ret

Symbol table level 0
 94460673192608        real  BASIC  basicdt   1          siz     8
 94460673192704     integer  BASIC  basicdt   0          siz     4
 94460673192800        char  BASIC  basicdt   2          siz     1
 94460673192896     boolean  BASIC  basicdt   3          siz     4
 94460673192992         exp  knd 5 0  typ 94460673193088  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673193280       trexp  knd 5 0  typ 94460673193376  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673193568         sin  knd 5 0  typ 94460673193664  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673193856         cos  knd 5 0  typ 94460673193952  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673194144       trsin  knd 5 0  typ 94460673194240  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673194432        sqrt  knd 5 0  typ 94460673194528  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673194720       round  knd 5 0  typ 94460673194816  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94460673195008      iround  knd 5 0  typ 94460673195104  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94460673195296         ord  knd 5 0  typ 94460673195392  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94460673195584         new  knd 5 0  typ 94460673195680  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94460673195872       trnew  knd 5 0  typ 94460673195968  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94460673196160       write  knd 5 0  typ 94460673196256  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94460673196448     writeln  knd 5 0  typ 94460673196544  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94460673196736      writef  knd 5 0  typ 94460673196832  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94460673197024    writelnf  knd 5 0  typ 94460673197120  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94460673197312      writei  knd 5 0  typ 94460673197408  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94460673197600    writelni  knd 5 0  typ 94460673197696  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94460673197888        read  knd 5 0  typ 94460673197984  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94460673198176      readln  knd 5 0  typ 94460673198272  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94460673198464         eof  knd 5 0  typ 94460673198560  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94460673224112           d  CONST  typ    REAL  val  6.250000e-02
 94460673224464           s  CONST  typ INTEGER  val  32
 94460673224816           h  CONST  typ INTEGER  val  34
 94460673225168           c  CONST  typ    REAL  val  6.283180e+00
 94460673225520         lim  CONST  typ INTEGER  val  32
 94460673226128           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94460673226224           y  VAR    1 typ    real  lvl  1  siz     8  off     8
 94460673226704           i  VAR    0 typ integer  lvl  1  siz     4  off    16
 94460673226800           n  VAR    0 typ integer  lvl  1  siz     4  off    20
yyparse result =        0
(program graph1 (progn output)
                (progn (progn (:= i 0)
                              (label 1)
                              (if (<= i 32)
                                  (progn (progn (:= x (* 6.250000e-02
                                                         (float i)))
                                                (:= y (float (* (funcall exp (- x))
                                                                (funcall sin (* 6.283180e+00
                                                                                x)))))
                                                (:= n (+ (funcall round (* 3.200000e+01
                                                                           y))
                                                         34))
                                                (progn (label 0)
                                                       (progn (funcall write ' ')
                                                              (:= n (- n 1)))
                                                       (if (= n 0)
                                                           (progn)
                                                           (goto 0)))
                                                (funcall writelni '*'))
                                         (:= i (+ i 1))
                                         (goto 1))))))
# ---------------- Beginning of Generated Code --------------------
        .file   "foo"
        .text
        .globl graph1
        .type   graph1, @function
graph1:
.LFB0:
	.cfi_startproc
	pushq	%rbp              # save base pointer on stack
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp        # move stack pointer to base pointer
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
        subq	$48, %rsp 	  # make space for this stack frame
	movq	%rbx, %r9        # save %rbx (callee-saved) in %r9
# ------------------------- begin Your code -----------------------------
	movl	$0,%eax         	#  0 -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
.L1:
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$32,%ecx         	#  32 -> %ecx
	cmpl	%ecx,%eax           	#  compare %eax - %ecx
	jle	.L3 			#  jump if     <=
	jmp	.L4 			#  jump 
.L3:
	movsd	.LC5(%rip),%xmm0   	#  0.062500 -> %xmm0
	movl	-32(%rbp),%eax     	#  i -> %eax
	cvtsi2sd	%eax,%xmm1    	#  float %eax -> %xmm1
	mulsd	%xmm1,%xmm0         	#  %xmm0 * %xmm1 -> %xmm0
	movsd	%xmm0,-48(%rbp)     	#  %xmm0 -> x
	movsd	-48(%rbp),%xmm1     	#  x -> %xmm1
	movsd	.LC666(%rip),%xmm2   	#  0.000000 -> %xmm2
	xorpd	%xmm2,%xmm1           	#  negate %xmm1
	call	exp@PLT          	#  exp()
	movsd	%xmm0,-8(%rbp)     	#  %xmm0 -> temp
	movsd	.LC6(%rip),%xmm0   	#  6.283180 -> %xmm0
	movsd	-48(%rbp),%xmm2     	#  x -> %xmm2
	mulsd	%xmm2,%xmm0         	#  %xmm0 * %xmm2 -> %xmm0
	call	sin@PLT          	#  sin()
	movsd	-8(%rbp),%xmm0     	#  temp -> %xmm0
	imull	%xmm0,%xmm0         	#  %xmm0 * %xmm0 -> %xmm0
	cvtsi2sd	%xmm0,%xmm0    	#  float %xmm0 -> %xmm0
	movsd	%xmm0,-40(%rbp)     	#  %xmm0 -> y
	movsd	.LC7(%rip),%xmm0   	#  32.000000 -> %xmm0
	movsd	-40(%rbp),%xmm1     	#  y -> %xmm1
	mulsd	%xmm1,%xmm0         	#  %xmm0 * %xmm1 -> %xmm0
	call	round@PLT          	#  round()
	movl	$34,%eax         	#  34 -> %eax
	addl	%eax,%xmm0         	#  %xmm0 + %eax -> %xmm0
	movl	%xmm0,-28(%rbp)     	#  %xmm0 -> n
.L0:
	leaq	.LC8(%rip),%rdi  	#  addr of literal .LC8
	call	write@PLT          	#  write()
	movl	-28(%rbp),%eax     	#  n -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	subl	%ecx,%eax         	#  %eax - %ecx -> %eax
	movl	%eax,-28(%rbp)     	#  %eax -> n
	movl	-28(%rbp),%eax     	#  n -> %eax
	movl	$0,%ecx         	#  0 -> %ecx
	cmpl	%ecx,%eax           	#  compare %eax - %ecx
	je	.L9 			#  jump if     ==
	jmp	.L0 			#  jump 
	jmp	.L10 			#  jump 
.L9:
.L10:
	leaq	.LC11(%rip),%rdi  	#  addr of literal .LC11
	call	writelni@PLT          	#  writelni()
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	addl	%ecx,%eax         	#  %eax + %ecx -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
	jmp	.L1 			#  jump 
.L4:
# ----------------------- begin Epilogue code ---------------------------
	movq	%r9, %rbx        # restore %rbx (callee-saved) from %r9
        leave
        ret
        .cfi_endproc
.LFE0:
        .size   graph1, .-graph1
# ----------------- end Epilogue; Literal data follows ------------------
        .section        .rodata
	.align 16
.LC666:                    # constant for floating negation
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align  4
.LC8:
	.string	" "
	.align  4
.LC11:
	.string	"*"
	.align  8
.LC5:
	.long	0   	#  0.062500
	.long	1068498944
	.align  8
.LC6:
	.long	0   	#  6.283180
	.long	1075388922
	.align  8
.LC7:
	.long	0   	#  32.000000
	.long	1077936128

        .ident  "CS 375 Compiler - Spring 2022"

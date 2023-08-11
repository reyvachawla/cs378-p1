Symbol table level 0
 94049656013472        real  BASIC  basicdt   1          siz     8
 94049656013568     integer  BASIC  basicdt   0          siz     4
 94049656013664        char  BASIC  basicdt   2          siz     1
 94049656013760     boolean  BASIC  basicdt   3          siz     4
 94049656013856         exp  knd 5 0  typ 94049656013952  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656014144       trexp  knd 5 0  typ 94049656014240  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656014432         sin  knd 5 0  typ 94049656014528  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656014720         cos  knd 5 0  typ 94049656014816  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656015008       trsin  knd 5 0  typ 94049656015104  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656015296        sqrt  knd 5 0  typ 94049656015392  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656015584       round  knd 5 0  typ 94049656015680  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94049656015872      iround  knd 5 0  typ 94049656015968  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94049656016160         ord  knd 5 0  typ 94049656016256  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94049656016448         new  knd 5 0  typ 94049656016544  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94049656016736       trnew  knd 5 0  typ 94049656016832  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94049656017024       write  knd 5 0  typ 94049656017120  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94049656017312     writeln  knd 5 0  typ 94049656017408  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94049656017600      writef  knd 5 0  typ 94049656017696  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94049656017888    writelnf  knd 5 0  typ 94049656017984  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94049656018176      writei  knd 5 0  typ 94049656018272  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94049656018464    writelni  knd 5 0  typ 94049656018560  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94049656018752        read  knd 5 0  typ 94049656018848  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94049656019040      readln  knd 5 0  typ 94049656019136  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94049656019328         eof  knd 5 0  typ 94049656019424  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94049656044976           d  CONST  typ    REAL  val  6.250000e-02
 94049656045328           s  CONST  typ INTEGER  val  32
 94049656045680           h  CONST  typ INTEGER  val  34
 94049656046032           c  CONST  typ    REAL  val  6.283180e+00
 94049656046384         lim  CONST  typ INTEGER  val  32
 94049656046992           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94049656047088           y  VAR    1 typ    real  lvl  1  siz     8  off     8
 94049656047568           i  VAR    0 typ integer  lvl  1  siz     4  off    16
 94049656047664           n  VAR    0 typ integer  lvl  1  siz     4  off    20
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

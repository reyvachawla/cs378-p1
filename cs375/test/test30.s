Symbol table level 0
 93830363288224        real  BASIC  basicdt   1          siz     8
 93830363288320     integer  BASIC  basicdt   0          siz     4
 93830363288416        char  BASIC  basicdt   2          siz     1
 93830363288512     boolean  BASIC  basicdt   3          siz     4
 93830363288608         exp  knd 5 0  typ 93830363288704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363288896       trexp  knd 5 0  typ 93830363288992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363289184         sin  knd 5 0  typ 93830363289280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363289472         cos  knd 5 0  typ 93830363289568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363289760       trsin  knd 5 0  typ 93830363289856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363290048        sqrt  knd 5 0  typ 93830363290144  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363290336       round  knd 5 0  typ 93830363290432  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93830363290624      iround  knd 5 0  typ 93830363290720  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93830363290912         ord  knd 5 0  typ 93830363291008  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93830363291200         new  knd 5 0  typ 93830363291296  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93830363291488       trnew  knd 5 0  typ 93830363291584  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93830363291776       write  knd 5 0  typ 93830363291872  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93830363292064     writeln  knd 5 0  typ 93830363292160  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93830363292352      writef  knd 5 0  typ 93830363292448  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93830363292640    writelnf  knd 5 0  typ 93830363292736  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93830363292928      writei  knd 5 0  typ 93830363293024  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93830363293216    writelni  knd 5 0  typ 93830363293312  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93830363293504        read  knd 5 0  typ 93830363293600  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93830363293792      readln  knd 5 0  typ 93830363293888  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93830363294080         eof  knd 5 0  typ 93830363294176  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93830363320400     complex  TYPE   typ 93830363320112  lvl  1  siz    16  off     0
(RECORD (re real)
        (im real))
 93830363321264         red  CONST  typ INTEGER  val  0
 93830363321424       white  CONST  typ INTEGER  val  1
 93830363321584        blue  CONST  typ INTEGER  val  2
 93830363321776       color  TYPE   typ 93830363321680  lvl  1  siz     4  off     0
  0 ..   2
 93830363322192      person  TYPE   typ 93830363324016  lvl  1  siz    48  off     0
(RECORD (age integer)
        (friend (^ person))
        (location (RECORD (re real)
                          (im real)))
        (favorite   0 ..   2)
        (salary real))
 93830363322384          pp  TYPE   typ 93830363322288  lvl  1  siz     8  off     0
(^ person)
 93830363324976        john  VAR    4 typ 93830363322288  lvl  1  siz     8  off     0
(^ person)
 93830363325328         sum  VAR    0 typ integer  lvl  1  siz     4  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))))
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
        subq	$32, %rsp 	  # make space for this stack frame
	movq	%rbx, %r9        # save %rbx (callee-saved) in %r9
# ------------------------- begin Your code -----------------------------
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	addsd	%ecx,%xmm0         	#  %xmm0 + %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	addsd	%ecx,%xmm0         	#  %xmm0 + %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	addsd	%ecx,%xmm0         	#  %xmm0 + %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	addsd	%ecx,%xmm0         	#  %xmm0 + %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	addsd	%ecx,%xmm0         	#  %xmm0 + %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	addsd	%ecx,%xmm0         	#  %xmm0 + %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
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

        .ident  "CS 375 Compiler - Spring 2022"

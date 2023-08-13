Symbol table level 0
 94570008396448        real  BASIC  basicdt   1          siz     8
 94570008396544     integer  BASIC  basicdt   0          siz     4
 94570008396640        char  BASIC  basicdt   2          siz     1
 94570008396736     boolean  BASIC  basicdt   3          siz     4
 94570008396832         exp  knd 5 0  typ 94570008396928  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008397120       trexp  knd 5 0  typ 94570008397216  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008397408         sin  knd 5 0  typ 94570008397504  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008397696         cos  knd 5 0  typ 94570008397792  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008397984       trsin  knd 5 0  typ 94570008398080  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008398272        sqrt  knd 5 0  typ 94570008398368  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008398560       round  knd 5 0  typ 94570008398656  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94570008398848      iround  knd 5 0  typ 94570008398944  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94570008399136         ord  knd 5 0  typ 94570008399232  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94570008399424         new  knd 5 0  typ 94570008399520  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94570008399712       trnew  knd 5 0  typ 94570008399808  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94570008400000       write  knd 5 0  typ 94570008400096  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94570008400288     writeln  knd 5 0  typ 94570008400384  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94570008400576      writef  knd 5 0  typ 94570008400672  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94570008400864    writelnf  knd 5 0  typ 94570008400960  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94570008401152      writei  knd 5 0  typ 94570008401248  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94570008401440    writelni  knd 5 0  typ 94570008401536  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94570008401728        read  knd 5 0  typ 94570008401824  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94570008402016      readln  knd 5 0  typ 94570008402112  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94570008402304         eof  knd 5 0  typ 94570008402400  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94570008428624     complex  TYPE   typ 94570008428336  lvl  1  siz    16  off     0
(RECORD (re real)
        (im real))
 94570008429488         red  CONST  typ INTEGER  val  0
 94570008429648       white  CONST  typ INTEGER  val  1
 94570008429808        blue  CONST  typ INTEGER  val  2
 94570008430000       color  TYPE   typ 94570008429904  lvl  1  siz     4  off     0
  0 ..   2
 94570008430416      person  TYPE   typ 94570008432240  lvl  1  siz    48  off     0
(RECORD (age integer)
        (friend (^ person))
        (location (RECORD (re real)
                          (im real)))
        (favorite   0 ..   2)
        (salary real))
 94570008430608          pp  TYPE   typ 94570008430512  lvl  1  siz     8  off     0
(^ person)
 94570008433200        john  VAR    4 typ 94570008430512  lvl  1  siz     8  off     0
(^ person)
 94570008433552         sum  VAR    0 typ integer  lvl  1  siz     4  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= sum (aref (^ john)
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

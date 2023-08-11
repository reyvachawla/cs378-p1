Symbol table level 0
 94576551793312        real  BASIC  basicdt   1          siz     8
 94576551793408     integer  BASIC  basicdt   0          siz     4
 94576551793504        char  BASIC  basicdt   2          siz     1
 94576551793600     boolean  BASIC  basicdt   3          siz     4
 94576551793696         exp  knd 5 0  typ 94576551793792  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551793984       trexp  knd 5 0  typ 94576551794080  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551794272         sin  knd 5 0  typ 94576551794368  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551794560         cos  knd 5 0  typ 94576551794656  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551794848       trsin  knd 5 0  typ 94576551794944  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551795136        sqrt  knd 5 0  typ 94576551795232  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551795424       round  knd 5 0  typ 94576551795520  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94576551795712      iround  knd 5 0  typ 94576551795808  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94576551796000         ord  knd 5 0  typ 94576551796096  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94576551796288         new  knd 5 0  typ 94576551796384  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94576551796576       trnew  knd 5 0  typ 94576551796672  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94576551796864       write  knd 5 0  typ 94576551796960  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94576551797152     writeln  knd 5 0  typ 94576551797248  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94576551797440      writef  knd 5 0  typ 94576551797536  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94576551797728    writelnf  knd 5 0  typ 94576551797824  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94576551798016      writei  knd 5 0  typ 94576551798112  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94576551798304    writelni  knd 5 0  typ 94576551798400  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94576551798592        read  knd 5 0  typ 94576551798688  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94576551798880      readln  knd 5 0  typ 94576551798976  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94576551799168         eof  knd 5 0  typ 94576551799264  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94576551825488     complex  TYPE   typ 94576551825200  lvl  1  siz    16  off     0
(RECORD (re real)
        (im real))
 94576551826352         red  CONST  typ INTEGER  val  0
 94576551826512       white  CONST  typ INTEGER  val  1
 94576551826672        blue  CONST  typ INTEGER  val  2
 94576551826864       color  TYPE   typ 94576551826768  lvl  1  siz     4  off     0
  0 ..   2
 94576551827280      person  TYPE   typ 94576551829104  lvl  1  siz    48  off     0
(RECORD (age integer)
        (friend (^ person))
        (location (RECORD (re real)
                          (im real)))
        (favorite   0 ..   2)
        (salary real))
 94576551827472          pp  TYPE   typ 94576551827376  lvl  1  siz     8  off     0
(^ person)
 94576551830064        john  VAR    4 typ 94576551827376  lvl  1  siz     8  off     0
(^ person)
 94576551830416         sum  VAR    0 typ integer  lvl  1  siz     4  off     8
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
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
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

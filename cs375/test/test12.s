Symbol table level 0
 94783607947936        real  BASIC  basicdt   1          siz     8
 94783607948032     integer  BASIC  basicdt   0          siz     4
 94783607948128        char  BASIC  basicdt   2          siz     1
 94783607948224     boolean  BASIC  basicdt   3          siz     4
 94783607948320         exp  knd 5 0  typ 94783607948416  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607948608       trexp  knd 5 0  typ 94783607948704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607948896         sin  knd 5 0  typ 94783607948992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607949184         cos  knd 5 0  typ 94783607949280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607949472       trsin  knd 5 0  typ 94783607949568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607949760        sqrt  knd 5 0  typ 94783607949856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607950048       round  knd 5 0  typ 94783607950144  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94783607950336      iround  knd 5 0  typ 94783607950432  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94783607950624         ord  knd 5 0  typ 94783607950720  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94783607950912         new  knd 5 0  typ 94783607951008  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94783607951200       trnew  knd 5 0  typ 94783607951296  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94783607951488       write  knd 5 0  typ 94783607951584  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94783607951776     writeln  knd 5 0  typ 94783607951872  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94783607952064      writef  knd 5 0  typ 94783607952160  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94783607952352    writelnf  knd 5 0  typ 94783607952448  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94783607952640      writei  knd 5 0  typ 94783607952736  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94783607952928    writelni  knd 5 0  typ 94783607953024  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94783607953216        read  knd 5 0  typ 94783607953312  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94783607953504      readln  knd 5 0  typ 94783607953600  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94783607953792         eof  knd 5 0  typ 94783607953888  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94783607979632           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94783607979728           y  VAR    1 typ    real  lvl  1  siz     8  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (float (- y)))))
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
	movsd	-24(%rbp),%xmm1     	#  y -> %xmm1
	movsd	.LC666(%rip),%xmm2   	#  0.000000 -> %xmm2
	xorpd	%xmm2,%xmm1           	#  negate %xmm1
	cvtsi2sd	%xmm2,%xmm0    	#  float %xmm2 -> %xmm0
	movsd	%xmm0,-32(%rbp)     	#  %xmm0 -> x
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

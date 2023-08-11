Symbol table level 0
 94393147646624        real  BASIC  basicdt   1          siz     8
 94393147646720     integer  BASIC  basicdt   0          siz     4
 94393147646816        char  BASIC  basicdt   2          siz     1
 94393147646912     boolean  BASIC  basicdt   3          siz     4
 94393147647008         exp  knd 5 0  typ 94393147647104  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147647296       trexp  knd 5 0  typ 94393147647392  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147647584         sin  knd 5 0  typ 94393147647680  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147647872         cos  knd 5 0  typ 94393147647968  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147648160       trsin  knd 5 0  typ 94393147648256  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147648448        sqrt  knd 5 0  typ 94393147648544  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147648736       round  knd 5 0  typ 94393147648832  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94393147649024      iround  knd 5 0  typ 94393147649120  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94393147649312         ord  knd 5 0  typ 94393147649408  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94393147649600         new  knd 5 0  typ 94393147649696  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94393147649888       trnew  knd 5 0  typ 94393147649984  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94393147650176       write  knd 5 0  typ 94393147650272  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94393147650464     writeln  knd 5 0  typ 94393147650560  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94393147650752      writef  knd 5 0  typ 94393147650848  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94393147651040    writelnf  knd 5 0  typ 94393147651136  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94393147651328      writei  knd 5 0  typ 94393147651424  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94393147651616    writelni  knd 5 0  typ 94393147651712  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94393147651904        read  knd 5 0  typ 94393147652000  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94393147652192      readln  knd 5 0  typ 94393147652288  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94393147652480         eof  knd 5 0  typ 94393147652576  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94393147678192           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (- x 4.500000e+00))))
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
	movsd	-32(%rbp),%xmm0     	#  x -> %xmm0
	movsd	.LC1(%rip),%xmm1   	#  4.500000 -> %xmm1
	subsd	%xmm1,%xmm0         	#  %xmm0 - %xmm1 -> %xmm0
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
	.align  8
.LC1:
	.long	0   	#  4.500000
	.long	1074921472

        .ident  "CS 375 Compiler - Spring 2022"

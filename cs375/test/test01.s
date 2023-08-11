Symbol table level 0
 93850272895648        real  BASIC  basicdt   1          siz     8
 93850272895744     integer  BASIC  basicdt   0          siz     4
 93850272895840        char  BASIC  basicdt   2          siz     1
 93850272895936     boolean  BASIC  basicdt   3          siz     4
 93850272896032         exp  knd 5 0  typ 93850272896128  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272896320       trexp  knd 5 0  typ 93850272896416  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272896608         sin  knd 5 0  typ 93850272896704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272896896         cos  knd 5 0  typ 93850272896992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272897184       trsin  knd 5 0  typ 93850272897280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272897472        sqrt  knd 5 0  typ 93850272897568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272897760       round  knd 5 0  typ 93850272897856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93850272898048      iround  knd 5 0  typ 93850272898144  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93850272898336         ord  knd 5 0  typ 93850272898432  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93850272898624         new  knd 5 0  typ 93850272898720  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93850272898912       trnew  knd 5 0  typ 93850272899008  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93850272899200       write  knd 5 0  typ 93850272899296  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93850272899488     writeln  knd 5 0  typ 93850272899584  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93850272899776      writef  knd 5 0  typ 93850272899872  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93850272900064    writelnf  knd 5 0  typ 93850272900160  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93850272900352      writei  knd 5 0  typ 93850272900448  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93850272900640    writelni  knd 5 0  typ 93850272900736  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93850272900928        read  knd 5 0  typ 93850272901024  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93850272901216      readln  knd 5 0  typ 93850272901312  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93850272901504         eof  knd 5 0  typ 93850272901600  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93850272927216           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x 4.500000e+00)))
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
	movsd	.LC1(%rip),%xmm0   	#  4.500000 -> %xmm0
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

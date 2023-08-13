Symbol table level 0
 94580921365152        real  BASIC  basicdt   1          siz     8
 94580921365248     integer  BASIC  basicdt   0          siz     4
 94580921365344        char  BASIC  basicdt   2          siz     1
 94580921365440     boolean  BASIC  basicdt   3          siz     4
 94580921365536         exp  knd 5 0  typ 94580921365632  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921365824       trexp  knd 5 0  typ 94580921365920  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921366112         sin  knd 5 0  typ 94580921366208  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921366400         cos  knd 5 0  typ 94580921366496  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921366688       trsin  knd 5 0  typ 94580921366784  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921366976        sqrt  knd 5 0  typ 94580921367072  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921367264       round  knd 5 0  typ 94580921367360  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94580921367552      iround  knd 5 0  typ 94580921367648  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94580921367840         ord  knd 5 0  typ 94580921367936  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94580921368128         new  knd 5 0  typ 94580921368224  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94580921368416       trnew  knd 5 0  typ 94580921368512  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94580921368704       write  knd 5 0  typ 94580921368800  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94580921368992     writeln  knd 5 0  typ 94580921369088  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94580921369280      writef  knd 5 0  typ 94580921369376  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94580921369568    writelnf  knd 5 0  typ 94580921369664  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94580921369856      writei  knd 5 0  typ 94580921369952  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94580921370144    writelni  knd 5 0  typ 94580921370240  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94580921370432        read  knd 5 0  typ 94580921370528  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94580921370720      readln  knd 5 0  typ 94580921370816  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94580921371008         eof  knd 5 0  typ 94580921371104  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94580921396720           x  VAR    1 typ    real  lvl  1  siz     8  off     0
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

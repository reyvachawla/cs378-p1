Symbol table level 0
 94824842793632        real  BASIC  basicdt   1          siz     8
 94824842793728     integer  BASIC  basicdt   0          siz     4
 94824842793824        char  BASIC  basicdt   2          siz     1
 94824842793920     boolean  BASIC  basicdt   3          siz     4
 94824842794016         exp  knd 5 0  typ 94824842794112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842794304       trexp  knd 5 0  typ 94824842794400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842794592         sin  knd 5 0  typ 94824842794688  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842794880         cos  knd 5 0  typ 94824842794976  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842795168       trsin  knd 5 0  typ 94824842795264  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842795456        sqrt  knd 5 0  typ 94824842795552  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842795744       round  knd 5 0  typ 94824842795840  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94824842796032      iround  knd 5 0  typ 94824842796128  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94824842796320         ord  knd 5 0  typ 94824842796416  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94824842796608         new  knd 5 0  typ 94824842796704  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94824842796896       trnew  knd 5 0  typ 94824842796992  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94824842797184       write  knd 5 0  typ 94824842797280  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94824842797472     writeln  knd 5 0  typ 94824842797568  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94824842797760      writef  knd 5 0  typ 94824842797856  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94824842798048    writelnf  knd 5 0  typ 94824842798144  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94824842798336      writei  knd 5 0  typ 94824842798432  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94824842798624    writelni  knd 5 0  typ 94824842798720  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94824842798912        read  knd 5 0  typ 94824842799008  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94824842799200      readln  knd 5 0  typ 94824842799296  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94824842799488         eof  knd 5 0  typ 94824842799584  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94824842825200           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (+ x 4.500000e+00))))
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
	addsd	%xmm1,%xmm0         	#  %xmm0 + %xmm1 -> %xmm0
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

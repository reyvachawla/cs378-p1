Symbol table level 0
 94006698025632        real  BASIC  basicdt   1          siz     8
 94006698025728     integer  BASIC  basicdt   0          siz     4
 94006698025824        char  BASIC  basicdt   2          siz     1
 94006698025920     boolean  BASIC  basicdt   3          siz     4
 94006698026016         exp  knd 5 0  typ 94006698026112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698026304       trexp  knd 5 0  typ 94006698026400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698026592         sin  knd 5 0  typ 94006698026688  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698026880         cos  knd 5 0  typ 94006698026976  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698027168       trsin  knd 5 0  typ 94006698027264  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698027456        sqrt  knd 5 0  typ 94006698027552  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698027744       round  knd 5 0  typ 94006698027840  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94006698028032      iround  knd 5 0  typ 94006698028128  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94006698028320         ord  knd 5 0  typ 94006698028416  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94006698028608         new  knd 5 0  typ 94006698028704  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94006698028896       trnew  knd 5 0  typ 94006698028992  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94006698029184       write  knd 5 0  typ 94006698029280  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94006698029472     writeln  knd 5 0  typ 94006698029568  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94006698029760      writef  knd 5 0  typ 94006698029856  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94006698030048    writelnf  knd 5 0  typ 94006698030144  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94006698030336      writei  knd 5 0  typ 94006698030432  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94006698030624    writelni  knd 5 0  typ 94006698030720  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94006698030912        read  knd 5 0  typ 94006698031008  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94006698031200      readln  knd 5 0  typ 94006698031296  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94006698031488         eof  knd 5 0  typ 94006698031584  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94006698057200           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94006698057552           n  VAR    0 typ integer  lvl  1  siz     4  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= n (funcall iround x))))
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
	call	iround@PLT          	#  iround()
	movl	%eax,-24(%rbp)     	#  %eax -> n
# ----------------------- begin Epilogue code ---------------------------
	movq	%r9, %rbx        # restore %rbx (callee-saved) from %r9
        leave
        ret
        .cfi_endproc
.LFE0:
        .size   graph1, .-graph1
# ----------------- end Epilogue; Literal data follows ------------------
        .section        .rodata

        .ident  "CS 375 Compiler - Spring 2022"

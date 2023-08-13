Symbol table level 0
 94815364735648        real  BASIC  basicdt   1          siz     8
 94815364735744     integer  BASIC  basicdt   0          siz     4
 94815364735840        char  BASIC  basicdt   2          siz     1
 94815364735936     boolean  BASIC  basicdt   3          siz     4
 94815364736032         exp  knd 5 0  typ 94815364736128  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364736320       trexp  knd 5 0  typ 94815364736416  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364736608         sin  knd 5 0  typ 94815364736704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364736896         cos  knd 5 0  typ 94815364736992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364737184       trsin  knd 5 0  typ 94815364737280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364737472        sqrt  knd 5 0  typ 94815364737568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364737760       round  knd 5 0  typ 94815364737856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94815364738048      iround  knd 5 0  typ 94815364738144  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94815364738336         ord  knd 5 0  typ 94815364738432  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94815364738624         new  knd 5 0  typ 94815364738720  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94815364738912       trnew  knd 5 0  typ 94815364739008  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94815364739200       write  knd 5 0  typ 94815364739296  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94815364739488     writeln  knd 5 0  typ 94815364739584  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94815364739776      writef  knd 5 0  typ 94815364739872  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94815364740064    writelnf  knd 5 0  typ 94815364740160  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94815364740352      writei  knd 5 0  typ 94815364740448  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94815364740640    writelni  knd 5 0  typ 94815364740736  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94815364740928        read  knd 5 0  typ 94815364741024  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94815364741216      readln  knd 5 0  typ 94815364741312  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94815364741504         eof  knd 5 0  typ 94815364741600  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94815364767344           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94815364767440           y  VAR    1 typ    real  lvl  1  siz     8  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= y (float (funcall exp x)))))
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
	movsd	-32(%rbp),%xmm1     	#  x -> %xmm1
	call	exp@PLT          	#  exp()
	cvtsi2sd	%xmm0,%xmm0    	#  float %xmm0 -> %xmm0
	movsd	%xmm0,-24(%rbp)     	#  %xmm0 -> y
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

Symbol table level 0
 94030124671648        real  BASIC  basicdt   1          siz     8
 94030124671744     integer  BASIC  basicdt   0          siz     4
 94030124671840        char  BASIC  basicdt   2          siz     1
 94030124671936     boolean  BASIC  basicdt   3          siz     4
 94030124672032         exp  knd 5 0  typ 94030124672128  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124672320       trexp  knd 5 0  typ 94030124672416  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124672608         sin  knd 5 0  typ 94030124672704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124672896         cos  knd 5 0  typ 94030124672992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124673184       trsin  knd 5 0  typ 94030124673280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124673472        sqrt  knd 5 0  typ 94030124673568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124673760       round  knd 5 0  typ 94030124673856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94030124674048      iround  knd 5 0  typ 94030124674144  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94030124674336         ord  knd 5 0  typ 94030124674432  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94030124674624         new  knd 5 0  typ 94030124674720  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94030124674912       trnew  knd 5 0  typ 94030124675008  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94030124675200       write  knd 5 0  typ 94030124675296  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94030124675488     writeln  knd 5 0  typ 94030124675584  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94030124675776      writef  knd 5 0  typ 94030124675872  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94030124676064    writelnf  knd 5 0  typ 94030124676160  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94030124676352      writei  knd 5 0  typ 94030124676448  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94030124676640    writelni  knd 5 0  typ 94030124676736  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94030124676928        read  knd 5 0  typ 94030124677024  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94030124677216      readln  knd 5 0  typ 94030124677312  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94030124677504         eof  knd 5 0  typ 94030124677600  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94030124703344           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94030124703440           y  VAR    1 typ    real  lvl  1  siz     8  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= y (float (* (funcall exp x)
                                       (funcall sin x))))))
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
	movsd	%xmm0,-8(%rbp)     	#  %xmm0 -> temp
	movsd	-32(%rbp),%xmm0     	#  x -> %xmm0
	call	sin@PLT          	#  sin()
	movsd	-8(%rbp),%xmm0     	#  temp -> %xmm0
	imull	%xmm0,%xmm0         	#  %xmm0 * %xmm0 -> %xmm0
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

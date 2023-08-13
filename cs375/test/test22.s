Symbol table level 0
 94263145419424        real  BASIC  basicdt   1          siz     8
 94263145419520     integer  BASIC  basicdt   0          siz     4
 94263145419616        char  BASIC  basicdt   2          siz     1
 94263145419712     boolean  BASIC  basicdt   3          siz     4
 94263145419808         exp  knd 5 0  typ 94263145419904  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145420096       trexp  knd 5 0  typ 94263145420192  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145420384         sin  knd 5 0  typ 94263145420480  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145420672         cos  knd 5 0  typ 94263145420768  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145420960       trsin  knd 5 0  typ 94263145421056  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145421248        sqrt  knd 5 0  typ 94263145421344  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145421536       round  knd 5 0  typ 94263145421632  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94263145421824      iround  knd 5 0  typ 94263145421920  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94263145422112         ord  knd 5 0  typ 94263145422208  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94263145422400         new  knd 5 0  typ 94263145422496  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94263145422688       trnew  knd 5 0  typ 94263145422784  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94263145422976       write  knd 5 0  typ 94263145423072  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94263145423264     writeln  knd 5 0  typ 94263145423360  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94263145423552      writef  knd 5 0  typ 94263145423648  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94263145423840    writelnf  knd 5 0  typ 94263145423936  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94263145424128      writei  knd 5 0  typ 94263145424224  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94263145424416    writelni  knd 5 0  typ 94263145424512  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94263145424704        read  knd 5 0  typ 94263145424800  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94263145424992      readln  knd 5 0  typ 94263145425088  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94263145425280         eof  knd 5 0  typ 94263145425376  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94263145451120           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94263145451216           y  VAR    1 typ    real  lvl  1  siz     8  off     8
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

Symbol table level 0
 94389925331616        real  BASIC  basicdt   1          siz     8
 94389925331712     integer  BASIC  basicdt   0          siz     4
 94389925331808        char  BASIC  basicdt   2          siz     1
 94389925331904     boolean  BASIC  basicdt   3          siz     4
 94389925332000         exp  knd 5 0  typ 94389925332096  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925332288       trexp  knd 5 0  typ 94389925332384  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925332576         sin  knd 5 0  typ 94389925332672  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925332864         cos  knd 5 0  typ 94389925332960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925333152       trsin  knd 5 0  typ 94389925333248  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925333440        sqrt  knd 5 0  typ 94389925333536  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925333728       round  knd 5 0  typ 94389925333824  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94389925334016      iround  knd 5 0  typ 94389925334112  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94389925334304         ord  knd 5 0  typ 94389925334400  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94389925334592         new  knd 5 0  typ 94389925334688  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94389925334880       trnew  knd 5 0  typ 94389925334976  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94389925335168       write  knd 5 0  typ 94389925335264  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94389925335456     writeln  knd 5 0  typ 94389925335552  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94389925335744      writef  knd 5 0  typ 94389925335840  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94389925336032    writelnf  knd 5 0  typ 94389925336128  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94389925336320      writei  knd 5 0  typ 94389925336416  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94389925336608    writelni  knd 5 0  typ 94389925336704  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94389925336896        read  knd 5 0  typ 94389925336992  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94389925337184      readln  knd 5 0  typ 94389925337280  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94389925337472         eof  knd 5 0  typ 94389925337568  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94389925363312           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94389925363408           y  VAR    1 typ    real  lvl  1  siz     8  off     8
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

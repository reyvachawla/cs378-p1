Symbol table level 0
 94223507899040        real  BASIC  basicdt   1          siz     8
 94223507899136     integer  BASIC  basicdt   0          siz     4
 94223507899232        char  BASIC  basicdt   2          siz     1
 94223507899328     boolean  BASIC  basicdt   3          siz     4
 94223507899424         exp  knd 5 0  typ 94223507899520  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507899712       trexp  knd 5 0  typ 94223507899808  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507900000         sin  knd 5 0  typ 94223507900096  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507900288         cos  knd 5 0  typ 94223507900384  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507900576       trsin  knd 5 0  typ 94223507900672  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507900864        sqrt  knd 5 0  typ 94223507900960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507901152       round  knd 5 0  typ 94223507901248  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94223507901440      iround  knd 5 0  typ 94223507901536  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94223507901728         ord  knd 5 0  typ 94223507901824  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94223507902016         new  knd 5 0  typ 94223507902112  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94223507902304       trnew  knd 5 0  typ 94223507902400  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94223507902592       write  knd 5 0  typ 94223507902688  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94223507902880     writeln  knd 5 0  typ 94223507902976  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94223507903168      writef  knd 5 0  typ 94223507903264  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94223507903456    writelnf  knd 5 0  typ 94223507903552  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94223507903744      writei  knd 5 0  typ 94223507903840  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94223507904032    writelni  knd 5 0  typ 94223507904128  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94223507904320        read  knd 5 0  typ 94223507904416  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94223507904608      readln  knd 5 0  typ 94223507904704  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94223507904896         eof  knd 5 0  typ 94223507904992  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94223507930608           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94223507930960           i  VAR    0 typ integer  lvl  1  siz     4  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (float i))))
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
	movl	-24(%rbp),%eax     	#  i -> %eax
	cvtsi2sd	%eax,%xmm0    	#  float %eax -> %xmm0
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

        .ident  "CS 375 Compiler - Spring 2022"

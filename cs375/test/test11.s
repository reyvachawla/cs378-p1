Symbol table level 0
 94571954205344        real  BASIC  basicdt   1          siz     8
 94571954205440     integer  BASIC  basicdt   0          siz     4
 94571954205536        char  BASIC  basicdt   2          siz     1
 94571954205632     boolean  BASIC  basicdt   3          siz     4
 94571954205728         exp  knd 5 0  typ 94571954205824  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954206016       trexp  knd 5 0  typ 94571954206112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954206304         sin  knd 5 0  typ 94571954206400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954206592         cos  knd 5 0  typ 94571954206688  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954206880       trsin  knd 5 0  typ 94571954206976  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954207168        sqrt  knd 5 0  typ 94571954207264  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954207456       round  knd 5 0  typ 94571954207552  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94571954207744      iround  knd 5 0  typ 94571954207840  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94571954208032         ord  knd 5 0  typ 94571954208128  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94571954208320         new  knd 5 0  typ 94571954208416  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94571954208608       trnew  knd 5 0  typ 94571954208704  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94571954208896       write  knd 5 0  typ 94571954208992  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94571954209184     writeln  knd 5 0  typ 94571954209280  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94571954209472      writef  knd 5 0  typ 94571954209568  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94571954209760    writelnf  knd 5 0  typ 94571954209856  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94571954210048      writei  knd 5 0  typ 94571954210144  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94571954210336    writelni  knd 5 0  typ 94571954210432  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94571954210624        read  knd 5 0  typ 94571954210720  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94571954210912      readln  knd 5 0  typ 94571954211008  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94571954211200         eof  knd 5 0  typ 94571954211296  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94571954236912           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94571954237264           i  VAR    0 typ integer  lvl  1  siz     4  off     8
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

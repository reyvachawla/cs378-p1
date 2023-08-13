Symbol table level 0
 93851323433632        real  BASIC  basicdt   1          siz     8
 93851323433728     integer  BASIC  basicdt   0          siz     4
 93851323433824        char  BASIC  basicdt   2          siz     1
 93851323433920     boolean  BASIC  basicdt   3          siz     4
 93851323434016         exp  knd 5 0  typ 93851323434112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323434304       trexp  knd 5 0  typ 93851323434400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323434592         sin  knd 5 0  typ 93851323434688  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323434880         cos  knd 5 0  typ 93851323434976  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323435168       trsin  knd 5 0  typ 93851323435264  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323435456        sqrt  knd 5 0  typ 93851323435552  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323435744       round  knd 5 0  typ 93851323435840  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93851323436032      iround  knd 5 0  typ 93851323436128  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93851323436320         ord  knd 5 0  typ 93851323436416  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93851323436608         new  knd 5 0  typ 93851323436704  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93851323436896       trnew  knd 5 0  typ 93851323436992  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93851323437184       write  knd 5 0  typ 93851323437280  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93851323437472     writeln  knd 5 0  typ 93851323437568  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93851323437760      writef  knd 5 0  typ 93851323437856  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93851323438048    writelnf  knd 5 0  typ 93851323438144  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93851323438336      writei  knd 5 0  typ 93851323438432  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93851323438624    writelni  knd 5 0  typ 93851323438720  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93851323438912        read  knd 5 0  typ 93851323439008  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93851323439200      readln  knd 5 0  typ 93851323439296  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93851323439488         eof  knd 5 0  typ 93851323439584  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93851323465200           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (/ i 2))))
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
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$2,%ecx         	#  2 -> %ecx
	divl	%ecx,%eax         	#  %eax / %ecx -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
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

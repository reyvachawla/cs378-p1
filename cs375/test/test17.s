Symbol table level 0
 94639903736480        real  BASIC  basicdt   1          siz     8
 94639903736576     integer  BASIC  basicdt   0          siz     4
 94639903736672        char  BASIC  basicdt   2          siz     1
 94639903736768     boolean  BASIC  basicdt   3          siz     4
 94639903736864         exp  knd 5 0  typ 94639903736960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903737152       trexp  knd 5 0  typ 94639903737248  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903737440         sin  knd 5 0  typ 94639903737536  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903737728         cos  knd 5 0  typ 94639903737824  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903738016       trsin  knd 5 0  typ 94639903738112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903738304        sqrt  knd 5 0  typ 94639903738400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903738592       round  knd 5 0  typ 94639903738688  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94639903738880      iround  knd 5 0  typ 94639903738976  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94639903739168         ord  knd 5 0  typ 94639903739264  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94639903739456         new  knd 5 0  typ 94639903739552  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94639903739744       trnew  knd 5 0  typ 94639903739840  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94639903740032       write  knd 5 0  typ 94639903740128  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94639903740320     writeln  knd 5 0  typ 94639903740416  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94639903740608      writef  knd 5 0  typ 94639903740704  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94639903740896    writelnf  knd 5 0  typ 94639903740992  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94639903741184      writei  knd 5 0  typ 94639903741280  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94639903741472    writelni  knd 5 0  typ 94639903741568  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94639903741760        read  knd 5 0  typ 94639903741856  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94639903742048      readln  knd 5 0  typ 94639903742144  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94639903742336         eof  knd 5 0  typ 94639903742432  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94639903768048           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (funcall writelni i)))
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
	call	writelni@PLT          	#  writelni()
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

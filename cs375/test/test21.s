Symbol table level 0
 94392829108896        real  BASIC  basicdt   1          siz     8
 94392829108992     integer  BASIC  basicdt   0          siz     4
 94392829109088        char  BASIC  basicdt   2          siz     1
 94392829109184     boolean  BASIC  basicdt   3          siz     4
 94392829109280         exp  knd 5 0  typ 94392829109376  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829109568       trexp  knd 5 0  typ 94392829109664  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829109856         sin  knd 5 0  typ 94392829109952  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829110144         cos  knd 5 0  typ 94392829110240  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829110432       trsin  knd 5 0  typ 94392829110528  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829110720        sqrt  knd 5 0  typ 94392829110816  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829111008       round  knd 5 0  typ 94392829111104  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94392829111296      iround  knd 5 0  typ 94392829111392  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94392829111584         ord  knd 5 0  typ 94392829111680  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94392829111872         new  knd 5 0  typ 94392829111968  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94392829112160       trnew  knd 5 0  typ 94392829112256  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94392829112448       write  knd 5 0  typ 94392829112544  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94392829112736     writeln  knd 5 0  typ 94392829112832  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94392829113024      writef  knd 5 0  typ 94392829113120  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94392829113312    writelnf  knd 5 0  typ 94392829113408  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94392829113600      writei  knd 5 0  typ 94392829113696  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94392829113888    writelni  knd 5 0  typ 94392829113984  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94392829114176        read  knd 5 0  typ 94392829114272  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94392829114464      readln  knd 5 0  typ 94392829114560  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94392829114752         eof  knd 5 0  typ 94392829114848  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94392829140464           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94392829140816           n  VAR    0 typ integer  lvl  1  siz     4  off     8
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

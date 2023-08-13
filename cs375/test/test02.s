Symbol table level 0
 94427503219360        real  BASIC  basicdt   1          siz     8
 94427503219456     integer  BASIC  basicdt   0          siz     4
 94427503219552        char  BASIC  basicdt   2          siz     1
 94427503219648     boolean  BASIC  basicdt   3          siz     4
 94427503219744         exp  knd 5 0  typ 94427503219840  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503220032       trexp  knd 5 0  typ 94427503220128  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503220320         sin  knd 5 0  typ 94427503220416  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503220608         cos  knd 5 0  typ 94427503220704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503220896       trsin  knd 5 0  typ 94427503220992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503221184        sqrt  knd 5 0  typ 94427503221280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503221472       round  knd 5 0  typ 94427503221568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94427503221760      iround  knd 5 0  typ 94427503221856  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94427503222048         ord  knd 5 0  typ 94427503222144  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94427503222336         new  knd 5 0  typ 94427503222432  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94427503222624       trnew  knd 5 0  typ 94427503222720  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94427503222912       write  knd 5 0  typ 94427503223008  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94427503223200     writeln  knd 5 0  typ 94427503223296  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94427503223488      writef  knd 5 0  typ 94427503223584  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94427503223776    writelnf  knd 5 0  typ 94427503223872  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94427503224064      writei  knd 5 0  typ 94427503224160  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94427503224352    writelni  knd 5 0  typ 94427503224448  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94427503224640        read  knd 5 0  typ 94427503224736  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94427503224928      readln  knd 5 0  typ 94427503225024  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94427503225216         eof  knd 5 0  typ 94427503225312  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94427503251152         ptr  VAR    4 typ 94427503251056  lvl  1  siz     8  off     0
(^ real)
 94427503251248        john  VAR    4 typ 94427503251056  lvl  1  siz     8  off     8
(^ real)
yyparse result =        0
(program graph1 (progn output)
                (progn (:= ptr john)))
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
	movq	-24(%rbp),%rax     	#  john -> %rax
	movq	%rax,-32(%rbp)     	#  %rax -> ptr
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

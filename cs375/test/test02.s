Symbol table level 0
 94500553646752        real  BASIC  basicdt   1          siz     8
 94500553646848     integer  BASIC  basicdt   0          siz     4
 94500553646944        char  BASIC  basicdt   2          siz     1
 94500553647040     boolean  BASIC  basicdt   3          siz     4
 94500553647136         exp  knd 5 0  typ 94500553647232  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553647424       trexp  knd 5 0  typ 94500553647520  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553647712         sin  knd 5 0  typ 94500553647808  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553648000         cos  knd 5 0  typ 94500553648096  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553648288       trsin  knd 5 0  typ 94500553648384  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553648576        sqrt  knd 5 0  typ 94500553648672  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553648864       round  knd 5 0  typ 94500553648960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94500553649152      iround  knd 5 0  typ 94500553649248  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94500553649440         ord  knd 5 0  typ 94500553649536  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94500553649728         new  knd 5 0  typ 94500553649824  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94500553650016       trnew  knd 5 0  typ 94500553650112  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94500553650304       write  knd 5 0  typ 94500553650400  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94500553650592     writeln  knd 5 0  typ 94500553650688  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94500553650880      writef  knd 5 0  typ 94500553650976  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94500553651168    writelnf  knd 5 0  typ 94500553651264  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94500553651456      writei  knd 5 0  typ 94500553651552  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94500553651744    writelni  knd 5 0  typ 94500553651840  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94500553652032        read  knd 5 0  typ 94500553652128  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94500553652320      readln  knd 5 0  typ 94500553652416  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94500553652608         eof  knd 5 0  typ 94500553652704  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94500553678544         ptr  VAR    4 typ 94500553678448  lvl  1  siz     8  off     0
(^ real)
 94500553678640        john  VAR    4 typ 94500553678448  lvl  1  siz     8  off     8
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
	movl	%eax,-32(%rbp)     	#  %eax -> ptr
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

Symbol table level 0
 94710387192480        real  BASIC  basicdt   1          siz     8
 94710387192576     integer  BASIC  basicdt   0          siz     4
 94710387192672        char  BASIC  basicdt   2          siz     1
 94710387192768     boolean  BASIC  basicdt   3          siz     4
 94710387192864         exp  knd 5 0  typ 94710387192960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387193152       trexp  knd 5 0  typ 94710387193248  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387193440         sin  knd 5 0  typ 94710387193536  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387193728         cos  knd 5 0  typ 94710387193824  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387194016       trsin  knd 5 0  typ 94710387194112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387194304        sqrt  knd 5 0  typ 94710387194400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387194592       round  knd 5 0  typ 94710387194688  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94710387194880      iround  knd 5 0  typ 94710387194976  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94710387195168         ord  knd 5 0  typ 94710387195264  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94710387195456         new  knd 5 0  typ 94710387195552  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94710387195744       trnew  knd 5 0  typ 94710387195840  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94710387196032       write  knd 5 0  typ 94710387196128  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94710387196320     writeln  knd 5 0  typ 94710387196416  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94710387196608      writef  knd 5 0  typ 94710387196704  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94710387196896    writelnf  knd 5 0  typ 94710387196992  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94710387197184      writei  knd 5 0  typ 94710387197280  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94710387197472    writelni  knd 5 0  typ 94710387197568  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94710387197760        read  knd 5 0  typ 94710387197856  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94710387198048      readln  knd 5 0  typ 94710387198144  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94710387198336         eof  knd 5 0  typ 94710387198432  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
yyparse result =        0
(program graph1 (progn output)
                (progn (funcall write 'i = ')))
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
        subq	$16, %rsp 	  # make space for this stack frame
	movq	%rbx, %r9        # save %rbx (callee-saved) in %r9
# ------------------------- begin Your code -----------------------------
	leaq	.LC1(%rip),%rdi  	#  addr of literal .LC1
	call	write@PLT          	#  write()
# ----------------------- begin Epilogue code ---------------------------
	movq	%r9, %rbx        # restore %rbx (callee-saved) from %r9
        leave
        ret
        .cfi_endproc
.LFE0:
        .size   graph1, .-graph1
# ----------------- end Epilogue; Literal data follows ------------------
        .section        .rodata
	.align  4
.LC1:
	.string	"i = "

        .ident  "CS 375 Compiler - Spring 2022"

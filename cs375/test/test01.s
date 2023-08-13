Symbol table level 0
 94909338739360        real  BASIC  basicdt   1          siz     8
 94909338739456     integer  BASIC  basicdt   0          siz     4
 94909338739552        char  BASIC  basicdt   2          siz     1
 94909338739648     boolean  BASIC  basicdt   3          siz     4
 94909338739744         exp  knd 5 0  typ 94909338739840  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338740032       trexp  knd 5 0  typ 94909338740128  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338740320         sin  knd 5 0  typ 94909338740416  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338740608         cos  knd 5 0  typ 94909338740704  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338740896       trsin  knd 5 0  typ 94909338740992  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338741184        sqrt  knd 5 0  typ 94909338741280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338741472       round  knd 5 0  typ 94909338741568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94909338741760      iround  knd 5 0  typ 94909338741856  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94909338742048         ord  knd 5 0  typ 94909338742144  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94909338742336         new  knd 5 0  typ 94909338742432  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94909338742624       trnew  knd 5 0  typ 94909338742720  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94909338742912       write  knd 5 0  typ 94909338743008  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94909338743200     writeln  knd 5 0  typ 94909338743296  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94909338743488      writef  knd 5 0  typ 94909338743584  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94909338743776    writelnf  knd 5 0  typ 94909338743872  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94909338744064      writei  knd 5 0  typ 94909338744160  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94909338744352    writelni  knd 5 0  typ 94909338744448  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94909338744640        read  knd 5 0  typ 94909338744736  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94909338744928      readln  knd 5 0  typ 94909338745024  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94909338745216         eof  knd 5 0  typ 94909338745312  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94909338770928           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x 4.500000e+00)))
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
	movsd	.LC1(%rip),%xmm0   	#  4.500000 -> %xmm0
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
	.align  8
.LC1:
	.long	0   	#  4.500000
	.long	1074921472

        .ident  "CS 375 Compiler - Spring 2022"

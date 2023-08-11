Symbol table level 0
 93876344111776        real  BASIC  basicdt   1          siz     8
 93876344111872     integer  BASIC  basicdt   0          siz     4
 93876344111968        char  BASIC  basicdt   2          siz     1
 93876344112064     boolean  BASIC  basicdt   3          siz     4
 93876344112160         exp  knd 5 0  typ 93876344112256  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344112448       trexp  knd 5 0  typ 93876344112544  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344112736         sin  knd 5 0  typ 93876344112832  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344113024         cos  knd 5 0  typ 93876344113120  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344113312       trsin  knd 5 0  typ 93876344113408  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344113600        sqrt  knd 5 0  typ 93876344113696  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344113888       round  knd 5 0  typ 93876344113984  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93876344114176      iround  knd 5 0  typ 93876344114272  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93876344114464         ord  knd 5 0  typ 93876344114560  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93876344114752         new  knd 5 0  typ 93876344114848  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93876344115040       trnew  knd 5 0  typ 93876344115136  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93876344115328       write  knd 5 0  typ 93876344115424  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93876344115616     writeln  knd 5 0  typ 93876344115712  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93876344115904      writef  knd 5 0  typ 93876344116000  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93876344116192    writelnf  knd 5 0  typ 93876344116288  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93876344116480      writei  knd 5 0  typ 93876344116576  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93876344116768    writelni  knd 5 0  typ 93876344116864  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93876344117056        read  knd 5 0  typ 93876344117152  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93876344117344      readln  knd 5 0  typ 93876344117440  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93876344117632         eof  knd 5 0  typ 93876344117728  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93876344143344           x  VAR    1 typ    real  lvl  1  siz     8  off     0
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

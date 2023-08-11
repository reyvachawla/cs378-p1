Symbol table level 0
 94562274816672        real  BASIC  basicdt   1          siz     8
 94562274816768     integer  BASIC  basicdt   0          siz     4
 94562274816864        char  BASIC  basicdt   2          siz     1
 94562274816960     boolean  BASIC  basicdt   3          siz     4
 94562274817056         exp  knd 5 0  typ 94562274817152  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274817344       trexp  knd 5 0  typ 94562274817440  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274817632         sin  knd 5 0  typ 94562274817728  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274817920         cos  knd 5 0  typ 94562274818016  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274818208       trsin  knd 5 0  typ 94562274818304  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274818496        sqrt  knd 5 0  typ 94562274818592  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274818784       round  knd 5 0  typ 94562274818880  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94562274819072      iround  knd 5 0  typ 94562274819168  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94562274819360         ord  knd 5 0  typ 94562274819456  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94562274819648         new  knd 5 0  typ 94562274819744  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94562274819936       trnew  knd 5 0  typ 94562274820032  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94562274820224       write  knd 5 0  typ 94562274820320  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94562274820512     writeln  knd 5 0  typ 94562274820608  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94562274820800      writef  knd 5 0  typ 94562274820896  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94562274821088    writelnf  knd 5 0  typ 94562274821184  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94562274821376      writei  knd 5 0  typ 94562274821472  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94562274821664    writelni  knd 5 0  typ 94562274821760  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94562274821952        read  knd 5 0  typ 94562274822048  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94562274822240      readln  knd 5 0  typ 94562274822336  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94562274822528         eof  knd 5 0  typ 94562274822624  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94562274848240           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (/ x 4.500000e+00))))
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
	movsd	.LC1(%rip),%xmm1   	#  4.500000 -> %xmm1
	divsd	%xmm1,%xmm0         	#  %xmm0 / %xmm1 -> %xmm0
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

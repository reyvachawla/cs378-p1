Symbol table level 0
 94085623673504        real  BASIC  basicdt   1          siz     8
 94085623673600     integer  BASIC  basicdt   0          siz     4
 94085623673696        char  BASIC  basicdt   2          siz     1
 94085623673792     boolean  BASIC  basicdt   3          siz     4
 94085623673888         exp  knd 5 0  typ 94085623673984  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623674176       trexp  knd 5 0  typ 94085623674272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623674464         sin  knd 5 0  typ 94085623674560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623674752         cos  knd 5 0  typ 94085623674848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623675040       trsin  knd 5 0  typ 94085623675136  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623675328        sqrt  knd 5 0  typ 94085623675424  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623675616       round  knd 5 0  typ 94085623675712  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94085623675904      iround  knd 5 0  typ 94085623676000  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94085623676192         ord  knd 5 0  typ 94085623676288  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94085623676480         new  knd 5 0  typ 94085623676576  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94085623676768       trnew  knd 5 0  typ 94085623676864  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94085623677056       write  knd 5 0  typ 94085623677152  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94085623677344     writeln  knd 5 0  typ 94085623677440  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94085623677632      writef  knd 5 0  typ 94085623677728  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94085623677920    writelnf  knd 5 0  typ 94085623678016  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94085623678208      writei  knd 5 0  typ 94085623678304  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94085623678496    writelni  knd 5 0  typ 94085623678592  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94085623678784        read  knd 5 0  typ 94085623678880  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94085623679072      readln  knd 5 0  typ 94085623679168  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94085623679360         eof  knd 5 0  typ 94085623679456  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94085623705072           x  VAR    1 typ    real  lvl  1  siz     8  off     0
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

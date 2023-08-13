Symbol table level 0
 94053987680928        real  BASIC  basicdt   1          siz     8
 94053987681024     integer  BASIC  basicdt   0          siz     4
 94053987681120        char  BASIC  basicdt   2          siz     1
 94053987681216     boolean  BASIC  basicdt   3          siz     4
 94053987681312         exp  knd 5 0  typ 94053987681408  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987681600       trexp  knd 5 0  typ 94053987681696  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987681888         sin  knd 5 0  typ 94053987681984  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987682176         cos  knd 5 0  typ 94053987682272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987682464       trsin  knd 5 0  typ 94053987682560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987682752        sqrt  knd 5 0  typ 94053987682848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987683040       round  knd 5 0  typ 94053987683136  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94053987683328      iround  knd 5 0  typ 94053987683424  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94053987683616         ord  knd 5 0  typ 94053987683712  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94053987683904         new  knd 5 0  typ 94053987684000  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94053987684192       trnew  knd 5 0  typ 94053987684288  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94053987684480       write  knd 5 0  typ 94053987684576  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94053987684768     writeln  knd 5 0  typ 94053987684864  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94053987685056      writef  knd 5 0  typ 94053987685152  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94053987685344    writelnf  knd 5 0  typ 94053987685440  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94053987685632      writei  knd 5 0  typ 94053987685728  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94053987685920    writelni  knd 5 0  typ 94053987686016  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94053987686208        read  knd 5 0  typ 94053987686304  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94053987686496      readln  knd 5 0  typ 94053987686592  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94053987686784         eof  knd 5 0  typ 94053987686880  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94053987712496           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (* x 4.500000e+00))))
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
	mulsd	%xmm1,%xmm0         	#  %xmm0 * %xmm1 -> %xmm0
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

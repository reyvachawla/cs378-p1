Symbol table level 0
 94790341296800        real  BASIC  basicdt   1          siz     8
 94790341296896     integer  BASIC  basicdt   0          siz     4
 94790341296992        char  BASIC  basicdt   2          siz     1
 94790341297088     boolean  BASIC  basicdt   3          siz     4
 94790341297184         exp  knd 5 0  typ 94790341297280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341297472       trexp  knd 5 0  typ 94790341297568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341297760         sin  knd 5 0  typ 94790341297856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341298048         cos  knd 5 0  typ 94790341298144  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341298336       trsin  knd 5 0  typ 94790341298432  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341298624        sqrt  knd 5 0  typ 94790341298720  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341298912       round  knd 5 0  typ 94790341299008  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94790341299200      iround  knd 5 0  typ 94790341299296  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94790341299488         ord  knd 5 0  typ 94790341299584  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94790341299776         new  knd 5 0  typ 94790341299872  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94790341300064       trnew  knd 5 0  typ 94790341300160  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94790341300352       write  knd 5 0  typ 94790341300448  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94790341300640     writeln  knd 5 0  typ 94790341300736  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94790341300928      writef  knd 5 0  typ 94790341301024  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94790341301216    writelnf  knd 5 0  typ 94790341301312  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94790341301504      writei  knd 5 0  typ 94790341301600  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94790341301792    writelni  knd 5 0  typ 94790341301888  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94790341302080        read  knd 5 0  typ 94790341302176  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94790341302368      readln  knd 5 0  typ 94790341302464  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94790341302656         eof  knd 5 0  typ 94790341302752  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94790341328368           x  VAR    1 typ    real  lvl  1  siz     8  off     0
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

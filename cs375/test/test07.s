Symbol table level 0
 94733891207840        real  BASIC  basicdt   1          siz     8
 94733891207936     integer  BASIC  basicdt   0          siz     4
 94733891208032        char  BASIC  basicdt   2          siz     1
 94733891208128     boolean  BASIC  basicdt   3          siz     4
 94733891208224         exp  knd 5 0  typ 94733891208320  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891208512       trexp  knd 5 0  typ 94733891208608  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891208800         sin  knd 5 0  typ 94733891208896  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891209088         cos  knd 5 0  typ 94733891209184  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891209376       trsin  knd 5 0  typ 94733891209472  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891209664        sqrt  knd 5 0  typ 94733891209760  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891209952       round  knd 5 0  typ 94733891210048  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94733891210240      iround  knd 5 0  typ 94733891210336  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94733891210528         ord  knd 5 0  typ 94733891210624  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94733891210816         new  knd 5 0  typ 94733891210912  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94733891211104       trnew  knd 5 0  typ 94733891211200  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94733891211392       write  knd 5 0  typ 94733891211488  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94733891211680     writeln  knd 5 0  typ 94733891211776  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94733891211968      writef  knd 5 0  typ 94733891212064  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94733891212256    writelnf  knd 5 0  typ 94733891212352  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94733891212544      writei  knd 5 0  typ 94733891212640  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94733891212832    writelni  knd 5 0  typ 94733891212928  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94733891213120        read  knd 5 0  typ 94733891213216  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94733891213408      readln  knd 5 0  typ 94733891213504  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94733891213696         eof  knd 5 0  typ 94733891213792  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94733891239408           x  VAR    1 typ    real  lvl  1  siz     8  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (+ x 4.500000e+00))))
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
	addsd	%xmm1,%xmm0         	#  %xmm0 + %xmm1 -> %xmm0
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

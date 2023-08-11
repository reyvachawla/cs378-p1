Symbol table level 0
 94309851837088        real  BASIC  basicdt   1          siz     8
 94309851837184     integer  BASIC  basicdt   0          siz     4
 94309851837280        char  BASIC  basicdt   2          siz     1
 94309851837376     boolean  BASIC  basicdt   3          siz     4
 94309851837472         exp  knd 5 0  typ 94309851837568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851837760       trexp  knd 5 0  typ 94309851837856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851838048         sin  knd 5 0  typ 94309851838144  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851838336         cos  knd 5 0  typ 94309851838432  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851838624       trsin  knd 5 0  typ 94309851838720  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851838912        sqrt  knd 5 0  typ 94309851839008  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851839200       round  knd 5 0  typ 94309851839296  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94309851839488      iround  knd 5 0  typ 94309851839584  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94309851839776         ord  knd 5 0  typ 94309851839872  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94309851840064         new  knd 5 0  typ 94309851840160  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94309851840352       trnew  knd 5 0  typ 94309851840448  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94309851840640       write  knd 5 0  typ 94309851840736  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94309851840928     writeln  knd 5 0  typ 94309851841024  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94309851841216      writef  knd 5 0  typ 94309851841312  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94309851841504    writelnf  knd 5 0  typ 94309851841600  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94309851841792      writei  knd 5 0  typ 94309851841888  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94309851842080    writelni  knd 5 0  typ 94309851842176  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94309851842368        read  knd 5 0  typ 94309851842464  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94309851842656      readln  knd 5 0  typ 94309851842752  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94309851842944         eof  knd 5 0  typ 94309851843040  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94309851868656           x  VAR    1 typ    real  lvl  1  siz     8  off     0
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

Symbol table level 0
 94104461767328        real  BASIC  basicdt   1          siz     8
 94104461767424     integer  BASIC  basicdt   0          siz     4
 94104461767520        char  BASIC  basicdt   2          siz     1
 94104461767616     boolean  BASIC  basicdt   3          siz     4
 94104461767712         exp  knd 5 0  typ 94104461767808  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461768000       trexp  knd 5 0  typ 94104461768096  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461768288         sin  knd 5 0  typ 94104461768384  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461768576         cos  knd 5 0  typ 94104461768672  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461768864       trsin  knd 5 0  typ 94104461768960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461769152        sqrt  knd 5 0  typ 94104461769248  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461769440       round  knd 5 0  typ 94104461769536  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94104461769728      iround  knd 5 0  typ 94104461769824  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94104461770016         ord  knd 5 0  typ 94104461770112  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94104461770304         new  knd 5 0  typ 94104461770400  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94104461770592       trnew  knd 5 0  typ 94104461770688  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94104461770880       write  knd 5 0  typ 94104461770976  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94104461771168     writeln  knd 5 0  typ 94104461771264  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94104461771456      writef  knd 5 0  typ 94104461771552  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94104461771744    writelnf  knd 5 0  typ 94104461771840  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94104461772032      writei  knd 5 0  typ 94104461772128  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94104461772320    writelni  knd 5 0  typ 94104461772416  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94104461772608        read  knd 5 0  typ 94104461772704  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94104461772896      readln  knd 5 0  typ 94104461772992  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94104461773184         eof  knd 5 0  typ 94104461773280  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94104461799024           x  VAR    1 typ    real  lvl  1  siz     8  off     0
 94104461799120           y  VAR    1 typ    real  lvl  1  siz     8  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= x (float (- y)))))
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
	movsd	-24(%rbp),%xmm1     	#  y -> %xmm1
	movsd	.LC666(%rip),%xmm2   	#  0.000000 -> %xmm2
	xorpd	%xmm2,%xmm1           	#  negate %xmm1
	cvtsi2sd	%xmm2,%xmm0    	#  float %xmm2 -> %xmm0
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
	.align 16
.LC666:                    # constant for floating negation
	.long	0
	.long	-2147483648
	.long	0
	.long	0

        .ident  "CS 375 Compiler - Spring 2022"

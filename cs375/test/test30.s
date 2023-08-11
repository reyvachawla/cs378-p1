Symbol table level 0
 93855825281696        real  BASIC  basicdt   1          siz     8
 93855825281792     integer  BASIC  basicdt   0          siz     4
 93855825281888        char  BASIC  basicdt   2          siz     1
 93855825281984     boolean  BASIC  basicdt   3          siz     4
 93855825282080         exp  knd 5 0  typ 93855825282176  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825282368       trexp  knd 5 0  typ 93855825282464  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825282656         sin  knd 5 0  typ 93855825282752  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825282944         cos  knd 5 0  typ 93855825283040  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825283232       trsin  knd 5 0  typ 93855825283328  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825283520        sqrt  knd 5 0  typ 93855825283616  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825283808       round  knd 5 0  typ 93855825283904  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93855825284096      iround  knd 5 0  typ 93855825284192  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93855825284384         ord  knd 5 0  typ 93855825284480  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93855825284672         new  knd 5 0  typ 93855825284768  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93855825284960       trnew  knd 5 0  typ 93855825285056  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93855825285248       write  knd 5 0  typ 93855825285344  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93855825285536     writeln  knd 5 0  typ 93855825285632  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93855825285824      writef  knd 5 0  typ 93855825285920  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93855825286112    writelnf  knd 5 0  typ 93855825286208  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93855825286400      writei  knd 5 0  typ 93855825286496  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93855825286688    writelni  knd 5 0  typ 93855825286784  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93855825286976        read  knd 5 0  typ 93855825287072  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93855825287264      readln  knd 5 0  typ 93855825287360  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93855825287552         eof  knd 5 0  typ 93855825287648  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93855825313872     complex  TYPE   typ 93855825313584  lvl  1  siz    16  off     0
(RECORD (re real)
        (im real))
 93855825314736         red  CONST  typ INTEGER  val  0
 93855825314896       white  CONST  typ INTEGER  val  1
 93855825315056        blue  CONST  typ INTEGER  val  2
 93855825315248       color  TYPE   typ 93855825315152  lvl  1  siz     4  off     0
  0 ..   2
 93855825315664      person  TYPE   typ 93855825317488  lvl  1  siz    48  off     0
(RECORD (age integer)
        (friend (^ person))
        (location (RECORD (re real)
                          (im real)))
        (favorite   0 ..   2)
        (salary real))
 93855825315856          pp  TYPE   typ 93855825315760  lvl  1  siz     8  off     0
(^ person)
 93855825318448        john  VAR    4 typ 93855825315760  lvl  1  siz     8  off     0
(^ person)
 93855825318800         sum  VAR    0 typ integer  lvl  1  siz     4  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))
                       (:= sum (aref (^ john)
                                     0))))
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
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
	movq	-32(%rbp),%rax     	#  john -> %rax
	movsd	.LC666(%rip),%xmm0   	#  0.000000 -> %xmm0
	xorpd	%xmm0,%eax           	#  negate %eax
	movl	$0,%ecx         	#  0 -> %ecx
	movl	%ecx,%xmm0         	#  %ecx -> %xmm0
	movl	%xmm0,-24(%rbp)     	#  %xmm0 -> sum
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

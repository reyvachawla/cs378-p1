Symbol table level 0
 94784725127840        real  BASIC  basicdt   1          siz     8
 94784725127936     integer  BASIC  basicdt   0          siz     4
 94784725128032        char  BASIC  basicdt   2          siz     1
 94784725128128     boolean  BASIC  basicdt   3          siz     4
 94784725128224         exp  knd 5 0  typ 94784725128320  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725128512       trexp  knd 5 0  typ 94784725128608  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725128800         sin  knd 5 0  typ 94784725128896  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725129088         cos  knd 5 0  typ 94784725129184  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725129376       trsin  knd 5 0  typ 94784725129472  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725129664        sqrt  knd 5 0  typ 94784725129760  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725129952       round  knd 5 0  typ 94784725130048  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94784725130240      iround  knd 5 0  typ 94784725130336  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94784725130528         ord  knd 5 0  typ 94784725130624  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94784725130816         new  knd 5 0  typ 94784725130912  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94784725131104       trnew  knd 5 0  typ 94784725131200  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94784725131392       write  knd 5 0  typ 94784725131488  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94784725131680     writeln  knd 5 0  typ 94784725131776  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94784725131968      writef  knd 5 0  typ 94784725132064  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94784725132256    writelnf  knd 5 0  typ 94784725132352  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94784725132544      writei  knd 5 0  typ 94784725132640  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94784725132832    writelni  knd 5 0  typ 94784725132928  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94784725133120        read  knd 5 0  typ 94784725133216  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94784725133408      readln  knd 5 0  typ 94784725133504  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94784725133696         eof  knd 5 0  typ 94784725133792  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94784725159408           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (* i 2))))
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
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$2,%ecx         	#  2 -> %ecx
	imull	%ecx,%eax         	#  %eax * %ecx -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
# ----------------------- begin Epilogue code ---------------------------
	movq	%r9, %rbx        # restore %rbx (callee-saved) from %r9
        leave
        ret
        .cfi_endproc
.LFE0:
        .size   graph1, .-graph1
# ----------------- end Epilogue; Literal data follows ------------------
        .section        .rodata

        .ident  "CS 375 Compiler - Spring 2022"

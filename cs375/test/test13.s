Symbol table level 0
 94858024116896        real  BASIC  basicdt   1          siz     8
 94858024116992     integer  BASIC  basicdt   0          siz     4
 94858024117088        char  BASIC  basicdt   2          siz     1
 94858024117184     boolean  BASIC  basicdt   3          siz     4
 94858024117280         exp  knd 5 0  typ 94858024117376  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024117568       trexp  knd 5 0  typ 94858024117664  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024117856         sin  knd 5 0  typ 94858024117952  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024118144         cos  knd 5 0  typ 94858024118240  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024118432       trsin  knd 5 0  typ 94858024118528  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024118720        sqrt  knd 5 0  typ 94858024118816  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024119008       round  knd 5 0  typ 94858024119104  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94858024119296      iround  knd 5 0  typ 94858024119392  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94858024119584         ord  knd 5 0  typ 94858024119680  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94858024119872         new  knd 5 0  typ 94858024119968  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94858024120160       trnew  knd 5 0  typ 94858024120256  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94858024120448       write  knd 5 0  typ 94858024120544  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94858024120736     writeln  knd 5 0  typ 94858024120832  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94858024121024      writef  knd 5 0  typ 94858024121120  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94858024121312    writelnf  knd 5 0  typ 94858024121408  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94858024121600      writei  knd 5 0  typ 94858024121696  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94858024121888    writelni  knd 5 0  typ 94858024121984  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94858024122176        read  knd 5 0  typ 94858024122272  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94858024122464      readln  knd 5 0  typ 94858024122560  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94858024122752         eof  knd 5 0  typ 94858024122848  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94858024148592           i  VAR    0 typ integer  lvl  1  siz     4  off     0
 94858024148688         sum  VAR    0 typ integer  lvl  1  siz     4  off     4
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (+ i 1))
                       (:= sum (+ sum 1))
                       (:= i (+ i sum))))
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
	movl	$1,%ecx         	#  1 -> %ecx
	addl	%ecx,%eax         	#  %eax + %ecx -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
	movl	-28(%rbp),%eax     	#  sum -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	addl	%ecx,%eax         	#  %eax + %ecx -> %eax
	movl	%eax,-28(%rbp)     	#  %eax -> sum
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	-28(%rbp),%ecx     	#  sum -> %ecx
	addl	%ecx,%eax         	#  %eax + %ecx -> %eax
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

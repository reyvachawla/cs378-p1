Symbol table level 0
 94098583429792        real  BASIC  basicdt   1          siz     8
 94098583429888     integer  BASIC  basicdt   0          siz     4
 94098583429984        char  BASIC  basicdt   2          siz     1
 94098583430080     boolean  BASIC  basicdt   3          siz     4
 94098583430176         exp  knd 5 0  typ 94098583430272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583430464       trexp  knd 5 0  typ 94098583430560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583430752         sin  knd 5 0  typ 94098583430848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583431040         cos  knd 5 0  typ 94098583431136  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583431328       trsin  knd 5 0  typ 94098583431424  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583431616        sqrt  knd 5 0  typ 94098583431712  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583431904       round  knd 5 0  typ 94098583432000  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94098583432192      iround  knd 5 0  typ 94098583432288  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94098583432480         ord  knd 5 0  typ 94098583432576  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94098583432768         new  knd 5 0  typ 94098583432864  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94098583433056       trnew  knd 5 0  typ 94098583433152  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94098583433344       write  knd 5 0  typ 94098583433440  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94098583433632     writeln  knd 5 0  typ 94098583433728  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94098583433920      writef  knd 5 0  typ 94098583434016  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94098583434208    writelnf  knd 5 0  typ 94098583434304  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94098583434496      writei  knd 5 0  typ 94098583434592  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94098583434784    writelni  knd 5 0  typ 94098583434880  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94098583435072        read  knd 5 0  typ 94098583435168  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94098583435360      readln  knd 5 0  typ 94098583435456  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94098583435648         eof  knd 5 0  typ 94098583435744  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94098583461488           i  VAR    0 typ integer  lvl  1  siz     4  off     0
 94098583461584         sum  VAR    0 typ integer  lvl  1  siz     4  off     4
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

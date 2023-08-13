Symbol table level 0
 93982085644960        real  BASIC  basicdt   1          siz     8
 93982085645056     integer  BASIC  basicdt   0          siz     4
 93982085645152        char  BASIC  basicdt   2          siz     1
 93982085645248     boolean  BASIC  basicdt   3          siz     4
 93982085645344         exp  knd 5 0  typ 93982085645440  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085645632       trexp  knd 5 0  typ 93982085645728  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085645920         sin  knd 5 0  typ 93982085646016  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085646208         cos  knd 5 0  typ 93982085646304  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085646496       trsin  knd 5 0  typ 93982085646592  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085646784        sqrt  knd 5 0  typ 93982085646880  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085647072       round  knd 5 0  typ 93982085647168  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93982085647360      iround  knd 5 0  typ 93982085647456  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93982085647648         ord  knd 5 0  typ 93982085647744  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93982085647936         new  knd 5 0  typ 93982085648032  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93982085648224       trnew  knd 5 0  typ 93982085648320  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93982085648512       write  knd 5 0  typ 93982085648608  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93982085648800     writeln  knd 5 0  typ 93982085648896  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93982085649088      writef  knd 5 0  typ 93982085649184  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93982085649376    writelnf  knd 5 0  typ 93982085649472  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93982085649664      writei  knd 5 0  typ 93982085649760  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93982085649952    writelni  knd 5 0  typ 93982085650048  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93982085650240        read  knd 5 0  typ 93982085650336  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93982085650528      readln  knd 5 0  typ 93982085650624  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93982085650816         eof  knd 5 0  typ 93982085650912  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93982085676528           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (+ i 1))))
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

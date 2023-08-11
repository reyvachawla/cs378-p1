Symbol table level 0
 93828490928800        real  BASIC  basicdt   1          siz     8
 93828490928896     integer  BASIC  basicdt   0          siz     4
 93828490928992        char  BASIC  basicdt   2          siz     1
 93828490929088     boolean  BASIC  basicdt   3          siz     4
 93828490929184         exp  knd 5 0  typ 93828490929280  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490929472       trexp  knd 5 0  typ 93828490929568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490929760         sin  knd 5 0  typ 93828490929856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490930048         cos  knd 5 0  typ 93828490930144  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490930336       trsin  knd 5 0  typ 93828490930432  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490930624        sqrt  knd 5 0  typ 93828490930720  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490930912       round  knd 5 0  typ 93828490931008  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93828490931200      iround  knd 5 0  typ 93828490931296  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93828490931488         ord  knd 5 0  typ 93828490931584  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93828490931776         new  knd 5 0  typ 93828490931872  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93828490932064       trnew  knd 5 0  typ 93828490932160  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93828490932352       write  knd 5 0  typ 93828490932448  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93828490932640     writeln  knd 5 0  typ 93828490932736  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93828490932928      writef  knd 5 0  typ 93828490933024  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93828490933216    writelnf  knd 5 0  typ 93828490933312  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93828490933504      writei  knd 5 0  typ 93828490933600  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93828490933792    writelni  knd 5 0  typ 93828490933888  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93828490934080        read  knd 5 0  typ 93828490934176  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93828490934368      readln  knd 5 0  typ 93828490934464  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93828490934656         eof  knd 5 0  typ 93828490934752  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93828490960368           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (/ i 2))))
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
	divl	%ecx,%eax         	#  %eax / %ecx -> %eax
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

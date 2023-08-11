Symbol table level 0
 94734313120416        real  BASIC  basicdt   1          siz     8
 94734313120512     integer  BASIC  basicdt   0          siz     4
 94734313120608        char  BASIC  basicdt   2          siz     1
 94734313120704     boolean  BASIC  basicdt   3          siz     4
 94734313120800         exp  knd 5 0  typ 94734313120896  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313121088       trexp  knd 5 0  typ 94734313121184  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313121376         sin  knd 5 0  typ 94734313121472  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313121664         cos  knd 5 0  typ 94734313121760  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313121952       trsin  knd 5 0  typ 94734313122048  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313122240        sqrt  knd 5 0  typ 94734313122336  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313122528       round  knd 5 0  typ 94734313122624  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94734313122816      iround  knd 5 0  typ 94734313122912  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94734313123104         ord  knd 5 0  typ 94734313123200  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94734313123392         new  knd 5 0  typ 94734313123488  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94734313123680       trnew  knd 5 0  typ 94734313123776  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94734313123968       write  knd 5 0  typ 94734313124064  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94734313124256     writeln  knd 5 0  typ 94734313124352  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94734313124544      writef  knd 5 0  typ 94734313124640  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94734313124832    writelnf  knd 5 0  typ 94734313124928  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94734313125120      writei  knd 5 0  typ 94734313125216  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94734313125408    writelni  knd 5 0  typ 94734313125504  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94734313125696        read  knd 5 0  typ 94734313125792  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94734313125984      readln  knd 5 0  typ 94734313126080  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94734313126272         eof  knd 5 0  typ 94734313126368  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94734313151984           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (- i 1))))
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
	subl	%ecx,%eax         	#  %eax - %ecx -> %eax
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

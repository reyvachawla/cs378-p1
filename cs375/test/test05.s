Symbol table level 0
 94008155837088        real  BASIC  basicdt   1          siz     8
 94008155837184     integer  BASIC  basicdt   0          siz     4
 94008155837280        char  BASIC  basicdt   2          siz     1
 94008155837376     boolean  BASIC  basicdt   3          siz     4
 94008155837472         exp  knd 5 0  typ 94008155837568  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155837760       trexp  knd 5 0  typ 94008155837856  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155838048         sin  knd 5 0  typ 94008155838144  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155838336         cos  knd 5 0  typ 94008155838432  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155838624       trsin  knd 5 0  typ 94008155838720  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155838912        sqrt  knd 5 0  typ 94008155839008  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155839200       round  knd 5 0  typ 94008155839296  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94008155839488      iround  knd 5 0  typ 94008155839584  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94008155839776         ord  knd 5 0  typ 94008155839872  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94008155840064         new  knd 5 0  typ 94008155840160  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94008155840352       trnew  knd 5 0  typ 94008155840448  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94008155840640       write  knd 5 0  typ 94008155840736  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94008155840928     writeln  knd 5 0  typ 94008155841024  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94008155841216      writef  knd 5 0  typ 94008155841312  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94008155841504    writelnf  knd 5 0  typ 94008155841600  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94008155841792      writei  knd 5 0  typ 94008155841888  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94008155842080    writelni  knd 5 0  typ 94008155842176  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94008155842368        read  knd 5 0  typ 94008155842464  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94008155842656      readln  knd 5 0  typ 94008155842752  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94008155842944         eof  knd 5 0  typ 94008155843040  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94008155868656           i  VAR    0 typ integer  lvl  1  siz     4  off     0
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

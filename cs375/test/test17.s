Symbol table level 0
 93848050836128        real  BASIC  basicdt   1          siz     8
 93848050836224     integer  BASIC  basicdt   0          siz     4
 93848050836320        char  BASIC  basicdt   2          siz     1
 93848050836416     boolean  BASIC  basicdt   3          siz     4
 93848050836512         exp  knd 5 0  typ 93848050836608  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050836800       trexp  knd 5 0  typ 93848050836896  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050837088         sin  knd 5 0  typ 93848050837184  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050837376         cos  knd 5 0  typ 93848050837472  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050837664       trsin  knd 5 0  typ 93848050837760  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050837952        sqrt  knd 5 0  typ 93848050838048  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050838240       round  knd 5 0  typ 93848050838336  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93848050838528      iround  knd 5 0  typ 93848050838624  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93848050838816         ord  knd 5 0  typ 93848050838912  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93848050839104         new  knd 5 0  typ 93848050839200  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93848050839392       trnew  knd 5 0  typ 93848050839488  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93848050839680       write  knd 5 0  typ 93848050839776  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93848050839968     writeln  knd 5 0  typ 93848050840064  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93848050840256      writef  knd 5 0  typ 93848050840352  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93848050840544    writelnf  knd 5 0  typ 93848050840640  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93848050840832      writei  knd 5 0  typ 93848050840928  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93848050841120    writelni  knd 5 0  typ 93848050841216  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93848050841408        read  knd 5 0  typ 93848050841504  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93848050841696      readln  knd 5 0  typ 93848050841792  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93848050841984         eof  knd 5 0  typ 93848050842080  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93848050867696           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (funcall writelni i)))
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
	call	writelni@PLT          	#  writelni()
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

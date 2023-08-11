Symbol table level 0
 94125845492384        real  BASIC  basicdt   1          siz     8
 94125845492480     integer  BASIC  basicdt   0          siz     4
 94125845492576        char  BASIC  basicdt   2          siz     1
 94125845492672     boolean  BASIC  basicdt   3          siz     4
 94125845492768         exp  knd 5 0  typ 94125845492864  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845493056       trexp  knd 5 0  typ 94125845493152  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845493344         sin  knd 5 0  typ 94125845493440  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845493632         cos  knd 5 0  typ 94125845493728  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845493920       trsin  knd 5 0  typ 94125845494016  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845494208        sqrt  knd 5 0  typ 94125845494304  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845494496       round  knd 5 0  typ 94125845494592  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94125845494784      iround  knd 5 0  typ 94125845494880  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94125845495072         ord  knd 5 0  typ 94125845495168  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94125845495360         new  knd 5 0  typ 94125845495456  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94125845495648       trnew  knd 5 0  typ 94125845495744  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94125845495936       write  knd 5 0  typ 94125845496032  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94125845496224     writeln  knd 5 0  typ 94125845496320  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94125845496512      writef  knd 5 0  typ 94125845496608  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94125845496800    writelnf  knd 5 0  typ 94125845496896  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94125845497088      writei  knd 5 0  typ 94125845497184  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94125845497376    writelni  knd 5 0  typ 94125845497472  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94125845497664        read  knd 5 0  typ 94125845497760  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94125845497952      readln  knd 5 0  typ 94125845498048  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94125845498240         eof  knd 5 0  typ 94125845498336  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94125845523952           i  VAR    0 typ integer  lvl  1  siz     4  off     0
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
